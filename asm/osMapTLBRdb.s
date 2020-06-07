.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osMapTLBRdb
/* 0086E0 80007AE0 40085000 */  mfc0  $t0, $10
/* 0086E4 80007AE4 2409001F */  li    $t1, 31
/* 0086E8 80007AE8 40890000 */  mtc0  $t1, $0
/* 0086EC 80007AEC 40802800 */  mtc0  $zero, $5
/* 0086F0 80007AF0 240A0017 */  li    $t2, 23
/* 0086F4 80007AF4 3C09C000 */  lui   $t1, 0xc000
/* 0086F8 80007AF8 40895000 */  mtc0  $t1, $10
/* 0086FC 80007AFC 3C098000 */  lui   $t1, 0x8000
/* 008700 80007B00 00095982 */  srl   $t3, $t1, 6
/* 008704 80007B04 016A5825 */  or    $t3, $t3, $t2
/* 008708 80007B08 408B1000 */  mtc0  $t3, $2
/* 00870C 80007B0C 24090001 */  li    $t1, 1
/* 008710 80007B10 40891800 */  mtc0  $t1, $3
/* 008714 80007B14 00000000 */  nop   
/* 008718 80007B18 42000002 */  tlbwi 
/* 00871C 80007B1C 00000000 */  nop   
/* 008720 80007B20 00000000 */  nop   
/* 008724 80007B24 00000000 */  nop   
/* 008728 80007B28 00000000 */  nop   
/* 00872C 80007B2C 40885000 */  mtc0  $t0, $10
/* 008730 80007B30 03E00008 */  jr    $ra
/* 008734 80007B34 00000000 */   nop   
