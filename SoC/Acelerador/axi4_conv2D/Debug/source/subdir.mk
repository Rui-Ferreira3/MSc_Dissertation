################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../axi4_conv2D.cpp 

OBJS += \
./source/axi4_conv2D.o 

CPP_DEPS += \
./source/axi4_conv2D.d 


# Each subdirectory must supply rules for building sources it contributes
source/axi4_conv2D.o: C:/Users/Rui/Rui/MSc_Dissertation/SoC/Acelerador/axi4_conv2D/axi4_conv2D.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vitis_HLS/2022.2/include/ap_sysc -IC:/Xilinx/Vitis_HLS/2022.2/win64/tools/systemc/include -IC:/Xilinx/Vitis_HLS/2022.2/include/etc -IC:/Xilinx/Vitis_HLS/2022.2/win64/tools/auto_cc/include -IC:/Users/Rui/Rui/MSc_Dissertation/SoC/Acelerador -IC:/Xilinx/Vitis_HLS/2022.2/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

