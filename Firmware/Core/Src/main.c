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
uint8_t buffer[64];
volatile uint8_t fill_buffer_flag = 0;
volatile uint8_t refresh_parameters = 0;

struct parameters_t{
	int status;
	int power;
	int light;
	int brightness;
	int frequency;
	int period;
	uint16_t prescaler;
}my_parameters;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */
void fill_parameters(void);
void set_parameters (void);
void set_light (void);
void set_power (void);
void set_strob (void);
void set_shutdown(void);
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
  HAL_TIM_OC_Start_IT(&htim1, TIM_CHANNEL_1);
  my_parameters.prescaler = 4799;
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
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
void fill_parameters(void){
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


	set_strob();
}

void set_parameters (void){


		if (my_parameters.power){
			set_power();
		}

		if (my_parameters.light && my_parameters.status){
			set_light();
		}

		if ((0 == my_parameters.light) && my_parameters.status){
			set_strob();
		}

		if (0 == my_parameters.status){
			set_shutdown();
		}

}

void set_power (void){
	if (my_parameters.power) HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);
	else HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_SET);
}

void set_light (void){
	HAL_TIM_OC_Stop_IT(&htim1, TIM_CHANNEL_1);
	TIM1->PSC = 4799; //1MHz
	TIM1->ARR = 99;
	//here calculate have mistake
	uint32_t brightness = (uint32_t)((int)(TIM1->ARR + 1) * my_parameters.brightness) / 100;
	TIM1->CCR1 = brightness; //50% default from PC
	HAL_TIM_OC_Start_IT(&htim1, TIM_CHANNEL_1);
}

void set_strob (void){
	if (my_parameters.frequency <= 50){
		TIM1->PSC = 479;
		uint32_t period = (uint32_t) (my_parameters.period);
		uint32_t freq = (uint32_t) ((SystemCoreClock / (TIM1->PSC + 1)) / (my_parameters.frequency) - 1);
		if ((TIM1->ARR != freq) || (TIM1->CCR1 != period )){
			HAL_TIM_OC_Stop_IT(&htim1, TIM_CHANNEL_1);
			TIM1->ARR = freq;
			TIM1->CCR1 = period;
			HAL_TIM_OC_Start_IT(&htim1, TIM_CHANNEL_1);
		}
	}
	else{
		TIM1->PSC = 4799;
		uint32_t period = (uint32_t) (my_parameters.period);
		uint32_t freq = (uint32_t) ((SystemCoreClock / (TIM1->PSC + 1)) / (my_parameters.frequency) - 1);
		if ((TIM1->ARR != freq) || (TIM1->CCR1 != period )){
			HAL_TIM_OC_Stop_IT(&htim1, TIM_CHANNEL_1);
			TIM1->ARR = freq;
			TIM1->CCR1 = period;
			HAL_TIM_OC_Start_IT(&htim1, TIM_CHANNEL_1);
		}
	}



//	uint32_t period = (uint32_t) (my_parameters.period);
//	uint32_t freq = (uint32_t) ((SystemCoreClock / (TIM1->PSC + 1)) / (my_parameters.frequency) - 1);
//	if ((TIM1->ARR != freq) || (TIM1->CCR1 != period )){
//		HAL_TIM_OC_Stop_IT(&htim1, TIM_CHANNEL_1);
//		TIM1->ARR = freq;
//		TIM1->CCR1 = period;
//		HAL_TIM_OC_Start_IT(&htim1, TIM_CHANNEL_1);
//	}
}

void set_shutdown(void){

	HAL_TIM_OC_Stop_IT(&htim1, TIM_CHANNEL_1);
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
