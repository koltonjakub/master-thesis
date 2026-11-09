#pragma once


void callKernel();

// #include <cuda_runtime.h>
// #include <iostream>

// __global__ void kernel()
// {
//     printf("CUDA kernel called\n");
// };

// void callKernel()
// {
//     std::cout << "Kernel";
//     kernel<<<1, 1>>>();
//     cudaDeviceSynchronize();
// };
