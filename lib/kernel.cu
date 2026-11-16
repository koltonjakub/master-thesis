#include "lib/kernel.h"

#include <iostream>

#define CUDA_CHECK(expr)                                                \
  do {                                                                  \
    cudaError_t err = (expr);                                           \
    if (err != cudaSuccess) {                                           \
      fprintf(stderr, "CUDA Error Code  : %d\n     Error String: %s\n", \
              err, cudaGetErrorString(err));                            \
      exit(err);                                                        \
    }                                                                   \
  } while (0)

__global__ void kernel() {
  const int tid = blockDim.x * blockIdx.x + threadIdx.x;
  printf("CUDA %d-th kernel called!\n", tid);
}

void callKernel() {
  kernel<<<4, 4>>>();
  CUDA_CHECK(cudaGetLastError());
  CUDA_CHECK(cudaDeviceSynchronize());
}