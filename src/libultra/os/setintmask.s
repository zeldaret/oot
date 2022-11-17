#include "ultra64/asm.h"
#include "ultra64/R4300.h"
#include "ultra64/rcp.h"
#include "ultra64/exception.h"

.set noat
.set noreorder

.section .rodata

.balign 16

/**
 *  LUT to convert between an interrupt mask value and a value for MI_INTR_MASK_REG.
 *  The interrupt mask value is a single bit 0 = disabled, 1 = enabled, while writes to MI_INTR_MASK_REG has two distinct non-zero
 *   values for set and clear, hence the need for a conversion step.
 */
DATA(__osRcpImTable)
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_CLR_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_CLR_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_CLR_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_CLR_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_CLR_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_CLR_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_SET_DP
    .half MI_INTR_MASK_SET_SP | MI_INTR_MASK_SET_SI | MI_INTR_MASK_SET_AI | MI_INTR_MASK_SET_VI | MI_INTR_MASK_SET_PI | MI_INTR_MASK_SET_DP
ENDDATA(__osRcpImTable)

.section .text

.balign 16

/**
 *  OSIntMask osSetIntMask(OSIntMask);
 *
 *  Sets the interrupt enable mask for the current thread. External interrupts
 *   originating either in the CPU or the RCP may be "masked out" so that they
 *   are not handled. This is sometimes important for critical code sections
 *   that must not be interrupted.
 *  Interrupts that are not enabled in the global interrupt mask __OSGlobalIntMask
 *   cannot be set here. The global interrupt mask is OS-internal and is not
 *   expected to change during runtime.
 *  The returned value is the previous interrupt enable mask so that it can be
 *   restored later.
 *
 * @bug Some usage of the global interrupt mask is broken both in here and in the
 *       exception handler routines.
 *      While a thread is running, the C0_SR interrupt enable bits contain the
 *       interrupt enable bits for the current thread masked by the global
 *       interrupt mask. There is an attempt to recover only the original interrupt
 *       enable bits belonging to the thread itself using the operation
 *          (SR | ~__OSGlobalIntMask).
 *      However, this does not work as intended and can cause interrupts to end
 *       up enabled when not intended to be. The same issue is present for the
 *       RCP interrupt enable bits in MI_INTR_MASK_REG.
 *      This does not cause issues in practice as __OSGlobalIntMask is almost always
 *       OS_IM_ALL, so the operation is usually simply (SR | 0).
 */
LEAF(osSetIntMask)
    // Extract interrupt enable bits from current SR
    mfc0    $t4, C0_SR
    andi    $v0, $t4, (SR_IMASK | SR_IE)
    // Get value of __OSGlobalIntMask
    lui     $t0, %hi(__OSGlobalIntMask)
    addiu   $t0, %lo(__OSGlobalIntMask)
    lw      $t3, ($t0)
    // Bitwise-OR in the disabled CPU bits of __OSGlobalIntMask
    li      $at, ~0
    xor     $t0, $t3, $at
    andi    $t0, $t0, SR_IMASK
    or      $v0, $v0, $t0
    // Fetch MI_INTR_MASK_REG
    lui     $t2, %hi(PHYS_TO_K1(MI_INTR_MASK_REG))
    lw      $t2, %lo(PHYS_TO_K1(MI_INTR_MASK_REG))($t2)
    // If there are RCP interrupts masked
    beqz    $t2, 1f
     srl    $t1, $t3, RCP_IMASKSHIFT
    // Bitwise-OR in the disabled RCP bits of __OSGlobalIntMask
    li      $at, ~0
    xor     $t1, $t1, $at
    andi    $t1, $t1, (RCP_IMASK >> RCP_IMASKSHIFT)
    or      $t2, $t2, $t1
1:
    // Shift the RCP bits to not conflict with the CPU bits
    sll     $t2, $t2, RCP_IMASKSHIFT
    // OR the CPU and RCP bits together
    or      $v0, $v0, $t2
    // Extract RCP interrupt enable bits from requested mask and mask with __OSGlobalIntMask
    li      $at, RCP_IMASK
    and     $t0, $a0, $at
    and     $t0, $t0, $t3
    // Convert to a value for MI_INTR_MASK_REG and set it
    srl     $t0, $t0, (RCP_IMASKSHIFT-1)
    lui     $t2, %hi(__osRcpImTable)
    addu    $t2, $t2, $t0
    lhu     $t2, %lo(__osRcpImTable)($t2)
    lui     $at, %hi(PHYS_TO_K1(MI_INTR_MASK_REG))
    sw      $t2, %lo(PHYS_TO_K1(MI_INTR_MASK_REG))($at)
    // Extract CPU interrupt enable bits from requested mask and mask with __OSGlobalIntMask
    andi    $t0, $a0, OS_IM_CPU
    andi    $t1, $t3, SR_IMASK
    and     $t0, $t0, $t1
    li      $at, ~SR_IMASK
    and     $t4, $t4, $at
    // Bitwise OR in the remaining bits of SR and set new SR
    or      $t4, $t4, $t0
    mtc0    $t4, C0_SR
    nop
    nop
    jr      $ra
     nop
END(osSetIntMask)
