.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_809ADE20

.incbin "baserom/ovl_Elf_Msg2", 0x720, 0x00000100
