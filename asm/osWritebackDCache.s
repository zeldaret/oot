.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osWritebackDCache
/* 0052C0 800046C0 18A00011 */  blez  $a1, .L80004708
/* 0052C4 800046C4 00000000 */   nop   
/* 0052C8 800046C8 240B2000 */  li    $t3, 8192
/* 0052CC 800046CC 00AB082B */  sltu  $at, $a1, $t3
/* 0052D0 800046D0 1020000F */  beqz  $at, .L80004710
/* 0052D4 800046D4 00000000 */   nop   
/* 0052D8 800046D8 00804025 */  move  $t0, $a0
/* 0052DC 800046DC 00854821 */  addu  $t1, $a0, $a1
/* 0052E0 800046E0 0109082B */  sltu  $at, $t0, $t1
/* 0052E4 800046E4 10200008 */  beqz  $at, .L80004708
/* 0052E8 800046E8 00000000 */   nop   
/* 0052EC 800046EC 310A000F */  andi  $t2, $t0, 0xf
/* 0052F0 800046F0 2529FFF0 */  addiu $t1, $t1, -0x10
/* 0052F4 800046F4 010A4023 */  subu  $t0, $t0, $t2
.L800046F8:
/* 0052F8 800046F8 BD190000 */  cache 0x19, ($t0)
/* 0052FC 800046FC 0109082B */  sltu  $at, $t0, $t1
/* 005300 80004700 1420FFFD */  bnez  $at, .L800046F8
/* 005304 80004704 25080010 */   addiu $t0, $t0, 0x10
.L80004708:
/* 005308 80004708 03E00008 */  jr    $ra
/* 00530C 8000470C 00000000 */   nop   

.L80004710:
/* 005310 80004710 3C088000 */  lui   $t0, %hi(D_80000010) # $t0, 0x8000
/* 005314 80004714 010B4821 */  addu  $t1, $t0, $t3
/* 005318 80004718 2529FFF0 */  addiu $t1, $t1, -0x10
.L8000471C:
/* 00531C 8000471C BD010000 */  cache 1, ($t0)
/* 005320 80004720 0109082B */  sltu  $at, $t0, $t1
/* 005324 80004724 1420FFFD */  bnez  $at, .L8000471C
/* 005328 80004728 25080010 */   addiu $t0, %lo(D_80000010) # addiu $t0, $t0, 0x10
/* 00532C 8000472C 03E00008 */  jr    $ra
/* 005330 80004730 00000000 */   nop   
