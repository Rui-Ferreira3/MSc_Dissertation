#if defined(D_NEXYS_A7)
#include <bsp_printf.h>
#include <bsp_mem_map.h>
#include <bsp_version.h>
#include "psp_api.h"
#include "bsp_external_interrupts.h"
#include "psp_ext_interrupts_eh1.h"
#else
PRE_COMPILED_MSG("no platform was defined")
#endif

#define ACCELERATOR_BASE_ADDRESS    0x90000000
#define MEM_BASE_ADDRESS            0x01000000

#define mat1Addr 0x02000000
#define mat2Addr 0x02000100
#define resultSwAddr 0x02000200
#define resultHwAddr 0x02000300

void create_mat(int address, int rows, int cols);
void print_mat(int address, int colsize, int rowsize);
int verify_matmul(int mat1Address, int mat2Address, int rows, int cols);
void multiply_mat_sw(int mat1Address, int mat2Address, int resultAddress, int rows1, int cols1, int cols2);
void multiply_mat_hw(int mat1Address, int mat2Address, int resultAddress, int rows1, int cols1, int cols2);

int mat1Rows=8, mat1Cols=8, mat2Rows=8, mat2Cols=8;
int accelFlag=0;

volatile int *acceleratorGIER = (int *)(ACCELERATOR_BASE_ADDRESS + 0x04);
volatile int *acceleratorIP_IER = (int *)(ACCELERATOR_BASE_ADDRESS + 0x08);

extern D_PSP_DATA_SECTION D_PSP_ALIGNED(1024) pspInterruptHandler_t G_Ext_Interrupt_Handlers[8];

void DefaultInitialization(void)
{
  u32_t uiSourceId;

  /* Register interrupt vector */
  pspInterruptsSetVectorTableAddress(&M_PSP_VECT_TABLE);

  /* Set external-interrupts vector-table address in MEIVT CSR */
  pspExternalInterruptSetVectorTableAddress(G_Ext_Interrupt_Handlers);

  /* Put the Generation-Register in its initial state (no external interrupts are generated) */
  bspInitializeGenerationRegister(D_PSP_EXT_INT_ACTIVE_HIGH);

  for (uiSourceId = D_BSP_FIRST_IRQ_NUM; uiSourceId <= D_BSP_LAST_IRQ_NUM; uiSourceId++)
  {
    /* Make sure the external-interrupt triggers are cleared */
    bspClearExtInterrupt(uiSourceId);
  }

  /* Set Standard priority order */
  pspExtInterruptSetPriorityOrder(D_PSP_EXT_INT_STANDARD_PRIORITY);

  /* Set interrupts threshold to minimal (== all interrupts should be served) */
  pspExtInterruptsSetThreshold(M_PSP_EXT_INT_THRESHOLD_UNMASK_ALL_VALUE);

  /* Set the nesting priority threshold to minimal (== all interrupts should be served) */
  pspExtInterruptsSetNestingPriorityThreshold(M_PSP_EXT_INT_THRESHOLD_UNMASK_ALL_VALUE);
}

void ExternalIntLine_Initialization(u32_t uiSourceId, u32_t priority, pspInterruptHandler_t pTestIsr)
{
  /* Set Gateway Interrupt type (Level) */
  pspExtInterruptSetType(uiSourceId, D_PSP_EXT_INT_LEVEL_TRIG_TYPE);

  /* Set gateway Polarity (Active high) */
  pspExtInterruptSetPolarity(uiSourceId, D_PSP_EXT_INT_ACTIVE_HIGH);

  /* Clear the gateway */
  pspExtInterruptClearPendingInt(uiSourceId);

  /* Set IRQ4 priority */
  pspExtInterruptSetPriority(uiSourceId, priority);
    
  /* Enable IRQ4 interrupts in the PIC */
  pspExternalInterruptEnableNumber(uiSourceId);

  /* Register ISR */
  G_Ext_Interrupt_Handlers[uiSourceId] = pTestIsr;
}

void my_ISR()
{
    accelFlag = 1;
    printfNexys("Inside ISR!\n");

    /* Stop the generation of the specific external interrupt */
    bspClearExtInterrupt(4);
}

int main()
{
    /* INITIALIZE THE INTERRUPT SYSTEM */
    DefaultInitialization();                            /* Default initialization */
    pspExtInterruptsSetThreshold(5);                    /* Set interrupts threshold to 5 */

    /* INITIALIZE INTERRUPT LINE IRQ4 */
    ExternalIntLine_Initialization(4, 6, my_ISR);     /* Initialize line IRQ4 with a priority of 6. Set GPIO_ISR as the Interrupt Service Routine */

    *acceleratorGIER = 1;
    *acceleratorIP_IER = 1;

    /* ENABLE INTERRUPTS */
    pspInterruptsEnable();                              /* Enable all interrupts in mstatus CSR */
    M_PSP_SET_CSR(D_PSP_MIE_NUM, D_PSP_MIE_MEIE_MASK);  /* Enable external interrupts in mie CSR */

    create_mat(mat1Addr, mat1Rows, mat1Cols);
    create_mat(mat2Addr, mat2Rows, mat2Cols);

    printfNexys("Starting matmul in hardware!\n");
    multiply_mat_hw(mat1Addr, mat2Addr, resultHwAddr, mat1Rows, mat1Cols, mat2Cols);
    // print_mat(resultHwAddr, mat1Rows, mat2Cols);
    while(accelFlag == 0) {}
    printfNexys("Hardware matmul done!\n");
    multiply_mat_sw(mat1Addr, mat2Addr, resultSwAddr, mat1Rows, mat1Cols, mat2Cols);
    // print_mat(resultSwAddr, mat1Rows, mat2Cols);

    int errors = verify_matmul(resultHwAddr, resultSwAddr, mat1Rows, mat2Cols);
    printfNexys("Matmul done with %d errors!\n", errors);

    return 0;
}

void multiply_mat_sw(int mat1Address, int mat2Address, int resultAddress, int rows1, int cols1, int cols2)
{
    float *result = (float *)resultAddress;
    float *mat1 = (float *)mat1Address;
    float *mat2 = (float *)mat2Address;

    for (int i=0; i<rows1; i++) {
        for (int j=0; j<cols2; j++) {
            float val = 0;
            for (int k=0; k<cols1; k++) {
                val += mat1[i*cols1+k]*mat2[k*cols2+j];
            }
            result[i*cols2+j] = val;
        }
    }
}

void multiply_mat_hw(int mat1Address, int mat2Address, int resultAddress, int rows1, int cols1, int cols2)
{
    volatile int *do_matp_mem = (int *)(ACCELERATOR_BASE_ADDRESS + 0x00);
    volatile int *a = (int *)(ACCELERATOR_BASE_ADDRESS + 0x10);
	volatile int *b = (int *)(ACCELERATOR_BASE_ADDRESS + 0x18);
	volatile int *c = (int *)(ACCELERATOR_BASE_ADDRESS + 0x20);
	volatile int *rowsA = (int *)(ACCELERATOR_BASE_ADDRESS + 0x28);
	volatile int *colsA = (int *)(ACCELERATOR_BASE_ADDRESS + 0x30);
	volatile int *colsB = (int *)(ACCELERATOR_BASE_ADDRESS + 0x38);

    *a = mat1Address;
    *b = mat2Address;
    *c = resultAddress;
    *rowsA = rows1;
    *colsA = cols1;
    *colsB = cols2;

    *do_matp_mem = 1;

    // while ((*do_matp_mem & 2) == 0);
}

void create_mat(int address, int rows, int cols)
{
    float *matrix = (float *)address;

    for (int i=0; i<rows; i++) {
        for (int j=0; j<cols; j++) {
            int random_integer = 100;;
            matrix[i*cols+j] = (float)random_integer / 10;
        }
    }
}

void print_mat(int address, int rows, int cols)
{
    float *matrix = (float *)address;

    for (int i=0; i<rows; i++) {
        for (int j=0; j<cols; j++) {
            printfNexys("%.4f\n", matrix[i*cols+j]);
        }
        printfNexys("\n");
    }
    printfNexys("\n\n");
}

int verify_matmul(int mat1Address, int mat2Address, int rows, int cols)
{
    float *mat1 = (float *)mat1Address;
    float *mat2 = (float *)mat2Address;
    int num_errors = 0;

    for (int i=0; i<rows; i++) {
        for (int j=0; j<cols; j++) {
            if(mat1[i*cols+j]-mat2[i*cols+j] >= 0.01) num_errors++;
        }
    }

    return num_errors;
}