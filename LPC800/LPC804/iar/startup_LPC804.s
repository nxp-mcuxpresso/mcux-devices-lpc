; -------------------------------------------------------------------------
;  @file:    startup_LPC804.s
;  @purpose: CMSIS Cortex-M0P Core Device Startup File
;            LPC804
;  @version: 1.0
;  @date:    2018-1-9
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
        DCD     0                                             ;Reserved
        DCD     0                                             ;Reserved
        DCD     0                                             ;Reserved
__vector_table_0x1c
        DCD     0                                             ;Reserved
        DCD     0                                             ;Reserved
        DCD     0                                             ;Reserved
        DCD     0                                             ;Reserved
        DCD     SVC_Handler                                   ;SVCall Handler
        DCD     0                                             ;Reserved
        DCD     0                                             ;Reserved
        DCD     PendSV_Handler                                ;PendSV Handler
        DCD     SysTick_Handler                               ;SysTick Handler

                                                              ;External Interrupts
        DCD     SPI0_IRQHandler                               ;SPI0 interrupt
        DCD     Reserved17_IRQHandler                         ;Reserved interrupt
        DCD     DAC0_IRQHandler                               ;DAC0 interrupt
        DCD     USART0_IRQHandler                             ;USART0 interrupt
        DCD     USART1_IRQHandler                             ;USART1 interrupt
        DCD     Reserved21_IRQHandler                         ;Reserved interrupt
        DCD     Reserved22_IRQHandler                         ;Reserved interrupt
        DCD     I2C1_IRQHandler                               ;I2C1 interrupt
        DCD     I2C0_IRQHandler                               ;I2C0 interrupt
        DCD     Reserved25_IRQHandler                         ;Reserved interrupt
        DCD     MRT0_IRQHandler                               ;Multi-rate timer interrupt
        DCD     CMP_CAPT_IRQHandler                           ;Analog comparator interrupt or Capacitive Touch interrupt
        DCD     WDT_IRQHandler                                ;Windowed watchdog timer interrupt
        DCD     BOD_IRQHandler                                ;BOD interrupts
        DCD     FLASH_IRQHandler                              ;flash interrupt
        DCD     WKT_IRQHandler                                ;Self-wake-up timer interrupt
        DCD     ADC_SEQA_IRQHandler                           ;ADC sequence A completion.
        DCD     ADC_SEQB_IRQHandler                           ;ADC sequence B completion.
        DCD     ADC_THCMP_IRQHandler                          ;ADC threshold compare and error.
        DCD     ADC_OVR_IRQHandler                            ;ADC overrun
        DCD     Reserved36_IRQHandler                         ;Reserved interrupt
        DCD     Reserved37_IRQHandler                         ;Reserved interrupt
        DCD     Reserved38_IRQHandler                         ;Reserved interrupt
        DCD     CTIMER0_IRQHandler                            ;Timer interrupt
        DCD     PIN_INT0_IRQHandler                           ;Pin interrupt 0 or pattern match engine slice 0 interrupt
        DCD     PIN_INT1_IRQHandler                           ;Pin interrupt 1 or pattern match engine slice 1 interrupt
        DCD     PIN_INT2_IRQHandler                           ;Pin interrupt 2 or pattern match engine slice 2 interrupt
        DCD     PIN_INT3_IRQHandler                           ;Pin interrupt 3 or pattern match engine slice 3 interrupt
        DCD     PIN_INT4_IRQHandler                           ;Pin interrupt 4 or pattern match engine slice 4 interrupt
        DCD     PIN_INT5_IRQHandler                           ;Pin interrupt 5 or pattern match engine slice 5 interrupt
        DCD     PIN_INT6_IRQHandler                           ;Pin interrupt 6 or pattern match engine slice 6 interrupt
        DCD     PIN_INT7_IRQHandler                           ;Pin interrupt 7 or pattern match engine slice 7 interrupt
__Vectors_End

; Code Read Protection Level (CRP)
;    <0xFFFFFFFF=> Disabled
;    <0x4E697370=> NO_ISP
;    <0x12345678=> CRP1
;    <0x87654321=> CRP2
;    <0x43218765=> CRP3

#if !defined NO_CRP
        SECTION .crp:CODE
__CRP
        DCD     0xFFFFFFFF
__CRP_End
#endif

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
        LDR     r0, =SystemInit
        BLX     r0
        LDR     r0, =__iar_program_start
        BX      r0

        PUBWEAK NMI_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
NMI_Handler
        B .

        PUBWEAK HardFault_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
HardFault_Handler
        B .

        PUBWEAK SVC_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
SVC_Handler
        B .

        PUBWEAK PendSV_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
PendSV_Handler
        B .

        PUBWEAK SysTick_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
SysTick_Handler
        B .

        PUBWEAK SPI0_IRQHandler
        PUBWEAK SPI0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
SPI0_IRQHandler
        LDR     R0, =SPI0_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved17_IRQHandler
        PUBWEAK Reserved17_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved17_IRQHandler
        LDR     R0, =Reserved17_DriverIRQHandler
        BX      R0

        PUBWEAK DAC0_IRQHandler
        PUBWEAK DAC0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
DAC0_IRQHandler
        LDR     R0, =DAC0_DriverIRQHandler
        BX      R0

        PUBWEAK USART0_IRQHandler
        PUBWEAK USART0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
USART0_IRQHandler
        LDR     R0, =USART0_DriverIRQHandler
        BX      R0

        PUBWEAK USART1_IRQHandler
        PUBWEAK USART1_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
USART1_IRQHandler
        LDR     R0, =USART1_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved21_IRQHandler
        PUBWEAK Reserved21_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved21_IRQHandler
        LDR     R0, =Reserved21_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved22_IRQHandler
        PUBWEAK Reserved22_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved22_IRQHandler
        LDR     R0, =Reserved22_DriverIRQHandler
        BX      R0

        PUBWEAK I2C1_IRQHandler
        PUBWEAK I2C1_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
I2C1_IRQHandler
        LDR     R0, =I2C1_DriverIRQHandler
        BX      R0

        PUBWEAK I2C0_IRQHandler
        PUBWEAK I2C0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
I2C0_IRQHandler
        LDR     R0, =I2C0_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved25_IRQHandler
        PUBWEAK Reserved25_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved25_IRQHandler
        LDR     R0, =Reserved25_DriverIRQHandler
        BX      R0

        PUBWEAK MRT0_IRQHandler
        PUBWEAK MRT0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
MRT0_IRQHandler
        LDR     R0, =MRT0_DriverIRQHandler
        BX      R0

        PUBWEAK CMP_CAPT_IRQHandler
        PUBWEAK CMP_CAPT_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
CMP_CAPT_IRQHandler
        LDR     R0, =CMP_CAPT_DriverIRQHandler
        BX      R0

        PUBWEAK WDT_IRQHandler
        PUBWEAK WDT_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
WDT_IRQHandler
        LDR     R0, =WDT_DriverIRQHandler
        BX      R0

        PUBWEAK BOD_IRQHandler
        PUBWEAK BOD_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
BOD_IRQHandler
        LDR     R0, =BOD_DriverIRQHandler
        BX      R0

        PUBWEAK FLASH_IRQHandler
        PUBWEAK FLASH_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
FLASH_IRQHandler
        LDR     R0, =FLASH_DriverIRQHandler
        BX      R0

        PUBWEAK WKT_IRQHandler
        PUBWEAK WKT_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
WKT_IRQHandler
        LDR     R0, =WKT_DriverIRQHandler
        BX      R0

        PUBWEAK ADC_SEQA_IRQHandler
        PUBWEAK ADC_SEQA_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
ADC_SEQA_IRQHandler
        LDR     R0, =ADC_SEQA_DriverIRQHandler
        BX      R0

        PUBWEAK ADC_SEQB_IRQHandler
        PUBWEAK ADC_SEQB_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
ADC_SEQB_IRQHandler
        LDR     R0, =ADC_SEQB_DriverIRQHandler
        BX      R0

        PUBWEAK ADC_THCMP_IRQHandler
        PUBWEAK ADC_THCMP_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
ADC_THCMP_IRQHandler
        LDR     R0, =ADC_THCMP_DriverIRQHandler
        BX      R0

        PUBWEAK ADC_OVR_IRQHandler
        PUBWEAK ADC_OVR_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
ADC_OVR_IRQHandler
        LDR     R0, =ADC_OVR_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved36_IRQHandler
        PUBWEAK Reserved36_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved36_IRQHandler
        LDR     R0, =Reserved36_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved37_IRQHandler
        PUBWEAK Reserved37_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved37_IRQHandler
        LDR     R0, =Reserved37_DriverIRQHandler
        BX      R0

        PUBWEAK Reserved38_IRQHandler
        PUBWEAK Reserved38_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reserved38_IRQHandler
        LDR     R0, =Reserved38_DriverIRQHandler
        BX      R0

        PUBWEAK CTIMER0_IRQHandler
        PUBWEAK CTIMER0_DriverIRQHandler
        SECTION .text:CODE:REORDER:NOROOT(2)
CTIMER0_IRQHandler
        LDR     R0, =CTIMER0_DriverIRQHandler
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

SPI0_DriverIRQHandler
Reserved17_DriverIRQHandler
DAC0_DriverIRQHandler
USART0_DriverIRQHandler
USART1_DriverIRQHandler
Reserved21_DriverIRQHandler
Reserved22_DriverIRQHandler
I2C1_DriverIRQHandler
I2C0_DriverIRQHandler
Reserved25_DriverIRQHandler
MRT0_DriverIRQHandler
CMP_CAPT_DriverIRQHandler
WDT_DriverIRQHandler
BOD_DriverIRQHandler
FLASH_DriverIRQHandler
WKT_DriverIRQHandler
ADC_SEQA_DriverIRQHandler
ADC_SEQB_DriverIRQHandler
ADC_THCMP_DriverIRQHandler
ADC_OVR_DriverIRQHandler
Reserved36_DriverIRQHandler
Reserved37_DriverIRQHandler
Reserved38_DriverIRQHandler
CTIMER0_DriverIRQHandler
PIN_INT0_DriverIRQHandler
PIN_INT1_DriverIRQHandler
PIN_INT2_DriverIRQHandler
PIN_INT3_DriverIRQHandler
PIN_INT4_DriverIRQHandler
PIN_INT5_DriverIRQHandler
PIN_INT6_DriverIRQHandler
PIN_INT7_DriverIRQHandler
DefaultISR
        B .

        END
