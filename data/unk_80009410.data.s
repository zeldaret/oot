.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .data

.balign 16

/* Unused */
glabel D_80009410
    .word osStopThread
    .word __osSetHWIntrRoutine
#if PLATFORM_N64
    .word osEPiWriteIo
    .word osEPiReadIo
#endif
    .word __osSetFpcCsr
    .word __osGetFpcCsr
    .word __osGetHWIntrRoutine
    .word __osSetHWIntrRoutine
    .word osViGetNextFramebuffer
#if !PLATFORM_N64
    .word bcmp
#endif
