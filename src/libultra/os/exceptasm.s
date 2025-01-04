#ifdef __GNUC__
.set gp=64
#endif
#include "ultra64/asm.h"
#include "ultra64/regdef.h"
#include "ultra64/R4300.h"
#include "ultra64/rcp.h"
#include "ultra64/bcp.h"
#include "ultra64/message.h"
#include "ultra64/thread.h"
#include "ultra64/exception.h"
#include "ultra64/version.h"

#define MESG(x) ((x) << 3)

.data
.align 2

DATA(__osHwIntTable)
    .word 0, 0
    .word 0, 0 /* cart */
    .word 0, 0
    .word 0, 0
    .word 0, 0
ENDDATA(__osHwIntTable)

DATA(__osPiIntTable)
    .word 0, 0
ENDDATA(__osPiIntTable)

.rdata
.align 2

__osIntOffTable:
    .byte 0x00 /* redispatch */
    .byte 0x14 /* prenmi */
    .byte 0x18 /* IP6_Hdlr */
    .byte 0x18 /* IP6_Hdlr */
    .byte 0x1C /* IP7_Hdlr */
    .byte 0x1C /* IP7_Hdlr */
    .byte 0x1C /* IP7_Hdlr */
    .byte 0x1C /* IP7_Hdlr */
    .byte 0x20 /* counter */
    .byte 0x20 /* counter */
    .byte 0x20 /* counter */
    .byte 0x20 /* counter */
    .byte 0x20 /* counter */
    .byte 0x20 /* counter */
    .byte 0x20 /* counter */
    .byte 0x20 /* counter */
    .byte 0x00 /* redispatch */
    .byte 0x04 /* sw1 */
    .byte 0x08 /* sw2 */
    .byte 0x08 /* sw2 */
    .byte 0x0C /* rcp */
    .byte 0x0C /* rcp */
    .byte 0x0C /* rcp */
    .byte 0x0C /* rcp */
    .byte 0x10 /* cart */
    .byte 0x10 /* cart */
    .byte 0x10 /* cart */
    .byte 0x10 /* cart */
    .byte 0x10 /* cart */
    .byte 0x10 /* cart */
    .byte 0x10 /* cart */
    .byte 0x10 /* cart */

__osIntTable:
    .word redispatch
    .word sw1
    .word sw2
    .word rcp
    .word cart
    .word prenmi
    .word IP6_Hdlr
    .word IP7_Hdlr
    .word counter

.text

/**
 * The 16-byte exception preamble is copied to the exception vectors at
 * UT_VEC, XUT_VEC, ECC_VEC, E_VEC, to direct execution to __osException
 */
LEAF(__osExceptionPreamble)
    la      k0, __osException
    jr      k0
END(__osExceptionPreamble)

LEAF(__osException)
.set noat
    /* Load scratch space for thread saving */
    la      k0, __osThreadSave
    /* Save at */
    sd      AT, THREAD_AT(k0)
.set at
    /* Save sr */
    MFC0(   k1, C0_SR)
    sw      k1, THREAD_SR(k0)
    /* Disable interrupts */
    and     k1, k1, ~(SR_IE | SR_EXL)
    MTC0(   k1, C0_SR)
    /* Save some temp registers for use in the following */
    sd      t0, THREAD_T0(k0)
    sd      t1, THREAD_T1(k0)
    sd      t2, THREAD_T2(k0)
    /* Mark FPU as unused */
    sw      zero, THREAD_FP(k0)
    /* Left over from misplaced ifdef, immediately overwritten on next instruction */
    MFC0(   t0, C0_CAUSE)
savecontext:
.set noreorder
    /* Save the previously running thread's context to be restored when it resumes */
    move    t0, k0
    lw      k0, __osRunningThread
    ld      t1, THREAD_AT(t0)
    sd      t1, THREAD_AT(k0)
    ld      t1, THREAD_SR(t0)
    sd      t1, THREAD_SR(k0)
    ld      t1, THREAD_T0(t0)
    sd      t1, THREAD_T0(k0)
    ld      t1, THREAD_T1(t0)
    sd      t1, THREAD_T1(k0)
    ld      t1, THREAD_T2(t0)
    sd      t1, THREAD_T2(k0)
.set reorder
    sd      $2, THREAD_V0(k0)
    sd      $3, THREAD_V1(k0)
    sd      $4, THREAD_A0(k0)
    sd      $5, THREAD_A1(k0)
    sd      $6, THREAD_A2(k0)
    sd      $7, THREAD_A3(k0)
    sd      $11, THREAD_T3(k0)
    sd      $12, THREAD_T4(k0)
    sd      $13, THREAD_T5(k0)
    sd      $14, THREAD_T6(k0)
    sd      $15, THREAD_T7(k0)
    sd      $16, THREAD_S0(k0)
    sd      $17, THREAD_S1(k0)
    sd      $18, THREAD_S2(k0)
    sd      $19, THREAD_S3(k0)
    sd      $20, THREAD_S4(k0)
    sd      $21, THREAD_S5(k0)
    sd      $22, THREAD_S6(k0)
    sd      $23, THREAD_S7(k0)
    sd      $24, THREAD_T8(k0)
    sd      $25, THREAD_T9(k0)
    sd      $28, THREAD_GP(k0)
    sd      $29, THREAD_SP(k0)
    sd      $30, THREAD_S8(k0)
    sd      $31, THREAD_RA(k0)
    mflo    t0
    sd      t0, THREAD_LO(k0)
    mfhi    t0
    sd      t0, THREAD_HI(k0)
    lw      k1, THREAD_SR(k0)
    andi    t1, k1, SR_IMASK
    beqz    t1, savercp
    /* If any CPU interrupts are enabled in the previous thread's SR, bitwise-OR in the */
    /* disabled CPU interrupts from the global interrupt mask. */
    /* This is an attempt at reverting the effect of masking the thread's SR with the */
    /* global interrupt mask. This is however broken, see comments for osSetIntMask. */
    la      t0, __OSGlobalIntMask
    lw      t0, (t0)
    xor     t2, t0, 0xFFFFFFFF
    andi    t2, t2, SR_IMASK
    or      t4, t1, t2
    and     t3, k1, ~SR_IMASK
    or      t3, t3, t4
    sw      t3, THREAD_SR(k0)
    andi    t0, t0, SR_IMASK
    and     t1, t1, t0
    and     k1, k1, ~SR_IMASK
    or      k1, k1, t1
savercp:
    /* Save the currently masked RCP interrupts. */
    lw      t1, PHYS_TO_K1(MI_INTR_MASK_REG)
    beqz    t1, endrcp
    /* Similar to the above comment, but for RCP interrupt enable bits rather than CPU. */
    /* This suffers from the same problem as above. */
    la      t0, __OSGlobalIntMask
    lw      t0, (t0)
    srl     t0, t0, RCP_IMASKSHIFT
    xor     t0, t0, 0xFFFFFFFF
    andi    t0, t0, (RCP_IMASK >> RCP_IMASKSHIFT)
    lw      t4, THREAD_RCP(k0)
    and     t0, t0, t4
    or      t1, t1, t0
endrcp:
    sw      t1, THREAD_RCP(k0)
    MFC0(   t0, C0_EPC)
    sw      t0, THREAD_PC(k0)
    lw      t0, THREAD_FP(k0)
    beqz    t0, handle_interrupt
    /* Save FP Registers if FPU was used by the thread */
.set noreorder 
    cfc1    t0, C1_FPCSR
    nop
    sw      t0, THREAD_FPCSR(k0)
.set reorder
    sdc1    $f0, THREAD_FP0(k0)
    sdc1    $f2, THREAD_FP2(k0)
    sdc1    $f4, THREAD_FP4(k0)
    sdc1    $f6, THREAD_FP6(k0)
    sdc1    $f8, THREAD_FP8(k0)
    sdc1    $f10, THREAD_FP10(k0)
    sdc1    $f12, THREAD_FP12(k0)
    sdc1    $f14, THREAD_FP14(k0)
    sdc1    $f16, THREAD_FP16(k0)
    sdc1    $f18, THREAD_FP18(k0)
    sdc1    $f20, THREAD_FP20(k0)
    sdc1    $f22, THREAD_FP22(k0)
    sdc1    $f24, THREAD_FP24(k0)
    sdc1    $f26, THREAD_FP26(k0)
    sdc1    $f28, THREAD_FP28(k0)
    sdc1    $f30, THREAD_FP30(k0)

handle_interrupt:
    /* Determine the cause of the exception or interrupt and */
    /* enter appropriate handling routine */
    MFC0(   t0, C0_CAUSE)
    sw      t0, THREAD_CAUSE(k0)
label:
    li      t1, OS_STATE_RUNNABLE
    sh      t1, THREAD_STATE(k0)
    andi    t1, t0, CAUSE_EXCMASK
    /* Test for break exception */
    li      t2, EXC_BREAK
    beq     t1, t2, handle_break
    /* Test for CpU (coprocessor unusable) exception */
    li      t2, EXC_CPU
    beq     t1, t2, handle_CpU
    /* Test for interrupt, if it's not an interrupt, panic */
    li      t2, EXC_INT
    bne     t1, t2, panic

    and     s0, k1, t0

next_interrupt:
    /* Handle external interrupt causes, using a jump table */
    /* to enter into the appropriate handler */
    andi    t1, s0, CAUSE_IPMASK
    srl     t2, t1, CAUSE_IPSHIFT + 4
    bnez    t2, 1f

    srl     t2, t1, CAUSE_IPSHIFT
    addi    t2, t2, 0x10
1:
    lbu     t2, __osIntOffTable(t2)
    lw      t2, __osIntTable(t2)
    jr      t2

/**
 *  IP6 Interrupt
 *  Only signalled by development hardware
 */
IP6_Hdlr:
    /* Mask out interrupt and continue */
    and     s0, s0, ~CAUSE_IP6
    b       next_interrupt

/**
 *  IP7 Interrupt
 *  Only signalled by development hardware
 */
IP7_Hdlr:
    /* Mask out interrupt and continue */
    and     s0, s0, ~CAUSE_IP7
    b       next_interrupt

/**
 *  IP8/Counter Interrupt
 *  Once the cop0 count register reaches the value of the
 *  cop0 compare register, this interrupt is triggered
 */
counter:
    MFC0(   t1, C0_COMPARE)
    MTC0(   t1, C0_COMPARE)
    /* Post counter message */
    li      a0, MESG(OS_EVENT_COUNTER)
    jal     send_mesg
    /* Mask out interrupt and continue */
    and     s0, s0, ~CAUSE_IP8
    b       next_interrupt

/**
 *  N64:
 *      IP4/Cartridge Interrupt
 *      Signalled by the N64 Disk Drive
 *  iQue:
 *      IP4/BCP Interrupt
 *      New RCP Interrupts
 */
cart:
    /* Mask out interrupt */
    and     s0, s0, ~CAUSE_IP4
    /* Load cart callback set by __osSetHWIntrRoutine */
    la      t1, __osHwIntTable
    addi    t1, t1, (OS_INTR_CART * HWINT_SIZE)
    lw      t2, HWINT_CALLBACK(t1)
    /* If the callback is NULL, handling is done */
    beqz    t2, 1f
    /* Set up a stack and run the callback */
    lw      sp, HWINT_SP(t1)
    jalr    t2
    beqz    v0, 1f
    /* Redispatch immediately if the callback returned nonzero */
    b       redispatch
1:
#ifndef BBPLAYER
    /* Post a cart event message */
    li      a0, MESG(OS_EVENT_CART)
    jal     send_mesg
#else
    /* On the iQue Player the CART interrupt no longer exists. New RCP interrupts are vectored here */
    lw      s1, PHYS_TO_K1(MI_EX_INTR_REG)

flash:
    /* Check for FLASH interrupt */
    andi    t1, s1, MI_EX_INTR_FLASH
    beqz    t1, flashx
    /* Mask it out */
    andi    s1, s1, MI_EX_INTR_ALL & ~MI_EX_INTR_FLASH
    /* Clear it */
    li      t1, 0
    sw      t1, PHYS_TO_K1(PI_NAND_CTRL_REG)
    /* Send the event message */
    li      a0, MESG(OS_EVENT_FLASH)
    jal     send_mesg
flashx:
md:
    /* Check for MD interrupt */
    andi    t1, s1, MI_EX_INTR_MD
    beqz    t1, mdx
    /* Mask it out */
    andi    s1, s1, MI_EX_INTR_ALL & ~MI_EX_INTR_MD
    /* Clear it */
    li      t1, MI_EX_INTR_CLR_MD
    sw      t1, PHYS_TO_K1(MI_EX_INTR_REG)
    /* Send the event message */
    li      a0, MESG(OS_EVENT_MD)
    jal     send_mesg
mdx:
aes:
    /* Check for AES interrupt */
    andi    t1, s1, MI_EX_INTR_AES
    beqz    t1, aesx
    /* Mask it out */
    andi    s1, s1, MI_EX_INTR_ALL & ~MI_EX_INTR_AES
    /* Disable the interrupt, this does not clear it.
     * The responsibility of clearing and re-enabling
     * the interrupt is left to the handler. */
    li      t1, MI_EX_INTR_MASK_CLR_AES
    sw      t1, PHYS_TO_K1(MI_EX_INTR_MASK_REG)
    /* Send the event message */
    li      a0, MESG(OS_EVENT_AES)
    jal     send_mesg
aesx:
ide:
    /* Check for IDE interrupt */
    andi    t1, s1, MI_EX_INTR_IDE
    beqz    t1, idex
    /* Mask it out */
    andi    s1, s1, MI_EX_INTR_ALL & ~MI_EX_INTR_IDE
    /* Disable the interrupt, this does not clear it.
     * The responsibility of clearing and re-enabling
     * the interrupt is left to the handler. */
    li      t1, MI_EX_INTR_MASK_CLR_IDE
    sw      t1, PHYS_TO_K1(MI_EX_INTR_MASK_REG)
    /* Send the event message */
    li      a0, MESG(OS_EVENT_IDE)
    jal     send_mesg
idex:
pi_err:
    /* Check for PI_ERR Interrupt */
    andi    t1, s1, MI_EX_INTR_PI_ERR
    beqz    t1, pi_errx
    /* Mask it out */
    andi    s1, s1, MI_EX_INTR_ALL & ~MI_EX_INTR_PI_ERR
    /* Disable the interrupt, this does not clear it.
     * The responsibility of clearing and re-enabling
     * the interrupt is left to the handler. */
    li      t1, MI_EX_INTR_MASK_CLR_PI_ERR
    sw      t1, PHYS_TO_K1(MI_EX_INTR_MASK_REG)
    /* Send the event message */
    li      a0, MESG(OS_EVENT_PI_ERR)
    jal     send_mesg
pi_errx:
usb0:
    /* Check for USB0 Interrupt */
    andi    t1, s1, MI_EX_INTR_USB0
    beqz    t1, usb0x
    /* Mask it out */
    andi    s1, s1, MI_EX_INTR_ALL & ~MI_EX_INTR_USB0
    /* Disable the interrupt, this does not clear it.
     * The responsibility of clearing and re-enabling
     * the interrupt is left to the handler. */
    li      t1, MI_EX_INTR_MASK_CLR_USB0
    sw      t1, PHYS_TO_K1(MI_EX_INTR_MASK_REG)
    /* Send the event message */
    li      a0, MESG(OS_EVENT_USB0)
    jal     send_mesg
usb0x:
usb1:
    /* Check for USB1 Interrupt */
    andi    t1, s1, MI_EX_INTR_USB1
    beqz    t1, usb1x
    /* Mask it out */
    andi    s1, s1, MI_EX_INTR_ALL & ~MI_EX_INTR_USB1
    /* Disable the interrupt, this does not clear it.
     * The responsibility of clearing and re-enabling
     * the interrupt is left to the handler. */
    li      t1, MI_EX_INTR_MASK_CLR_USB1
    sw      t1, PHYS_TO_K1(MI_EX_INTR_MASK_REG)
    /* Send the event message */
    li      a0, MESG(OS_EVENT_USB1)
    jal     send_mesg
usb1x:
#endif
    /* Continue */
    b       next_interrupt

/**
 *  IP3/RCP Interrupt
 *  Signalled by the RCP for various reasons, described below
 */
rcp:
    /* Load the MI interrupts and mask with the RCP bits in the global interrupt mask */
    /*! @bug this clobbers the t0 register which is expected to hold the value of the */
    /*! C0_CAUSE register in the sw1 and sw2 handlers. If the sw1 or sw2 handler runs */
    /*! after this, the interrupt will not be cleared properly. */
    lw      s1, PHYS_TO_K1(MI_INTR_REG)
    la      t0, __OSGlobalIntMask
    lw      t0, (t0)
    srl     t0, t0, RCP_IMASKSHIFT
    and     s1, s1, t0

/**
 *  Signal Processor (SP) Interrupt
 */
    /* Test for sp interrupt */
    andi    t1, s1, MI_INTR_SP
    beqz    t1, vi
    /* Mask out SP interrupt */
    andi    s1, s1, (MI_INTR_SI | MI_INTR_AI | MI_INTR_VI | MI_INTR_PI | MI_INTR_DP)
    lw      t4, PHYS_TO_K1(SP_STATUS_REG)
    /* Clear interrupt and signal 3 */
    li      t1, (SP_CLR_INTR | SP_CLR_SIG3)
    sw      t1, PHYS_TO_K1(SP_STATUS_REG)
    /* Test for yielded or done signals in particular */
    andi    t4, t4, (SP_STATUS_YIELDED | SP_STATUS_TASKDONE)
    beqz    t4, sp_other_break
    /* Post an SP event message */
    li      a0, MESG(OS_EVENT_SP)
    jal     send_mesg
    beqz    s1, NoMoreRcpInts
    /* Step over sp_other_break handler */
    b       vi

sp_other_break:
    /* An sp signal that is not due to yielding or task completion, such as */
    /* an sp breakpoint. Post a different event message */
    li      a0, MESG(OS_EVENT_SP_BREAK)
    jal     send_mesg
    beqz    s1, NoMoreRcpInts

/**
 *  Video Interface (VI) Interrupt
 */
vi:
    /* Test for vi interrupt */
    andi    t1, s1, MI_INTR_VI
    beqz    t1, ai
    /* Mask out vi interrupt */
    andi    s1, s1, (MI_INTR_SP | MI_INTR_SI | MI_INTR_AI | MI_INTR_PI | MI_INTR_DP)
    /* Clear interrupt */
    sw      zero, PHYS_TO_K1(VI_CURRENT_REG)
    /* Post vi event message */
    li      a0, MESG(OS_EVENT_VI)
    jal     send_mesg
    beqz    s1, NoMoreRcpInts

/**
 *  Audio Interface (AI) Interrupt
 */
ai:
    /* Test for ai interrupt */
    andi    t1, s1, MI_INTR_AI
    beqz    t1, si

    /* Mask out ai interrupt */
    andi    s1, s1, (MI_INTR_SP | MI_INTR_SI | MI_INTR_VI | MI_INTR_PI | MI_INTR_DP)
    /* Clear interrupt */
    li      t1, 1
    sw      t1, PHYS_TO_K1(AI_STATUS_REG)
    /* Post ai event message */
    li      a0, MESG(OS_EVENT_AI)
    jal     send_mesg
    beqz    s1, NoMoreRcpInts

/**
 *  Serial Interface (SI) Interrupt
 */
si:
    /* Test for si interrupt */
    andi    t1, s1, MI_INTR_SI
    beqz    t1, pi

    /* Mask out si interrupt */
    andi    s1, s1, (MI_INTR_SP | MI_INTR_AI | MI_INTR_VI | MI_INTR_PI | MI_INTR_DP)
    /* Clear interrupt */
    sw      zero, PHYS_TO_K1(SI_STATUS_REG)
    /* Post si event message */
    li      a0, MESG(OS_EVENT_SI)
    jal     send_mesg
    beqz    s1, NoMoreRcpInts

/**
 *  Parallel Interface (PI) Interrupt
 */
pi:
    /* Test for pi interrupt */
    andi    t1, s1, MI_INTR_PI
    beqz    t1, dp

    /* Mask out pi interrupt */
    andi    s1, s1, (MI_INTR_SP | MI_INTR_SI | MI_INTR_AI | MI_INTR_VI | MI_INTR_DP)
    /* Clear the interrupt */
    li      t1, PI_STATUS_CLR_INTR
    sw      t1, PHYS_TO_K1(PI_STATUS_REG)
#if LIBULTRA_VERSION >= LIBULTRA_VERSION_J
    /* Load pi callback */
    la      t1, __osPiIntTable
    lw      t2, HWINT_CALLBACK(t1)
    /* Skip callback if NULL */
    beqz    t2, no_pi_callback
    /* Set up a stack and run the callback */
    lw      sp, HWINT_SP(t1)
    move    a0, v0
    jalr    t2
    /* If the callback returns non-zero, don't post a pi event message */
    bnez    v0, skip_pi_mesg
#endif
no_pi_callback:
    /* Post pi event message */
    li      a0, MESG(OS_EVENT_PI)
    jal     send_mesg
skip_pi_mesg:
    beqz    s1, NoMoreRcpInts

/**
 *  Display Processor (DP) Interrupt
 */
dp:
    /* Test for dp interrupt */
    andi    t1, s1, MI_INTR_DP
    beqz    t1, NoMoreRcpInts

    /* Mask out dp interrupt */
    andi    s1, s1, (MI_INTR_SP | MI_INTR_SI | MI_INTR_AI | MI_INTR_VI | MI_INTR_PI)
    /* Clear dp interrupt */
    li      t1, MI_CLR_DP_INTR
    sw      t1, PHYS_TO_K1(MI_INIT_MODE_REG)
    /* Post dp event message */
    li      a0, MESG(OS_EVENT_DP)
    jal     send_mesg

NoMoreRcpInts:
    /* Mask out interrupt and continue */
    and     s0, s0, ~CAUSE_IP3
    b       next_interrupt

/**
 *  IP5/PreNMI Interrupt
 *  Reset button has been pressed
 */
prenmi:
    /* Disable IP5/PreNMI interrupt for the previously running thread */
    lw      k1, THREAD_SR(k0)
    and     k1, k1, ~SR_IBIT5
    sw      k1, THREAD_SR(k0)
    /* Test __osShutdown for first PreNMI event */
    la      t1, __osShutdown
    lw      t2, (t1)
    beqz    t2, firstnmi
    /* Mask out interrupt and redispatch immediately */
    and     s0, s0, ~CAUSE_IP5
    b       redispatch

firstnmi:
    /* Set __osShutdown */
    li      t2, 1
    sw      t2, (t1)
    /* Post a PreNMI event message */
    li      a0, MESG(OS_EVENT_PRENMI)
    jal     send_mesg
    /* Mask out and disable IP5/PreNMI interrupt for the highest priority thread */
    and     s0, s0, ~SR_IBIT5
    lw      t2, __osRunQueue
    lw      k1, THREAD_SR(t2)
    and     k1, k1, ~SR_IBIT5
    sw      k1, THREAD_SR(t2)
    /* Redispatch immediately */
    b       redispatch

sw2:
    /* Mask out interrupt */
    and     t0, t0, ~CAUSE_SW2
    MTC0(   t0, C0_CAUSE)
    /* Post sw2 event message */
    li      a0, MESG(OS_EVENT_SW2)
    jal     send_mesg
    /* Mask out interrupt and continue */
    and     s0, s0, ~CAUSE_SW2
    b       next_interrupt

sw1:
    /* Mask out interrupt */
    and     t0, t0, ~CAUSE_SW1
    MTC0(   t0, C0_CAUSE)
    /* Post sw1 event message */
    li      a0, MESG(OS_EVENT_SW1)
    jal     send_mesg
    /* Mask out interrupt and continue */
    and     s0, s0, ~CAUSE_SW1
    b       next_interrupt

handle_break:
    /* Set last thread as having hit a break exception */
    li      t1, OS_FLAG_CPU_BREAK
    sh      t1, THREAD_FLAGS(k0)
    /* Post a cpu break event message */
    li      a0, MESG(OS_EVENT_CPU_BREAK)
    jal     send_mesg
    /* Redispatch */
    b       redispatch

redispatch:
    /* Get priority of previously running thread */
    lw      t1, THREAD_PRI(k0)
    lw      t2, __osRunQueue
    /* Get highest priority from waiting threads */
    lw      t3, THREAD_PRI(t2)
    bge     t1, t3, enqueueRunning
    /* The previously running thread is no longer the highest priority, */
    /*  enqueue it to the run queue to wait its turn again */
    move    a1, k0
    la      a0, __osRunQueue
    jal     __osEnqueueThread

    j       __osDispatchThread

/**
 *  Resume the previously running thread by placing it at the top of
 *  the run queue and dispatching it
 */
enqueueRunning:
    la      t1, __osRunQueue
    lw      t2, (t1)
    sw      t2, THREAD_NEXT(k0)
    sw      k0, (t1)
    j       __osDispatchThread

/**
 *  Unhandled exceptions & interrupts end up here,
 *  trap to software by posting a fault message
 */
panic:
    /* Mark the thread as having faulted */
    sw      k0, __osFaultedThread
    li      t1, OS_STATE_STOPPED
    sh      t1, THREAD_STATE(k0)
    li      t1, OS_FLAG_FAULT
    sh      t1, THREAD_FLAGS(k0)
    /* Save C0_BADVADDR */
    MFC0(   t2, C0_BADVADDR)
    sw      t2, THREAD_BADVADDR(k0)
    /* Post the fault message */
    li      a0, MESG(OS_EVENT_FAULT)
    jal     send_mesg
    /* Dispatch next thread */
    j       __osDispatchThread

/**
 *  Handles posting event messages to the listening message queue, if there is one
 */
send_mesg:
    /* Save return address */
    move    s2, ra
    /* Load pointer to listening message queue */
    la      t2, __osEventStateTab
    addu    t2, t2, a0
    lw      t1, (t2)
    /* If there is no listening message queue, done */
    beqz    t1, send_done

    /* Test if the message queue is full, if so don't post the message */
    lw      t3, MQ_VALIDCOUNT(t1)
    lw      t4, MQ_MSGCOUNT(t1)
    bge     t3, t4, send_done

    /* Add validcount to first and modulo with msgcount */
    lw      t5, MQ_FIRST(t1)
    addu    t5, t5, t3
    rem     t5, t5, t4
    lw      t4, MQ_MSG(t1)
    mul     t5, t5, 4
    addu    t4, t4, t5
    /* Post the message to the message queue */
    lw      t5, 4(t2)
    sw      t5, (t4)
    /* Increment the validCount */
    addiu   t2, t3, 1
    sw      t2, MQ_VALIDCOUNT(t1)
    /* If there was a thread blocked on this message queue, */
    /*  wake it up */
    lw      t2, MQ_MTQUEUE(t1)
    lw      t3, (t2)
    beqz    t3, send_done
    move    a0, t1
    jal     __osPopThread
    move    t2, v0
    move    a1, t2
    la      a0, __osRunQueue
    jal     __osEnqueueThread
send_done:
    jr      s2

/**
 *  Handle coprocessor unusable exception
 */
handle_CpU:
    and     t1, t0, CAUSE_CEMASK
    srl     t1, t1, CAUSE_CESHIFT
    li      t2, 1 /* if not coprocessor 1, panic */
    bne     t1, t2, panic
    /* Mark cop1 as usable for previous thread */
    li      t1, 1
    sw      t1, THREAD_FP(k0)
    lw      k1, THREAD_SR(k0)
    or      k1, k1, SR_CU1
    sw      k1, THREAD_SR(k0)
    b       enqueueRunning
END(__osException)

/**
 *  void __osEnqueueAndYield(OSThread** threadQueue);
 *
 *  Voluntary thread yielding.
 *  Enqueues the currently running thread to the top of the
 *   thread queue `threadQueue` and yields to the highest priority
 *   unblocked runnable thread.
 */
LEAF(__osEnqueueAndYield)
    lw      a1, __osRunningThread
    /* Save SR */
    MFC0(   t0, C0_SR)
    ori     t0, t0, SR_EXL
    sw      t0, THREAD_SR(a1)
    /* Save callee-saved registers */
    sd      s0, THREAD_S0(a1)
    sd      s1, THREAD_S1(a1)
    sd      s2, THREAD_S2(a1)
    sd      s3, THREAD_S3(a1)
    sd      s4, THREAD_S4(a1)
    sd      s5, THREAD_S5(a1)
    sd      s6, THREAD_S6(a1)
    sd      s7, THREAD_S7(a1)
    sd      gp, THREAD_GP(a1)
    sd      sp, THREAD_SP(a1)
    sd      fp, THREAD_S8(a1)
    sd      ra, THREAD_RA(a1)
    sw      ra, THREAD_PC(a1)
    /* Save FPU callee-saved registers if the current thread has used the FPU */
    lw      k1, THREAD_FP(a1)
    beqz    k1, 1f
    cfc1    k1, C1_FPCSR
    sw      k1, THREAD_FPCSR(a1)
    sdc1    $f20, THREAD_FP20(a1)
    sdc1    $f22, THREAD_FP22(a1)
    sdc1    $f24, THREAD_FP24(a1)
    sdc1    $f26, THREAD_FP26(a1)
    sdc1    $f28, THREAD_FP28(a1)
    sdc1    $f30, THREAD_FP30(a1)
1:
    lw      k1, THREAD_SR(a1)
    andi    t1, k1, SR_IMASK
    beqz    t1, 2f
    /* This code does the same thing as the block just above the `savercp` label. */
    /* See the comment there for more about this. */
    la      t0, __OSGlobalIntMask
    lw      t0, (t0)
    xor     t0, t0, 0xFFFFFFFF
    andi    t0, t0, SR_IMASK
    or      t1, t1, t0
    and     k1, k1, ~SR_IMASK
    or      k1, k1, t1
    sw      k1, THREAD_SR(a1)
2:
    lw      k1, PHYS_TO_K1(MI_INTR_MASK_REG)
    beqz    k1, 3f
    /* This code does the same thing as the block just below the `savercp` label. */
    /* See the comment there for more about this. */
    la      k0, __OSGlobalIntMask
    lw      k0, (k0)
    srl     k0, k0, RCP_IMASKSHIFT
    xor     k0, k0, 0xFFFFFFFF
    andi    k0, k0, (RCP_IMASK >> RCP_IMASKSHIFT)
    lw      t0, THREAD_RCP(a1)
    and     k0, k0, t0
    or      k1, k1, k0
3:
    /* If the specified thread queue is null, skip */
    /*  straight to dispatching */
    sw      k1, THREAD_RCP(a1)
    beqz    a0, no_enqueue
    jal     __osEnqueueThread
no_enqueue:
    j       __osDispatchThread
END(__osEnqueueAndYield)

/**
 *  void __osEnqueueThread(OSThread** threadQueue, OSThread* thread);
 *
 *  Enqueues `thread` to the thread queue `threadQueue`, inserted by priority
 */
LEAF(__osEnqueueThread)
    move    t9, a0
    lw      t8, (a0)
    lw      t7, THREAD_PRI(a1)
    lw      t6, THREAD_PRI(t8)
    /* If the current highest priority thread is a lower priority than */
    /*  the new thread, skip searching the queue */
    blt     t6, t7, 2f
1:
    /* Search the queue for the position to insert the thread to maintain */
    /*  ordering by priority */
    move    t9, t8
    lw      t8, THREAD_NEXT(t8)
    lw      t6, THREAD_PRI(t8)
    bge     t6, t7, 1b
2:
    /* Insert the thread into the queue */
    lw      t8, (t9)
    sw      t8, THREAD_NEXT(a1)
    sw      a1, (t9)
    sw      a0, THREAD_QUEUE(a1)
    jr      ra
END(__osEnqueueThread)

/**
 *  OSThread* __osPopThread(OSThread** threadQueue);
 *
 *  Pops the highest priority thread from the top of the
 *   thread queue `threadQueue` and returns it
 */
LEAF(__osPopThread)
    lw      v0, (a0)
    lw      t9, THREAD_NEXT(v0)
    sw      t9, (a0)
    jr      ra
END(__osPopThread)

#if LIBULTRA_VERSION >= LIBULTRA_VERSION_K
LEAF(__osNop)
    jr      ra
END(__osNop)
#endif

/**
 *  void __osDispatchThread(void);
 *
 *  Dispatches the next thread to run after restoring the context
 */
LEAF(__osDispatchThread)
    /* Obtain highest priority thread from the active run queue */
    la      a0, __osRunQueue
    jal     __osPopThread
    /* Set thread as running */
    sw      v0, __osRunningThread
    li      t0, OS_STATE_RUNNING
    sh      t0, THREAD_STATE(v0)
    /* Restore SR, masking out any interrupts that are not also */
    /* enabled in the global interrupt mask */
    move    k0, v0
    lw      k1, THREAD_SR(k0)
    la      t0, __OSGlobalIntMask
    lw      t0, (t0)
    andi    t0, t0, SR_IMASK
    andi    t1, k1, SR_IMASK
    and     t1, t1, t0
    and     k1, k1, ~SR_IMASK
    or      k1, k1, t1
    MTC0(   k1, C0_SR)
    /* Restore GPRs */
.set noat
    ld      AT, THREAD_AT(k0)
    ld      v0, THREAD_V0(k0)
    ld      v1, THREAD_V1(k0)
    ld      a0, THREAD_A0(k0)
    ld      a1, THREAD_A1(k0)
    ld      a2, THREAD_A2(k0)
    ld      a3, THREAD_A3(k0)
    ld      t0, THREAD_T0(k0)
    ld      t1, THREAD_T1(k0)
    ld      t2, THREAD_T2(k0)
    ld      t3, THREAD_T3(k0)
    ld      t4, THREAD_T4(k0)
    ld      t5, THREAD_T5(k0)
    ld      t6, THREAD_T6(k0)
    ld      t7, THREAD_T7(k0)
    ld      s0, THREAD_S0(k0)
    ld      s1, THREAD_S1(k0)
    ld      s2, THREAD_S2(k0)
    ld      s3, THREAD_S3(k0)
    ld      s4, THREAD_S4(k0)
    ld      s5, THREAD_S5(k0)
    ld      s6, THREAD_S6(k0)
    ld      s7, THREAD_S7(k0)
    ld      t8, THREAD_T8(k0)
    ld      t9, THREAD_T9(k0)
    ld      gp, THREAD_GP(k0)
    ld      sp, THREAD_SP(k0)
    ld      fp, THREAD_S8(k0)
    ld      ra, THREAD_RA(k0)
    ld      k1, THREAD_LO(k0)
    mtlo    k1
    ld      k1, THREAD_HI(k0)
    mthi    k1
    /* Move thread pc to EPC so that eret will return execution to where the thread left off */
    lw      k1, THREAD_PC(k0)
    MTC0(   k1, C0_EPC)
    /* Check if the FPU was used by this thread and if so also restore the FPU registers */
    lw      k1, THREAD_FP(k0)
    beqz    k1, 1f

.set noreorder 
    lw      k1, THREAD_FPCSR(k0)
    ctc1    k1, C1_FPCSR
.set reorder
    ldc1    $f0, THREAD_FP0(k0)
    ldc1    $f2, THREAD_FP2(k0)
    ldc1    $f4, THREAD_FP4(k0)
    ldc1    $f6, THREAD_FP6(k0)
    ldc1    $f8, THREAD_FP8(k0)
    ldc1    $f10, THREAD_FP10(k0)
    ldc1    $f12, THREAD_FP12(k0)
    ldc1    $f14, THREAD_FP14(k0)
    ldc1    $f16, THREAD_FP16(k0)
    ldc1    $f18, THREAD_FP18(k0)
    ldc1    $f20, THREAD_FP20(k0)
    ldc1    $f22, THREAD_FP22(k0)
    ldc1    $f24, THREAD_FP24(k0)
    ldc1    $f26, THREAD_FP26(k0)
    ldc1    $f28, THREAD_FP28(k0)
    ldc1    $f30, THREAD_FP30(k0)
1:
    /* Restore RCP interrupt mask, masking out any RCP interrupts that */
    /* are not also enabled in the global interrupt mask */
.set noreorder
    lw      k1, THREAD_RCP(k0)
    la      k0, __OSGlobalIntMask
    lw      k0, (k0)
    srl     k0, k0, RCP_IMASKSHIFT
    and     k1, k1, k0
    sll     k1, k1, 1
    la      k0, __osRcpImTable
    addu    k1, k1, k0
    lhu     k1, (k1)
    la      k0, PHYS_TO_K1(MI_INTR_MASK_REG)
    sw      k1, (k0)
    /* Empty pipeline */
    nop
    nop
    nop
    nop
    /* Resume thread execution */
    eret
.set reorder
.set at
END(__osDispatchThread)

/**
 *  void __osCleanupThread(void);
 *
 *  When a thread entrypoint function returns, it returns to this function.
 *  This function is responsible for cleaning up the thread, signalling for the
 *  current thread to be destroyed.
 */
LEAF(__osCleanupThread)
    move    a0, zero
    jal     osDestroyThread
    /* Despite being a jal, this function does not return as the thread will have been destroyed */
END(__osCleanupThread)
