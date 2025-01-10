#include "ultra64/asm.h"
#include "ultra64/regdef.h"
#include "ultra64/R4300.h"
#include "ultra64/rcp.h"
#include "ultra64/exception.h"

.rdata
.align 2

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

.text

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
 * @bug Some usage of the global interrupt mask is broken both in the
 *       get/set interrupt mask routines and in the exception handler routines.
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
     /* Extract interrupt enable bits from current SR */
    MFC0(   t4, C0_SR)
.set noreorder
    and     v0, t4, (SR_IMASK | SR_IE)
     /* Get value of __OSGlobalIntMask */
    la      t0, __OSGlobalIntMask
    lw      t3, (t0)
     /* Bitwise-OR in the disabled CPU bits of __OSGlobalIntMask */
    xor     t0, t3, 0xFFFFFFFF
    and     t0, t0, SR_IMASK
    or      v0, v0, t0
     /* Fetch MI_INTR_MASK_REG */
    lw      t2, PHYS_TO_K1(MI_INTR_MASK_REG)
     /* If there are RCP interrupts masked */
    beqz    t2, 1f
     srl    t1, t3, RCP_IMASKSHIFT
    /* Bitwise-OR in the disabled RCP bits of __OSGlobalIntMask */
    xor     t1, t1, 0xFFFFFFFF
    and     t1, t1, (RCP_IMASK >> RCP_IMASKSHIFT)
    or      t2, t2, t1
1:
     /* Shift the RCP bits to not conflict with the CPU bits */
    sll     t2, t2, RCP_IMASKSHIFT
     /* OR the CPU and RCP bits together */
    or      v0, v0, t2
     /* Extract RCP interrupt enable bits from requested mask and mask with __OSGlobalIntMask */
    and     t0, a0, RCP_IMASK
    and     t0, t0, t3
     /* Convert to a value for MI_INTR_MASK_REG and set it */
    srl     t0, t0, (RCP_IMASKSHIFT-1)
    lhu     t2, __osRcpImTable(t0)
    sw      t2, PHYS_TO_K1(MI_INTR_MASK_REG)
     /* Extract CPU interrupt enable bits from requested mask and mask with __OSGlobalIntMask */
    and     t0, a0, OS_IM_CPU
    and     t1, t3, SR_IMASK
    and     t0, t0, t1
    and     t4, t4, ~SR_IMASK
     /* Bitwise OR in the remaining bits of SR and set new SR */
    or      t4, t4, t0
    MTC0(   t4, C0_SR)
    NOP
    NOP
    jr      ra
END(osSetIntMask)
