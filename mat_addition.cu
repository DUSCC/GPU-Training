#include<iostream>
#include<string>

int main(int argc, char* argv[])
{
	int N;
	if(argc == 2)
	{
		N = std::stoi(argv[1]);
	}
	else
	{
		std::cerr << "Usage: ./mat_add N"<< "\n";
		return -1;
	}

	float* A = new float[N * N];
	float* B = new float[N * N];
	float* C = new float[N * N];

	for(int i=0; i<N; i++)
	{
		for(int j=0; j<N; j++)
		{
			A[i * N + j]=1.0;
			B[i * N + j]=1.0;
			C[i * N + j]=0.0;
		}
	}

	for(int i=0; i<N; i++)
	{
		for(int j=0; j<N; j++)
		{
			C[i * N + j]= A[i * N + j] + B[i * N + j];
		}
	}


	for(int i=0; i<N; i++)
	{
		for(int j=0; j<N; j++)
		{
			std::cout << C[i * N + j] << " ";
		}
		std::cout << "\n";
	}

	delete[] A;
	delete[] B;
	delete[] C;

	return 0;
}
