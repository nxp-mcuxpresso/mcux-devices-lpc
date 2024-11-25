; -------------------------------------------------------------------------
;  @file:    startup_LPC5504.s
;  @purpose: CMSIS Cortex-M33 Core Device Startup File
;            LPC5504
;  @version: 1.0
;  @date:    2020-4-9
;  @build:   b240704
; -------------------------------------------------------------------------
;
; Copyright 1997-2016 Freescale Semiconductor, Inc.
; Copyright 2016-2024 NXP
; SPDX-License-Identifier: BSD-3-Clause
;
; The modules in this file are included in the libraries, and may be replaced
; by any user-defined modules that define the PUBLIC symbol _program_start or
; a user defined start symbol.
; To override the cstartup defined in the library, simply add your modified
; version to the workbench project.
;
; The vector table is normally located at address 0.
; When debugging in RAM, it can be located in RAM, aligned to at least 2^6.
; The name "__vector_table" has special meaning for C-SPY:
; it is where the SP start value is found, and the NVIC vector
; table register (VTOR) is initialized to this address if != 0.
;
; Cortex-M version
;

        MODULE  ?cstartup

        ;; Forward declaration of sections.
        SECTION CSTACK:DATA:NOROOT(3)

        SECTION .intvec:CODE:NOROOT(2)

        EXTERN  __iar_program_start
        EXTERN  SystemInit
        PUBLIC  __vector_table
        PUBLIC  __vector_table_0x1c
        PUBLIC  __Vectors
        PUBLIC  __Vectors_End
        PUBLIC  __Vectors_Size

        DATA

__iar_init$$done:              ; The vector table is not needed
                      ; until after copy initialization is done

__vector_table
        DCD     sfe(CSTACK)
        DCD     Reset_Handler

        DCD     NMI_Handler                                   ;NMI Handler
        DCD     HardFault_Handler                             ;Hard Fault Handler
        DCD     MemManage_Handler                             ;MPU Fault Handler
        DCD     BusFault_Handler                              ;Bus Fault Handler
        DCD     UsageFault_Handler                            ;Usage Fault Handler
__vector_table_0x1c
        DCD     SecureFault_Handler                           ;Secure Fault Handler
        DCD     0                                             ;Reserved
        DCD     0                                             ;Reserved
        DCD     0                                             ;Reserved
        DCD     SVC_Handler                                   ;SVCall Handler
        DCD     DebugMon_Handler                              ;Debug Monitor Handler
        DCD     0                                             ;Reserved
        DCD     PendSV_Handler                                ;PendSV Handler
        DCD     SysTick_Handler                               ;SysTick Handler

                                                              ;External Interrupts
        DCD     WDT_BOD_IRQHandler                            ;Windowed watchdog timer, Brownout detect, Flash interrupt
        DCD     DMA0_IRQHandler                               ;DMA0 controller
        DCD     GINT0_IRQHandler                              ;GPIO group 0
        DCD     GINT1_IRQHandler                              ;GPIO group 1
        DCD     PIN_INT0_IRQHandler                           ;Pin interrupt 0 or pattern match engine slice 0
        DCD     PIN_INT1_IRQHandler                           ;Pin interrupt 1or pattern match engine slice 1
        DCD     PIN_INT2_IRQHandler                           ;Pin interrupt 2 or pattern match engine slice 2
        DCD     PIN_INT3_IRQHandler                           ;Pin interrupt 3 or pattern match engine slice 3
        DCD     UTICK0_IRQHandler                             ;Micro-tick Timer
        DCD     MRT0_IRQHandler                               ;Multi-rate timer
        DCD     CTIMER0_IRQHandler                            ;Standard counter/timer CTIMER0
        DCD     CTIMER1_IRQHandler                            ;Standard counter/timer CTIMER1
        DCD     SCT0_IRQHandler                               ;SCTimer/PWM
        DCD     CTIMER3_IRQHandler                            ;Standard counter/timer CTIMER3
        DCD     FLEXCOMM0_IRQHandler                          ;Flexcomm Interface 0 (USART, SPI, I2C, I2S, FLEXCOMM)
        DCD     FLEXCOMM1_IRQHandler                          ;Flexcomm Interface 1 (USART, SPI, I2C, I2S, FLEXCOMM)
        DCD     FLEXCOMM2_IRQHandler                          ;Flexcomm Interface 2 (USART, SPI, I2C, I2S, FLEXCOMM)
        DCD     FLEXCOMM3_IRQHandler                          ;Flexcomm Interface 3 (USART, SPI, I2C, I2S, FLEXCOMM)
        DCD     FLEXCOMM4_IRQHandler                          ;Flexcomm Interface 4 (USART, SPI, I2C, I2S, FLEXCOMM)
        DCD     FLEXCOMM5_IRQHandler                          ;Flexcomm Interface 5 (USART, SPI, I2C, I2S, FLEXCOMM)
        DCD     FLEXCOMM6_IRQHandler                          ;Flexcomm Interface 6 (USART, SPI, I2C, I2S, FLEXCOMM)
        DCD     FLEXCOMM7_IRQHandler                          ;Flexcomm Interface 7 (USART, SPI, I2C, I2S, FLEXCOMM)
        DCD     ADC0_IRQHandler                               ;ADC0
        DCD     Reserved39_IRQHandler                         ;Reserved interrupt
        DCD     ACMP_IRQHandler                               ;ACMP interrupts
        DCD     Reserved41_IRQHandler                         ;Reserved interrupt
        DCD     Reserved42_IRQHandler                         ;Reserved interrupt
        DCD     Reserved43_IRQHandler                         ;Reserved interrupt
        DCD     Reserved44_IRQHandler                         ;Reserved interrupt
        DCD     RTC_IRQHandler                                ;RTC alarm and wake-up interrupts
        DCD     Reserved46_IRQHandler                         ;Reserved interrupt
        DCD     Reserved47_IRQHandler                         ;Reserved interrupt
        DCD     PIN_INT4_IRQHandler                           ;Pin interrupt 4 or pattern match engine slice 4 int
        DCD     PIN_INT5_IRQHandler                           ;Pin interrupt 5 or pattern match engine slice 5 int
        DCD     PIN_INT6_IRQHandler                           ;Pin interrupt 6 or pattern match engine slice 6 int
        DCD     PIN_INT7_IRQHandler                           ;Pin interrupt 7 or pattern match engine slice 7 int
        DCD     CTIMER2_IRQHandler                            ;Standard counter/timer CTIMER2
        DCD     CTIMER4_IRQHandler                            ;Standard counter/timer CTIMER4
        DCD     OS_EVENT_IRQHandler                           ;OS_EVENT_TIMER and OS_EVENT_WAKEUP interrupts
        DCD     Reserved55_IRQHandler                         ;Reserved interrupt
        DCD     Reserved56_IRQHandler                         ;Reserved interrupt
        DCD     Reserved57_IRQHandler                         ;Reserved interrupt
        DCD     Reserved58_IRQHandler                         ;Reserved interrupt
        DCD     CAN0_IRQ0_IRQHandler                          ;CAN0 interrupt0
        DCD     CAN0_IRQ1_IRQHandler                          ;CAN0 interrupt1
        DCD     Reserved61_IRQHandler                         ;Reserved interrupt
        DCD     Reserved62_IRQHandler                         ;Reserved interrupt
        DCD     Reserved63_IRQHandler                         ;Reserved interrupt
        DCD     Reserved64_IRQHandler                         ;Reserved interrupt
        DCD     SEC_HYPERVISOR_CALL_IRQHandler                ;SEC_HYPERVISOR_CALL interrupt
        DCD     SEC_GPIO_INT0_IRQ0_IRQHandler                 ;SEC_GPIO_INT0_IRQ0 interrupt
        DCD     SEC_GPIO_INT0_IRQ1_IRQHandler                 ;SEC_GPIO_INT0_IRQ1 interrupt
        DCD     PLU_IRQHandler                                ;PLU interrupt
        DCD     SEC_VIO_IRQHandler                            ;SEC_VIO interrupt
        DCD     Reserved70_IRQHandler                         ;Reserved interrupt
        DCD     CASER_IRQHandler                              ;CASPER interrupt
        DCD     PUF_IRQHandler                                ;PUF interrupt
        DCD     Reserved73_IRQHandler                         ;Reserved interrupt
        DCD     DMA1_IRQHandler                               ;DMA1 interrupt
        DCD     FLEXCOMM8_IRQHandler                          ;Flexcomm Interface 8 (SPI, , FLEXCOMM)
        DCD     CDOG_IRQHandler                               ;CDOG interrupt
__Vectors_End

__Vectors       EQU   __vector_table
__Vectors_Size  EQU   __Vectors_End - __Vectors


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Default interrupt handlers.
;;
        THUMB

        PUBWEAK Reset_Handler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reset_Handler
        CPSID   I               ; Mask interrupts
        LDR     R0, =0xE000ED08
        LDR     R1, =__vector_table
        STR     R1, [R0]
        LDR     R2, [R1]
        MSR     MSP, R2
        LDR     R0, =sfb(CSTACK)
        MSR     MSPLIM, R0
        CPSIE   I               ; Unmask interrupts
        LDR     R0, =SystemInit
        BLX     R0
        LDR     R0, =__iar_program_start
        BX      R0

        PUBWEAK NMI_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
NMI_Handler
        B .

        PUBWEAK HardFault_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
HardFault_Handler
        B .

        PUBWEAK MemManage_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
MemManage_Handler
        B .

        PUBWEAK BusFault_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
BusFault_Handler
        B .

        PUBWEAK UsageFault_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
UsageFault_Handler
        B .

        PUBWEAK SecureFault_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
SecureFault_Handler
        B .

        PUBWEAK SVC_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
SVC_Handler
        B .

        PUBWEAK DebugMon_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
DebugMon_Handler
        B .

        PUBWEAK PendSV_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
PendSV_Handler
        B .

        PUBWEAK SysTick_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
SysTick_Handler
        B .

        PUBWEAK WDT_BOD_IRQHandler
        PUBWEAK WDT_BOD_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
WDT_BOD_IRQHandler
        LDR     R0, =WDT_BOD_DriverIRQHandler
        BX      R0

        PUBWEAK DMA0_IRQHandler
        PUBWEAK DMA0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
DMA0_IRQHandler
        LDR     R0, =DMA0_DriverIRQHandler
        BX      R0

        PUBWEAK GINT0_IRQHandler
        PUBWEAK GINT0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
GINT0_IRQHandler
        LDR     R0, =GINT0_DriverIRQHandler
        BX      R0

        PUBWEAK GINT1_IRQHandler
        PUBWEAK GINT1_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
GINT1_IRQHandler
        LDR     R0, =GINT1_DriverIRQHandler
        BX      R0

        PUBWEAK PIN_INT0_IRQHandler
        PUBWEAK PIN_INT0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
PIN_INT0_IRQHandler
        LDR     R0, =PIN_INT0_DriverIRQHandler
        BX      R0

        PUBWEAK PIN_INT1_IRQHandler
        PUBWEAK PIN_INT1_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
PIN_INT1_IRQHandler
        LDR     R0, =PIN_INT1_DriverIRQHandler
        BX      R0

        PUBWEAK PIN_INT2_IRQHandler
        PUBWEAK PIN_INT2_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
PIN_INT2_IRQHandler
        LDR     R0, =PIN_INT2_DriverIRQHandler
        BX      R0

        PUBWEAK PIN_INT3_IRQHandler
        PUBWEAK PIN_INT3_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
PIN_INT3_IRQHandler
        LDR     R0, =PIN_INT3_DriverIRQHandler
        BX      R0

        PUBWEAK UTICK0_IRQHandler
        PUBWEAK UTICK0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
UTICK0_IRQHandler
        LDR     R0, =UTICK0_DriverIRQHandler
        BX      R0

        PUBWEAK MRT0_IRQHandler
        PUBWEAK MRT0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
MRT0_IRQHandler
        LDR     R0, =MRT0_DriverIRQHandler
        BX      R0

        PUBWEAK CTIMER0_IRQHandler
        PUBWEAK CTIMER0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
CTIMER0_IRQHandler
        LDR     R0, =CTIMER0_DriverIRQHandler
        BX      R0

        PUBWEAK CTIMER1_IRQHandler
        PUBWEAK CTIMER1_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
CTIMER1_IRQHandler
        LDR     R0, =CTIMER1_DriverIRQHandler
        BX      R0

        PUBWEAK SCT0_IRQHandler
        PUBWEAK SCT0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
SCT0_IRQHandler
        LDR     R0, =SCT0_DriverIRQHandler
        BX      R0

        PUBWEAK CTIMER3_IRQHandler
        PUBWEAK CTIMER3_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
CTIMER3_IRQHandler
        LDR     R0, =CTIMER3_DriverIRQHandler
        BX      R0

        PUBWEAK FLEXCOMM0_IRQHandler
        PUBWEAK FLEXCOMM0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
FLEXCOMM0_IRQHandler
        LDR     R0, =FLEXCOMM0_DriverIRQHandler
        BX      R0

        PUBWEAK FLEXCOMM1_IRQHandler
        PUBWEAK FLEXCOMM1_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
FLEXCOMM1_IRQHandler
        LDR     R0, =FLEXCOMM1_DriverIRQHandler
        BX      R0

        PUBWEAK FLEXCOMM2_IRQHandler
        PUBWEAK FLEXCOMM2_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
FLEXCOMM2_IRQHandler
        LDR     R0, =FLEXCOMM2_DriverIRQHandler
        BX      R0

        PUBWEAK FLEXCOMM3_IRQHandler
        PUBWEAK FLEXCOMM3_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
FLEXCOMM3_IRQHandler
        LDR     R0, =FLEXCOMM3_DriverIRQHandler
        BX      R0

        PUBWEAK FLEXCOMM4_IRQHandler
        PUBWEAK FLEXCOMM4_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
FLEXCOMM4_IRQHandler
        LDR     R0, =FLEXCOMM4_DriverIRQHandler
        BX      R0

        PUBWEAK FLEXCOMM5_IRQHandler
        PUBWEAK FLEXCOMM5_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
FLEXCOMM5_IRQHandler
        LDR     R0, =FLEXCOMM5_DriverIRQHandler
        BX      R0

        PUBWEAK FLEXCOMM6_IRQHandler
        PUBWEAK FLEXCOMM6_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
FLEXCOMM6_IRQHandler
        LDR     R0, =FLEXCOMM6_DriverIRQHandler
        BX      R0

        PUBWEAK FLEXCOMM7_IRQHandler
        PUBWEAK FLEXCOMM7_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
FLEXCOMM7_IRQHandler
        LDR     R0, =FLEXCOMM7_DriverIRQHandler
        BX      R0

        PUBWEAK ADC0_IRQHandler
        PUBWEAK ADC0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
ADC0_IRQHandler
        LDR     R0, =ADC0_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved39_IRQHandler
        PUBWEAK Reserved39_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved39_IRQHandler
        LDR     R0, =Reserved39_DriverIRQHandler
        BX      R0

        PUBWEAK ACMP_IRQHandler
        PUBWEAK ACMP_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
ACMP_IRQHandler
        LDR     R0, =ACMP_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved41_IRQHandler
        PUBWEAK Reserved41_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved41_IRQHandler
        LDR     R0, =Reserved41_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved42_IRQHandler
        PUBWEAK Reserved42_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved42_IRQHandler
        LDR     R0, =Reserved42_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved43_IRQHandler
        PUBWEAK Reserved43_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved43_IRQHandler
        LDR     R0, =Reserved43_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved44_IRQHandler
        PUBWEAK Reserved44_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved44_IRQHandler
        LDR     R0, =Reserved44_DriverIRQHandler
        BX      R0

        PUBWEAK RTC_IRQHandler
        PUBWEAK RTC_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
RTC_IRQHandler
        LDR     R0, =RTC_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved46_IRQHandler
        PUBWEAK Reserved46_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved46_IRQHandler
        LDR     R0, =Reserved46_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved47_IRQHandler
        PUBWEAK Reserved47_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved47_IRQHandler
        LDR     R0, =Reserved47_DriverIRQHandler
        BX      R0

        PUBWEAK PIN_INT4_IRQHandler
        PUBWEAK PIN_INT4_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
PIN_INT4_IRQHandler
        LDR     R0, =PIN_INT4_DriverIRQHandler
        BX      R0

        PUBWEAK PIN_INT5_IRQHandler
        PUBWEAK PIN_INT5_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
PIN_INT5_IRQHandler
        LDR     R0, =PIN_INT5_DriverIRQHandler
        BX      R0

        PUBWEAK PIN_INT6_IRQHandler
        PUBWEAK PIN_INT6_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
PIN_INT6_IRQHandler
        LDR     R0, =PIN_INT6_DriverIRQHandler
        BX      R0

        PUBWEAK PIN_INT7_IRQHandler
        PUBWEAK PIN_INT7_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
PIN_INT7_IRQHandler
        LDR     R0, =PIN_INT7_DriverIRQHandler
        BX      R0

        PUBWEAK CTIMER2_IRQHandler
        PUBWEAK CTIMER2_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
CTIMER2_IRQHandler
        LDR     R0, =CTIMER2_DriverIRQHandler
        BX      R0

        PUBWEAK CTIMER4_IRQHandler
        PUBWEAK CTIMER4_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
CTIMER4_IRQHandler
        LDR     R0, =CTIMER4_DriverIRQHandler
        BX      R0

        PUBWEAK OS_EVENT_IRQHandler
        PUBWEAK OS_EVENT_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
OS_EVENT_IRQHandler
        LDR     R0, =OS_EVENT_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved55_IRQHandler
        PUBWEAK Reserved55_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved55_IRQHandler
        LDR     R0, =Reserved55_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved56_IRQHandler
        PUBWEAK Reserved56_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved56_IRQHandler
        LDR     R0, =Reserved56_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved57_IRQHandler
        PUBWEAK Reserved57_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved57_IRQHandler
        LDR     R0, =Reserved57_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved58_IRQHandler
        PUBWEAK Reserved58_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved58_IRQHandler
        LDR     R0, =Reserved58_DriverIRQHandler
        BX      R0

        PUBWEAK CAN0_IRQ0_IRQHandler
        PUBWEAK CAN0_IRQ0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
CAN0_IRQ0_IRQHandler
        LDR     R0, =CAN0_IRQ0_DriverIRQHandler
        BX      R0

        PUBWEAK CAN0_IRQ1_IRQHandler
        PUBWEAK CAN0_IRQ1_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
CAN0_IRQ1_IRQHandler
        LDR     R0, =CAN0_IRQ1_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved61_IRQHandler
        PUBWEAK Reserved61_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved61_IRQHandler
        LDR     R0, =Reserved61_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved62_IRQHandler
        PUBWEAK Reserved62_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved62_IRQHandler
        LDR     R0, =Reserved62_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved63_IRQHandler
        PUBWEAK Reserved63_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved63_IRQHandler
        LDR     R0, =Reserved63_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved64_IRQHandler
        PUBWEAK Reserved64_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved64_IRQHandler
        LDR     R0, =Reserved64_DriverIRQHandler
        BX      R0

        PUBWEAK SEC_HYPERVISOR_CALL_IRQHandler
        PUBWEAK SEC_HYPERVISOR_CALL_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
SEC_HYPERVISOR_CALL_IRQHandler
        LDR     R0, =SEC_HYPERVISOR_CALL_DriverIRQHandler
        BX      R0

        PUBWEAK SEC_GPIO_INT0_IRQ0_IRQHandler
        PUBWEAK SEC_GPIO_INT0_IRQ0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
SEC_GPIO_INT0_IRQ0_IRQHandler
        LDR     R0, =SEC_GPIO_INT0_IRQ0_DriverIRQHandler
        BX      R0

        PUBWEAK SEC_GPIO_INT0_IRQ1_IRQHandler
        PUBWEAK SEC_GPIO_INT0_IRQ1_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
SEC_GPIO_INT0_IRQ1_IRQHandler
        LDR     R0, =SEC_GPIO_INT0_IRQ1_DriverIRQHandler
        BX      R0

        PUBWEAK PLU_IRQHandler
        PUBWEAK PLU_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
PLU_IRQHandler
        LDR     R0, =PLU_DriverIRQHandler
        BX      R0

        PUBWEAK SEC_VIO_IRQHandler
        PUBWEAK SEC_VIO_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
SEC_VIO_IRQHandler
        LDR     R0, =SEC_VIO_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved70_IRQHandler
        PUBWEAK Reserved70_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved70_IRQHandler
        LDR     R0, =Reserved70_DriverIRQHandler
        BX      R0

        PUBWEAK CASER_IRQHandler
        PUBWEAK CASER_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
CASER_IRQHandler
        LDR     R0, =CASER_DriverIRQHandler
        BX      R0

        PUBWEAK PUF_IRQHandler
        PUBWEAK PUF_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
PUF_IRQHandler
        LDR     R0, =PUF_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved73_IRQHandler
        PUBWEAK Reserved73_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved73_IRQHandler
        LDR     R0, =Reserved73_DriverIRQHandler
        BX      R0

        PUBWEAK DMA1_IRQHandler
        PUBWEAK DMA1_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
DMA1_IRQHandler
        LDR     R0, =DMA1_DriverIRQHandler
        BX      R0

        PUBWEAK FLEXCOMM8_IRQHandler
        PUBWEAK FLEXCOMM8_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
FLEXCOMM8_IRQHandler
        LDR     R0, =FLEXCOMM8_DriverIRQHandler
        BX      R0

        PUBWEAK CDOG_IRQHandler
        PUBWEAK CDOG_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
CDOG_IRQHandler
        LDR     R0, =CDOG_DriverIRQHandler
        BX      R0

WDT_BOD_DriverIRQHandler
DMA0_DriverIRQHandler
GINT0_DriverIRQHandler
GINT1_DriverIRQHandler
PIN_INT0_DriverIRQHandler
PIN_INT1_DriverIRQHandler
PIN_INT2_DriverIRQHandler
PIN_INT3_DriverIRQHandler
UTICK0_DriverIRQHandler
MRT0_DriverIRQHandler
CTIMER0_DriverIRQHandler
CTIMER1_DriverIRQHandler
SCT0_DriverIRQHandler
CTIMER3_DriverIRQHandler
FLEXCOMM0_DriverIRQHandler
FLEXCOMM1_DriverIRQHandler
FLEXCOMM2_DriverIRQHandler
FLEXCOMM3_DriverIRQHandler
FLEXCOMM4_DriverIRQHandler
FLEXCOMM5_DriverIRQHandler
FLEXCOMM6_DriverIRQHandler
FLEXCOMM7_DriverIRQHandler
ADC0_DriverIRQHandler
Reserved39_DriverIRQHandler
ACMP_DriverIRQHandler
Reserved41_DriverIRQHandler
Reserved42_DriverIRQHandler
Reserved43_DriverIRQHandler
Reserved44_DriverIRQHandler
RTC_DriverIRQHandler
Reserved46_DriverIRQHandler
Reserved47_DriverIRQHandler
PIN_INT4_DriverIRQHandler
PIN_INT5_DriverIRQHandler
PIN_INT6_DriverIRQHandler
PIN_INT7_DriverIRQHandler
CTIMER2_DriverIRQHandler
CTIMER4_DriverIRQHandler
OS_EVENT_DriverIRQHandler
Reserved55_DriverIRQHandler
Reserved56_DriverIRQHandler
Reserved57_DriverIRQHandler
Reserved58_DriverIRQHandler
CAN0_IRQ0_DriverIRQHandler
CAN0_IRQ1_DriverIRQHandler
Reserved61_DriverIRQHandler
Reserved62_DriverIRQHandler
Reserved63_DriverIRQHandler
Reserved64_DriverIRQHandler
SEC_HYPERVISOR_CALL_DriverIRQHandler
SEC_GPIO_INT0_IRQ0_DriverIRQHandler
SEC_GPIO_INT0_IRQ1_DriverIRQHandler
PLU_DriverIRQHandler
SEC_VIO_DriverIRQHandler
Reserved70_DriverIRQHandler
CASER_DriverIRQHandler
PUF_DriverIRQHandler
Reserved73_DriverIRQHandler
DMA1_DriverIRQHandler
FLEXCOMM8_DriverIRQHandler
CDOG_DriverIRQHandler
DefaultISR
        B .

        END
