#include "matprod.h"

#include <stdio.h>
#include <string.h>

void matprod(float *m1, float *m2, float *m3, int N1, int N2, int N3) {
#pragma HLS INTERFACE s_axilite port=return bundle=BUS1
#pragma HLS INTERFACE s_axilite port=N1 bundle=BUS1
#pragma HLS INTERFACE s_axilite port=N2 bundle=BUS1
#pragma HLS INTERFACE s_axilite port=N3 bundle=BUS1

#pragma HLS INTERFACE m_axi port = m1 depth=MAX_MAT_SIZE
#pragma HLS INTERFACE m_axi port = m2 depth=MAX_MAT_SIZE
#pragma HLS INTERFACE m_axi port = m3 depth=MAX_MAT_SIZE

	static float regc=0;
	int i, j, k;

	float m1_buffer[MAX_MEM_SIZE];
	float m2_buffer[MAX_MEM_SIZE];
	float m3_buffer[MAX_MEM_SIZE];

	memcpy(m1_buffer, (const float*)m1, N1*N2 * sizeof(float));
	memcpy(m2_buffer, (const float*)m2, N2*N3 * sizeof(float));

	for (i=0, j=0, k=0; i<N1; ) {
		float mul = m1_buffer[i*N2+k] * m2_buffer[k*N3+j];
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


	memcpy((float*)m3, m3_buffer, N1*N3 * sizeof(float));
}
