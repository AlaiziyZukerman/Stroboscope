################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Unity-master/extras/fixture/test/main/AllTests.c 

OBJS += \
./Drivers/Unity-master/extras/fixture/test/main/AllTests.o 

C_DEPS += \
./Drivers/Unity-master/extras/fixture/test/main/AllTests.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Unity-master/extras/fixture/test/main/%.o Drivers/Unity-master/extras/fixture/test/main/%.su Drivers/Unity-master/extras/fixture/test/main/%.cyclo: ../Drivers/Unity-master/extras/fixture/test/main/%.c Drivers/Unity-master/extras/fixture/test/main/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-Unity-2d-master-2f-extras-2f-fixture-2f-test-2f-main

clean-Drivers-2f-Unity-2d-master-2f-extras-2f-fixture-2f-test-2f-main:
	-$(RM) ./Drivers/Unity-master/extras/fixture/test/main/AllTests.cyclo ./Drivers/Unity-master/extras/fixture/test/main/AllTests.d ./Drivers/Unity-master/extras/fixture/test/main/AllTests.o ./Drivers/Unity-master/extras/fixture/test/main/AllTests.su

.PHONY: clean-Drivers-2f-Unity-2d-master-2f-extras-2f-fixture-2f-test-2f-main

