/*
** ###################################################################
**     Processors:          LPC864M201JBD64
**                          LPC864M201JHI33
**                          LPC864M201JHI48
**                          LPC865M201JBD64
**                          LPC865M201JHI33
**                          LPC865M201JHI48
**
**     Version:             rev. 1.0, 2022-03-15
**     Build:               b240704
**
**     Abstract:
**         CMSIS Peripheral Access Layer for SWM
**
**     Copyright 1997-2016 Freescale Semiconductor, Inc.
**     Copyright 2016-2024 NXP
**     SPDX-License-Identifier: BSD-3-Clause
**
**     http:                 www.nxp.com
**     mail:                 support@nxp.com
**
**     Revisions:
**     - rev. 0.0 (2021-07-15)
**         Initial version.
**     - rev. 1.0 (2022-03-15)
**         Revesion of Rev. 1.
**
** ###################################################################
*/

/*!
 * @file SWM.h
 * @version 1.0
 * @date 2022-03-15
 * @brief CMSIS Peripheral Access Layer for SWM
 *
 * CMSIS Peripheral Access Layer for SWM
 */

#if !defined(SWM_H_)
#define SWM_H_                                   /**< Symbol preventing repeated inclusion */

#if (defined(CPU_LPC864M201JBD64) || defined(CPU_LPC864M201JHI33) || defined(CPU_LPC864M201JHI48))
#include "LPC864_COMMON.h"
#elif (defined(CPU_LPC865M201JBD64) || defined(CPU_LPC865M201JHI33) || defined(CPU_LPC865M201JHI48))
#include "LPC865_COMMON.h"
#else
  #error "No valid CPU defined!"
#endif

/* ----------------------------------------------------------------------------
   -- Device Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/*!
 * @addtogroup Peripheral_access_layer Device Peripheral Access Layer
 * @{
 */


/*
** Start of section using anonymous unions
*/

#if defined(__ARMCC_VERSION)
  #if (__ARMCC_VERSION >= 6010050)
    #pragma clang diagnostic push
  #else
    #pragma push
    #pragma anon_unions
  #endif
#elif defined(__GNUC__)
  /* anonymous unions are enabled by default */
#elif defined(__IAR_SYSTEMS_ICC__)
  #pragma language=extended
#else
  #error Not supported compiler type
#endif

/* ----------------------------------------------------------------------------
   -- SWM Peripheral Access Layer
   ---------------------------------------------------------------------------- */

/*!
 * @addtogroup SWM_Peripheral_Access_Layer SWM Peripheral Access Layer
 * @{
 */

/** SWM - Size of Registers Arrays */
#define SWM_PINASSIGN_PINASSIGN_DATA_PINASSIGN_DATA_PINASSIGN_DATA_COUNT 9u

/** SWM - Register Layout Typedef */
typedef struct {
  union {                                          /* offset: 0x0 */
    struct {                                         /* offset: 0x0 */
      __IO uint32_t PINASSIGN0;                        /**< Pin assign register 0. Assign movable functions U0_TXD, U0_RXD, U0_RTS, U0_CTS., offset: 0x0 */
      __IO uint32_t PINASSIGN1;                        /**< Pin assign register 1. Assign movable functions U0_SCLK, U1_TXD, U1_RXD, U1_RTS., offset: 0x4 */
      __IO uint32_t PINASSIGN2;                        /**< Pin assign register 2. Assign movable functions U1_CTS, U1_SCLK, U2_TXD, U2_RXD., offset: 0x8 */
      __IO uint32_t PINASSIGN3;                        /**< Pin assign register 3. Assign movable function U2_RTS, U2_CTS, U2_SCLK, SPI0_SCK., offset: 0xC */
      __IO uint32_t PINASSIGN4;                        /**< Pin assign register 4. Assign movable functions SPI0_MOSI, SPI0_MISO, SPI0_SSEL0, SPI0_SSEL1., offset: 0x10 */
      __IO uint32_t PINASSIGN5;                        /**< Pin assign register 5. Assign movable functions SPI0_SSEL2, SPI0_SSEL3, SPI1_SCK, SPI1_MOSI, offset: 0x14 */
      __IO uint32_t PINASSIGN6;                        /**< Pin assign register 6. Assign movable functions SPI1_MISO, SPI1_SSEL0, SPI1_SSEL1, SCT0_IN0., offset: 0x18 */
      __IO uint32_t PINASSIGN7;                        /**< Pin assign register 7. Assign movable functions SCT_IN1, SCT_IN2, SCT_IN3, SCT_OUT0., offset: 0x1C */
      __IO uint32_t PINASSIGN8;                        /**< Pin assign register 8. Assign movable functions ACMP0_OUT, CLKOUT, GPIOINT_BMATCH., offset: 0x20 */
    } PINASSIGN;
    __IO uint32_t PINASSIGN_DATA[SWM_PINASSIGN_PINASSIGN_DATA_PINASSIGN_DATA_PINASSIGN_DATA_COUNT];   /**< Pin assign register, array offset: 0x0, array step: 0x4 */
  };
       uint8_t RESERVED_0[348];
  __IO uint32_t FTM_PINASSIGN0;                    /**< FlexTimer Pin assign register 0 Assign movable functions., offset: 0x180 */
  __IO uint32_t FTM_PINASSIGN1;                    /**< FlexTimer Pin assign register 0 Assign movable functions., offset: 0x184 */
       uint8_t RESERVED_1[56];
  __IO uint32_t PINENABLE0;                        /**< Pin enable register 0. Enables fixed-pin functions ACMP_I0, ACMP_I1, SWCLK, SWDIO, XTALIN, XTALOUT, RESET, CLKIN, VDDCMP and so on., offset: 0x1C0 */
} SWM_Type;

/* ----------------------------------------------------------------------------
   -- SWM Register Masks
   ---------------------------------------------------------------------------- */

/*!
 * @addtogroup SWM_Register_Masks SWM Register Masks
 * @{
 */

/*! @name PINASSIGN0 - Pin assign register 0. Assign movable functions U0_TXD, U0_RXD, U0_RTS, U0_CTS. */
/*! @{ */

#define SWM_PINASSIGN0_U0_TXD_O_MASK             (0xFFU)
#define SWM_PINASSIGN0_U0_TXD_O_SHIFT            (0U)
/*! U0_TXD_O - U0_TXD function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35) .
 */
#define SWM_PINASSIGN0_U0_TXD_O(x)               (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN0_U0_TXD_O_SHIFT)) & SWM_PINASSIGN0_U0_TXD_O_MASK)

#define SWM_PINASSIGN0_U0_RXD_I_MASK             (0xFF00U)
#define SWM_PINASSIGN0_U0_RXD_I_SHIFT            (8U)
/*! U0_RXD_I - U0_RXD function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN0_U0_RXD_I(x)               (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN0_U0_RXD_I_SHIFT)) & SWM_PINASSIGN0_U0_RXD_I_MASK)

#define SWM_PINASSIGN0_U0_RTS_O_MASK             (0xFF0000U)
#define SWM_PINASSIGN0_U0_RTS_O_SHIFT            (16U)
/*! U0_RTS_O - U0_RTS function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN0_U0_RTS_O(x)               (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN0_U0_RTS_O_SHIFT)) & SWM_PINASSIGN0_U0_RTS_O_MASK)

#define SWM_PINASSIGN0_U0_CTS_I_MASK             (0xFF000000U)
#define SWM_PINASSIGN0_U0_CTS_I_SHIFT            (24U)
/*! U0_CTS_I - U0_CTS function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN0_U0_CTS_I(x)               (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN0_U0_CTS_I_SHIFT)) & SWM_PINASSIGN0_U0_CTS_I_MASK)
/*! @} */

/*! @name PINASSIGN1 - Pin assign register 1. Assign movable functions U0_SCLK, U1_TXD, U1_RXD, U1_RTS. */
/*! @{ */

#define SWM_PINASSIGN1_U0_SCLK_IO_MASK           (0xFFU)
#define SWM_PINASSIGN1_U0_SCLK_IO_SHIFT          (0U)
/*! U0_SCLK_IO - U0_SCLK function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0
 *    (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN1_U0_SCLK_IO(x)             (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN1_U0_SCLK_IO_SHIFT)) & SWM_PINASSIGN1_U0_SCLK_IO_MASK)

#define SWM_PINASSIGN1_U1_TXD_O_MASK             (0xFF00U)
#define SWM_PINASSIGN1_U1_TXD_O_SHIFT            (8U)
/*! U1_TXD_O - U1_TXD function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN1_U1_TXD_O(x)               (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN1_U1_TXD_O_SHIFT)) & SWM_PINASSIGN1_U1_TXD_O_MASK)

#define SWM_PINASSIGN1_U1_RXD_I_MASK             (0xFF0000U)
#define SWM_PINASSIGN1_U1_RXD_I_SHIFT            (16U)
/*! U1_RXD_I - U1_RXD function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN1_U1_RXD_I(x)               (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN1_U1_RXD_I_SHIFT)) & SWM_PINASSIGN1_U1_RXD_I_MASK)

#define SWM_PINASSIGN1_U1_RTS_O_MASK             (0xFF000000U)
#define SWM_PINASSIGN1_U1_RTS_O_SHIFT            (24U)
/*! U1_RTS_O - U1_RTS function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN1_U1_RTS_O(x)               (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN1_U1_RTS_O_SHIFT)) & SWM_PINASSIGN1_U1_RTS_O_MASK)
/*! @} */

/*! @name PINASSIGN2 - Pin assign register 2. Assign movable functions U1_CTS, U1_SCLK, U2_TXD, U2_RXD. */
/*! @{ */

#define SWM_PINASSIGN2_U1_CTS_I_MASK             (0xFFU)
#define SWM_PINASSIGN2_U1_CTS_I_SHIFT            (0U)
/*! U1_CTS_I - U1_CTS function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN2_U1_CTS_I(x)               (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN2_U1_CTS_I_SHIFT)) & SWM_PINASSIGN2_U1_CTS_I_MASK)

#define SWM_PINASSIGN2_U1_SCLK_IO_MASK           (0xFF00U)
#define SWM_PINASSIGN2_U1_SCLK_IO_SHIFT          (8U)
/*! U1_SCLK_IO - U1_SCLK function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0
 *    (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN2_U1_SCLK_IO(x)             (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN2_U1_SCLK_IO_SHIFT)) & SWM_PINASSIGN2_U1_SCLK_IO_MASK)

#define SWM_PINASSIGN2_U2_TXD_O_MASK             (0xFF0000U)
#define SWM_PINASSIGN2_U2_TXD_O_SHIFT            (16U)
/*! U2_TXD_O - U2_TXD function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN2_U2_TXD_O(x)               (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN2_U2_TXD_O_SHIFT)) & SWM_PINASSIGN2_U2_TXD_O_MASK)

#define SWM_PINASSIGN2_U2_RXD_I_MASK             (0xFF000000U)
#define SWM_PINASSIGN2_U2_RXD_I_SHIFT            (24U)
/*! U2_RXD_I - U2_RXD function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN2_U2_RXD_I(x)               (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN2_U2_RXD_I_SHIFT)) & SWM_PINASSIGN2_U2_RXD_I_MASK)
/*! @} */

/*! @name PINASSIGN3 - Pin assign register 3. Assign movable function U2_RTS, U2_CTS, U2_SCLK, SPI0_SCK. */
/*! @{ */

#define SWM_PINASSIGN3_U2_RTS_O_MASK             (0xFFU)
#define SWM_PINASSIGN3_U2_RTS_O_SHIFT            (0U)
/*! U2_RTS_O - U2_RTS function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN3_U2_RTS_O(x)               (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN3_U2_RTS_O_SHIFT)) & SWM_PINASSIGN3_U2_RTS_O_MASK)

#define SWM_PINASSIGN3_U2_CTS_I_MASK             (0xFF00U)
#define SWM_PINASSIGN3_U2_CTS_I_SHIFT            (8U)
/*! U2_CTS_I - U2_CTS function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN3_U2_CTS_I(x)               (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN3_U2_CTS_I_SHIFT)) & SWM_PINASSIGN3_U2_CTS_I_MASK)

#define SWM_PINASSIGN3_U2_SCLK_IO_MASK           (0xFF0000U)
#define SWM_PINASSIGN3_U2_SCLK_IO_SHIFT          (16U)
/*! U2_SCLK_IO - U2_SCLK function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0
 *    (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN3_U2_SCLK_IO(x)             (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN3_U2_SCLK_IO_SHIFT)) & SWM_PINASSIGN3_U2_SCLK_IO_MASK)

#define SWM_PINASSIGN3_SPI0_SCK_IO_MASK          (0xFF000000U)
#define SWM_PINASSIGN3_SPI0_SCK_IO_SHIFT         (24U)
/*! SPI0_SCK_IO - SPI0_SCK function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0
 *    (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN3_SPI0_SCK_IO(x)            (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN3_SPI0_SCK_IO_SHIFT)) & SWM_PINASSIGN3_SPI0_SCK_IO_MASK)
/*! @} */

/*! @name PINASSIGN4 - Pin assign register 4. Assign movable functions SPI0_MOSI, SPI0_MISO, SPI0_SSEL0, SPI0_SSEL1. */
/*! @{ */

#define SWM_PINASSIGN4_SPI0_MOSI_IO_MASK         (0xFFU)
#define SWM_PINASSIGN4_SPI0_MOSI_IO_SHIFT        (0U)
/*! SPI0_MOSI_IO - SPI0_MOSI function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0
 *    (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN4_SPI0_MOSI_IO(x)           (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN4_SPI0_MOSI_IO_SHIFT)) & SWM_PINASSIGN4_SPI0_MOSI_IO_MASK)

#define SWM_PINASSIGN4_SPI0_MISO_IO_MASK         (0xFF00U)
#define SWM_PINASSIGN4_SPI0_MISO_IO_SHIFT        (8U)
/*! SPI0_MISO_IO - SPI0_MISIO function assignment. The value is the pin number to be assigned to
 *    this function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0
 *    (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN4_SPI0_MISO_IO(x)           (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN4_SPI0_MISO_IO_SHIFT)) & SWM_PINASSIGN4_SPI0_MISO_IO_MASK)

#define SWM_PINASSIGN4_SPI0_SSEL0_IO_MASK        (0xFF0000U)
#define SWM_PINASSIGN4_SPI0_SSEL0_IO_SHIFT       (16U)
/*! SPI0_SSEL0_IO - SPI0_SSEL0 function assignment. The value is the pin number to be assigned to
 *    this function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from
 *    PIO1_0 (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN4_SPI0_SSEL0_IO(x)          (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN4_SPI0_SSEL0_IO_SHIFT)) & SWM_PINASSIGN4_SPI0_SSEL0_IO_MASK)

#define SWM_PINASSIGN4_SPI0_SSEL1_IO_MASK        (0xFF000000U)
#define SWM_PINASSIGN4_SPI0_SSEL1_IO_SHIFT       (24U)
/*! SPI0_SSEL1_IO - SPI0_SSEL1 function assignment. The value is the pin number to be assigned to
 *    this function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from
 *    PIO1_0 (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN4_SPI0_SSEL1_IO(x)          (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN4_SPI0_SSEL1_IO_SHIFT)) & SWM_PINASSIGN4_SPI0_SSEL1_IO_MASK)
/*! @} */

/*! @name PINASSIGN5 - Pin assign register 5. Assign movable functions SPI0_SSEL2, SPI0_SSEL3, SPI1_SCK, SPI1_MOSI */
/*! @{ */

#define SWM_PINASSIGN5_SPI0_SSEL2_IO_MASK        (0xFFU)
#define SWM_PINASSIGN5_SPI0_SSEL2_IO_SHIFT       (0U)
/*! SPI0_SSEL2_IO - SPI0_SSEL2 function assignment. The value is the pin number to be assigned to
 *    this function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from
 *    PIO1_0 (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN5_SPI0_SSEL2_IO(x)          (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN5_SPI0_SSEL2_IO_SHIFT)) & SWM_PINASSIGN5_SPI0_SSEL2_IO_MASK)

#define SWM_PINASSIGN5_SPI0_SSEL3_IO_MASK        (0xFF00U)
#define SWM_PINASSIGN5_SPI0_SSEL3_IO_SHIFT       (8U)
/*! SPI0_SSEL3_IO - SPI0_SSEL3 function assignment. The value is the pin number to be assigned to
 *    this function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from
 *    PIO1_0 (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN5_SPI0_SSEL3_IO(x)          (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN5_SPI0_SSEL3_IO_SHIFT)) & SWM_PINASSIGN5_SPI0_SSEL3_IO_MASK)

#define SWM_PINASSIGN5_SPI1_SCK_IO_MASK          (0xFF0000U)
#define SWM_PINASSIGN5_SPI1_SCK_IO_SHIFT         (16U)
/*! SPI1_SCK_IO - SPI1_SCK function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0
 *    (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN5_SPI1_SCK_IO(x)            (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN5_SPI1_SCK_IO_SHIFT)) & SWM_PINASSIGN5_SPI1_SCK_IO_MASK)

#define SWM_PINASSIGN5_SPI1_MOSI_IO_MASK         (0xFF000000U)
#define SWM_PINASSIGN5_SPI1_MOSI_IO_SHIFT        (24U)
/*! SPI1_MOSI_IO - SPI1_MOSI function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0
 *    (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN5_SPI1_MOSI_IO(x)           (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN5_SPI1_MOSI_IO_SHIFT)) & SWM_PINASSIGN5_SPI1_MOSI_IO_MASK)
/*! @} */

/*! @name PINASSIGN6 - Pin assign register 6. Assign movable functions SPI1_MISO, SPI1_SSEL0, SPI1_SSEL1, SCT0_IN0. */
/*! @{ */

#define SWM_PINASSIGN6_SPI1_MISO_IO_MASK         (0xFFU)
#define SWM_PINASSIGN6_SPI1_MISO_IO_SHIFT        (0U)
/*! SPI1_MISO_IO - SPI1_MISO function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0
 *    (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN6_SPI1_MISO_IO(x)           (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN6_SPI1_MISO_IO_SHIFT)) & SWM_PINASSIGN6_SPI1_MISO_IO_MASK)

#define SWM_PINASSIGN6_SPI1_SSEL0_IO_MASK        (0xFF00U)
#define SWM_PINASSIGN6_SPI1_SSEL0_IO_SHIFT       (8U)
/*! SPI1_SSEL0_IO - SPI1_SSEL0 function assignment. The value is the pin number to be assigned to
 *    this function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from
 *    PIO1_0 (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN6_SPI1_SSEL0_IO(x)          (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN6_SPI1_SSEL0_IO_SHIFT)) & SWM_PINASSIGN6_SPI1_SSEL0_IO_MASK)

#define SWM_PINASSIGN6_SPI1_SSEL1_IO_MASK        (0xFF0000U)
#define SWM_PINASSIGN6_SPI1_SSEL1_IO_SHIFT       (16U)
/*! SPI1_SSEL1_IO - SPI1_SSEL1 function assignment. The value is the pin number to be assigned to
 *    this function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from
 *    PIO1_0 (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN6_SPI1_SSEL1_IO(x)          (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN6_SPI1_SSEL1_IO_SHIFT)) & SWM_PINASSIGN6_SPI1_SSEL1_IO_MASK)

#define SWM_PINASSIGN6_I2C0_SDA_IO_MASK          (0xFF000000U)
#define SWM_PINASSIGN6_I2C0_SDA_IO_SHIFT         (24U)
/*! I2C0_SDA_IO - I2C0_SDA_IO function assignment. The value is the pin number to be assigned to
 *    this function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0
 *    (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN6_I2C0_SDA_IO(x)            (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN6_I2C0_SDA_IO_SHIFT)) & SWM_PINASSIGN6_I2C0_SDA_IO_MASK)
/*! @} */

/*! @name PINASSIGN7 - Pin assign register 7. Assign movable functions SCT_IN1, SCT_IN2, SCT_IN3, SCT_OUT0. */
/*! @{ */

#define SWM_PINASSIGN7_I2C0_SCL_IO_MASK          (0xFFU)
#define SWM_PINASSIGN7_I2C0_SCL_IO_SHIFT         (0U)
/*! I2C0_SCL_IO - I2C0_SCL_IO function assignment. The value is the pin number to be assigned to
 *    this function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0
 *    (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN7_I2C0_SCL_IO(x)            (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN7_I2C0_SCL_IO_SHIFT)) & SWM_PINASSIGN7_I2C0_SCL_IO_MASK)

#define SWM_PINASSIGN7_I3C0_SDA_IO_MASK          (0xFF00U)
#define SWM_PINASSIGN7_I3C0_SDA_IO_SHIFT         (8U)
/*! I3C0_SDA_IO - I3C0_SDA_IO function assignment. The value is the pin number to be assigned to
 *    this function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0
 *    (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN7_I3C0_SDA_IO(x)            (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN7_I3C0_SDA_IO_SHIFT)) & SWM_PINASSIGN7_I3C0_SDA_IO_MASK)

#define SWM_PINASSIGN7_I3C0_SCL_IO_MASK          (0xFF0000U)
#define SWM_PINASSIGN7_I3C0_SCL_IO_SHIFT         (16U)
/*! I3C0_SCL_IO - I3C0_SCL_IO function assignment. The value is the pin number to be assigned to
 *    this function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0
 *    (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN7_I3C0_SCL_IO(x)            (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN7_I3C0_SCL_IO_SHIFT)) & SWM_PINASSIGN7_I3C0_SCL_IO_MASK)

#define SWM_PINASSIGN7_I3C0_PUR_IO_MASK          (0xFF000000U)
#define SWM_PINASSIGN7_I3C0_PUR_IO_SHIFT         (24U)
/*! I3C0_PUR_IO - I3C0_PUR_IO function assignment. The value is the pin number to be assigned to
 *    this function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0
 *    (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN7_I3C0_PUR_IO(x)            (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN7_I3C0_PUR_IO_SHIFT)) & SWM_PINASSIGN7_I3C0_PUR_IO_MASK)
/*! @} */

/*! @name PINASSIGN8 - Pin assign register 8. Assign movable functions ACMP0_OUT, CLKOUT, GPIOINT_BMATCH. */
/*! @{ */

#define SWM_PINASSIGN8_ACMP0_OUT_O_MASK          (0xFFU)
#define SWM_PINASSIGN8_ACMP0_OUT_O_SHIFT         (0U)
/*! ACMP0_OUT_O - ACMP0_OUT function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0
 *    (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN8_ACMP0_OUT_O(x)            (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN8_ACMP0_OUT_O_SHIFT)) & SWM_PINASSIGN8_ACMP0_OUT_O_MASK)

#define SWM_PINASSIGN8_CLKOUT_O_MASK             (0xFF00U)
#define SWM_PINASSIGN8_CLKOUT_O_SHIFT            (8U)
/*! CLKOUT_O - CLKOUT function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN8_CLKOUT_O(x)               (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN8_CLKOUT_O_SHIFT)) & SWM_PINASSIGN8_CLKOUT_O_MASK)

#define SWM_PINASSIGN8_GPIO_INT_BMAT_O_MASK      (0xFF0000U)
#define SWM_PINASSIGN8_GPIO_INT_BMAT_O_SHIFT     (16U)
/*! GPIO_INT_BMAT_O - GPIO_INT_BMAT function assignment. The value is the pin number to be assigned
 *    to this function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from
 *    PIO1_0 (=0x20) to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN8_GPIO_INT_BMAT_O(x)        (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN8_GPIO_INT_BMAT_O_SHIFT)) & SWM_PINASSIGN8_GPIO_INT_BMAT_O_MASK)
/*! @} */

/*! @name PINASSIGN_DATA - Pin assign register */
/*! @{ */

#define SWM_PINASSIGN_DATA_DATA0_MASK            (0xFFU)
#define SWM_PINASSIGN_DATA_DATA0_SHIFT           (0U)
/*! DATA0 - T0_MAT3 function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN_DATA_DATA0(x)              (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN_DATA_DATA0_SHIFT)) & SWM_PINASSIGN_DATA_DATA0_MASK)

#define SWM_PINASSIGN_DATA_DATA1_MASK            (0xFF00U)
#define SWM_PINASSIGN_DATA_DATA1_SHIFT           (8U)
/*! DATA1 - T0_CAP0 function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN_DATA_DATA1(x)              (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN_DATA_DATA1_SHIFT)) & SWM_PINASSIGN_DATA_DATA1_MASK)

#define SWM_PINASSIGN_DATA_DATA2_MASK            (0xFF0000U)
#define SWM_PINASSIGN_DATA_DATA2_SHIFT           (16U)
/*! DATA2 - T0_CAP1 function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN_DATA_DATA2(x)              (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN_DATA_DATA2_SHIFT)) & SWM_PINASSIGN_DATA_DATA2_MASK)

#define SWM_PINASSIGN_DATA_DATA3_MASK            (0xFF000000U)
#define SWM_PINASSIGN_DATA_DATA3_SHIFT           (24U)
/*! DATA3 - T0_CAP2 function assignment. The value is the pin number to be assigned to this
 *    function. The following pins are available: PIO0_0 (= 0) to PIO0_31 (= 0x1F) and from PIO1_0 (=0x20)
 *    to PIO1_21(=0x35).
 */
#define SWM_PINASSIGN_DATA_DATA3(x)              (((uint32_t)(((uint32_t)(x)) << SWM_PINASSIGN_DATA_DATA3_SHIFT)) & SWM_PINASSIGN_DATA_DATA3_MASK)
/*! @} */

/* The count of SWM_PINASSIGN_DATA */
#define SWM_PINASSIGN_DATA_COUNT                 (9U)

/*! @name FTM_PINASSIGN0 - FlexTimer Pin assign register 0 Assign movable functions. */
/*! @{ */

#define SWM_FTM_PINASSIGN0_FTM0_EXTCLK_MASK      (0x3U)
#define SWM_FTM_PINASSIGN0_FTM0_EXTCLK_SHIFT     (0U)
/*! FTM0_EXTCLK - Assign movable function FTM0_EXTCLK 00 = Selection 0 function pins 01 = Selection
 *    1 function pins 10 = Selection 2 function pins 11 = Selection 3 function pins
 */
#define SWM_FTM_PINASSIGN0_FTM0_EXTCLK(x)        (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN0_FTM0_EXTCLK_SHIFT)) & SWM_FTM_PINASSIGN0_FTM0_EXTCLK_MASK)

#define SWM_FTM_PINASSIGN0_FTM0_CH0_MASK         (0xCU)
#define SWM_FTM_PINASSIGN0_FTM0_CH0_SHIFT        (2U)
/*! FTM0_CH0 - Assign movable function FTM0_CH0 */
#define SWM_FTM_PINASSIGN0_FTM0_CH0(x)           (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN0_FTM0_CH0_SHIFT)) & SWM_FTM_PINASSIGN0_FTM0_CH0_MASK)

#define SWM_FTM_PINASSIGN0_FTM0_CH1_MASK         (0x30U)
#define SWM_FTM_PINASSIGN0_FTM0_CH1_SHIFT        (4U)
/*! FTM0_CH1 - Assign movable function FTM0_CH1 */
#define SWM_FTM_PINASSIGN0_FTM0_CH1(x)           (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN0_FTM0_CH1_SHIFT)) & SWM_FTM_PINASSIGN0_FTM0_CH1_MASK)

#define SWM_FTM_PINASSIGN0_FTM0_CH2_MASK         (0xC0U)
#define SWM_FTM_PINASSIGN0_FTM0_CH2_SHIFT        (6U)
/*! FTM0_CH2 - Assign movable function FTM0_CH2 */
#define SWM_FTM_PINASSIGN0_FTM0_CH2(x)           (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN0_FTM0_CH2_SHIFT)) & SWM_FTM_PINASSIGN0_FTM0_CH2_MASK)

#define SWM_FTM_PINASSIGN0_FTM0_CH3_MASK         (0x300U)
#define SWM_FTM_PINASSIGN0_FTM0_CH3_SHIFT        (8U)
/*! FTM0_CH3 - Assign movable function FTM0_CH3 */
#define SWM_FTM_PINASSIGN0_FTM0_CH3(x)           (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN0_FTM0_CH3_SHIFT)) & SWM_FTM_PINASSIGN0_FTM0_CH3_MASK)

#define SWM_FTM_PINASSIGN0_FTM0_CH4_MASK         (0xC00U)
#define SWM_FTM_PINASSIGN0_FTM0_CH4_SHIFT        (10U)
/*! FTM0_CH4 - Assign movable function FTM0_CH4 */
#define SWM_FTM_PINASSIGN0_FTM0_CH4(x)           (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN0_FTM0_CH4_SHIFT)) & SWM_FTM_PINASSIGN0_FTM0_CH4_MASK)

#define SWM_FTM_PINASSIGN0_FTM0_CH5_MASK         (0x3000U)
#define SWM_FTM_PINASSIGN0_FTM0_CH5_SHIFT        (12U)
/*! FTM0_CH5 - Assign movable function FTM0_CH5 */
#define SWM_FTM_PINASSIGN0_FTM0_CH5(x)           (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN0_FTM0_CH5_SHIFT)) & SWM_FTM_PINASSIGN0_FTM0_CH5_MASK)

#define SWM_FTM_PINASSIGN0_FTM0_FAULT0_MASK      (0xC000U)
#define SWM_FTM_PINASSIGN0_FTM0_FAULT0_SHIFT     (14U)
/*! FTM0_FAULT0 - Assign movable function FTM0_FAULT0 */
#define SWM_FTM_PINASSIGN0_FTM0_FAULT0(x)        (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN0_FTM0_FAULT0_SHIFT)) & SWM_FTM_PINASSIGN0_FTM0_FAULT0_MASK)

#define SWM_FTM_PINASSIGN0_FTM0_FAULT1_MASK      (0x30000U)
#define SWM_FTM_PINASSIGN0_FTM0_FAULT1_SHIFT     (16U)
/*! FTM0_FAULT1 - Assign movable function FTM0_FAULT1 */
#define SWM_FTM_PINASSIGN0_FTM0_FAULT1(x)        (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN0_FTM0_FAULT1_SHIFT)) & SWM_FTM_PINASSIGN0_FTM0_FAULT1_MASK)

#define SWM_FTM_PINASSIGN0_FTM0_FAULT2_MASK      (0xC0000U)
#define SWM_FTM_PINASSIGN0_FTM0_FAULT2_SHIFT     (18U)
/*! FTM0_FAULT2 - Assign movable function FTM0_FAULT2 */
#define SWM_FTM_PINASSIGN0_FTM0_FAULT2(x)        (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN0_FTM0_FAULT2_SHIFT)) & SWM_FTM_PINASSIGN0_FTM0_FAULT2_MASK)

#define SWM_FTM_PINASSIGN0_FTM0_FAULT3_MASK      (0x300000U)
#define SWM_FTM_PINASSIGN0_FTM0_FAULT3_SHIFT     (20U)
/*! FTM0_FAULT3 - Assign movable function FTM0_FAULT3 */
#define SWM_FTM_PINASSIGN0_FTM0_FAULT3(x)        (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN0_FTM0_FAULT3_SHIFT)) & SWM_FTM_PINASSIGN0_FTM0_FAULT3_MASK)

#define SWM_FTM_PINASSIGN0_FTM1_EXTCLK_MASK      (0xC00000U)
#define SWM_FTM_PINASSIGN0_FTM1_EXTCLK_SHIFT     (22U)
/*! FTM1_EXTCLK - Assign movable function FTM1_EXTCLK */
#define SWM_FTM_PINASSIGN0_FTM1_EXTCLK(x)        (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN0_FTM1_EXTCLK_SHIFT)) & SWM_FTM_PINASSIGN0_FTM1_EXTCLK_MASK)

#define SWM_FTM_PINASSIGN0_FTM1_CH0_MASK         (0x3000000U)
#define SWM_FTM_PINASSIGN0_FTM1_CH0_SHIFT        (24U)
/*! FTM1_CH0 - Assign movable function FTM1_CH0 */
#define SWM_FTM_PINASSIGN0_FTM1_CH0(x)           (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN0_FTM1_CH0_SHIFT)) & SWM_FTM_PINASSIGN0_FTM1_CH0_MASK)

#define SWM_FTM_PINASSIGN0_FTM1_CH1_MASK         (0xC000000U)
#define SWM_FTM_PINASSIGN0_FTM1_CH1_SHIFT        (26U)
/*! FTM1_CH1 - Assign movable function FTM1_CH1 */
#define SWM_FTM_PINASSIGN0_FTM1_CH1(x)           (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN0_FTM1_CH1_SHIFT)) & SWM_FTM_PINASSIGN0_FTM1_CH1_MASK)

#define SWM_FTM_PINASSIGN0_FTM1_CH2_MASK         (0x30000000U)
#define SWM_FTM_PINASSIGN0_FTM1_CH2_SHIFT        (28U)
/*! FTM1_CH2 - Assign movable function FTM1_CH2 */
#define SWM_FTM_PINASSIGN0_FTM1_CH2(x)           (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN0_FTM1_CH2_SHIFT)) & SWM_FTM_PINASSIGN0_FTM1_CH2_MASK)

#define SWM_FTM_PINASSIGN0_FTM1_CH3_MASK         (0xC0000000U)
#define SWM_FTM_PINASSIGN0_FTM1_CH3_SHIFT        (30U)
/*! FTM1_CH3 - Assign movable function FTM1_CH3 */
#define SWM_FTM_PINASSIGN0_FTM1_CH3(x)           (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN0_FTM1_CH3_SHIFT)) & SWM_FTM_PINASSIGN0_FTM1_CH3_MASK)
/*! @} */

/*! @name FTM_PINASSIGN1 - FlexTimer Pin assign register 0 Assign movable functions. */
/*! @{ */

#define SWM_FTM_PINASSIGN1_FTM1_QD_PHA_MASK      (0x3U)
#define SWM_FTM_PINASSIGN1_FTM1_QD_PHA_SHIFT     (0U)
/*! FTM1_QD_PHA - Assign movable function FTM1_QD_PHA */
#define SWM_FTM_PINASSIGN1_FTM1_QD_PHA(x)        (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN1_FTM1_QD_PHA_SHIFT)) & SWM_FTM_PINASSIGN1_FTM1_QD_PHA_MASK)

#define SWM_FTM_PINASSIGN1_FTM1_QD_PHB_MASK      (0xCU)
#define SWM_FTM_PINASSIGN1_FTM1_QD_PHB_SHIFT     (2U)
/*! FTM1_QD_PHB - Assign movable function FTM1_QD_PHB */
#define SWM_FTM_PINASSIGN1_FTM1_QD_PHB(x)        (((uint32_t)(((uint32_t)(x)) << SWM_FTM_PINASSIGN1_FTM1_QD_PHB_SHIFT)) & SWM_FTM_PINASSIGN1_FTM1_QD_PHB_MASK)
/*! @} */

/*! @name PINENABLE0 - Pin enable register 0. Enables fixed-pin functions ACMP_I0, ACMP_I1, SWCLK, SWDIO, XTALIN, XTALOUT, RESET, CLKIN, VDDCMP and so on. */
/*! @{ */

#define SWM_PINENABLE0_ACMP_I1_MASK              (0x1U)
#define SWM_PINENABLE0_ACMP_I1_SHIFT             (0U)
/*! ACMP_I1 - ACMP_I1 function select.
 *  0b0..ACMP_I1 enabled on pin PIO0_00.
 *  0b1..ACMP_I1 disabled.
 */
#define SWM_PINENABLE0_ACMP_I1(x)                (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ACMP_I1_SHIFT)) & SWM_PINENABLE0_ACMP_I1_MASK)

#define SWM_PINENABLE0_ACMP_I2_MASK              (0x2U)
#define SWM_PINENABLE0_ACMP_I2_SHIFT             (1U)
/*! ACMP_I2 - ACMP_I2 function select.
 *  0b0..ACMP_I2 enabled on pin PIO0_1.
 *  0b1..ACMP_I2 disabled.
 */
#define SWM_PINENABLE0_ACMP_I2(x)                (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ACMP_I2_SHIFT)) & SWM_PINENABLE0_ACMP_I2_MASK)

#define SWM_PINENABLE0_ACMP_I3_MASK              (0x4U)
#define SWM_PINENABLE0_ACMP_I3_SHIFT             (2U)
/*! ACMP_I3 - ACMP_I3 function select.
 *  0b0..ACMP_I3 enabled on pin PIO0_14.
 *  0b1..ACMP_I3 disabled.
 */
#define SWM_PINENABLE0_ACMP_I3(x)                (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ACMP_I3_SHIFT)) & SWM_PINENABLE0_ACMP_I3_MASK)

#define SWM_PINENABLE0_ACMP_I4_MASK              (0x8U)
#define SWM_PINENABLE0_ACMP_I4_SHIFT             (3U)
/*! ACMP_I4 - ACMP_I4 function select.
 *  0b0..ACMP_I4 enabled on pin PIO0_23.
 *  0b1..ACMP_I4 disabled.
 */
#define SWM_PINENABLE0_ACMP_I4(x)                (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ACMP_I4_SHIFT)) & SWM_PINENABLE0_ACMP_I4_MASK)

#define SWM_PINENABLE0_ACMP_I5_MASK              (0x10U)
#define SWM_PINENABLE0_ACMP_I5_SHIFT             (4U)
/*! ACMP_I5 - ACMP_I5 function select.
 *  0b0..ACMP_I5 enabled on pin PIO0_30.
 *  0b1..ACMP_I5 disabled.
 */
#define SWM_PINENABLE0_ACMP_I5(x)                (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ACMP_I5_SHIFT)) & SWM_PINENABLE0_ACMP_I5_MASK)

#define SWM_PINENABLE0_SWCLK_MASK                (0x20U)
#define SWM_PINENABLE0_SWCLK_SHIFT               (5U)
/*! SWCLK - SWCLK function select.
 *  0b0..SWCLK enabled on pin PIO0_3.
 *  0b1..SWCLK disabled.
 */
#define SWM_PINENABLE0_SWCLK(x)                  (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_SWCLK_SHIFT)) & SWM_PINENABLE0_SWCLK_MASK)

#define SWM_PINENABLE0_SWDIO_MASK                (0x40U)
#define SWM_PINENABLE0_SWDIO_SHIFT               (6U)
/*! SWDIO - SWDIO function select.
 *  0b0..SWDIO enabled on pin PIO0_2.
 *  0b1..SWDIO disabled.
 */
#define SWM_PINENABLE0_SWDIO(x)                  (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_SWDIO_SHIFT)) & SWM_PINENABLE0_SWDIO_MASK)

#define SWM_PINENABLE0_RESETN_MASK               (0x80U)
#define SWM_PINENABLE0_RESETN_SHIFT              (7U)
/*! RESETN - RESETN function select.
 *  0b0..RESETN enabled on pin PIO0_5.
 *  0b1..RESETN disabled.
 */
#define SWM_PINENABLE0_RESETN(x)                 (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_RESETN_SHIFT)) & SWM_PINENABLE0_RESETN_MASK)

#define SWM_PINENABLE0_CLKIN_MASK                (0x100U)
#define SWM_PINENABLE0_CLKIN_SHIFT               (8U)
/*! CLKIN - CLKIN function select.
 *  0b0..CLKIN enabled on pin PIO0_1.
 *  0b1..CLKIN disabled.
 */
#define SWM_PINENABLE0_CLKIN(x)                  (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_CLKIN_SHIFT)) & SWM_PINENABLE0_CLKIN_MASK)

#define SWM_PINENABLE0_CMPVREF_MASK              (0x200U)
#define SWM_PINENABLE0_CMPVREF_SHIFT             (9U)
/*! CMPVREF - CMPVREF function select.
 *  0b0..CMPVREF enabled on pin PIO0_6.
 *  0b1..CMPVREF disabled.
 */
#define SWM_PINENABLE0_CMPVREF(x)                (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_CMPVREF_SHIFT)) & SWM_PINENABLE0_CMPVREF_MASK)

#define SWM_PINENABLE0_XTALIN_MASK               (0x400U)
#define SWM_PINENABLE0_XTALIN_SHIFT              (10U)
/*! XTALIN - XTALIN function select.
 *  0b0..XTALIN enabled on pin PIO0_8.
 *  0b1..XTALIN disabled.
 */
#define SWM_PINENABLE0_XTALIN(x)                 (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_XTALIN_SHIFT)) & SWM_PINENABLE0_XTALIN_MASK)

#define SWM_PINENABLE0_XTALOUT_MASK              (0x800U)
#define SWM_PINENABLE0_XTALOUT_SHIFT             (11U)
/*! XTALOUT - XTALOUT function select.
 *  0b0..XTALOUT enabled on pin PIO0_9.
 *  0b1..XTALOUT disabled.
 */
#define SWM_PINENABLE0_XTALOUT(x)                (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_XTALOUT_SHIFT)) & SWM_PINENABLE0_XTALOUT_MASK)

#define SWM_PINENABLE0_ADC_0_MASK                (0x1000U)
#define SWM_PINENABLE0_ADC_0_SHIFT               (12U)
/*! ADC_0 - ADC_0 function select.
 *  0b0..ADC_0 enabled on pin PIO0_7.
 *  0b1..ADC_0 disabled.
 */
#define SWM_PINENABLE0_ADC_0(x)                  (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ADC_0_SHIFT)) & SWM_PINENABLE0_ADC_0_MASK)

#define SWM_PINENABLE0_ADC_1_MASK                (0x2000U)
#define SWM_PINENABLE0_ADC_1_SHIFT               (13U)
/*! ADC_1 - ADC_1 function select.
 *  0b0..ADC_1 enabled on pin PIO0_6.
 *  0b1..ADC_1 disabled.
 */
#define SWM_PINENABLE0_ADC_1(x)                  (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ADC_1_SHIFT)) & SWM_PINENABLE0_ADC_1_MASK)

#define SWM_PINENABLE0_ADC_2_MASK                (0x4000U)
#define SWM_PINENABLE0_ADC_2_SHIFT               (14U)
/*! ADC_2 - ADC_2 function select.
 *  0b0..ADC_2 enabled on pin PIO0_14.
 *  0b1..ADC_2 disabled.
 */
#define SWM_PINENABLE0_ADC_2(x)                  (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ADC_2_SHIFT)) & SWM_PINENABLE0_ADC_2_MASK)

#define SWM_PINENABLE0_ADC_3_MASK                (0x8000U)
#define SWM_PINENABLE0_ADC_3_SHIFT               (15U)
/*! ADC_3 - ADC_3 function select.
 *  0b0..ADC_3 enabled on pin PIO0_23.
 *  0b1..ADC_3 disabled.
 */
#define SWM_PINENABLE0_ADC_3(x)                  (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ADC_3_SHIFT)) & SWM_PINENABLE0_ADC_3_MASK)

#define SWM_PINENABLE0_ADC_4_MASK                (0x10000U)
#define SWM_PINENABLE0_ADC_4_SHIFT               (16U)
/*! ADC_4 - ADC_4 function select.
 *  0b0..ADC_4 enabled on pin PIO0_22.
 *  0b1..ADC_4 disabled.
 */
#define SWM_PINENABLE0_ADC_4(x)                  (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ADC_4_SHIFT)) & SWM_PINENABLE0_ADC_4_MASK)

#define SWM_PINENABLE0_ADC_5_MASK                (0x20000U)
#define SWM_PINENABLE0_ADC_5_SHIFT               (17U)
/*! ADC_5 - ADC_5 function select.
 *  0b0..ADC_5 enabled on pin PIO0_21.
 *  0b1..ADC_5 disabled.
 */
#define SWM_PINENABLE0_ADC_5(x)                  (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ADC_5_SHIFT)) & SWM_PINENABLE0_ADC_5_MASK)

#define SWM_PINENABLE0_ADC_6_MASK                (0x40000U)
#define SWM_PINENABLE0_ADC_6_SHIFT               (18U)
/*! ADC_6 - ADC_6 function select.
 *  0b0..ADC_6 enabled on pin PIO0_20.
 *  0b1..ADC_6 disabled.
 */
#define SWM_PINENABLE0_ADC_6(x)                  (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ADC_6_SHIFT)) & SWM_PINENABLE0_ADC_6_MASK)

#define SWM_PINENABLE0_ADC_7_MASK                (0x80000U)
#define SWM_PINENABLE0_ADC_7_SHIFT               (19U)
/*! ADC_7 - ADC_7 function select.
 *  0b0..ADC_7 enabled on pin PIO0_19.
 *  0b1..ADC_7 disabled.
 */
#define SWM_PINENABLE0_ADC_7(x)                  (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ADC_7_SHIFT)) & SWM_PINENABLE0_ADC_7_MASK)

#define SWM_PINENABLE0_ADC_8_MASK                (0x100000U)
#define SWM_PINENABLE0_ADC_8_SHIFT               (20U)
/*! ADC_8 - ADC_8 function select.
 *  0b0..ADC_8 enabled on pin PIO0_18.
 *  0b1..ADC_8 disabled.
 */
#define SWM_PINENABLE0_ADC_8(x)                  (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ADC_8_SHIFT)) & SWM_PINENABLE0_ADC_8_MASK)

#define SWM_PINENABLE0_ADC_9_MASK                (0x200000U)
#define SWM_PINENABLE0_ADC_9_SHIFT               (21U)
/*! ADC_9 - ADC_9 function select.
 *  0b0..ADC_9 enabled on pin PIO0_17.
 *  0b1..ADC_9 disabled.
 */
#define SWM_PINENABLE0_ADC_9(x)                  (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ADC_9_SHIFT)) & SWM_PINENABLE0_ADC_9_MASK)

#define SWM_PINENABLE0_ADC_10_MASK               (0x400000U)
#define SWM_PINENABLE0_ADC_10_SHIFT              (22U)
/*! ADC_10 - ADC_10 function select.
 *  0b0..ADC_10 enabled on pin PIO0_13.
 *  0b1..ADC_10 disabled.
 */
#define SWM_PINENABLE0_ADC_10(x)                 (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ADC_10_SHIFT)) & SWM_PINENABLE0_ADC_10_MASK)

#define SWM_PINENABLE0_ADC_11_MASK               (0x800000U)
#define SWM_PINENABLE0_ADC_11_SHIFT              (23U)
/*! ADC_11 - ADC_11 function select.
 *  0b0..ADC_11 enabled on pin PIO0_4.
 *  0b1..ADC_11 disabled.
 */
#define SWM_PINENABLE0_ADC_11(x)                 (((uint32_t)(((uint32_t)(x)) << SWM_PINENABLE0_ADC_11_SHIFT)) & SWM_PINENABLE0_ADC_11_MASK)
/*! @} */


/*!
 * @}
 */ /* end of group SWM_Register_Masks */


/*!
 * @}
 */ /* end of group SWM_Peripheral_Access_Layer */


/*
** End of section using anonymous unions
*/

#if defined(__ARMCC_VERSION)
  #if (__ARMCC_VERSION >= 6010050)
    #pragma clang diagnostic pop
  #else
    #pragma pop
  #endif
#elif defined(__GNUC__)
  /* leave anonymous unions enabled */
#elif defined(__IAR_SYSTEMS_ICC__)
  #pragma language=default
#else
  #error Not supported compiler type
#endif

/*!
 * @}
 */ /* end of group Peripheral_access_layer */


#endif  /* SWM_H_ */

