.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osUnmapTLBAll
/* 006BC0 80005FC0 40085000 */  mfc0  $t0, $10
/* 006BC4 80005FC4 2409001E */  li    $t1, 30
/* 006BC8 80005FC8 3C0A8000 */  lui   $t2, 0x8000
/* 006BCC 80005FCC 408A5000 */  mtc0  $t2, $10
/* 006BD0 80005FD0 40801000 */  mtc0  $zero, $2
/* 006BD4 80005FD4 40801800 */  mtc0  $zero, $3
.L80005FD8:
/* 006BD8 80005FD8 40890000 */  mtc0  $t1, $0
/* 006BDC 80005FDC 00000000 */  nop   
/* 006BE0 80005FE0 42000002 */  tlbwi 
/* 006BE4 80005FE4 00000000 */  nop   
/* 006BE8 80005FE8 00000000 */  nop   
/* 006BEC 80005FEC 2129FFFF */  addi  $t1, $t1, -1
/* 006BF0 80005FF0 0521FFF9 */  bgez  $t1, .L80005FD8
/* 006BF4 80005FF4 00000000 */   nop   
/* 006BF8 80005FF8 40885000 */  mtc0  $t0, $10
/* 006BFC 80005FFC 03E00008 */  jr    $ra
/* 006C00 80006000 00000000 */   nop   
