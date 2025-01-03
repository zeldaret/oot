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

#endif
