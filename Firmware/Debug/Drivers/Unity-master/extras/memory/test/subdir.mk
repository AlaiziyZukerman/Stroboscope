################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Unity-master/extras/memory/test/unity_memory_Test.c \
../Drivers/Unity-master/extras/memory/test/unity_memory_TestRunner.c \
../Drivers/Unity-master/extras/memory/test/unity_output_Spy.c 

OBJS += \
./Drivers/Unity-master/extras/memory/test/unity_memory_Test.o \
./Drivers/Unity-master/extras/memory/test/unity_memory_TestRunner.o \
./Drivers/Unity-master/extras/memory/test/unity_output_Spy.o 

C_DEPS += \
./Drivers/Unity-master/extras/memory/test/unity_memory_Test.d \
./Drivers/Unity-master/extras/memory/test/unity_memory_TestRunner.d \
./Drivers/Unity-master/extras/memory/test/unity_output_Spy.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Unity-master/extras/memory/test/%.o Drivers/Unity-master/extras/memory/test/%.su Drivers/Unity-master/extras/memory/test/%.cyclo: ../Drivers/Unity-master/extras/memory/test/%.c Drivers/Unity-master/extras/memory/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-Unity-2d-master-2f-extras-2f-memory-2f-test

clean-Drivers-2f-Unity-2d-master-2f-extras-2f-memory-2f-test:
	-$(RM) ./Drivers/Unity-master/extras/memory/test/unity_memory_Test.cyclo ./Drivers/Unity-master/extras/memory/test/unity_memory_Test.d ./Drivers/Unity-master/extras/memory/test/unity_memory_Test.o ./Drivers/Unity-master/extras/memory/test/unity_memory_Test.su ./Drivers/Unity-master/extras/memory/test/unity_memory_TestRunner.cyclo ./Drivers/Unity-master/extras/memory/test/unity_memory_TestRunner.d ./Drivers/Unity-master/extras/memory/test/unity_memory_TestRunner.o ./Drivers/Unity-master/extras/memory/test/unity_memory_TestRunner.su ./Drivers/Unity-master/extras/memory/test/unity_output_Spy.cyclo ./Drivers/Unity-master/extras/memory/test/unity_output_Spy.d ./Drivers/Unity-master/extras/memory/test/unity_output_Spy.o ./Drivers/Unity-master/extras/memory/test/unity_output_Spy.su

.PHONY: clean-Drivers-2f-Unity-2d-master-2f-extras-2f-memory-2f-test

