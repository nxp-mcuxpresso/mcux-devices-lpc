/* ------------------------------------------------------------------------- */
/*  @file:    startup_LPC804.s                                               */
/*  @purpose: CMSIS Cortex-M0P Core Device Startup File                      */
/*            LPC804                                                         */
/*  @version: 1.0                                                            */
/*  @date:    2018-1-9                                                       */
/*  @build:   b240704                                                        */
/* ------------------------------------------------------------------------- */
/*                                                                           */
/* Copyright 1997-2016 Freescale Semiconductor, Inc.                         */
/* Copyright 2016-2024 NXP                                                   */
/* SPDX-License-Identifier: BSD-3-Clause                                     */
/*****************************************************************************/
/* Version: GCC for ARM Embedded Processors                                  */
/*****************************************************************************/
    .syntax unified
    .arch armv6-m
    .eabi_attribute Tag_ABI_align_preserved, 1 /*8-byte alignment */

    .section .isr_vector, "a"
    .align 2
    .globl __Vectors
__Vectors:
    .long   Image$$ARM_LIB_STACK$$ZI$$Limit                 /* Top of Stack */
    .long   Reset_Handler                                   /* Reset Handler */
    .long   NMI_Handler                                     /* NMI Handler*/
    .long   HardFault_Handler                               /* Hard Fault Handler*/
    .long   0                                               /* Reserved*/
    .long   0                                               /* Reserved*/
    .long   0                                               /* Reserved*/
    .long   0                                               /* Reserved*/
    .long   0                                               /* Reserved*/
    .long   0                                               /* Reserved*/
    .long   0                                               /* Reserved*/
    .long   SVC_Handler                                     /* SVCall Handler*/
    .long   0                                               /* Reserved*/
    .long   0                                               /* Reserved*/
    .long   PendSV_Handler                                  /* PendSV Handler*/
    .long   SysTick_Handler                                 /* SysTick Handler*/

                                                            /* External Interrupts*/
    .long   SPI0_IRQHandler                                 /* SPI0 interrupt*/
    .long   Reserved17_IRQHandler                           /* Reserved interrupt*/
    .long   DAC0_IRQHandler                                 /* DAC0 interrupt*/
    .long   USART0_IRQHandler                               /* USART0 interrupt*/
    .long   USART1_IRQHandler                               /* USART1 interrupt*/
    .long   Reserved21_IRQHandler                           /* Reserved interrupt*/
    .long   Reserved22_IRQHandler                           /* Reserved interrupt*/
    .long   I2C1_IRQHandler                                 /* I2C1 interrupt*/
    .long   I2C0_IRQHandler                                 /* I2C0 interrupt*/
    .long   Reserved25_IRQHandler                           /* Reserved interrupt*/
    .long   MRT0_IRQHandler                                 /* Multi-rate timer interrupt*/
    .long   CMP_CAPT_IRQHandler                             /* Analog comparator interrupt or Capacitive Touch interrupt*/
    .long   WDT_IRQHandler                                  /* Windowed watchdog timer interrupt*/
    .long   BOD_IRQHandler                                  /* BOD interrupts*/
    .long   FLASH_IRQHandler                                /* flash interrupt*/
    .long   WKT_IRQHandler                                  /* Self-wake-up timer interrupt*/
    .long   ADC_SEQA_IRQHandler                             /* ADC sequence A completion.*/
    .long   ADC_SEQB_IRQHandler                             /* ADC sequence B completion.*/
    .long   ADC_THCMP_IRQHandler                            /* ADC threshold compare and error.*/
    .long   ADC_OVR_IRQHandler                              /* ADC overrun*/
    .long   Reserved36_IRQHandler                           /* Reserved interrupt*/
    .long   Reserved37_IRQHandler                           /* Reserved interrupt*/
    .long   Reserved38_IRQHandler                           /* Reserved interrupt*/
    .long   CTIMER0_IRQHandler                              /* Timer interrupt*/
    .long   PIN_INT0_IRQHandler                             /* Pin interrupt 0 or pattern match engine slice 0 interrupt*/
    .long   PIN_INT1_IRQHandler                             /* Pin interrupt 1 or pattern match engine slice 1 interrupt*/
    .long   PIN_INT2_IRQHandler                             /* Pin interrupt 2 or pattern match engine slice 2 interrupt*/
    .long   PIN_INT3_IRQHandler                             /* Pin interrupt 3 or pattern match engine slice 3 interrupt*/
    .long   PIN_INT4_IRQHandler                             /* Pin interrupt 4 or pattern match engine slice 4 interrupt*/
    .long   PIN_INT5_IRQHandler                             /* Pin interrupt 5 or pattern match engine slice 5 interrupt*/
    .long   PIN_INT6_IRQHandler                             /* Pin interrupt 6 or pattern match engine slice 6 interrupt*/
    .long   PIN_INT7_IRQHandler                             /* Pin interrupt 7 or pattern match engine slice 7 interrupt*/

    .size    __Vectors, . - __Vectors
/*  Variable to store CRP value in. No code read protection enabled by default
 *  Code Read Protection level (CRP)
 *    CRP_Level:
 *      <0xFFFFFFFF=> Disabled
 *      <0x4E697370=> NO_ISP
 *      <0x12345678=> CRP1
 *      <0x87654321=> CRP2
 *      <0x43218765=> CRP3
 */
    .equ CRP_Level, 0xFFFFFFFF
    #ifndef NO_CRP
      .section .crp, "a"
      .long 0xFFFFFFFF
    #endif

    .text
    .thumb

/* Reset Handler */

    .thumb_func
    .align 2
    .weak    Reset_Handler
    .type    Reset_Handler, %function
Reset_Handler:
    ldr     r0,=SystemInit
    blx     r0
    ldr     r0,=__main
    bx      r0

    .pool
    .size Reset_Handler, . - Reset_Handler

    .align  1
    .thumb_func
    .weak DefaultISR
    .type DefaultISR, %function
DefaultISR:
    ldr r0, =DefaultISR
    bx r0
    .size DefaultISR, . - DefaultISR

    .align 1
    .thumb_func
    .weak NMI_Handler
    .type NMI_Handler, %function
NMI_Handler:
    ldr   r0,=NMI_Handler
    bx    r0
    .size NMI_Handler, . - NMI_Handler

    .align 1
    .thumb_func
    .weak HardFault_Handler
    .type HardFault_Handler, %function
HardFault_Handler:
    ldr   r0,=HardFault_Handler
    bx    r0
    .size HardFault_Handler, . - HardFault_Handler

    .align 1
    .thumb_func
    .weak SVC_Handler
    .type SVC_Handler, %function
SVC_Handler:
    ldr   r0,=SVC_Handler
    bx    r0
    .size SVC_Handler, . - SVC_Handler

    .align 1
    .thumb_func
    .weak PendSV_Handler
    .type PendSV_Handler, %function
PendSV_Handler:
    ldr   r0,=PendSV_Handler
    bx    r0
    .size PendSV_Handler, . - PendSV_Handler

    .align 1
    .thumb_func
    .weak SysTick_Handler
    .type SysTick_Handler, %function
SysTick_Handler:
    ldr   r0,=SysTick_Handler
    bx    r0
    .size SysTick_Handler, . - SysTick_Handler

    .align 1
    .thumb_func
    .weak SPI0_IRQHandler
    .type SPI0_IRQHandler, %function
SPI0_IRQHandler:
    ldr   r0,=SPI0_DriverIRQHandler
    bx    r0
    .size SPI0_IRQHandler, . - SPI0_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved17_IRQHandler
    .type Reserved17_IRQHandler, %function
Reserved17_IRQHandler:
    ldr   r0,=Reserved17_DriverIRQHandler
    bx    r0
    .size Reserved17_IRQHandler, . - Reserved17_IRQHandler

    .align 1
    .thumb_func
    .weak DAC0_IRQHandler
    .type DAC0_IRQHandler, %function
DAC0_IRQHandler:
    ldr   r0,=DAC0_DriverIRQHandler
    bx    r0
    .size DAC0_IRQHandler, . - DAC0_IRQHandler

    .align 1
    .thumb_func
    .weak USART0_IRQHandler
    .type USART0_IRQHandler, %function
USART0_IRQHandler:
    ldr   r0,=USART0_DriverIRQHandler
    bx    r0
    .size USART0_IRQHandler, . - USART0_IRQHandler

    .align 1
    .thumb_func
    .weak USART1_IRQHandler
    .type USART1_IRQHandler, %function
USART1_IRQHandler:
    ldr   r0,=USART1_DriverIRQHandler
    bx    r0
    .size USART1_IRQHandler, . - USART1_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved21_IRQHandler
    .type Reserved21_IRQHandler, %function
Reserved21_IRQHandler:
    ldr   r0,=Reserved21_DriverIRQHandler
    bx    r0
    .size Reserved21_IRQHandler, . - Reserved21_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved22_IRQHandler
    .type Reserved22_IRQHandler, %function
Reserved22_IRQHandler:
    ldr   r0,=Reserved22_DriverIRQHandler
    bx    r0
    .size Reserved22_IRQHandler, . - Reserved22_IRQHandler

    .align 1
    .thumb_func
    .weak I2C1_IRQHandler
    .type I2C1_IRQHandler, %function
I2C1_IRQHandler:
    ldr   r0,=I2C1_DriverIRQHandler
    bx    r0
    .size I2C1_IRQHandler, . - I2C1_IRQHandler

    .align 1
    .thumb_func
    .weak I2C0_IRQHandler
    .type I2C0_IRQHandler, %function
I2C0_IRQHandler:
    ldr   r0,=I2C0_DriverIRQHandler
    bx    r0
    .size I2C0_IRQHandler, . - I2C0_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved25_IRQHandler
    .type Reserved25_IRQHandler, %function
Reserved25_IRQHandler:
    ldr   r0,=Reserved25_DriverIRQHandler
    bx    r0
    .size Reserved25_IRQHandler, . - Reserved25_IRQHandler

    .align 1
    .thumb_func
    .weak MRT0_IRQHandler
    .type MRT0_IRQHandler, %function
MRT0_IRQHandler:
    ldr   r0,=MRT0_DriverIRQHandler
    bx    r0
    .size MRT0_IRQHandler, . - MRT0_IRQHandler

    .align 1
    .thumb_func
    .weak CMP_CAPT_IRQHandler
    .type CMP_CAPT_IRQHandler, %function
CMP_CAPT_IRQHandler:
    ldr   r0,=CMP_CAPT_DriverIRQHandler
    bx    r0
    .size CMP_CAPT_IRQHandler, . - CMP_CAPT_IRQHandler

    .align 1
    .thumb_func
    .weak WDT_IRQHandler
    .type WDT_IRQHandler, %function
WDT_IRQHandler:
    ldr   r0,=WDT_DriverIRQHandler
    bx    r0
    .size WDT_IRQHandler, . - WDT_IRQHandler

    .align 1
    .thumb_func
    .weak BOD_IRQHandler
    .type BOD_IRQHandler, %function
BOD_IRQHandler:
    ldr   r0,=BOD_DriverIRQHandler
    bx    r0
    .size BOD_IRQHandler, . - BOD_IRQHandler

    .align 1
    .thumb_func
    .weak FLASH_IRQHandler
    .type FLASH_IRQHandler, %function
FLASH_IRQHandler:
    ldr   r0,=FLASH_DriverIRQHandler
    bx    r0
    .size FLASH_IRQHandler, . - FLASH_IRQHandler

    .align 1
    .thumb_func
    .weak WKT_IRQHandler
    .type WKT_IRQHandler, %function
WKT_IRQHandler:
    ldr   r0,=WKT_DriverIRQHandler
    bx    r0
    .size WKT_IRQHandler, . - WKT_IRQHandler

    .align 1
    .thumb_func
    .weak ADC_SEQA_IRQHandler
    .type ADC_SEQA_IRQHandler, %function
ADC_SEQA_IRQHandler:
    ldr   r0,=ADC_SEQA_DriverIRQHandler
    bx    r0
    .size ADC_SEQA_IRQHandler, . - ADC_SEQA_IRQHandler

    .align 1
    .thumb_func
    .weak ADC_SEQB_IRQHandler
    .type ADC_SEQB_IRQHandler, %function
ADC_SEQB_IRQHandler:
    ldr   r0,=ADC_SEQB_DriverIRQHandler
    bx    r0
    .size ADC_SEQB_IRQHandler, . - ADC_SEQB_IRQHandler

    .align 1
    .thumb_func
    .weak ADC_THCMP_IRQHandler
    .type ADC_THCMP_IRQHandler, %function
ADC_THCMP_IRQHandler:
    ldr   r0,=ADC_THCMP_DriverIRQHandler
    bx    r0
    .size ADC_THCMP_IRQHandler, . - ADC_THCMP_IRQHandler

    .align 1
    .thumb_func
    .weak ADC_OVR_IRQHandler
    .type ADC_OVR_IRQHandler, %function
ADC_OVR_IRQHandler:
    ldr   r0,=ADC_OVR_DriverIRQHandler
    bx    r0
    .size ADC_OVR_IRQHandler, . - ADC_OVR_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved36_IRQHandler
    .type Reserved36_IRQHandler, %function
Reserved36_IRQHandler:
    ldr   r0,=Reserved36_DriverIRQHandler
    bx    r0
    .size Reserved36_IRQHandler, . - Reserved36_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved37_IRQHandler
    .type Reserved37_IRQHandler, %function
Reserved37_IRQHandler:
    ldr   r0,=Reserved37_DriverIRQHandler
    bx    r0
    .size Reserved37_IRQHandler, . - Reserved37_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved38_IRQHandler
    .type Reserved38_IRQHandler, %function
Reserved38_IRQHandler:
    ldr   r0,=Reserved38_DriverIRQHandler
    bx    r0
    .size Reserved38_IRQHandler, . - Reserved38_IRQHandler

    .align 1
    .thumb_func
    .weak CTIMER0_IRQHandler
    .type CTIMER0_IRQHandler, %function
CTIMER0_IRQHandler:
    ldr   r0,=CTIMER0_DriverIRQHandler
    bx    r0
    .size CTIMER0_IRQHandler, . - CTIMER0_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT0_IRQHandler
    .type PIN_INT0_IRQHandler, %function
PIN_INT0_IRQHandler:
    ldr   r0,=PIN_INT0_DriverIRQHandler
    bx    r0
    .size PIN_INT0_IRQHandler, . - PIN_INT0_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT1_IRQHandler
    .type PIN_INT1_IRQHandler, %function
PIN_INT1_IRQHandler:
    ldr   r0,=PIN_INT1_DriverIRQHandler
    bx    r0
    .size PIN_INT1_IRQHandler, . - PIN_INT1_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT2_IRQHandler
    .type PIN_INT2_IRQHandler, %function
PIN_INT2_IRQHandler:
    ldr   r0,=PIN_INT2_DriverIRQHandler
    bx    r0
    .size PIN_INT2_IRQHandler, . - PIN_INT2_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT3_IRQHandler
    .type PIN_INT3_IRQHandler, %function
PIN_INT3_IRQHandler:
    ldr   r0,=PIN_INT3_DriverIRQHandler
    bx    r0
    .size PIN_INT3_IRQHandler, . - PIN_INT3_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT4_IRQHandler
    .type PIN_INT4_IRQHandler, %function
PIN_INT4_IRQHandler:
    ldr   r0,=PIN_INT4_DriverIRQHandler
    bx    r0
    .size PIN_INT4_IRQHandler, . - PIN_INT4_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT5_IRQHandler
    .type PIN_INT5_IRQHandler, %function
PIN_INT5_IRQHandler:
    ldr   r0,=PIN_INT5_DriverIRQHandler
    bx    r0
    .size PIN_INT5_IRQHandler, . - PIN_INT5_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT6_IRQHandler
    .type PIN_INT6_IRQHandler, %function
PIN_INT6_IRQHandler:
    ldr   r0,=PIN_INT6_DriverIRQHandler
    bx    r0
    .size PIN_INT6_IRQHandler, . - PIN_INT6_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT7_IRQHandler
    .type PIN_INT7_IRQHandler, %function
PIN_INT7_IRQHandler:
    ldr   r0,=PIN_INT7_DriverIRQHandler
    bx    r0
    .size PIN_INT7_IRQHandler, . - PIN_INT7_IRQHandler


/*    Macro to define default handlers. Default handler
 *    will be weak symbol and just dead loops. They can be
 *    overwritten by other handlers */
    .macro def_irq_handler  handler_name
    .weak \handler_name
    .set  \handler_name, DefaultISR
    .endm

/* Exception Handlers */
    def_irq_handler    SPI0_DriverIRQHandler
    def_irq_handler    Reserved17_DriverIRQHandler
    def_irq_handler    DAC0_DriverIRQHandler
    def_irq_handler    USART0_DriverIRQHandler
    def_irq_handler    USART1_DriverIRQHandler
    def_irq_handler    Reserved21_DriverIRQHandler
    def_irq_handler    Reserved22_DriverIRQHandler
    def_irq_handler    I2C1_DriverIRQHandler
    def_irq_handler    I2C0_DriverIRQHandler
    def_irq_handler    Reserved25_DriverIRQHandler
    def_irq_handler    MRT0_DriverIRQHandler
    def_irq_handler    CMP_CAPT_DriverIRQHandler
    def_irq_handler    WDT_DriverIRQHandler
    def_irq_handler    BOD_DriverIRQHandler
    def_irq_handler    FLASH_DriverIRQHandler
    def_irq_handler    WKT_DriverIRQHandler
    def_irq_handler    ADC_SEQA_DriverIRQHandler
    def_irq_handler    ADC_SEQB_DriverIRQHandler
    def_irq_handler    ADC_THCMP_DriverIRQHandler
    def_irq_handler    ADC_OVR_DriverIRQHandler
    def_irq_handler    Reserved36_DriverIRQHandler
    def_irq_handler    Reserved37_DriverIRQHandler
    def_irq_handler    Reserved38_DriverIRQHandler
    def_irq_handler    CTIMER0_DriverIRQHandler
    def_irq_handler    PIN_INT0_DriverIRQHandler
    def_irq_handler    PIN_INT1_DriverIRQHandler
    def_irq_handler    PIN_INT2_DriverIRQHandler
    def_irq_handler    PIN_INT3_DriverIRQHandler
    def_irq_handler    PIN_INT4_DriverIRQHandler
    def_irq_handler    PIN_INT5_DriverIRQHandler
    def_irq_handler    PIN_INT6_DriverIRQHandler
    def_irq_handler    PIN_INT7_DriverIRQHandler

    .end
