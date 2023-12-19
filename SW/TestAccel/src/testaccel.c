#if defined(D_NEXYS_A7)
#include <bsp_printf.h>
#include <bsp_mem_map.h>
#include <bsp_version.h>
#else
PRE_COMPILED_MSG("no platform was defined")
#endif

#include <stdio.h>
#include <stdlib.h>

#define IP_BASEADDR 0x10000000

#define DELAY 10000000

#define MAT_SIZE 4

#define N1 MAT_SIZE
#define N2 MAT_SIZE
#define N3 MAT_SIZE

#define MATA_START_ADDRESS 0x01000000
#define MATB_START_ADDRESS (MATA_START_ADDRESS+8*N1*N2)
#define MATCS_START_ADDRESS (MATB_START_ADDRESS+8*N2*N3)
#define MATCH_START_ADDRESS (MATCS_START_ADDRESS+8*N1*N3)

void print_mat(double *x, int colsize, int rowsize)
{
    int i, j;

    for (i=0; i<colsize; i++) {
        for (j=0; j<rowsize; j++) {
            printfNexys("%d", (int)x[i*rowsize+j]);
        }
        printfNexys("");
    }
}

void SW_mat_prod(double *matA, double *matB, double *matCS)
{
    int i, j, k;

    for (i=0; i<N1; i++) {
        for (j=0; j<N3; j++) {
            double val = 0;
            for (k=0; k<N2; k++) {
                val += matA[i*N2+k]*matB[k*N3+j];
            }
            matCS[i*N3+j] = val;
        }
    }
}

void HW_mat_prod(double *matA, double *matB, double *matCH)
{
	int i;
	// Explicitly define the addresses of the IP memory-mapped I/O registers
	volatile double *a = (double *)(IP_BASEADDR + 0x10);
	volatile double *b = (double *)(IP_BASEADDR + 0x1c);
	volatile double *c = (double *)(IP_BASEADDR + 0x28);
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
    uartInit();

    double arrayA[N1*N2] = {
        -87,    -21,    86,     107, 
        -84,    41,     -125,   -95, 
        59,     111,    -33,    -33,
        -52,    124,    -112,   108};
    double arrayB[N2*N3] = {
        62,     84,     109,    -47, 
        -122,   -59,    -51,    25, 
        -91,    14,     -47,    -27,
        -45,    -123,   -36,    -77};

    double *matA = (double *)(MATA_START_ADDRESS);   // matA N1xN2
    double *matB = (double *)(MATB_START_ADDRESS);   // matB N2xN3
    double *matCS = (double *)(MATCS_START_ADDRESS);   // matC N1xN3
    double *matCH = (double *)(MATCH_START_ADDRESS);   // matC N1xN3

    for(int i=0; i<N1*N2; i++) matA[i] = arrayA[i];
    for(int i=0; i<N2*N3; i++) matB[i] = arrayB[i];
    

    printfNexys("Matrix A:");
    print_mat(matA,N1,N2);
    printfNexys("\n\nMatrix B:");
    print_mat(matB,N2,N3);

    for (int i=0; i < DELAY; i++) ; // delay between printf's
    printfNexys("\n\nStaring Software matprod...");
    SW_mat_prod(matA, matB, matCS);

    printfNexys("Matrix CS:");
    print_mat(matCS,N1,N3);

    for (int i=0; i < DELAY; i++) ; // delay between printf's
    printfNexys("\n\nStarting Hardware matprod...\n");
    HW_mat_prod(matA, matB, matCH);
    printfNexys("\nFinished Hardware matprod\n");
    printfNexys("Matrix CH:");
    print_mat(matCH,N1,N3);


  return 0;
}