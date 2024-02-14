################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Unity-master/src/unity.c 

OBJS += \
./Drivers/Unity-master/src/unity.o 

C_DEPS += \
./Drivers/Unity-master/src/unity.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Unity-master/src/%.o Drivers/Unity-master/src/%.su Drivers/Unity-master/src/%.cyclo: ../Drivers/Unity-master/src/%.c Drivers/Unity-master/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUNITY_FIXTURE_NO_EXTRAS -DUNITY_TEST -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"C:/Stroboscope/Firmware/Drivers/Unity-master/extras/memory/src" -I"C:/Stroboscope/Firmware/Drivers/Unity-master/extras/fixture/src" -I"C:/Stroboscope/Firmware/Drivers/Unity-master/extras/bdd/src" -I"C:/Stroboscope/Firmware/Drivers/Unity-master/src" -I"C:/Stroboscope/Firmware/Drivers/Unity-master" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-Unity-2d-master-2f-src

clean-Drivers-2f-Unity-2d-master-2f-src:
	-$(RM) ./Drivers/Unity-master/src/unity.cyclo ./Drivers/Unity-master/src/unity.d ./Drivers/Unity-master/src/unity.o ./Drivers/Unity-master/src/unity.su

.PHONY: clean-Drivers-2f-Unity-2d-master-2f-src

