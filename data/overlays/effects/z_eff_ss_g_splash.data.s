.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.word 0x0000000A
.word func_809A7540
glabel D_809A7948
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809A7954
 .word 0x040255F0, 0x04025AF0, 0x04025FF0, 0x040264F0, 0x040269F0, 0x04026EF0, 0x040273F0, 0x040278F0, 0x00000000, 0x00000000, 0x00000000

