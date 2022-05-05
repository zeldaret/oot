.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

# Unused.
# This appears to be RSP code, however it is not part of
# rspboot as rspbootTextEnd is at this symbol
glabel D_800093F0
    .word 0xE80C2001 # sqv     $v12[0], 0x10($zero)
    .word 0x34014000 # li      $1, 0x4000
    .word 0x40812000 # mtc0    $1, SP_STATUS
    .word 0x0000000D # break
    .word 0x00000000 # nop
    .word 0x09000425 # j       0x04001094
    .word 0x00000000 #  nop
    .word 0x00000000 # nop
