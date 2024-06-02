# IST MSc Dissertation Rui Ferreira

In this repository it is possible to find the source files used in the MSc Dissertation "Evaluation of Real Time Operating System in RISC-V".

The purpose of this work was to evaluate the performance of a Real-Time operating system in an SoC wiht a RISC-V based processor with an hardware accelerator. For this the SoC SweRVolf was adapted to contain an hardware accelerator for matrix multiplication, and three scenarios were devoloped for two seperate use cases, multiplication of pairs of matrices and the prediction of digits from the MNIST dataset using a neural network.

This repository was created with the hardware implementation and the software applications code. The code is organized as sush:

- NN: source code of the neural network that was adapted to c and to use different Zephyr mechanisms.
- SoC: hardware description of the SoC with the RISC-V processor:
    - RVfpgaBaseline: SweRVolf SoC adapted for the Nexys A7 board
    - RVfpgaNexys-MMA: Final SoC implementation, includin the hadware accelerator
    - accelerator: source code of the hadware accelerator for matrix multiplication
    - sources: source files used to implement the base SoC
- ZephyrApplication: source code for the Zephyr OS application including the different scenarios and use cases
    - matmulUCX: the three different scenarios for the multiplication of pairs of matrices
    - nnUCX: the three different scenarios for the prediction use case using the neural network
- EnvironmentDescription: pdf with the envirnment used in this dissertation
- importMissingSources: python script that copies any missing source file in the SoC vivado project
    - to copy the source files use the command: python3 importMissingSources.py [source] [destination]
