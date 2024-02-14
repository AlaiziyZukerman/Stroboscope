/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "tim.h"
#include "usb_device.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#if defined(UNITY_TEST)
  #include "unity.h"
  #include "unity_fixture.h"

  void RunAllTests(void);
#endif
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

#if defined(UNITY_TEST)
  uint8_t buffer[64] = "1.0.0.50.100.100.0";
#else
  uint8_t buffer[64];
#endif


volatile uint8_t fill_buffer_flag = 0;
volatile uint8_t refresh_parameters = 0;
volatile uint8_t status_timer_flag = 0;

struct parameters_t{
	int status;
	int power;
	int light;
	int brightness;
	int frequency;
	int period;
}my_parameters;

typedef enum status_t{
	NO_ERR,
	ERR,
	NO_VALID,
	CONFLICT_Values,
	FAILURE,
	ON,
	OFF
}status;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */
#if defined(UNITY_TEST)
extern void initialise_monitor_handles(viod);
#endif
status fill_parameters(void);
status set_parameters (void);
status set_light (void);
status set_power (void);
status set_strob (void);
status set_shutdown(void);
status reset_shutdown(void);

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */
#if !defined(UNITY_TEST_HOST)
  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_TIM1_Init();
  MX_USB_DEVICE_Init();
  /* USER CODE BEGIN 2 */
#endif
#if defined(UNITY_TEST)
  initialise_monitor_handles();
 #endif

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
#if !defined(UNITY_TEST)
  while (1)
  {
	  if (fill_buffer_flag){
		  fill_buffer_flag = 0;
		  fill_parameters();
	  }

	  if (refresh_parameters){
		  refresh_parameters = 0;
		  set_parameters();
	  }
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
#else

  my_parameters.status = 1;
  my_parameters.power = 0;
  my_parameters.light = 0;
  my_parameters.brightness = 50;
  my_parameters.frequency = 100;
  my_parameters.period = 100;

  UnityMain(0, NULL, RunAllTests);
  while(1);
#endif
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL6;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USB;
  PeriphClkInit.UsbClockSelection = RCC_USBCLKSOURCE_PLL;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */
status fill_parameters(void){
	char sep []= ".";
	char *mystr;
	mystr = strtok(buffer, sep);

	for (int i=0; i<=6; i++){
	   char *mystr_last = mystr;
	   mystr = strtok (NULL,sep);
	   if(mystr == NULL) break;
	   int num = mystr - mystr_last;
	   (num < 1) ? (num = 1) : (num--);
	   char numeric [7] = {0}; //4 default
	   memcpy(&numeric, mystr_last, num);
	   switch (i){
		   case 0:
			   my_parameters.status=atoi(numeric);

			   break;
		   case 1:
			   my_parameters.power=atoi(numeric);

			   break;
		   case 2:
			   my_parameters.light=atoi(numeric);

			   break;
		   case 3:
			   my_parameters.brightness=atoi(numeric);

			   break;
		   case 4:
			   my_parameters.frequency=atoi(numeric);

			   break;
		   case 5:
			   my_parameters.period=atoi(numeric);

			   break;
	   }
	}
	refresh_parameters = 1;
	return NO_ERR;
}

status set_parameters (void){

		set_power();
		set_shutdown();
		if (my_parameters.light && my_parameters.status){
			set_light();
		}

		if ((0 == my_parameters.light) && my_parameters.status){
			set_strob();
		}

		return NO_ERR;
}

status set_power (void){
	if (my_parameters.power) {
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_SET);
		return ON;
	}
	else {
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);
		return OFF;
	}
}

status set_light (void){
	TIM1->ARR = 1999;
	uint32_t brightness = (uint32_t)((int)(TIM1->ARR + 1) * my_parameters.brightness) / 100;
	if (brightness > 100) return CONFLICT_Values;
	TIM1->CCR1 = brightness;
	if (TIM1->CCR1 != brightness) return ERR;
	return ON;
}

status set_strob (void){

	uint32_t freq = (uint32_t) ((SystemCoreClock / (TIM1->PSC + 1)) / (my_parameters.frequency) - 1);
	uint32_t period = ((uint32_t) ( (my_parameters.period)) / (10000 / freq));
	if ((TIM1->ARR != freq) || (TIM1->CCR1 != period )){
		TIM1->ARR = freq;
		TIM1->CCR1 = period;
		HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1);
		return NO_ERR;
	}

	return FAILURE;

}

status set_shutdown(void){
	HAL_StatusTypeDef status;
	if (0 == my_parameters.status) {
		status = HAL_TIM_PWM_Stop(&htim1, TIM_CHANNEL_1);
	}
	if(my_parameters.status) {
		status = HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1);
	}
	if(HAL_OK ==  status) return NO_ERR;
	return FAILURE;
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
