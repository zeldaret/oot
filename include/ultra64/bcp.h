#ifndef BCP_H
#define BCP_H

#include "rcp.h"

/******************************************************************************
 * Additional MIPS Interface (MI) Registers
 */

/**
 * Accesses to this register outside of Secure Mode cause an NMI to transfer control
 * to the Secure Kernel.
 *
 * [25] ?: System software writes to this bit when launching an app or game
 * [24] SK RAM Access: Set to 1 to enable access to 0x8000 bytes at 0x1FC40000
 *  [7] Secure Trap Cause: Memory card removed
 *  [6] Secure Trap Cause: Power button pressed
 *  [5] Secure Trap Cause: MI Error
 *  [4] Secure Trap Cause: PI Error
 *  [3] Secure Trap Cause: Timer expired
 *  [2] Secure Trap Cause: Syscall via read of this register outside of secure mode
 *  [1] Boot ROM Swap: 0 = SK mapped at 0x1FC00000, Boot ROM mapped at 0x1FC20000
 *                     1 = Boot ROM mapped at 0x1FC00000, SK mapped at 0x1FC20000
 *  [0] Secure Mode: 0 = not in secure mode
 *                   1 = in secure mode
 */
#define MI_SECURE_EXCEPTION_REG (MI_BASE_REG + 0x14)

/**
 * Read:
 *  [25] MD (active, 1 if card is currently disconnected else 0)
 *  [24] Power Button (active, 1 if button is currently pressed else 0)
 *  [13] MD (pending interrupt)
 *  [12] Power Button (pending interrupt)
 *  [11] USB1
 *  [10] USB0
 *  [ 9] PI_ERR
 *  [ 8] IDE
 *  [ 7] AES
 *  [ 6] FLASH
 *  [ 5] DP
 *  [ 4] PI
 *  [ 3] VI
 *  [ 2] AI
 *  [ 1] SI
 *  [ 0] SP
 *
 * Write:
 *  [13] Clear MD Interrupt
 */
#define MI_EX_INTR_REG (MI_BASE_REG + 0x38)

/*
 * MI_EX_INTR_REG: read bits
 */
#define MI_EX_INTR_SP               (1 <<  0)
#define MI_EX_INTR_SI               (1 <<  1)
#define MI_EX_INTR_AI               (1 <<  2)
#define MI_EX_INTR_VI               (1 <<  3)
#define MI_EX_INTR_PI               (1 <<  4)
#define MI_EX_INTR_DP               (1 <<  5)
#define MI_EX_INTR_FLASH            (1 <<  6)
#define MI_EX_INTR_AES              (1 <<  7)
#define MI_EX_INTR_IDE              (1 <<  8)
#define MI_EX_INTR_PI_ERR           (1 <<  9)
#define MI_EX_INTR_USB0             (1 << 10)
#define MI_EX_INTR_USB1             (1 << 11)
#define MI_EX_INTR_PWR_BTN          (1 << 12)
#define MI_EX_INTR_MD               (1 << 13)
#define MI_EX_INTR_PWR_BTN_PRESSED  (1 << 24)   /* updated in real-time, unrelated to interrupt */
#define MI_EX_INTR_CARD_NOT_PRESENT (1 << 25)   /* updated in real-time, unrelated to interrupt */

#define MI_EX_INTR_ALL                                                             \
   (MI_EX_INTR_FLASH | MI_EX_INTR_AES  | MI_EX_INTR_IDE     | MI_EX_INTR_PI_ERR  | \
    MI_EX_INTR_USB0  | MI_EX_INTR_USB1 | MI_EX_INTR_PWR_BTN | MI_EX_INTR_MD)

/*
 * MI_EX_INTR_REG: write bits
 */
#define MI_EX_INTR_CLR_MD           (1 << 13)

/**
 * Write:
 *  [27:26] Set/Clear MD
 *  [25:24] Set/Clear BUTTON
 *  [23:22] Set/Clear USB1
 *  [21:20] Set/Clear USB0
 *  [19:18] Set/Clear PI_ERR
 *  [17:16] Set/Clear IDE
 *  [15:14] Set/Clear AES
 *  [13:12] Set/Clear FLASH
 *  [11:10] Set/Clear DP
 *  [ 9: 8] Set/Clear PI
 *  [ 7: 6] Set/Clear VI
 *  [ 5: 4] Set/Clear AI
 *  [ 3: 2] Set/Clear SI
 *  [ 1: 0] Set/Clear SP
 *
 * Read:
 *  [13] MD
 *  [12] BUTTON
 *  [11] USB1
 *  [10] USB0
 *  [ 9] PI_ERR
 *  [ 8] IDE
 *  [ 7] AES
 *  [ 6] FLASH
 *  [ 5] DP
 *  [ 4] PI
 *  [ 3] VI
 *  [ 2] AI
 *  [ 1] SI
 *  [ 0] SP
 */
#define MI_EX_INTR_MASK_REG (MI_BASE_REG + 0x3C)

/*
 * MI_EX_INTR_MASK_REG: write bits
 */
#define MI_EX_INTR_MASK_CLR_SP      (1 <<  0)  /* clear SP      mask */
#define MI_EX_INTR_MASK_SET_SP      (1 <<  1)  /*   set SP      mask */
#define MI_EX_INTR_MASK_CLR_SI      (1 <<  2)  /* clear SI      mask */
#define MI_EX_INTR_MASK_SET_SI      (1 <<  3)  /*   set SI      mask */
#define MI_EX_INTR_MASK_CLR_AI      (1 <<  4)  /* clear AI      mask */
#define MI_EX_INTR_MASK_SET_AI      (1 <<  5)  /*   set AI      mask */
#define MI_EX_INTR_MASK_CLR_VI      (1 <<  6)  /* clear VI      mask */
#define MI_EX_INTR_MASK_SET_VI      (1 <<  7)  /*   set VI      mask */
#define MI_EX_INTR_MASK_CLR_PI      (1 <<  8)  /* clear PI      mask */
#define MI_EX_INTR_MASK_SET_PI      (1 <<  9)  /*   set PI      mask */
#define MI_EX_INTR_MASK_CLR_DP      (1 << 10)  /* clear DP      mask */
#define MI_EX_INTR_MASK_SET_DP      (1 << 11)  /*   set DP      mask */
#define MI_EX_INTR_MASK_CLR_FLASH   (1 << 12)  /* clear FLASH   mask */
#define MI_EX_INTR_MASK_SET_FLASH   (1 << 13)  /*   set FLASH   mask */
#define MI_EX_INTR_MASK_CLR_AES     (1 << 14)  /* clear AES     mask */
#define MI_EX_INTR_MASK_SET_AES     (1 << 15)  /*   set AES     mask */
#define MI_EX_INTR_MASK_CLR_IDE     (1 << 16)  /* clear IDE     mask */
#define MI_EX_INTR_MASK_SET_IDE     (1 << 17)  /*   set IDE     mask */
#define MI_EX_INTR_MASK_CLR_PI_ERR  (1 << 18)  /* clear PI_ERR  mask */
#define MI_EX_INTR_MASK_SET_PI_ERR  (1 << 19)  /*   set PI_ERR  mask */
#define MI_EX_INTR_MASK_CLR_USB0    (1 << 20)  /* clear USB0    mask */
#define MI_EX_INTR_MASK_SET_USB0    (1 << 21)  /*   set USB0    mask */
#define MI_EX_INTR_MASK_CLR_USB1    (1 << 22)  /* clear USB1    mask */
#define MI_EX_INTR_MASK_SET_USB1    (1 << 23)  /*   set USB1    mask */
#define MI_EX_INTR_MASK_CLR_PWR_BTN (1 << 24)  /* clear PWR_BTN mask */
#define MI_EX_INTR_MASK_SET_PWR_BTN (1 << 25)  /*   set PWR_BTN mask */
#define MI_EX_INTR_MASK_CLR_MD      (1 << 26)  /* clear MD      mask */
#define MI_EX_INTR_MASK_SET_MD      (1 << 27)  /*   set MD      mask */

/*
 * MI_EX_INTR_MASK_REG: read bits
 */
#define MI_EX_INTR_MASK_SP      (1 <<  0)   /* SP      intr mask */
#define MI_EX_INTR_MASK_SI      (1 <<  1)   /* SI      intr mask */
#define MI_EX_INTR_MASK_AI      (1 <<  2)   /* AI      intr mask */
#define MI_EX_INTR_MASK_VI      (1 <<  3)   /* VI      intr mask */
#define MI_EX_INTR_MASK_PI      (1 <<  4)   /* PI      intr mask */
#define MI_EX_INTR_MASK_DP      (1 <<  5)   /* DP      intr mask */
#define MI_EX_INTR_MASK_FLASH   (1 <<  6)   /* FLASH   intr mask */
#define MI_EX_INTR_MASK_AES     (1 <<  7)   /* AES     intr mask */
#define MI_EX_INTR_MASK_IDE     (1 <<  8)   /* IDE     intr mask */
#define MI_EX_INTR_MASK_PI_ERR  (1 <<  9)   /* PI_ERR  intr mask */
#define MI_EX_INTR_MASK_USB0    (1 << 10)   /* USB0    intr mask */
#define MI_EX_INTR_MASK_USB1    (1 << 11)   /* USB1    intr mask */
#define MI_EX_INTR_MASK_PWR_BTN (1 << 12)   /* PWR_BTN intr mask */
#define MI_EX_INTR_MASK_MD      (1 << 13)   /* MD      intr mask */

/******************************************************************************
 * Additional Parallel Interface (PI) Registers
 */

/**
 * Write:
 *     [31] Execute command after write
 *     [30] Interrupt when done
 *  [29:24] ?
 *  [23:16] NAND Command
 *     [15] ?
 *     [14] Buffer Select
 *  [13:12] Device Select
 *     [11] Do Error Correction
 *     [10] NAND Command is Multi-Cycle
 *  [ 9: 0] Data Transfer Length in Bytes
 *
 * Writing 0 to this register clears the interrupt
 *
 * Read:
 *     [31] Busy
 *     [11] Single-Bit Error Corrected
 *     [10] Double-Bit Error Uncorrectable
 */
#define PI_NAND_CTRL_REG (PI_BASE_REG + 0x48)

/**
 * PI internal buffer DMA read length. Writes initiate a DMA from RDRAM to the PI buffer.
 */
#define PI_EX_RD_LEN_REG (PI_BASE_REG + 0x58)

/**
 * PI internal buffer DMA write length. Writes initiate a DMA from the PI buffer to RDRAM.
 */
#define PI_EX_WR_LEN_REG (PI_BASE_REG + 0x5C)

/**
 * [31:16] Box ID
 *   [31:30] Hardware Revision? (osInitialize checks this and sets __osBbIsBb to 2 if != 0)
 *   [29:27] ?? (not seen)
 *   [26:25] ?? (system clock speed identifier?)
 *   [24:22] ?? (bootrom, checked against MI_10_REG and copied there if mismatch)
 *   [21:16] ?? (not seen)
 * [ 7: 4] GPIO direction control
 *     [7] RTC Data output enable
 *     [6] RTC Clock output enable
 *     [5] Error LED output enable
 *     [4] Power Control output enable
 * [ 3: 0] GPIO in/out value
 *     [3] RTC Data output value (0=low, 1=high)
 *     [2] RTC Clock output value (0=low, 1=high)
 *     [1] Error LED (0=on, 1=off)
 *     [0] Power Control (0=off, 1=on)
 */
#define PI_GPIO_REG (PI_BASE_REG + 0x60)

/* Box ID */
#define PI_GPIO_GET_BOXID(reg)  ((reg) >> 16)
#define PI_GPIO_IS_HW_V2(reg)   ((reg) & (3 << 30))

/* GPIO: Input/Output enables */
#define PI_GPIO_I_PWR       ((0 << 0) << 4)
#define PI_GPIO_O_PWR       ((1 << 0) << 4)
#define PI_GPIO_I_LED       ((0 << 1) << 4)
#define PI_GPIO_O_LED       ((1 << 1) << 4)
#define PI_GPIO_I_RTC_CLK   ((0 << 2) << 4)
#define PI_GPIO_O_RTC_CLK   ((1 << 2) << 4)
#define PI_GPIO_I_RTC_DAT   ((0 << 3) << 4)
#define PI_GPIO_O_RTC_DAT   ((1 << 3) << 4)

/* GPIO: Output controls */
/* Power */
#define PI_GPIO_PWR_OFF     (0 << 0)
#define PI_GPIO_PWR_ON      (1 << 0)
/* LED */
#define PI_GPIO_LED_ON      (0 << 1)
#define PI_GPIO_LED_OFF     (1 << 1)
/* RTC */
#define PI_GPIO_RTC_CLK_LO  (0 << 2)
#define PI_GPIO_RTC_CLK_HI  (1 << 2)
#define PI_GPIO_RTC_DAT_LO  (0 << 3)
#define PI_GPIO_RTC_DAT_HI  (1 << 3)

/* GPIO: Input getters */
#define PI_GPIO_GET_PWR(reg)     (((reg) >> 0) & 1)
#define PI_GPIO_GET_LED(reg)     (((reg) >> 1) & 1)
#define PI_GPIO_GET_RTC_CLK(reg) (((reg) >> 2) & 1)
#define PI_GPIO_GET_RTC_DAT(reg) (((reg) >> 3) & 1)

/**
 * [31] ?
 */
#define PI_64_REG (PI_BASE_REG + 0x64)

/******************************************************************************
 * Additional Serial Interface (SI) Registers
 */

/**
 * ?
 */
#define SI_0C_REG (SI_BASE_REG + 0x0C)

/**
 * ?
 */
#define SI_1C_REG (SI_BASE_REG + 0x1C)

#endif
