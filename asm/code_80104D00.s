.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80104D00
/* B7BEA0 80104D00 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B7BEA4 80104D04 AFBF0014 */  sw    $ra, 0x14($sp)
/* B7BEA8 80104D08 0C0402E8 */  jal   __osSiGetAccess
/* B7BEAC 80104D0C AFA40018 */   sw    $a0, 0x18($sp)
/* B7BEB0 80104D10 93A2001B */  lbu   $v0, 0x1b($sp)
/* B7BEB4 80104D14 240E0004 */  li    $t6, 4
/* B7BEB8 80104D18 240F00FE */  li    $t7, 254
/* B7BEBC 80104D1C 28410005 */  slti  $at, $v0, 5
/* B7BEC0 80104D20 14200003 */  bnez  $at, .L80104D30
/* B7BEC4 80104D24 3C018017 */   lui   $at, %hi(_osCont_numControllers) # $at, 0x8017
/* B7BEC8 80104D28 10000003 */  b     .L80104D38
/* B7BECC 80104D2C A02E5811 */   sb    $t6, %lo(_osCont_numControllers)($at)
.L80104D30:
/* B7BED0 80104D30 3C018017 */  lui   $at, %hi(_osCont_numControllers) # $at, 0x8017
/* B7BED4 80104D34 A0225811 */  sb    $v0, %lo(_osCont_numControllers)($at)
.L80104D38:
/* B7BED8 80104D38 3C018017 */  lui   $at, %hi(_osCont_lastPollType) # $at, 0x8017
/* B7BEDC 80104D3C 0C0402F9 */  jal   __osSiRelAccess
/* B7BEE0 80104D40 A02F5810 */   sb    $t7, %lo(_osCont_lastPollType)($at)
/* B7BEE4 80104D44 8FBF0014 */  lw    $ra, 0x14($sp)
/* B7BEE8 80104D48 27BD0018 */  addiu $sp, $sp, 0x18
/* B7BEEC 80104D4C 00001025 */  move  $v0, $zero
/* B7BEF0 80104D50 03E00008 */  jr    $ra
/* B7BEF4 80104D54 00000000 */   nop   
