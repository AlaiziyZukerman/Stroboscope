################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Unity-master/test/tests/test_unity_arrays.c \
../Drivers/Unity-master/test/tests/test_unity_core.c \
../Drivers/Unity-master/test/tests/test_unity_doubles.c \
../Drivers/Unity-master/test/tests/test_unity_floats.c \
../Drivers/Unity-master/test/tests/test_unity_integers.c \
../Drivers/Unity-master/test/tests/test_unity_integers_64.c \
../Drivers/Unity-master/test/tests/test_unity_memory.c \
../Drivers/Unity-master/test/tests/test_unity_parameterized.c \
../Drivers/Unity-master/test/tests/test_unity_parameterizedDemo.c \
../Drivers/Unity-master/test/tests/test_unity_strings.c 

OBJS += \
./Drivers/Unity-master/test/tests/test_unity_arrays.o \
./Drivers/Unity-master/test/tests/test_unity_core.o \
./Drivers/Unity-master/test/tests/test_unity_doubles.o \
./Drivers/Unity-master/test/tests/test_unity_floats.o \
./Drivers/Unity-master/test/tests/test_unity_integers.o \
./Drivers/Unity-master/test/tests/test_unity_integers_64.o \
./Drivers/Unity-master/test/tests/test_unity_memory.o \
./Drivers/Unity-master/test/tests/test_unity_parameterized.o \
./Drivers/Unity-master/test/tests/test_unity_parameterizedDemo.o \
./Drivers/Unity-master/test/tests/test_unity_strings.o 

C_DEPS += \
./Drivers/Unity-master/test/tests/test_unity_arrays.d \
./Drivers/Unity-master/test/tests/test_unity_core.d \
./Drivers/Unity-master/test/tests/test_unity_doubles.d \
./Drivers/Unity-master/test/tests/test_unity_floats.d \
./Drivers/Unity-master/test/tests/test_unity_integers.d \
./Drivers/Unity-master/test/tests/test_unity_integers_64.d \
./Drivers/Unity-master/test/tests/test_unity_memory.d \
./Drivers/Unity-master/test/tests/test_unity_parameterized.d \
./Drivers/Unity-master/test/tests/test_unity_parameterizedDemo.d \
./Drivers/Unity-master/test/tests/test_unity_strings.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Unity-master/test/tests/%.o Drivers/Unity-master/test/tests/%.su Drivers/Unity-master/test/tests/%.cyclo: ../Drivers/Unity-master/test/tests/%.c Drivers/Unity-master/test/tests/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-Unity-2d-master-2f-test-2f-tests

clean-Drivers-2f-Unity-2d-master-2f-test-2f-tests:
	-$(RM) ./Drivers/Unity-master/test/tests/test_unity_arrays.cyclo ./Drivers/Unity-master/test/tests/test_unity_arrays.d ./Drivers/Unity-master/test/tests/test_unity_arrays.o ./Drivers/Unity-master/test/tests/test_unity_arrays.su ./Drivers/Unity-master/test/tests/test_unity_core.cyclo ./Drivers/Unity-master/test/tests/test_unity_core.d ./Drivers/Unity-master/test/tests/test_unity_core.o ./Drivers/Unity-master/test/tests/test_unity_core.su ./Drivers/Unity-master/test/tests/test_unity_doubles.cyclo ./Drivers/Unity-master/test/tests/test_unity_doubles.d ./Drivers/Unity-master/test/tests/test_unity_doubles.o ./Drivers/Unity-master/test/tests/test_unity_doubles.su ./Drivers/Unity-master/test/tests/test_unity_floats.cyclo ./Drivers/Unity-master/test/tests/test_unity_floats.d ./Drivers/Unity-master/test/tests/test_unity_floats.o ./Drivers/Unity-master/test/tests/test_unity_floats.su ./Drivers/Unity-master/test/tests/test_unity_integers.cyclo ./Drivers/Unity-master/test/tests/test_unity_integers.d ./Drivers/Unity-master/test/tests/test_unity_integers.o ./Drivers/Unity-master/test/tests/test_unity_integers.su ./Drivers/Unity-master/test/tests/test_unity_integers_64.cyclo ./Drivers/Unity-master/test/tests/test_unity_integers_64.d ./Drivers/Unity-master/test/tests/test_unity_integers_64.o ./Drivers/Unity-master/test/tests/test_unity_integers_64.su ./Drivers/Unity-master/test/tests/test_unity_memory.cyclo ./Drivers/Unity-master/test/tests/test_unity_memory.d ./Drivers/Unity-master/test/tests/test_unity_memory.o ./Drivers/Unity-master/test/tests/test_unity_memory.su ./Drivers/Unity-master/test/tests/test_unity_parameterized.cyclo ./Drivers/Unity-master/test/tests/test_unity_parameterized.d ./Drivers/Unity-master/test/tests/test_unity_parameterized.o ./Drivers/Unity-master/test/tests/test_unity_parameterized.su ./Drivers/Unity-master/test/tests/test_unity_parameterizedDemo.cyclo ./Drivers/Unity-master/test/tests/test_unity_parameterizedDemo.d ./Drivers/Unity-master/test/tests/test_unity_parameterizedDemo.o ./Drivers/Unity-master/test/tests/test_unity_parameterizedDemo.su ./Drivers/Unity-master/test/tests/test_unity_strings.cyclo ./Drivers/Unity-master/test/tests/test_unity_strings.d ./Drivers/Unity-master/test/tests/test_unity_strings.o ./Drivers/Unity-master/test/tests/test_unity_strings.su

.PHONY: clean-Drivers-2f-Unity-2d-master-2f-test-2f-tests

