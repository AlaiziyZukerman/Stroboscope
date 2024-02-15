################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Unity-master/test/testdata/testRunnerGenerator.c \
../Drivers/Unity-master/test/testdata/testRunnerGeneratorSmall.c \
../Drivers/Unity-master/test/testdata/testRunnerGeneratorWithMocks.c 

OBJS += \
./Drivers/Unity-master/test/testdata/testRunnerGenerator.o \
./Drivers/Unity-master/test/testdata/testRunnerGeneratorSmall.o \
./Drivers/Unity-master/test/testdata/testRunnerGeneratorWithMocks.o 

C_DEPS += \
./Drivers/Unity-master/test/testdata/testRunnerGenerator.d \
./Drivers/Unity-master/test/testdata/testRunnerGeneratorSmall.d \
./Drivers/Unity-master/test/testdata/testRunnerGeneratorWithMocks.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Unity-master/test/testdata/%.o Drivers/Unity-master/test/testdata/%.su Drivers/Unity-master/test/testdata/%.cyclo: ../Drivers/Unity-master/test/testdata/%.c Drivers/Unity-master/test/testdata/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-Unity-2d-master-2f-test-2f-testdata

clean-Drivers-2f-Unity-2d-master-2f-test-2f-testdata:
	-$(RM) ./Drivers/Unity-master/test/testdata/testRunnerGenerator.cyclo ./Drivers/Unity-master/test/testdata/testRunnerGenerator.d ./Drivers/Unity-master/test/testdata/testRunnerGenerator.o ./Drivers/Unity-master/test/testdata/testRunnerGenerator.su ./Drivers/Unity-master/test/testdata/testRunnerGeneratorSmall.cyclo ./Drivers/Unity-master/test/testdata/testRunnerGeneratorSmall.d ./Drivers/Unity-master/test/testdata/testRunnerGeneratorSmall.o ./Drivers/Unity-master/test/testdata/testRunnerGeneratorSmall.su ./Drivers/Unity-master/test/testdata/testRunnerGeneratorWithMocks.cyclo ./Drivers/Unity-master/test/testdata/testRunnerGeneratorWithMocks.d ./Drivers/Unity-master/test/testdata/testRunnerGeneratorWithMocks.o ./Drivers/Unity-master/test/testdata/testRunnerGeneratorWithMocks.su

.PHONY: clean-Drivers-2f-Unity-2d-master-2f-test-2f-testdata

