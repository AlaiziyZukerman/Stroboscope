################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Unity-master/extras/bdd/test/test_bdd.c 

OBJS += \
./Drivers/Unity-master/extras/bdd/test/test_bdd.o 

C_DEPS += \
./Drivers/Unity-master/extras/bdd/test/test_bdd.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Unity-master/extras/bdd/test/%.o Drivers/Unity-master/extras/bdd/test/%.su Drivers/Unity-master/extras/bdd/test/%.cyclo: ../Drivers/Unity-master/extras/bdd/test/%.c Drivers/Unity-master/extras/bdd/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-Unity-2d-master-2f-extras-2f-bdd-2f-test

clean-Drivers-2f-Unity-2d-master-2f-extras-2f-bdd-2f-test:
	-$(RM) ./Drivers/Unity-master/extras/bdd/test/test_bdd.cyclo ./Drivers/Unity-master/extras/bdd/test/test_bdd.d ./Drivers/Unity-master/extras/bdd/test/test_bdd.o ./Drivers/Unity-master/extras/bdd/test/test_bdd.su

.PHONY: clean-Drivers-2f-Unity-2d-master-2f-extras-2f-bdd-2f-test

