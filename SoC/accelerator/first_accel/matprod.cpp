#include "matprod.h"

#include <stdio.h>
#include <string.h>

void matprod(double *m1, double *m2, double *m3, int N1, int N2, int N3) {
#pragma HLS INTERFACE s_axilite port=return bundle=BUS1
#pragma HLS INTERFACE s_axilite port=N1 bundle=BUS1
#pragma HLS INTERFACE s_axilite port=N2 bundle=BUS1
#pragma HLS INTERFACE s_axilite port=N3 bundle=BUS1

#pragma HLS INTERFACE m_axi port = m1 depth=MAX_MAT_SIZE
#pragma HLS INTERFACE m_axi port = m2 depth=MAX_MAT_SIZE
#pragma HLS INTERFACE m_axi port = m3 depth=MAX_MAT_SIZE

	static double regc=0;
	int i, j, k;

	double m1_buffer[MAX_MEM_SIZE];
	double m2_buffer[MAX_MEM_SIZE];
	double m3_buffer[MAX_MEM_SIZE];

	memcpy(m1_buffer, (const double*)m1, N1*N2 * sizeof(double));
	memcpy(m2_buffer, (const double*)m2, N2*N3 * sizeof(double));

	for (i=0, j=0, k=0; i<N1; ) {
		double mul = m1_buffer[i*N2+k] * m2_buffer[k*N3+j];
		if (k == 0) regc = mul;
		else regc += mul;
		k++;
		if (k == N2) {
			k = 0;
			m3_buffer[i*N3+j] = regc;
			j++;
			if (j == N3) { j = 0; i++; }
		}
	}


	memcpy((double*)m3, m3_buffer, N1*N3 * sizeof(double));
}
