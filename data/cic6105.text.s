.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text

.balign 16

/* RSP code for cic6105.c, used only in N64 versions. */
 glabel cic6105TextStart
    .word 0xE80C2001 # sqv     $v12[0], 0x10($zero)
    .word 0x34014000 # li      $1, 0x4000
    .word 0x40812000 # mtc0    $1, SP_STATUS
    .word 0x0000000D # break
    .word 0x00000000 # nop
    .word 0x09000425 # j       0x04001094
    .word 0x00000000 #  nop
    .word 0x00000000 # nop
glabel cic6105TextEnd
