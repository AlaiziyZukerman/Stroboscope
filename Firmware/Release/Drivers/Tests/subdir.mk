################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Tests/AllTests.c \
../Drivers/Tests/Sqrt.c 

OBJS += \
./Drivers/Tests/AllTests.o \
./Drivers/Tests/Sqrt.o 

C_DEPS += \
./Drivers/Tests/AllTests.d \
./Drivers/Tests/Sqrt.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Tests/%.o Drivers/Tests/%.su Drivers/Tests/%.cyclo: ../Drivers/Tests/%.c Drivers/Tests/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-Tests

clean-Drivers-2f-Tests:
	-$(RM) ./Drivers/Tests/AllTests.cyclo ./Drivers/Tests/AllTests.d ./Drivers/Tests/AllTests.o ./Drivers/Tests/AllTests.su ./Drivers/Tests/Sqrt.cyclo ./Drivers/Tests/Sqrt.d ./Drivers/Tests/Sqrt.o ./Drivers/Tests/Sqrt.su

.PHONY: clean-Drivers-2f-Tests

