.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_809AD600

.incbin "baserom/ovl_Elf_Msg", 0xAE0, 0x00000100
