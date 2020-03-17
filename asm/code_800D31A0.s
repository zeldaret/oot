.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800D31A0
/* B4A340 800D31A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4A344 800D31A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4A348 800D31A8 3C048014 */  lui   $a0, %hi(D_80146670) # $a0, 0x8014
/* B4A34C 800D31AC 0C00084C */  jal   osSyncPrintf
/* B4A350 800D31B0 24846670 */   addiu $a0, %lo(D_80146670) # addiu $a0, $a0, 0x6670
.L800D31B4:
/* B4A354 800D31B4 0C03FD2B */  jal   func_800FF4AC
/* B4A358 800D31B8 240403E8 */   li    $a0, 1000
/* B4A35C 800D31BC 1000FFFD */  b     .L800D31B4
/* B4A360 800D31C0 00000000 */   nop   
/* B4A364 800D31C4 00000000 */  nop   
/* B4A368 800D31C8 00000000 */  nop   
/* B4A36C 800D31CC 00000000 */  nop   
/* B4A370 800D31D0 00000000 */  nop   
/* B4A374 800D31D4 00000000 */  nop   
/* B4A378 800D31D8 00000000 */  nop   
/* B4A37C 800D31DC 00000000 */  nop   
/* B4A380 800D31E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4A384 800D31E4 27BD0018 */  addiu $sp, $sp, 0x18
/* B4A388 800D31E8 03E00008 */  jr    $ra
/* B4A38C 800D31EC 00000000 */   nop   

glabel func_800D31F0
/* B4A390 800D31F0 3C0E8016 */  lui   $t6, %hi(gPadMgr) # $t6, 0x8016
/* B4A394 800D31F4 25CE68C0 */  addiu $t6, %lo(gPadMgr) # addiu $t6, $t6, 0x68c0
/* B4A398 800D31F8 91CF02A8 */  lbu   $t7, 0x2a8($t6)
/* B4A39C 800D31FC 3C018013 */  lui   $at, %hi(D_8012DBC0)
/* B4A3A0 800D3200 31F80002 */  andi  $t8, $t7, 2
/* B4A3A4 800D3204 0018C82B */  sltu  $t9, $zero, $t8
/* B4A3A8 800D3208 03E00008 */  jr    $ra
/* B4A3AC 800D320C AC39DBC0 */   sw    $t9, %lo(D_8012DBC0)($at)

glabel func_800D3210
/* B4A3B0 800D3210 3C018013 */  lui   $at, %hi(D_8012DBC0)
/* B4A3B4 800D3214 03E00008 */  jr    $ra
/* B4A3B8 800D3218 AC20DBC0 */   sw    $zero, %lo(D_8012DBC0)($at)
