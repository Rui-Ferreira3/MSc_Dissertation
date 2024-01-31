#include "matprod.h"

#include <stdio.h>
#include <string.h>

void matprod(float *m1, float *m2, float *m3, int N1, int N2, int N3) {
#pragma HLS INTERFACE s_axilite port=return bundle=BUS1
#pragma HLS INTERFACE s_axilite port=N1 bundle=BUS1
#pragma HLS INTERFACE s_axilite port=N2 bundle=BUS1
#pragma HLS INTERFACE s_axilite port=N3 bundle=BUS1

#pragma HLS INTERFACE m_axi port = m1 depth=MAX_DEPTH_SIZE
#pragma HLS INTERFACE m_axi port = m2 depth=MAX_DEPTH_SIZE
#pragma HLS INTERFACE m_axi port = m3 depth=MAX_DEPTH_SIZE

	static float regc=0;
	int i, j, k;

	float m1_buffer[MAX_MEM_SIZE];
	float m2_buffer[MAX_MEM_SIZE];
	float m3_buffer[MAX_MEM_SIZE];

	for(int i=0; i<N1*N2; i++) m1_buffer[i] = m1[i];
	for(int i=0; i<N2*N3; i++) m2_buffer[i] = m2[i];

	for (int i =0; i <N1; i ++) {
		for (int j=0; j<N3; j++) {
			for (int k=0; k<N2; k++) {
				float mul = m1_buffer[i*N2+k] * m2_buffer[k*N3+j];
				if (k==0) regc = mul;
				else regc += mul;
			}
			m3_buffer[i *N3+j] = regc;
		}
	}

	for(int i=0; i<N1*N3; i++) m3[i] = m3_buffer[i];
}
