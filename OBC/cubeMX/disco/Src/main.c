/**
  ******************************************************************************
  * File Name          : main.c
  * Description        : Main program body
  ******************************************************************************
  *
  * COPYRIGHT(c) 2016 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"
#include "cmsis_os.h"
#include "fatfs.h"

/* USER CODE BEGIN Includes */
#include "../../../../Services/platform/obc/obc.h"
#include "../../../../Services/platform/obc/hal/stm32/obc_hal.h"
#include "../../../../Services/services/service_utilities.h"
#include "../../../../Services/services/scheduling_service.h"
/* USER CODE END Includes */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc1; //This variable is a structure for analog to digital converter handle. It has instance variables
                         //Instance, Init, NbrOfCurrentConversionRank, DMA_Handle, Lock, State, and ErrorCode (The structure is
                         //defined in the file stm32f4xx_hal_adc.h)

RTC_HandleTypeDef hrtc; //This variable is a structure for real-time clock handle. It has instance variables Instance, Init,
                        //Lock, and State (The structure is defined in the file stm32f4xx_hal_rtc.h)

SD_HandleTypeDef hsd; //This variable is a structure for SDIO handle. It has instance variables Instance, Init, Lock, CardType,
                      //RCA, CSD[4], CID[4], SdTransferCplt, SdTransferErr, DmaTransferCplt, SdOperation, hdmarx, and hdmatx
                      //(The structure is defined in the file stm32f4xx_hal_sd.h)
HAL_SD_CardInfoTypedef SDCardInfo; //This variable is a structure for SD card information. It has instance variables SD_csd,
                                   //SD_cid, CardCapacity, CardBlockSize, RCA, and CardType (The structure is defined in the file
                                   //stm32f4xx_hal_sd.h)

TaskFunction_t ToggleLED_Timer1(void*); //These 4 variables are of type TaskFunction_t, which is a FreeRTOS defined type
TaskFunction_t ToggleLED_Timer2(void*); //that is used when implementing tasks. It allows to pass information of any type
TaskFunction_t ToggleLED_Timer3(void*); //into the task.
TaskFunction_t ToggleLED_Timer4(void*);

SPI_HandleTypeDef hspi1; //These 3 variables are structures for Serial Peripheral Interface (SPI) handle. They have instance
SPI_HandleTypeDef hspi2; //variables Instance, Init, pTxBuffPtr, TxXferSize, ErrorCode, and 10 other variables (Refer to the file
SPI_HandleTypeDef hspi3; //stm32f4xx_hal_spi.h where the structure is defined for more details)

UART_HandleTypeDef huart4; //These 5 variables are structures for UART handle. They have instance variables Instance, Init,
UART_HandleTypeDef huart1; //pTxBuffPtr, TxXferSize, TxXferCount, pRxBuffPtr, RxXferSize, RxXferCount, hdmatx, hdmarx,
UART_HandleTypeDef huart2; //Lock, gState, RxState, and ErrorCode (The structure is defined in the file stm32f4xx_hal_uart.h)
UART_HandleTypeDef huart3;
UART_HandleTypeDef huart6;

DMA_HandleTypeDef hdma_uart4_tx; //These 5 variables are structures for Direct Memory Adress (DMA) handle. They have
DMA_HandleTypeDef hdma_usart1_tx;//14 instance variables including Instance, Init, State, ErrorCode, and StreamIndex
DMA_HandleTypeDef hdma_usart2_tx;//(The structure is defined in the file stm32f4xx_hal_dma.h)
DMA_HandleTypeDef hdma_usart3_tx;
DMA_HandleTypeDef hdma_usart6_tx;

osThreadId defaultTaskHandle; //These 2 variables are of type osThreadId, which is defined in csmis_os.h as being the type
osThreadId HKHandle;          //TaskHandle_t, a FreeRTOS defined type used to reference (via a pointer) tasks created.

/* USER CODE BEGIN PV */
/* Private variables ---------------------------------------------------------*/

#define static struct _sys_data sys_data;
#define HAL_reset_source(sys_data)
#define pkt_pool_INIT()
#define scheduling_service_init()
#define HAL_obc_enableBkUpAccess()
#define HAL_sys_getTime(hours, mins, sec)
#define HAL_sys_setTime(hours, mins, sec)
#define hk_INIT()
#define hk_SCH()
#define import_pkt(DBG_APP_ID, obc_data)
#define update_boot_counter()

/* Defined by Ignacio Sada Solomon 22/07/2019*/

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_SDIO_SD_Init(void);
static void MX_UART4_Init(void);
static void MX_USART2_UART_Init(void);
static void MX_USART3_UART_Init(void);
static void MX_USART6_UART_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_SPI2_Init(void);
static void MX_SPI1_Init(void);
static void MX_SPI3_Init(void);
static void MX_ADC1_Init(void);
static void MX_RTC_Init(void);
void StartDefaultTask(void const * argument);
void HK_task(void const * argument);
/* USER CODE BEGIN PFP */
/* Private function prototypes -----------------------------------------------*/

/* USER CODE END PFP */

/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration----------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* Configure the system clock */
  SystemClock_Config();

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_SDIO_SD_Init();
  MX_UART4_Init();
  MX_USART2_UART_Init();
  MX_USART3_UART_Init();
  MX_USART6_UART_Init();
  MX_USART1_UART_Init();
  MX_SPI2_Init();
  MX_SPI1_Init();
  MX_SPI3_Init();
  MX_ADC1_Init();
  MX_RTC_Init();

  /* USER CODE BEGIN 2 */
//            HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_12);
//            HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_13);
//            HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_14);
//            HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_15);
            
  /* USER CODE END 2 */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* Create the thread(s) */
  /* definition and creation of defaultTask */
  osThreadDef(defaultTask, StartDefaultTask, osPriorityNormal, 0, 128);
  defaultTaskHandle = osThreadCreate(osThread(defaultTask), NULL);

  /* definition and creation of HK */
  osThreadDef(HK, HK_task, osPriorityLow, 0, 128);
  HKHandle = osThreadCreate(osThread(HK), NULL);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */
 xTaskCreate(
               ToggleLED_Timer1, /* Function pointer */
               "Task1", /* Task name - for debugging only*/
               configMINIMAL_STACK_SIZE, /* Stack depth in words */
               (void*) NULL, /* Pointer to tasks arguments (parameter) */
               tskIDLE_PRIORITY + 2UL, /* Task priority*/
               NULL /* Task handle */
      );
//   
      xTaskCreate(
    		  ToggleLED_Timer2,                 /* Function pointer */
    		  "Task1",                          /* Task name - for debugging only*/
    		  configMINIMAL_STACK_SIZE,         /* Stack depth in words */
    		  (void*) NULL,                     /* Pointer to tasks arguments (parameter) */
    		  tskIDLE_PRIORITY + 2UL,           /* Task priority*/
    		  NULL                              /* Task handle */
      );
      
      xTaskCreate(
    		  ToggleLED_Timer3,                 /* Function pointer */
    		  "Task1",                          /* Task name - for debugging only*/
    		  configMINIMAL_STACK_SIZE,         /* Stack depth in words */
    		  (void*) NULL,                     /* Pointer to tasks arguments (parameter) */
    		  tskIDLE_PRIORITY + 2UL,           /* Task priority*/
    		  NULL                              /* Task handle */
      );
      
      xTaskCreate(
    		  ToggleLED_Timer4,                 /* Function pointer */
    		  "Task1",                          /* Task name - for debugging only*/
    		  configMINIMAL_STACK_SIZE,         /* Stack depth in words */
    		  (void*) NULL,                     /* Pointer to tasks arguments (parameter) */
    		  tskIDLE_PRIORITY + 2UL,           /* Task priority*/
    		  NULL                              /* Task handle */
      );

  /* Start scheduler */
  osKernelStart();
  
  /* We should never get here as control is now taken by the scheduler */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */

  }
  /* USER CODE END 3 */

}

TaskFunction_t ToggleLED_Timer1(void *pvParameters)
{
    while (1)
    {
        HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_12);
        //    GPIO_ToggleBits(GPIOD, GPIO_Pin_13);
        //    GPIO_ToggleBits(GPIOD, GPIO_Pin_14);
        //    GPIO_ToggleBits(GPIOD, GPIO_Pin_15);
        /*
        Delay for a period of time. vTaskDelay() places the task into
        the Blocked state until the period has expired.
        The delay period is spacified in 'ticks'. We can convert
        yhis in milisecond with the constant portTICK_RATE_MS.
         */
        vTaskDelay(250 / portTICK_RATE_MS);
    }

}
/**
 * TASK 1: Toggle LED via RTOS Timer
 */
TaskFunction_t ToggleLED_Timer2(void *pvParameters)
{
    while (1)
    {
        //    GPIO_ToggleBits(GPIOD, GPIO_Pin_12);
        //    GPIO_ToggleBits(GPIOD, GPIO_Pin_13);
        HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_14);
        //    GPIO_ToggleBits(GPIOD, GPIO_Pin_15);
        /*
        Delay for a period of time. vTaskDelay() places the task into
        the Blocked state until the period has expired.
        The delay period is spacified in 'ticks'. We can convert
        yhis in milisecond with the constant portTICK_RATE_MS.
         */
        vTaskDelay(500 / portTICK_RATE_MS);
    }
}

/**
 * TASK 1: Toggle LED via RTOS Timer
 */
TaskFunction_t ToggleLED_Timer3(void *pvParameters)
{
    while (1)
    {
        //    GPIO_ToggleBits(GPIOD, GPIO_Pin_12);
        //    GPIO_ToggleBits(GPIOD, GPIO_Pin_13);
        //    GPIO_ToggleBits(GPIOD, GPIO_Pin_14);
        HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_15);
        /*
        Delay for a period of time. vTaskDelay() places the task into
        the Blocked state until the period has expired.
        The delay period is spacified in 'ticks'. We can convert
        yhis in milisecond with the constant portTICK_RATE_MS.
         */
        vTaskDelay(1000 / portTICK_RATE_MS);
    }
}

/**
 * TASK 1: Toggle LED via RTOS Timer
 */
TaskFunction_t ToggleLED_Timer4(void *pvParameters)
{
    while (1)
    {
        //    GPIO_ToggleBits(GPIOD, GPIO_Pin_12);
        HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_13);
        //    GPIO_ToggleBits(GPIOD, GPIO_Pin_14);
        //    GPIO_ToggleBits(GPIOD, GPIO_Pin_15);
        /*
        Delay for a period of time. vTaskDelay() places the task into
        the Blocked state until the period has expired.
        The delay period is spacified in 'ticks'. We can convert
        yhis in milisecond with the constant portTICK_RATE_MS.
         */
        vTaskDelay(1500 / portTICK_RATE_MS);
    }
}
/** System Clock Configuration
*/
void SystemClock_Config(void)
{

  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct;

  __HAL_RCC_PWR_CLK_ENABLE();

  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_LSI|RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.LSIState = RCC_LSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 336;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 7;
  HAL_RCC_OscConfig(&RCC_OscInitStruct);

  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;
  HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5);

  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_RTC;
  PeriphClkInitStruct.RTCClockSelection = RCC_RTCCLKSOURCE_LSI;
  HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct);

  HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

  /* SysTick_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(SysTick_IRQn, 15, 0);
}

/* ADC1 init function */
void MX_ADC1_Init(void)
{

  ADC_ChannelConfTypeDef sConfig;

    /**Configure the global features of the ADC (Clock, Resolution, Data Alignment and number of conversion) 
    */
  hadc1.Instance = ADC1;
  hadc1.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV2;
  hadc1.Init.Resolution = ADC_RESOLUTION_12B;
  hadc1.Init.ScanConvMode = DISABLE;
  hadc1.Init.ContinuousConvMode = DISABLE;
  hadc1.Init.DiscontinuousConvMode = DISABLE;
  hadc1.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc1.Init.NbrOfConversion = 1;
  hadc1.Init.DMAContinuousRequests = DISABLE;
  hadc1.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  HAL_ADC_Init(&hadc1);

    /**Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time. 
    */
  sConfig.Channel = ADC_CHANNEL_8;
  sConfig.Rank = 1;
  sConfig.SamplingTime = ADC_SAMPLETIME_3CYCLES;
  HAL_ADC_ConfigChannel(&hadc1, &sConfig);

}

/* RTC init function */
void MX_RTC_Init(void)
{

  RTC_TimeTypeDef sTime;
  RTC_DateTypeDef sDate;

    /**Initialize RTC and set the Time and Date 
    */
  hrtc.Instance = RTC;
  hrtc.Init.HourFormat = RTC_HOURFORMAT_24;
  hrtc.Init.AsynchPrediv = 127;
  hrtc.Init.SynchPrediv = 255;
  hrtc.Init.OutPut = RTC_OUTPUT_DISABLE;
  hrtc.Init.OutPutPolarity = RTC_OUTPUT_POLARITY_HIGH;
  hrtc.Init.OutPutType = RTC_OUTPUT_TYPE_OPENDRAIN;
  HAL_RTC_Init(&hrtc);

  sTime.Hours = 0;
  sTime.Minutes = 0;
  sTime.Seconds = 0;
  sTime.DayLightSaving = RTC_DAYLIGHTSAVING_NONE;
  sTime.StoreOperation = RTC_STOREOPERATION_RESET;
  HAL_RTC_SetTime(&hrtc, &sTime, RTC_FORMAT_BIN);

  sDate.WeekDay = RTC_WEEKDAY_MONDAY;
  sDate.Month = RTC_MONTH_JANUARY;
  sDate.Date = 1;
  sDate.Year = 0;

  HAL_RTC_SetDate(&hrtc, &sDate, RTC_FORMAT_BIN);

    /**Enable Calibrartion 
    */
  HAL_RTCEx_SetCalibrationOutPut(&hrtc, RTC_CALIBOUTPUT_1HZ);

}

/* SDIO init function */
void MX_SDIO_SD_Init(void)
{

  hsd.Instance = SDIO;
  hsd.Init.ClockEdge = SDIO_CLOCK_EDGE_RISING;
  hsd.Init.ClockBypass = SDIO_CLOCK_BYPASS_DISABLE;
  hsd.Init.ClockPowerSave = SDIO_CLOCK_POWER_SAVE_DISABLE;
  hsd.Init.BusWide = SDIO_BUS_WIDE_1B;
  hsd.Init.HardwareFlowControl = SDIO_HARDWARE_FLOW_CONTROL_DISABLE;
  hsd.Init.ClockDiv = 0;

}

/* SPI1 init function */
void MX_SPI1_Init(void)
{

  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi1.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_2;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 10;
  HAL_SPI_Init(&hspi1);

}

/* SPI2 init function */
void MX_SPI2_Init(void)
{

  hspi2.Instance = SPI2;
  hspi2.Init.Mode = SPI_MODE_MASTER;
  hspi2.Init.Direction = SPI_DIRECTION_2LINES;
  hspi2.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi2.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi2.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi2.Init.NSS = SPI_NSS_SOFT;
  hspi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_2;
  hspi2.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi2.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi2.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi2.Init.CRCPolynomial = 10;
  HAL_SPI_Init(&hspi2);

}

/* SPI3 init function */
void MX_SPI3_Init(void)
{

  hspi3.Instance = SPI3;
  hspi3.Init.Mode = SPI_MODE_MASTER;
  hspi3.Init.Direction = SPI_DIRECTION_2LINES;
  hspi3.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi3.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi3.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi3.Init.NSS = SPI_NSS_SOFT;
  hspi3.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_2;
  hspi3.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi3.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi3.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi3.Init.CRCPolynomial = 10;
  HAL_SPI_Init(&hspi3);

}

/* UART4 init function */
void MX_UART4_Init(void)
{

  huart4.Instance = UART4;
  huart4.Init.BaudRate = 9600;
  huart4.Init.WordLength = UART_WORDLENGTH_8B;
  huart4.Init.StopBits = UART_STOPBITS_1;
  huart4.Init.Parity = UART_PARITY_NONE;
  huart4.Init.Mode = UART_MODE_TX_RX;
  huart4.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart4.Init.OverSampling = UART_OVERSAMPLING_16;
  HAL_UART_Init(&huart4);

}

/* USART1 init function */
void MX_USART1_UART_Init(void)
{

  huart1.Instance = USART1;
  huart1.Init.BaudRate = 9600;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  HAL_UART_Init(&huart1);

}

/* USART2 init function */
void MX_USART2_UART_Init(void)
{

  huart2.Instance = USART2;
  huart2.Init.BaudRate = 9600;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  HAL_UART_Init(&huart2);

}

/* USART3 init function */
void MX_USART3_UART_Init(void)
{

  huart3.Instance = USART3;
  huart3.Init.BaudRate = 9600;
  huart3.Init.WordLength = UART_WORDLENGTH_8B;
  huart3.Init.StopBits = UART_STOPBITS_1;
  huart3.Init.Parity = UART_PARITY_NONE;
  huart3.Init.Mode = UART_MODE_TX_RX;
  huart3.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart3.Init.OverSampling = UART_OVERSAMPLING_16;
  HAL_UART_Init(&huart3);

}

/* USART6 init function */
void MX_USART6_UART_Init(void)
{

  huart6.Instance = USART6;
  huart6.Init.BaudRate = 9600;
  huart6.Init.WordLength = UART_WORDLENGTH_8B;
  huart6.Init.StopBits = UART_STOPBITS_1;
  huart6.Init.Parity = UART_PARITY_NONE;
  huart6.Init.Mode = UART_MODE_TX_RX;
  huart6.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart6.Init.OverSampling = UART_OVERSAMPLING_16;
  HAL_UART_Init(&huart6);

}

/** 
  * Enable DMA controller clock
  */
void MX_DMA_Init(void) 
{
  /* DMA controller clock enable */
  __HAL_RCC_DMA1_CLK_ENABLE();
  __HAL_RCC_DMA2_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Stream3_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Stream3_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream3_IRQn);
  /* DMA1_Stream4_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Stream4_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream4_IRQn);
  /* DMA1_Stream6_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Stream6_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream6_IRQn);
  /* DMA2_Stream6_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA2_Stream6_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA2_Stream6_IRQn);
  /* DMA2_Stream7_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA2_Stream7_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA2_Stream7_IRQn);

}

/** Configure pins as 
        * Analog 
        * Input 
        * Output
        * EVENT_OUT
        * EXTI
*/
void MX_GPIO_Init(void)
{

  GPIO_InitTypeDef GPIO_InitStruct;

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, COMMS_EN_Pin|ADC_CS_SPI1_Pin|IAC_EN_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, FLASH_HOLD_Pin|IAC_CS_SPI3_Pin|DBG_EN_Pin|IAC_CAMERA_PWR_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, FLASH_WP_Pin|FLASH_CS_SPI2_Pin|SD_PWR_EN_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pins : COMMS_EN_Pin ADC_CS_SPI1_Pin IAC_EN_Pin */
  GPIO_InitStruct.Pin = COMMS_EN_Pin|ADC_CS_SPI1_Pin|IAC_EN_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : FLASH_HOLD_Pin IAC_CS_SPI3_Pin DBG_EN_Pin IAC_CAMERA_PWR_Pin */
  GPIO_InitStruct.Pin = FLASH_HOLD_Pin|IAC_CS_SPI3_Pin|DBG_EN_Pin|IAC_CAMERA_PWR_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : FLASH_WP_Pin FLASH_CS_SPI2_Pin SD_PWR_EN_Pin */
  GPIO_InitStruct.Pin = FLASH_WP_Pin|FLASH_CS_SPI2_Pin|SD_PWR_EN_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/* StartDefaultTask function */
void StartDefaultTask(void const * argument)
{
  /* init code for FATFS */
  MX_FATFS_Init();

  /* USER CODE BEGIN 5 */
   //obc_data.rsrc = 0;
   HAL_reset_source(&sys_data.rsrc);
   update_boot_counter();

//   uint32_t t1, t2, t3;
   
//   t1 = time_cmp_elapsed(3, 6);
//   t2 = time_cmp_elapsed(0xfffffff0, 0xfffffff6);
//   t3 = time_cmp_elapsed(0xfffffff0, 3);
   
//   t1 = get_time_ELAPSED();
//   osDelay(10);
//   t2 = get_time_ELAPSED();
//   osDelay(1000);
//   t3 = get_time_ELAPSED();
   
//   event_log(reset source);
   
   uint8_t uart_temp[20];
//   
   pkt_pool_INIT();
   scheduling_service_init();
   HAL_obc_enableBkUpAccess();
//   bkup_sram_INIT();
//   mass_storage_init();
//   su_INIT();
   
//   *obc_data.log_cnt = 0;
   uint8_t hours, mins, sec = 0;
//   hours = 19;
//   mins = 35;
//   sec = 11;
   HAL_sys_setTime(19, 56, 33);
//   sprintf((char*)uart_temp, "T: %d:%d.%d\n", hours, mins, sec);
//   HAL_UART_Transmit(&huart3, uart_temp, 19 , 10000);
   
   HAL_sys_getTime(&hours, &mins, &sec);
//   sprintf((char*)uart_temp, "T: %d:%d.%d\n", hours, mins, sec);
//   HAL_UART_Transmit(&huart3, uart_temp, 12 , 10000);   

//   sprintf((char*)uart_temp, "F: %u\n", *obc_data.log_cnt);
//   HAL_UART_Transmit(&huart3, uart_temp, 19 , 10000);
//   (*obc_data.log_cnt)++;
//   *obc_data.log_cnt = 0;
//   uint8_t tt[] = "YO!\n";
//   event_log(tt, 4);
//   event_log_load(uart_temp, (*obc_data.log_cnt) - 4, 4);
   sprintf((char*)uart_temp, "Hello\n");
   HAL_UART_Transmit(&huart3, uart_temp, 6 , 10000);
//  osDelay(100);
  /*Uart inits*/
//  HAL_UART_Receive_IT(&huart1, obc_data.eps_uart.uart_buf, UART_BUF_SIZE);
  HAL_UART_Receive_IT(&huart3, obc_data.dbg_uart.uart_buf, UART_BUF_SIZE);
//  HAL_UART_Receive_IT(&huart4, obc_data.comms_uart.uart_buf, UART_BUF_SIZE);
//  HAL_UART_Receive_IT(&huart6, obc_data.adcs_uart.uart_buf, UART_BUF_SIZE);
  /* Infinite loop */
  for(;;)
  {
//    import_pkt(EPS_APP_ID, &obc_data.eps_uart);
    import_pkt(DBG_APP_ID, &obc_data.dbg_uart);
//    import_pkt(COMMS_APP_ID, &obc_data.comms_uart);
//    import_pkt(ADCS_APP_ID, &obc_data.adcs_uart);
//    su_SCH();
      HAL_UART_Transmit(&huart3, uart_temp, 6 , 10000);
    osDelay(100);
  }
  /* USER CODE END 5 */ 
}

/* HK_task function */
void HK_task(void const * argument)
{
  /* USER CODE BEGIN HK_task */
  hk_INIT();
  /* Infinite loop */
  for(;;)
  {
    hk_SCH();
  }
  /* USER CODE END HK_task */
}

#ifdef USE_FULL_ASSERT

/**
   * @brief Reports the name of the source file and the source line number
   * where the assert_param error has occurred.
   * @param file: pointer to the source file name
   * @param line: assert_param error line source number
   * @retval None
   */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */

}

#endif

/**
  * @}
  */ 

/**
  * @}
*/ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
