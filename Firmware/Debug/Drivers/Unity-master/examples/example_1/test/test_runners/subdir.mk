################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Unity-master/examples/example_1/test/test_runners/TestProductionCode2_Runner.c \
../Drivers/Unity-master/examples/example_1/test/test_runners/TestProductionCode_Runner.c 

OBJS += \
./Drivers/Unity-master/examples/example_1/test/test_runners/TestProductionCode2_Runner.o \
./Drivers/Unity-master/examples/example_1/test/test_runners/TestProductionCode_Runner.o 

C_DEPS += \
./Drivers/Unity-master/examples/example_1/test/test_runners/TestProductionCode2_Runner.d \
./Drivers/Unity-master/examples/example_1/test/test_runners/TestProductionCode_Runner.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Unity-master/examples/example_1/test/test_runners/%.o Drivers/Unity-master/examples/example_1/test/test_runners/%.su Drivers/Unity-master/examples/example_1/test/test_runners/%.cyclo: ../Drivers/Unity-master/examples/example_1/test/test_runners/%.c Drivers/Unity-master/examples/example_1/test/test_runners/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-Unity-2d-master-2f-examples-2f-example_1-2f-test-2f-test_runners

clean-Drivers-2f-Unity-2d-master-2f-examples-2f-example_1-2f-test-2f-test_runners:
	-$(RM) ./Drivers/Unity-master/examples/example_1/test/test_runners/TestProductionCode2_Runner.cyclo ./Drivers/Unity-master/examples/example_1/test/test_runners/TestProductionCode2_Runner.d ./Drivers/Unity-master/examples/example_1/test/test_runners/TestProductionCode2_Runner.o ./Drivers/Unity-master/examples/example_1/test/test_runners/TestProductionCode2_Runner.su ./Drivers/Unity-master/examples/example_1/test/test_runners/TestProductionCode_Runner.cyclo ./Drivers/Unity-master/examples/example_1/test/test_runners/TestProductionCode_Runner.d ./Drivers/Unity-master/examples/example_1/test/test_runners/TestProductionCode_Runner.o ./Drivers/Unity-master/examples/example_1/test/test_runners/TestProductionCode_Runner.su

.PHONY: clean-Drivers-2f-Unity-2d-master-2f-examples-2f-example_1-2f-test-2f-test_runners

