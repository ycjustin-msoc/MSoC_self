#include <math.h>					//Required for cos and sin functions
#include "ap_fixed.h"
#include <iostream>
using namespace std;

typedef float IN_TYPE;		// Data type for the input signal
typedef float TEMP_TYPE; // Data type for the temporary variables
#define N 256							// DFT Size

struct Rmse
{
	int num_sq;
	float sum_sq;
	float error;

	Rmse(){ num_sq = 0; sum_sq = 0; error = 0; }

	float add_value(float d_n)
	{
		num_sq++;
		sum_sq += (d_n*d_n);
		error = sqrtf(sum_sq / num_sq);
		return error;
	}

};


Rmse rmse_w_tmp, rmse_w;

//void dft(IN_TYPE sample_real[N], IN_TYPE sample_imag[N], float* sample_real_out[N], float* sample_imag_out[N]) {
void dft(IN_TYPE sample_real[N], IN_TYPE sample_imag[N]) {
	int i, j;
	TEMP_TYPE w;
	TEMP_TYPE c, s;

	// Temporary arrays to hold the intermediate frequency domain results
	TEMP_TYPE temp_real[N];
	TEMP_TYPE temp_imag[N];

	float* temp_real_tmp;
	float* temp_imag_tmp;

	TEMP_TYPE w_tmp[N];
	//ap_ufixed<29,8> w_tmp[N];
	//ap_ufixed<13,2> pii = 3.141592653589;
	//ap_ufixed<14,3> pii_Lsft1 = (ap_ufixed<14,3>)pii<<1;
	//ap_ufixed<21,1> pii_Rsft8 = (ap_ufixed<21,3>)pii_Lsft1>>8;
	dft_labe01:for (i = 0; i < N; i += 1) {
		float w_tmp0 = ldexpf(3.141592653589,1);
		float w_tmp1 = ldexpf(w_tmp0,-8);
		w_tmp[i] = (w_tmp1) * (TEMP_TYPE)i;

		//w_tmp[i] = (pii_Rsft8) * (ap_ufixed<8,8>)i;
		//rmse_w_tmp.add_value((float)w_tmp[i] - ((w_tmp1) * (TEMP_TYPE)i));
	}

	// Calculate each frequency domain sample iteratively
	dft_label1:for (i = 0; i < N; i += 1) {
		temp_real[i] = 0;
		temp_imag[i] = 0;
		//&temp_real_tmp = 0;
		//&temp_imag_tmp = 0;

		// (2 * pi * i)/N
		/*float w_tmp0 = ldexpf(3.141592653589,1);
		float w_tmp1 = ldexpf(w_tmp0,-8);
		w = (w_tmp1) * (TEMP_TYPE)i;*/
		w = (TEMP_TYPE)w_tmp[i];

		// Calculate the jth frequency sample sequentially
		dft_label1_1:for (j = 0; j < N; j += 1) {
			// Utilize HLS tool to calculate sine and cosine values
			c = cos(j * w);
			s = -sin(j * w);

			// Multiply the current phasor with the appropriate input sample and keep
			// running sum
			temp_real[i] += (sample_real[j] * c - sample_imag[j] * s);
			temp_imag[i] += (sample_real[j] * s + sample_imag[j] * c);
			//&temp_real_tmp += temp_real[i];
			//&temp_imag_tmp += temp_imag[i];
		}
		//sample_real_out[i] = temp_real_tmp;
		//sample_imag_out[i] = temp_imag_tmp;
	}

	// Perform an inplace DFT, i.e., copy result into the input arrays
	dft_label2:for (i = 0; i < N; i += 1) {
		sample_real[i] = temp_real[i];
		sample_imag[i] = temp_imag[i];
		//sample_real_out[i] = temp_real[i];
		//sample_imag_out[i] = temp_imag[i];

		if(i<5){
			//cout << "sample_real = " << sample_real[i] << endl;
		}
	}


	//cout << " rmse_w_tmp.error= " <<  rmse_w_tmp.error << endl;
	//cout << " rmse_w.error= " <<  rmse_w.error << endl;

}
