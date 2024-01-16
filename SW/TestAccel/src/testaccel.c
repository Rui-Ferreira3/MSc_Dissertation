#if defined(D_NEXYS_A7)
#include <bsp_printf.h>
#include <bsp_mem_map.h>
#include <bsp_version.h>
#else
PRE_COMPILED_MSG("no platform was defined")
#endif

#define IP_BASEADDR 0x10000000

#define DELAY 10000000

#define MAT_SIZE 4

#define N1 MAT_SIZE
#define N2 MAT_SIZE
#define N3 MAT_SIZE

#define MATA_START_ADDRESS 0x01000100
#define MATB_START_ADDRESS 0x01000200
#define MATC_START_ADDRESS 0x01000300
#define MATCS_START_ADDRESS 0x01000400

void print_mat(float *x, int colsize, int rowsize)
{
    int i, j;

    for (i=0; i<colsize; i++) {
        for (j=0; j<rowsize; j++) {
            printfNexys("%d", (int)x[i*rowsize+j]);
        }
        printfNexys("");
    }
}

void SW_mat_prod(float *matA, float *matB, float *matCS)
{
    int i, j, k;

    for (i=0; i<N1; i++) {
        for (j=0; j<N3; j++) {
            float val = 0;
            for (k=0; k<N2; k++) {
                val += matA[i*N2+k]*matB[k*N3+j];
            }
            matCS[i*N3+j] = val;
        }
    }
}

void HW_mat_prod(float *matA, float *matB, float *matCH)
{
	int i;
	// Explicitly define the addresses of the IP memory-mapped I/O registers
	volatile float *a = (float *)(IP_BASEADDR + 0x10);
	volatile float *b = (float *)(IP_BASEADDR + 0x1c);
	volatile float *c = (float *)(IP_BASEADDR + 0x28);
	volatile int *rowsA = (int *)(IP_BASEADDR + 0x34);
	volatile int *colsA = (int *)(IP_BASEADDR + 0x3c);
	volatile int *colsB = (int *)(IP_BASEADDR + 0x44);
	volatile int *do_matp_mem = (int *)(IP_BASEADDR + 0x00);

	*rowsA = N1;
	*colsA = N2;
	*colsB = N3;
    printfNexys("Sent sizes!");

	// for (i=0; i<(N1*N2); i++) {
	// 	a[i] = matA[i];
	// }
    a = matA;
    printfNexys("Sent matrix A!");

	// for (i=0; i<(N2*N3); i++) {
	// 	b[i] = matB[i];
	// }
    b = matB;
    printfNexys("Sent matrix B!");
    c = matCH;
    printfNexys("Sent matrix B!");
	*do_matp_mem = 1;
	while ((*do_matp_mem & 2) == 0);

	// for (i=0; i<(N1*N3); i++) {
	// 	matCH[i] = c[i];
	// }
}

int main()
{
    volatile int *do_matp_mem = (int *)0x10000000;
    volatile int *a = (int *)0x10000010;
	volatile int *b = (int *)0x1000001c;
	volatile int *c = (int *)0x10000028;
	volatile int *rowsA = (int *)0x10000034;
	volatile int *colsA = (int *)0x1000003c;
	volatile int *colsB = (int *)0x10000044;

    float *matA = (float *)MATA_START_ADDRESS;
    float *matB = (float *)MATB_START_ADDRESS;
    float *matC = (float *)MATC_START_ADDRESS;
    float *matCS = (float *)MATCS_START_ADDRESS;

    uartInit();

    *do_matp_mem = 0;

    float arrayA[N1*N2] = {
        -87,    -21,    86,     107, 
        -84,    41,     -125,   -95, 
        59,     111,    -33,    -33,
        -52,    124,    -112,   108};
    float arrayB[N2*N3] = {
        62,     84,     109,    -47, 
        -122,   -59,    -51,    25, 
        -91,    14,     -47,    -27,
        -45,    -123,   -36,    -77};

    for(int i=0; i<N1*N2; i++) matA[i] = arrayA[i];
    printfNexys("Matrix A:\n");
    print_mat(matA, N1, N2);
    for(int i=0; i<N2*N3; i++) matB[i] = arrayB[i];
    printfNexys("Matrix B:\n");
    print_mat(matB, N2, N3);

    printfNexys("Matrix C before accel:\n");
    print_mat(matC, N1, N3);

    *a = MATA_START_ADDRESS;
    *b = MATB_START_ADDRESS;
    *c = MATC_START_ADDRESS;
    *rowsA = N1;
    *colsA = N2;
    *colsB = N3;

    *do_matp_mem = 1;

    while ((*do_matp_mem & 2) == 0);

    printfNexys("Matrix C after accel:\n");
    print_mat(matC, N1, N3);

    int i, j, k;
    printfNexys("Matrix C software:\n");
    for (i=0; i<N1; i++) {
        for (j=0; j<N3; j++) {
            float val = 0;
            for (k=0; k<N2; k++) {
                val += matA[i*N2+k]*matB[k*N3+j];
            }
            matCS[i*N3+j] = val;
            printfNexys("%d", (int)val);
        }
        printfNexys("\n");
    }

    printfNexys("Done!\n");


  return 0;
}