#include "matprod.h"

#include <stdio.h>
#include <string.h>

void matprod(int *m1, int *m2, int *m3, int N1, int N2, int N3) {
#pragma HLS INTERFACE s_axilite port=return bundle=BUS1
#pragma HLS INTERFACE s_axilite port=N1 bundle=BUS1
#pragma HLS INTERFACE s_axilite port=N2 bundle=BUS1
#pragma HLS INTERFACE s_axilite port=N3 bundle=BUS1

#pragma HLS INTERFACE m_axi port = m1 depth=MAX_MAT_SIZE
#pragma HLS INTERFACE m_axi port = m2 depth=MAX_MAT_SIZE
#pragma HLS INTERFACE m_axi port = m3 depth=MAX_MAT_SIZE

	static int regc=0;
	int i, j, k;

	int m1_buffer[MAX_MEM_SIZE];
	int m2_buffer[MAX_MEM_SIZE];
	int m3_buffer[MAX_MEM_SIZE];

	memcpy(m1_buffer, (const int*)m1, N1*N2 * sizeof(int));
	memcpy(m2_buffer, (const int*)m2, N2*N3 * sizeof(int));

	for (i=0, j=0, k=0; i<N1; ) {
#pragma HLS LOOP_TRIPCOUNT max=1000
#pragma HLS PIPELINE
		int mul = m1_buffer[i*N2+k] * m2_buffer[k*N3+j];
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


	memcpy((int*)m3, m3_buffer, N1*N3 * sizeof(int));
}
