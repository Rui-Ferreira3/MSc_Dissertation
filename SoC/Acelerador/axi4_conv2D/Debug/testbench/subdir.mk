################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../tb_axi4_conv2D.cpp 

OBJS += \
./testbench/tb_axi4_conv2D.o 

CPP_DEPS += \
./testbench/tb_axi4_conv2D.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/tb_axi4_conv2D.o: C:/Users/Rui/Rui/MSc_Dissertation/SoC/Acelerador/axi4_conv2D/tb_axi4_conv2D.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -IC:/Xilinx/Vitis_HLS/2022.2/include/ap_sysc -IC:/Xilinx/Vitis_HLS/2022.2/win64/tools/systemc/include -IC:/Xilinx/Vitis_HLS/2022.2/include/etc -IC:/Xilinx/Vitis_HLS/2022.2/win64/tools/auto_cc/include -IC:/Users/Rui/Rui/MSc_Dissertation/SoC/Acelerador -IC:/Xilinx/Vitis_HLS/2022.2/include -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/tb_axi4_conv2D.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


