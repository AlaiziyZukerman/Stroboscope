################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Unity-master/examples/example_3/test/TestProductionCode.c \
../Drivers/Unity-master/examples/example_3/test/TestProductionCode2.c 

OBJS += \
./Drivers/Unity-master/examples/example_3/test/TestProductionCode.o \
./Drivers/Unity-master/examples/example_3/test/TestProductionCode2.o 

C_DEPS += \
./Drivers/Unity-master/examples/example_3/test/TestProductionCode.d \
./Drivers/Unity-master/examples/example_3/test/TestProductionCode2.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Unity-master/examples/example_3/test/%.o Drivers/Unity-master/examples/example_3/test/%.su Drivers/Unity-master/examples/example_3/test/%.cyclo: ../Drivers/Unity-master/examples/example_3/test/%.c Drivers/Unity-master/examples/example_3/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-Unity-2d-master-2f-examples-2f-example_3-2f-test

clean-Drivers-2f-Unity-2d-master-2f-examples-2f-example_3-2f-test:
	-$(RM) ./Drivers/Unity-master/examples/example_3/test/TestProductionCode.cyclo ./Drivers/Unity-master/examples/example_3/test/TestProductionCode.d ./Drivers/Unity-master/examples/example_3/test/TestProductionCode.o ./Drivers/Unity-master/examples/example_3/test/TestProductionCode.su ./Drivers/Unity-master/examples/example_3/test/TestProductionCode2.cyclo ./Drivers/Unity-master/examples/example_3/test/TestProductionCode2.d ./Drivers/Unity-master/examples/example_3/test/TestProductionCode2.o ./Drivers/Unity-master/examples/example_3/test/TestProductionCode2.su

.PHONY: clean-Drivers-2f-Unity-2d-master-2f-examples-2f-example_3-2f-test

