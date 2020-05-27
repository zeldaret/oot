.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osRestoreInt
/* 007EF0 800072F0 40086000 */  mfc0  $t0, $12
/* 007EF4 800072F4 01044025 */  or    $t0, $t0, $a0
/* 007EF8 800072F8 40886000 */  mtc0  $t0, $12
/* 007EFC 800072FC 00000000 */  nop   
/* 007F00 80007300 00000000 */  nop   
/* 007F04 80007304 03E00008 */  jr    $ra
/* 007F08 80007308 00000000 */   nop   
