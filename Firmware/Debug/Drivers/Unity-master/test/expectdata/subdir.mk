################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Unity-master/test/expectdata/testsample_cmd.c \
../Drivers/Unity-master/test/expectdata/testsample_def.c \
../Drivers/Unity-master/test/expectdata/testsample_head1.c \
../Drivers/Unity-master/test/expectdata/testsample_mock_cmd.c \
../Drivers/Unity-master/test/expectdata/testsample_mock_def.c \
../Drivers/Unity-master/test/expectdata/testsample_mock_head1.c \
../Drivers/Unity-master/test/expectdata/testsample_mock_new1.c \
../Drivers/Unity-master/test/expectdata/testsample_mock_new2.c \
../Drivers/Unity-master/test/expectdata/testsample_mock_param.c \
../Drivers/Unity-master/test/expectdata/testsample_mock_run1.c \
../Drivers/Unity-master/test/expectdata/testsample_mock_run2.c \
../Drivers/Unity-master/test/expectdata/testsample_mock_yaml.c \
../Drivers/Unity-master/test/expectdata/testsample_new1.c \
../Drivers/Unity-master/test/expectdata/testsample_new2.c \
../Drivers/Unity-master/test/expectdata/testsample_param.c \
../Drivers/Unity-master/test/expectdata/testsample_run1.c \
../Drivers/Unity-master/test/expectdata/testsample_run2.c \
../Drivers/Unity-master/test/expectdata/testsample_yaml.c 

OBJS += \
./Drivers/Unity-master/test/expectdata/testsample_cmd.o \
./Drivers/Unity-master/test/expectdata/testsample_def.o \
./Drivers/Unity-master/test/expectdata/testsample_head1.o \
./Drivers/Unity-master/test/expectdata/testsample_mock_cmd.o \
./Drivers/Unity-master/test/expectdata/testsample_mock_def.o \
./Drivers/Unity-master/test/expectdata/testsample_mock_head1.o \
./Drivers/Unity-master/test/expectdata/testsample_mock_new1.o \
./Drivers/Unity-master/test/expectdata/testsample_mock_new2.o \
./Drivers/Unity-master/test/expectdata/testsample_mock_param.o \
./Drivers/Unity-master/test/expectdata/testsample_mock_run1.o \
./Drivers/Unity-master/test/expectdata/testsample_mock_run2.o \
./Drivers/Unity-master/test/expectdata/testsample_mock_yaml.o \
./Drivers/Unity-master/test/expectdata/testsample_new1.o \
./Drivers/Unity-master/test/expectdata/testsample_new2.o \
./Drivers/Unity-master/test/expectdata/testsample_param.o \
./Drivers/Unity-master/test/expectdata/testsample_run1.o \
./Drivers/Unity-master/test/expectdata/testsample_run2.o \
./Drivers/Unity-master/test/expectdata/testsample_yaml.o 

C_DEPS += \
./Drivers/Unity-master/test/expectdata/testsample_cmd.d \
./Drivers/Unity-master/test/expectdata/testsample_def.d \
./Drivers/Unity-master/test/expectdata/testsample_head1.d \
./Drivers/Unity-master/test/expectdata/testsample_mock_cmd.d \
./Drivers/Unity-master/test/expectdata/testsample_mock_def.d \
./Drivers/Unity-master/test/expectdata/testsample_mock_head1.d \
./Drivers/Unity-master/test/expectdata/testsample_mock_new1.d \
./Drivers/Unity-master/test/expectdata/testsample_mock_new2.d \
./Drivers/Unity-master/test/expectdata/testsample_mock_param.d \
./Drivers/Unity-master/test/expectdata/testsample_mock_run1.d \
./Drivers/Unity-master/test/expectdata/testsample_mock_run2.d \
./Drivers/Unity-master/test/expectdata/testsample_mock_yaml.d \
./Drivers/Unity-master/test/expectdata/testsample_new1.d \
./Drivers/Unity-master/test/expectdata/testsample_new2.d \
./Drivers/Unity-master/test/expectdata/testsample_param.d \
./Drivers/Unity-master/test/expectdata/testsample_run1.d \
./Drivers/Unity-master/test/expectdata/testsample_run2.d \
./Drivers/Unity-master/test/expectdata/testsample_yaml.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Unity-master/test/expectdata/%.o Drivers/Unity-master/test/expectdata/%.su Drivers/Unity-master/test/expectdata/%.cyclo: ../Drivers/Unity-master/test/expectdata/%.c Drivers/Unity-master/test/expectdata/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-Unity-2d-master-2f-test-2f-expectdata

clean-Drivers-2f-Unity-2d-master-2f-test-2f-expectdata:
	-$(RM) ./Drivers/Unity-master/test/expectdata/testsample_cmd.cyclo ./Drivers/Unity-master/test/expectdata/testsample_cmd.d ./Drivers/Unity-master/test/expectdata/testsample_cmd.o ./Drivers/Unity-master/test/expectdata/testsample_cmd.su ./Drivers/Unity-master/test/expectdata/testsample_def.cyclo ./Drivers/Unity-master/test/expectdata/testsample_def.d ./Drivers/Unity-master/test/expectdata/testsample_def.o ./Drivers/Unity-master/test/expectdata/testsample_def.su ./Drivers/Unity-master/test/expectdata/testsample_head1.cyclo ./Drivers/Unity-master/test/expectdata/testsample_head1.d ./Drivers/Unity-master/test/expectdata/testsample_head1.o ./Drivers/Unity-master/test/expectdata/testsample_head1.su ./Drivers/Unity-master/test/expectdata/testsample_mock_cmd.cyclo ./Drivers/Unity-master/test/expectdata/testsample_mock_cmd.d ./Drivers/Unity-master/test/expectdata/testsample_mock_cmd.o ./Drivers/Unity-master/test/expectdata/testsample_mock_cmd.su ./Drivers/Unity-master/test/expectdata/testsample_mock_def.cyclo ./Drivers/Unity-master/test/expectdata/testsample_mock_def.d ./Drivers/Unity-master/test/expectdata/testsample_mock_def.o ./Drivers/Unity-master/test/expectdata/testsample_mock_def.su ./Drivers/Unity-master/test/expectdata/testsample_mock_head1.cyclo ./Drivers/Unity-master/test/expectdata/testsample_mock_head1.d ./Drivers/Unity-master/test/expectdata/testsample_mock_head1.o ./Drivers/Unity-master/test/expectdata/testsample_mock_head1.su ./Drivers/Unity-master/test/expectdata/testsample_mock_new1.cyclo ./Drivers/Unity-master/test/expectdata/testsample_mock_new1.d ./Drivers/Unity-master/test/expectdata/testsample_mock_new1.o ./Drivers/Unity-master/test/expectdata/testsample_mock_new1.su ./Drivers/Unity-master/test/expectdata/testsample_mock_new2.cyclo ./Drivers/Unity-master/test/expectdata/testsample_mock_new2.d ./Drivers/Unity-master/test/expectdata/testsample_mock_new2.o ./Drivers/Unity-master/test/expectdata/testsample_mock_new2.su ./Drivers/Unity-master/test/expectdata/testsample_mock_param.cyclo ./Drivers/Unity-master/test/expectdata/testsample_mock_param.d ./Drivers/Unity-master/test/expectdata/testsample_mock_param.o ./Drivers/Unity-master/test/expectdata/testsample_mock_param.su ./Drivers/Unity-master/test/expectdata/testsample_mock_run1.cyclo ./Drivers/Unity-master/test/expectdata/testsample_mock_run1.d ./Drivers/Unity-master/test/expectdata/testsample_mock_run1.o ./Drivers/Unity-master/test/expectdata/testsample_mock_run1.su ./Drivers/Unity-master/test/expectdata/testsample_mock_run2.cyclo ./Drivers/Unity-master/test/expectdata/testsample_mock_run2.d ./Drivers/Unity-master/test/expectdata/testsample_mock_run2.o ./Drivers/Unity-master/test/expectdata/testsample_mock_run2.su ./Drivers/Unity-master/test/expectdata/testsample_mock_yaml.cyclo ./Drivers/Unity-master/test/expectdata/testsample_mock_yaml.d ./Drivers/Unity-master/test/expectdata/testsample_mock_yaml.o ./Drivers/Unity-master/test/expectdata/testsample_mock_yaml.su ./Drivers/Unity-master/test/expectdata/testsample_new1.cyclo ./Drivers/Unity-master/test/expectdata/testsample_new1.d ./Drivers/Unity-master/test/expectdata/testsample_new1.o ./Drivers/Unity-master/test/expectdata/testsample_new1.su ./Drivers/Unity-master/test/expectdata/testsample_new2.cyclo ./Drivers/Unity-master/test/expectdata/testsample_new2.d ./Drivers/Unity-master/test/expectdata/testsample_new2.o ./Drivers/Unity-master/test/expectdata/testsample_new2.su ./Drivers/Unity-master/test/expectdata/testsample_param.cyclo ./Drivers/Unity-master/test/expectdata/testsample_param.d ./Drivers/Unity-master/test/expectdata/testsample_param.o ./Drivers/Unity-master/test/expectdata/testsample_param.su ./Drivers/Unity-master/test/expectdata/testsample_run1.cyclo ./Drivers/Unity-master/test/expectdata/testsample_run1.d ./Drivers/Unity-master/test/expectdata/testsample_run1.o ./Drivers/Unity-master/test/expectdata/testsample_run1.su ./Drivers/Unity-master/test/expectdata/testsample_run2.cyclo ./Drivers/Unity-master/test/expectdata/testsample_run2.d ./Drivers/Unity-master/test/expectdata/testsample_run2.o ./Drivers/Unity-master/test/expectdata/testsample_run2.su ./Drivers/Unity-master/test/expectdata/testsample_yaml.cyclo ./Drivers/Unity-master/test/expectdata/testsample_yaml.d ./Drivers/Unity-master/test/expectdata/testsample_yaml.o ./Drivers/Unity-master/test/expectdata/testsample_yaml.su

.PHONY: clean-Drivers-2f-Unity-2d-master-2f-test-2f-expectdata

