#include "ultra64/asm.h"
#include "ultra64/R4300.h"
#include "ultra64/rcp.h"
#include "ultra64/message.h"
#include "ultra64/thread.h"
#include "ultra64/exception.h"

.set noat
.set noreorder
.set gp=64

.section .data

.balign 16

DATA(__osHwIntTable)
    .word 0, 0
    .word 0, 0 // cart
    .word 0, 0
    .word 0, 0
    .word 0, 0
ENDDATA(__osHwIntTable)

DATA(__osPiIntTable)
    .word 0, 0
ENDDATA(__osPiIntTable)

.section .rodata

.balign 16

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

.section .text

.balign 16

/**
 * The exception preamble is copied to the exception vectors at
 * UT_VEC, XUT_VEC, ECC_VEC, E_VEC, to direct execution to __osException
 */
LEAF(__osExceptionPreamble)
    lui     $k0, %hi(__osException)
    addiu   $k0, %lo(__osException)
    jr      $k0
     nop
END(__osExceptionPreamble)

LEAF(__osException)
    // Load scratch space for thread saving
    lui     $k0, %hi(__osThreadSave)
    addiu   $k0, %lo(__osThreadSave)
    // Save $at
    sd      $at, THREAD_AT($k0)
    // Save sr
    mfc0    $k1, C0_SR
    sw      $k1, THREAD_SR($k0)
    // Disable interrupts
    li      $at, ~(SR_IE | SR_EXL)
    and     $k1, $k1, $at
    mtc0    $k1, C0_SR
    // Save some temp registers for use in the following
    sd      $t0, THREAD_T0($k0)
    sd      $t1, THREAD_T1($k0)
    sd      $t2, THREAD_T2($k0)
    // Mark FPU as unused
    sw      $zero, THREAD_FP($k0)
    // Left over from misplaced ifdef, immediately overwritten on next instruction
    mfc0    $t0, C0_CAUSE
savecontext:
    // Save the previously running thread's context to be restored when it resumes
    move    $t0, $k0
    lui     $k0, %hi(__osRunningThread)
    lw      $k0, %lo(__osRunningThread)($k0)
    ld      $t1, THREAD_AT($t0)
    sd      $t1, THREAD_AT($k0)
    ld      $t1, THREAD_SR($t0)
    sd      $t1, THREAD_SR($k0)
    ld      $t1, THREAD_T0($t0)
    sd      $t1, THREAD_T0($k0)
    ld      $t1, THREAD_T1($t0)
    sd      $t1, THREAD_T1($k0)
    ld      $t1, THREAD_T2($t0)
    sd      $t1, THREAD_T2($k0)
    lw      $k1, THREAD_SR($k0)
    mflo    $t0
    sd      $t0, THREAD_LO($k0)
    mfhi    $t0
    andi    $t1, $k1, SR_IMASK
    sd      $v0, THREAD_V0($k0)
    sd      $v1, THREAD_V1($k0)
    sd      $a0, THREAD_A0($k0)
    sd      $a1, THREAD_A1($k0)
    sd      $a2, THREAD_A2($k0)
    sd      $a3, THREAD_A3($k0)
    sd      $t3, THREAD_T3($k0)
    sd      $t4, THREAD_T4($k0)
    sd      $t5, THREAD_T5($k0)
    sd      $t6, THREAD_T6($k0)
    sd      $t7, THREAD_T7($k0)
    sd      $s0, THREAD_S0($k0)
    sd      $s1, THREAD_S1($k0)
    sd      $s2, THREAD_S2($k0)
    sd      $s3, THREAD_S3($k0)
    sd      $s4, THREAD_S4($k0)
    sd      $s5, THREAD_S5($k0)
    sd      $s6, THREAD_S6($k0)
    sd      $s7, THREAD_S7($k0)
    sd      $t8, THREAD_T8($k0)
    sd      $t9, THREAD_T9($k0)
    sd      $gp, THREAD_GP($k0)
    sd      $sp, THREAD_SP($k0)
    sd      $fp, THREAD_S8($k0)
    sd      $ra, THREAD_RA($k0)
    beqz    $t1, savercp
     sd     $t0, THREAD_HI($k0)
    // If any CPU interrupts are enabled in the previous thread's SR, bitwise-OR in the
    // disabled CPU interrupts from the global interrupt mask.
    // This is an attempt at reverting the effect of masking the thread's SR with the
    // global interrupt mask. This is however broken, see comments for osSetIntMask.
    lui     $t0, %hi(__OSGlobalIntMask)
    addiu   $t0, %lo(__OSGlobalIntMask)
    lw      $t0, ($t0)
    li      $at, ~0
    xor     $t2, $t0, $at
    lui     $at, ((~SR_IMASK) >> 0x10) & 0xFFFF
    andi    $t2, $t2, SR_IMASK
    ori     $at, (~SR_IMASK) & 0xFFFF
    or      $t4, $t1, $t2
    and     $t3, $k1, $at
    andi    $t0, $t0, SR_IMASK
    or      $t3, $t3, $t4
    and     $t1, $t1, $t0
    and     $k1, $k1, $at
    sw      $t3, THREAD_SR($k0)
    or      $k1, $k1, $t1
savercp:
    // Save the currently masked RCP interrupts.
    lui     $t1, %hi(PHYS_TO_K1(MI_INTR_MASK_REG))
    lw      $t1, %lo(PHYS_TO_K1(MI_INTR_MASK_REG))($t1)
    beqz    $t1, endrcp
     nop
    // Similar to the above comment, but for RCP interrupt enable bits rather than CPU.
    // This suffers from the same problem as above.
    lui     $t0, %hi(__OSGlobalIntMask)
    addiu   $t0, %lo(__OSGlobalIntMask)
    lw      $t0, ($t0)
    lw      $t4, THREAD_RCP($k0)
    li      $at, ~0
    srl     $t0, $t0, RCP_IMASKSHIFT
    xor     $t0, $t0, $at
    andi    $t0, $t0, (RCP_IMASK >> RCP_IMASKSHIFT)
    and     $t0, $t0, $t4
    or      $t1, $t1, $t0
endrcp:
    sw      $t1, THREAD_RCP($k0)
    mfc0    $t0, C0_EPC
    sw      $t0, THREAD_PC($k0)
    lw      $t0, THREAD_FP($k0)
    beqz    $t0, handle_interrupt
     nop
    // Save FP Registers if FPU was used by the thread
    cfc1    $t0, C1_FPCSR
    nop
    sw      $t0, THREAD_FPCSR($k0)
    sdc1    $f0, THREAD_FP0($k0)
    sdc1    $f2, THREAD_FP2($k0)
    sdc1    $f4, THREAD_FP4($k0)
    sdc1    $f6, THREAD_FP6($k0)
    sdc1    $f8, THREAD_FP8($k0)
    sdc1    $f10, THREAD_FP10($k0)
    sdc1    $f12, THREAD_FP12($k0)
    sdc1    $f14, THREAD_FP14($k0)
    sdc1    $f16, THREAD_FP16($k0)
    sdc1    $f18, THREAD_FP18($k0)
    sdc1    $f20, THREAD_FP20($k0)
    sdc1    $f22, THREAD_FP22($k0)
    sdc1    $f24, THREAD_FP24($k0)
    sdc1    $f26, THREAD_FP26($k0)
    sdc1    $f28, THREAD_FP28($k0)
    sdc1    $f30, THREAD_FP30($k0)

handle_interrupt:
    // Determine the cause of the exception or interrupt and
    // enter appropriate handling routine
    mfc0    $t0, C0_CAUSE
    sw      $t0, THREAD_CAUSE($k0)
    li      $t1, OS_STATE_RUNNABLE
    sh      $t1, THREAD_STATE($k0)
    andi    $t1, $t0, CAUSE_EXCMASK
    // Test for break exception
    li      $t2, EXC_BREAK
    beq     $t1, $t2, handle_break
     nop
    // Test for CpU (coprocessor unusable) exception
    li      $t2, EXC_CPU
    beq     $t1, $t2, handle_CpU
     nop
    // Test for interrupt, if it's not an interrupt, panic
    li      $t2, EXC_INT
    bne     $t1, $t2, panic
     nop
    and     $s0, $k1, $t0

next_interrupt:
    // Handle external interrupt causes, using a jump table
    // to enter into the appropriate handler
    andi    $t1, $s0, CAUSE_IPMASK
    srl     $t2, $t1, CAUSE_IPSHIFT + 4
    bnez    $t2, 1f
     nop
    srl     $t2, $t1, CAUSE_IPSHIFT
    addi    $t2, $t2, 0x10
1:
    lui     $at, %hi(__osIntOffTable)
    addu    $at, $at, $t2
    lbu     $t2, %lo(__osIntOffTable)($at)
    lui     $at, %hi(__osIntTable)
    addu    $at, $at, $t2
    lw      $t2, %lo(__osIntTable)($at)
    jr      $t2
     nop

/**
 *  IP6 Interrupt
 *  Only signalled by development hardware
 */
IP6_Hdlr:
    // Mask out interrupt and continue
    li      $at, ~CAUSE_IP6
    b       next_interrupt
     and    $s0, $s0, $at

/**
 *  IP7 Interrupt
 *  Only signalled by development hardware
 */
IP7_Hdlr:
    // Mask out interrupt and continue
    li      $at, ~CAUSE_IP7
    b       next_interrupt
     and    $s0, $s0, $at

/**
 *  IP8/Counter Interrupt
 *  Once the cop0 count register reaches the value of the
 *  cop0 compare register, this interrupt is triggered
 */
counter:
    mfc0    $t1, C0_COMPARE
    mtc0    $t1, C0_COMPARE
    // Post counter message
    jal     send_mesg
     li     $a0, OS_EVENT_COUNTER*8
    // Mask out interrupt and continue
    li      $at, ~CAUSE_IP8
    b       next_interrupt
     and    $s0, $s0, $at

/**
 *  IP4/Cartridge Interrupt
 *  Signalled by the N64 Disk Drive
 */
cart:
    // Load cart callback set by __osSetHWIntrRoutine
    lui     $t1, %hi(__osHwIntTable)
    addiu   $t1, %lo(__osHwIntTable)
    lw      $t2, (OS_INTR_CART*HWINT_SIZE+HWINT_CALLBACK)($t1)
    // Mask out interrupt
    li      $at, ~CAUSE_IP4
    and     $s0, $s0, $at
    // If the callback is NULL, handling is done
    beqz    $t2, send_cart_mesg
     addi   $t1, $t1, (OS_INTR_CART*HWINT_SIZE)
    // Set up a stack and run the callback
    jalr    $t2
     lw     $sp, HWINT_SP($t1)
    beqz    $v0, send_cart_mesg
     nop
    // Redispatch immediately if the callback returned nonzero
    b       redispatch
     nop
send_cart_mesg:
    // Post a cart event message
    jal     send_mesg
     li     $a0, OS_EVENT_CART*8
    // Continue
    b       next_interrupt
     nop

/**
 *  IP3/RCP Interrupt
 *  Signalled by the RCP for various reasons, described below
 */
rcp:
    // Load the MI interrupts and mask with the RCP bits in the global interrupt mask
    //! @bug this clobbers the t0 register which is expected to hold the value of the
    //! C0_CAUSE register in the sw1 and sw2 handlers. If the sw1 or sw2 handler runs
    //! after this, the interrupt will not be cleared properly.
    lui     $t0, %hi(__OSGlobalIntMask)
    addiu   $t0, %lo(__OSGlobalIntMask)
    lw      $t0, ($t0)
    lui     $s1, %hi(PHYS_TO_K1(MI_INTR_REG))
    lw      $s1, %lo(PHYS_TO_K1(MI_INTR_REG))($s1)
    srl     $t0, $t0, RCP_IMASKSHIFT
    and     $s1, $s1, $t0

/**
 *  Signal Processor (SP) Interrupt
 */
sp:
    // Test for sp interrupt
    andi    $t1, $s1, MI_INTR_SP
    beqz    $t1, vi
     nop
    // Test for yielded or done signals in particular
    lui     $t4, %hi(PHYS_TO_K1(SP_STATUS_REG))
    lw      $t4, %lo(PHYS_TO_K1(SP_STATUS_REG))($t4)
    li      $t1, (SP_CLR_INTR | SP_CLR_SIG3)
    lui     $at, %hi(PHYS_TO_K1(SP_STATUS_REG))
    andi    $t4, $t4, (SP_STATUS_YIELDED | SP_STATUS_TASKDONE)
    // Mask out SP interrupt
    andi    $s1, $s1, (MI_INTR_SI | MI_INTR_AI | MI_INTR_VI | MI_INTR_PI | MI_INTR_DP)
    beqz    $t4, sp_other_break
    // Clear interrupt and signal 3
     sw     $t1, %lo(PHYS_TO_K1(SP_STATUS_REG))($at)
    // Post an SP event message
    jal     send_mesg
     li     $a0, OS_EVENT_SP*8
    beqz    $s1, NoMoreRcpInts
     nop
    // Step over sp_other_break handler
    b       vi
     nop

sp_other_break:
    // An sp signal that is not due to yielding or task completion, such as
    // an sp breakpoint. Post a different event message
    jal     send_mesg
     li     $a0, OS_EVENT_SP_BREAK*8
    beqz    $s1, NoMoreRcpInts
     nop

/**
 *  Video Interface (VI) Interrupt
 */
vi:
    // Test for vi interrupt
    andi    $t1, $s1, MI_INTR_VI
    beqz    $t1, ai
     lui    $at, %hi(PHYS_TO_K1(VI_CURRENT_REG))
    // Mask out vi interrupt
    andi    $s1, $s1, (MI_INTR_SP | MI_INTR_SI | MI_INTR_AI | MI_INTR_PI | MI_INTR_DP)
    // Clear interrupt
    sw      $zero, %lo(PHYS_TO_K1(VI_CURRENT_REG))($at)
    // Post vi event message
    jal     send_mesg
     li     $a0, OS_EVENT_VI*8
    beqz    $s1, NoMoreRcpInts
     nop

/**
 *  Audio Interface (AI) Interrupt
 */
ai:
    // Test for ai interrupt
    andi    $t1, $s1, MI_INTR_AI
    beqz    $t1, si
     nop
    li      $t1, 1
    lui     $at, %hi(PHYS_TO_K1(AI_STATUS_REG))
    // Mask out ai interrupt
    andi    $s1, $s1, (MI_INTR_SP | MI_INTR_SI | MI_INTR_VI | MI_INTR_PI | MI_INTR_DP)
    // Clear interrupt
    sw      $t1, %lo(PHYS_TO_K1(AI_STATUS_REG))($at)
    // Post ai event message
    jal     send_mesg
     li     $a0, OS_EVENT_AI*8
    beqz    $s1, NoMoreRcpInts
     nop

/**
 *  Serial Interface (SI) Interrupt
 */
si:
    // Test for si interrupt
    andi    $t1, $s1, MI_INTR_SI
    beqz    $t1, pi
     lui    $at, %hi(PHYS_TO_K1(SI_STATUS_REG))
    // Mask out si interrupt
    andi    $s1, $s1, (MI_INTR_SP | MI_INTR_AI | MI_INTR_VI | MI_INTR_PI | MI_INTR_DP)
    // Clear interrupt
    sw      $zero, %lo(PHYS_TO_K1(SI_STATUS_REG))($at)
    // Post si event message
    jal     send_mesg
     li     $a0, OS_EVENT_SI*8
    beqz    $s1, NoMoreRcpInts
     nop

/**
 *  Parallel Interface (PI) Interrupt
 */
pi:
    // Test for pi interrupt
    andi    $t1, $s1, MI_INTR_PI
    beqz    $t1, dp
     nop
    // Clear interrupt
    li      $t1, PI_STATUS_CLR_INTR
    lui     $at, %hi(PHYS_TO_K1(PI_STATUS_REG))
    sw      $t1, %lo(PHYS_TO_K1(PI_STATUS_REG))($at)
    // Load pi callback
    lui     $t1, %hi(__osPiIntTable)
    addiu   $t1, %lo(__osPiIntTable)
    lw      $t2, HWINT_CALLBACK($t1)
    // Mask out pi interrupt
    andi    $s1, $s1, (MI_INTR_SP | MI_INTR_SI | MI_INTR_AI | MI_INTR_VI | MI_INTR_DP)
    // Skip callback if NULL
    beqz    $t2, no_pi_callback
     nop
    // Set up a stack and run the callback
    lw      $sp, HWINT_SP($t1)
    jalr    $t2
     move   $a0, $v0
    // If the callback returns non-zero, don't post a pi event message
    bnez    $v0, skip_pi_mesg
     nop
no_pi_callback:
    // Post pi event message
    jal     send_mesg
     li     $a0, OS_EVENT_PI*8
skip_pi_mesg:
    beqz    $s1, NoMoreRcpInts
     nop

/**
 *  Display Processor (DP) Interrupt
 */
dp:
    // Test for dp interrupt
    andi    $t1, $s1, MI_INTR_DP
    beqz    $t1, NoMoreRcpInts
     nop
    // Clear dp interrupt
    li      $t1, MI_CLR_DP_INTR
    lui     $at, %hi(PHYS_TO_K1(MI_INIT_MODE_REG))
    // Mask out dp interrupt
    andi    $s1, $s1, (MI_INTR_SP | MI_INTR_SI | MI_INTR_AI | MI_INTR_VI | MI_INTR_PI)
    sw      $t1, %lo(PHYS_TO_K1(MI_INIT_MODE_REG))($at)
    // Post dp event message
    jal     send_mesg
     li     $a0, OS_EVENT_DP*8

NoMoreRcpInts:
    // Mask out interrupt and continue
    li      $at, ~CAUSE_IP3
    b       next_interrupt
     and    $s0, $s0, $at

/**
 *  IP5/PreNMI Interrupt
 *  Reset button has been pressed
 */
prenmi:
    // Disable IP5/PreNMI interrupt for the previously running thread
    lw      $k1, THREAD_SR($k0)
    li      $at, ~SR_IBIT5
    lui     $t1, %hi(__osShutdown)
    and     $k1, $k1, $at
    sw      $k1, THREAD_SR($k0)
    addiu   $t1, %lo(__osShutdown)
    // Test __osShutdown for first PreNMI event
    lw      $t2, ($t1)
    beqz    $t2, firstnmi
     li     $at, ~CAUSE_IP5
    // Mask out interrupt and redispatch immediately
    b       redispatch
     and    $s0, $s0, $at

firstnmi:
    // Set __osShutdown
    li      $t2, 1
    sw      $t2, ($t1)
    // Post a PreNMI event message
    jal     send_mesg
     li     $a0, OS_EVENT_PRENMI*8
    // Mask out and disable IP5/PreNMI interrupt for the highest priority thread
    lui     $t2, %hi(__osRunQueue)
    lw      $t2, %lo(__osRunQueue)($t2)
    li      $at, ~SR_IBIT5
    and     $s0, $s0, $at
    lw      $k1, THREAD_SR($t2)
    and     $k1, $k1, $at
    // Redispatch immediately
    b       redispatch
     sw     $k1, THREAD_SR($t2)

sw2:
    // Mask out interrupt
    li      $at, ~CAUSE_SW2
    and     $t0, $t0, $at
    mtc0    $t0, C0_CAUSE
    // Post sw2 event message
    jal     send_mesg
     li     $a0, OS_EVENT_SW2*8
    li      $at, ~CAUSE_SW2
    // Mask out interrupt and continue
    b       next_interrupt
     and    $s0, $s0, $at

sw1:
    // Mask out interrupt
    li      $at, ~CAUSE_SW1
    and     $t0, $t0, $at
    mtc0    $t0, C0_CAUSE
    // Post sw1 event message
    jal     send_mesg
     li     $a0, OS_EVENT_SW1*8
    li      $at, ~CAUSE_SW1
    // Mask out interrupt and continue
    b       next_interrupt
     and    $s0, $s0, $at

handle_break:
    // Set last thread as having hit a break exception
    li      $t1, OS_FLAG_CPU_BREAK
    sh      $t1, THREAD_FLAGS($k0)
    // Post a cpu break event message
    jal     send_mesg
     li     $a0, OS_EVENT_CPU_BREAK*8
    // Redispatch
    b       redispatch
     nop

redispatch:
    lui     $t2, %hi(__osRunQueue)
    lw      $t2, %lo(__osRunQueue)($t2)
    // Get priority of previously running thread
    lw      $t1, THREAD_PRI($k0)
    // Get highest priority from waiting threads
    lw      $t3, THREAD_PRI($t2)
    slt     $at, $t1, $t3
    beqz    $at, enqueueRunning
     nop
    // The previously running thread is no longer the highest priority,
    //  enqueue it to the run queue to wait its turn again
    lui     $a0, %hi(__osRunQueue)
    move    $a1, $k0
    jal     __osEnqueueThread
     addiu  $a0, $a0, %lo(__osRunQueue)
    j       __osDispatchThread
     nop

/**
 *  Resume the previously running thread by placing it at the top of
 *  the run queue and dispatching it
 */
enqueueRunning:
    lui     $t1, %hi(__osRunQueue)
    addiu   $t1, $t1, %lo(__osRunQueue)
    lw      $t2, ($t1)
    sw      $t2, THREAD_NEXT($k0)
    j       __osDispatchThread
     sw     $k0, ($t1)

/**
 *  Unhandled exceptions & interrupts end up here,
 *  trap to software by posting a fault message
 */
panic:
    // Mark the thread as having faulted
    lui     $at, %hi(__osFaultedThread)
    sw      $k0, %lo(__osFaultedThread)($at)
    li      $t1, OS_STATE_STOPPED
    sh      $t1, THREAD_STATE($k0)
    li      $t1, OS_FLAG_FAULT
    sh      $t1, THREAD_FLAGS($k0)
    // Save C0_BADVADDR
    mfc0    $t2, C0_BADVADDR
    sw      $t2, THREAD_BADVADDR($k0)
    // Post the fault message
    jal     send_mesg
     li     $a0, OS_EVENT_FAULT*8
    // Dispatch next thread
    j       __osDispatchThread
     nop

/**
 *  Handles posting event messages to the listening message queue, if there is one
 */
send_mesg:
    // Load pointer to listening message queue
    lui     $t2, %hi(__osEventStateTab)
    addiu   $t2, %lo(__osEventStateTab)
    addu    $t2, $t2, $a0
    lw      $t1, ($t2)
    // Save return address
    move    $s2, $ra
    // If there is no listening message queue, done
    beqz    $t1, send_done
     nop
    // Test if the message queue is full, if so don't post the message
    lw      $t3, MQ_VALIDCOUNT($t1)
    lw      $t4, MQ_MSGCOUNT($t1)
    slt     $at, $t3, $t4
    beqz    $at, send_done
     nop
    // Add validcount to first and modulo with msgcount
    lw      $t5, MQ_FIRST($t1)
    addu    $t5, $t5, $t3
    // Modulo
    div     $zero, $t5, $t4
    bnez    $t4, 1f
     nop
    break   7 // div0
1:
    li      $at, -1
    bne     $t4, $at, 2f
     li     $at, -0x80000000
    bne     $t5, $at, 2f
     nop
    break   6 // overflow
2:
    // End Modulo
    lw      $t4, MQ_MSG($t1)
    mfhi    $t5
    sll     $t5, $t5, 2
    addu    $t4, $t4, $t5
    // Fetch the message to post
    lw      $t5, 4($t2)
    addiu   $t2, $t3, 1
    // Post the message to the message queue
    sw      $t5, ($t4)
    // Increment the validCount
    sw      $t2, MQ_VALIDCOUNT($t1)
    // If there was a thread blocked on this message queue,
    //  wake it up
    lw      $t2, MQ_MTQUEUE($t1)
    lw      $t3, ($t2)
    beqz    $t3, send_done
     nop
    jal     __osPopThread
     move    $a0, $t1
    move    $t2, $v0
    lui     $a0, %hi(__osRunQueue)
    move    $a1, $t2
    jal     __osEnqueueThread
     addiu  $a0, %lo(__osRunQueue)
send_done:
    jr      $s2
     nop

/**
 *  Handle coprocessor unusable exception
 */
handle_CpU:
    li      $at, CAUSE_CEMASK
    and     $t1, $t0, $at
    srl     $t1, $t1, CAUSE_CESHIFT
    li      $t2, 1 // if not coprocessor 1, panic
    bne     $t1, $t2, panic
     nop
    // Mark cop1 as usable for previous thread
    lw      $k1, THREAD_SR($k0)
    li      $at, SR_CU1
    li      $t1, 1
    or      $k1, $k1, $at
    sw      $t1, THREAD_FP($k0)
    b       enqueueRunning
     sw     $k1, THREAD_SR($k0)
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
    lui     $a1, %hi(__osRunningThread)
    lw      $a1, %lo(__osRunningThread)($a1)
    // Save SR
    mfc0    $t0, C0_SR
    lw      $k1, THREAD_FP($a1)
    ori     $t0, $t0, SR_EXL
    sw      $t0, THREAD_SR($a1)
    // Save callee-saved registers
    sd      $s0, THREAD_S0($a1)
    sd      $s1, THREAD_S1($a1)
    sd      $s2, THREAD_S2($a1)
    sd      $s3, THREAD_S3($a1)
    sd      $s4, THREAD_S4($a1)
    sd      $s5, THREAD_S5($a1)
    sd      $s6, THREAD_S6($a1)
    sd      $s7, THREAD_S7($a1)
    sd      $gp, THREAD_GP($a1)
    sd      $sp, THREAD_SP($a1)
    sd      $fp, THREAD_S8($a1)
    sd      $ra, THREAD_RA($a1)
    // Save FPU callee-saved registers if the current thread has used the FPU
    beqz    $k1, 1f
     sw     $ra, THREAD_PC($a1)
    cfc1    $k1, C1_FPCSR
    sdc1    $f20, THREAD_FP20($a1)
    sdc1    $f22, THREAD_FP22($a1)
    sdc1    $f24, THREAD_FP24($a1)
    sdc1    $f26, THREAD_FP26($a1)
    sdc1    $f28, THREAD_FP28($a1)
    sdc1    $f30, THREAD_FP30($a1)
    sw      $k1, THREAD_FPCSR($a1)
1:
    lw      $k1, THREAD_SR($a1)
    andi    $t1, $k1, SR_IMASK
    beqz    $t1, 2f
     nop
    // This code does the same thing as the block just above the `savercp` label.
    // See the comment there for more about this.
    lui     $t0, %hi(__OSGlobalIntMask)
    addiu   $t0, %lo(__OSGlobalIntMask)
    lw      $t0, ($t0)
    li      $at, ~0
    xor     $t0, $t0, $at
    lui     $at, ((~SR_IMASK) >> 0x10) & 0xFFFF
    andi    $t0, $t0, SR_IMASK
    ori     $at, (~SR_IMASK) & 0xFFFF
    or      $t1, $t1, $t0
    and     $k1, $k1, $at
    or      $k1, $k1, $t1
    sw      $k1, THREAD_SR($a1)
2:
    lui     $k1, %hi(PHYS_TO_K1(MI_INTR_MASK_REG))
    lw      $k1, %lo(PHYS_TO_K1(MI_INTR_MASK_REG))($k1)
    beqz    $k1, 3f
     nop
    // This code does the same thing as the block just below the `savercp` label.
    // See the comment there for more about this.
    lui     $k0, %hi(__OSGlobalIntMask)
    addiu   $k0, %lo(__OSGlobalIntMask)
    lw      $k0, ($k0)
    lw      $t0, THREAD_RCP($a1)
    li      $at, ~0
    srl     $k0, $k0, RCP_IMASKSHIFT
    xor     $k0, $k0, $at
    andi    $k0, $k0, (RCP_IMASK >> RCP_IMASKSHIFT)
    and     $k0, $k0, $t0
    or      $k1, $k1, $k0
3:
    // If the specified thread queue is null, skip
    //  straight to dispatching
    beqz    $a0, no_enqueue
     sw     $k1, THREAD_RCP($a1)
    jal     __osEnqueueThread
     nop
no_enqueue:
    j       __osDispatchThread
     nop
END(__osEnqueueAndYield)

/**
 *  void __osEnqueueThread(OSThread** threadQueue, OSThread* thread);
 *
 *  Enqueues `thread` to the thread queue `threadQueue`, inserted by priority
 */
LEAF(__osEnqueueThread)
    lw      $t8, ($a0)
    lw      $t7, THREAD_PRI($a1)
    move    $t9, $a0
    lw      $t6, THREAD_PRI($t8)
    slt     $at, $t6, $t7
    // If the current highest priority thread is a lower priority than
    //  the new thread, skip searching the queue
    bnez    $at, 2f
     nop
1:
    // Search the queue for the position to insert the thread to maintain
    //  ordering by priority
    move    $t9, $t8
    lw      $t8, THREAD_NEXT($t8)
    lw      $t6, THREAD_PRI($t8)
    slt     $at, $t6, $t7
    beqz    $at, 1b
     nop
2:
    // Insert the thread into the queue
    lw      $t8, ($t9)
    sw      $t8, THREAD_NEXT($a1)
    sw      $a1, ($t9)
    jr      $ra
     sw     $a0, THREAD_QUEUE($a1)
END(__osEnqueueThread)

/**
 *  OSThread* __osPopThread(OSThread** threadQueue);
 *
 *  Pops the highest priority thread from the top of the
 *   thread queue `threadQueue` and returns it
 */
LEAF(__osPopThread)
    lw      $v0, ($a0)
    lw      $t9, THREAD_NEXT($v0)
    jr      $ra
     sw     $t9, ($a0)
END(__osPopThread)

LEAF(__osNop)
    jr      $ra
     nop
END(__osNop)

/**
 *  void __osDispatchThread(void);
 *
 *  Dispatches the next thread to run after restoring the context
 */
LEAF(__osDispatchThread)
    // Obtain highest priority thread from the active run queue
    lui     $a0, %hi(__osRunQueue)
    jal     __osPopThread
     addiu  $a0, $a0, %lo(__osRunQueue)
    // Set thread as running
    lui     $at, %hi(__osRunningThread)
    sw      $v0, %lo(__osRunningThread)($at)
    li      $t0, OS_STATE_RUNNING
    sh      $t0, THREAD_STATE($v0)
    // Restore SR, masking out any interrupts that are not also
    // enabled in the global interrupt mask
    move    $k0, $v0
    lui     $t0, %hi(__OSGlobalIntMask)
    lw      $k1, THREAD_SR($k0)
    addiu   $t0, %lo(__OSGlobalIntMask)
    lw      $t0, ($t0)
    lui     $at, ((~SR_IMASK) >> 0x10) & 0xFFFF
    andi    $t1, $k1, SR_IMASK
    ori     $at, (~SR_IMASK) & 0xFFFF
    andi    $t0, $t0, SR_IMASK
    and     $t1, $t1, $t0
    and     $k1, $k1, $at
    or      $k1, $k1, $t1
    mtc0    $k1, C0_SR
    // Restore GPRs
    ld      $k1, THREAD_LO($k0)
    ld      $at, THREAD_AT($k0)
    ld      $v0, THREAD_V0($k0)
    mtlo    $k1
    ld      $k1, THREAD_HI($k0)
    ld      $v1, THREAD_V1($k0)
    ld      $a0, THREAD_A0($k0)
    ld      $a1, THREAD_A1($k0)
    ld      $a2, THREAD_A2($k0)
    ld      $a3, THREAD_A3($k0)
    ld      $t0, THREAD_T0($k0)
    ld      $t1, THREAD_T1($k0)
    ld      $t2, THREAD_T2($k0)
    ld      $t3, THREAD_T3($k0)
    ld      $t4, THREAD_T4($k0)
    ld      $t5, THREAD_T5($k0)
    ld      $t6, THREAD_T6($k0)
    ld      $t7, THREAD_T7($k0)
    ld      $s0, THREAD_S0($k0)
    ld      $s1, THREAD_S1($k0)
    ld      $s2, THREAD_S2($k0)
    ld      $s3, THREAD_S3($k0)
    ld      $s4, THREAD_S4($k0)
    ld      $s5, THREAD_S5($k0)
    ld      $s6, THREAD_S6($k0)
    ld      $s7, THREAD_S7($k0)
    ld      $t8, THREAD_T8($k0)
    ld      $t9, THREAD_T9($k0)
    ld      $gp, THREAD_GP($k0)
    mthi    $k1
    ld      $sp, THREAD_SP($k0)
    ld      $fp, THREAD_S8($k0)
    ld      $ra, THREAD_RA($k0)
    // Move thread pc to EPC so that eret will return execution to where the thread left off
    lw      $k1, THREAD_PC($k0)
    mtc0    $k1, C0_EPC
    // Check if the FPU was used by this thread and if so also restore the FPU registers
    lw      $k1, THREAD_FP($k0)
    beqz    $k1, 1f
     nop
    lw      $k1, THREAD_FPCSR($k0)
    ctc1    $k1, C1_FPCSR
    ldc1    $f0, THREAD_FP0($k0)
    ldc1    $f2, THREAD_FP2($k0)
    ldc1    $f4, THREAD_FP4($k0)
    ldc1    $f6, THREAD_FP6($k0)
    ldc1    $f8, THREAD_FP8($k0)
    ldc1    $f10, THREAD_FP10($k0)
    ldc1    $f12, THREAD_FP12($k0)
    ldc1    $f14, THREAD_FP14($k0)
    ldc1    $f16, THREAD_FP16($k0)
    ldc1    $f18, THREAD_FP18($k0)
    ldc1    $f20, THREAD_FP20($k0)
    ldc1    $f22, THREAD_FP22($k0)
    ldc1    $f24, THREAD_FP24($k0)
    ldc1    $f26, THREAD_FP26($k0)
    ldc1    $f28, THREAD_FP28($k0)
    ldc1    $f30, THREAD_FP30($k0)
1:
    // Restore RCP interrupt mask, masking out any RCP interrupts that
    // are not also enabled in the global interrupt mask
    lw      $k1, THREAD_RCP($k0)
    lui     $k0, %hi(__OSGlobalIntMask)
    addiu   $k0, %lo(__OSGlobalIntMask)
    lw      $k0, ($k0)
    srl     $k0, $k0, RCP_IMASKSHIFT
    and     $k1, $k1, $k0
    sll     $k1, $k1, 1
    lui     $k0, %hi(__osRcpImTable)
    addiu   $k0, %lo(__osRcpImTable)
    addu    $k1, $k1, $k0
    lhu     $k1, ($k1)
    lui     $k0, %hi(PHYS_TO_K1(MI_INTR_MASK_REG))
    addiu   $k0, %lo(PHYS_TO_K1(MI_INTR_MASK_REG))
    sw      $k1, ($k0)
    // Empty pipeline
    nop
    nop
    nop
    nop
    // Resume thread execution
    eret
END(__osDispatchThread)

/**
 *  void __osCleanupThread(void);
 *
 *  When a thread entrypoint function returns, it returns to this function.
 *  This function is responsible for cleaning up the thread, signalling for the
 *  current thread to be destroyed.
 */
LEAF(__osCleanupThread)
    jal     osDestroyThread
     move   $a0, $zero
    // Despite being a jal, this function does not return as the thread will have been destroyed
END(__osCleanupThread)
