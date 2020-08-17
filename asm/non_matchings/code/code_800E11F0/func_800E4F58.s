glabel func_800E4F58
/* B5C0F8 800E4F58 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B5C0FC 800E4F5C AFBF0014 */  sw    $ra, 0x14($sp)
/* B5C100 800E4F60 3C048017 */  lui   $a0, %hi(D_8016B6E0) # $a0, 0x8017
/* B5C104 800E4F64 2484B6E0 */  addiu $a0, %lo(D_8016B6E0) # addiu $a0, $a0, -0x4920
/* B5C108 800E4F68 27A50020 */  addiu $a1, $sp, 0x20
/* B5C10C 800E4F6C 0C000CA0 */  jal   osRecvMesg
/* B5C110 800E4F70 00003025 */   move  $a2, $zero
/* B5C114 800E4F74 2401FFFF */  li    $at, -1
/* B5C118 800E4F78 10410009 */  beq   $v0, $at, .L800E4FA0
/* B5C11C 800E4F7C 8FAE0020 */   lw    $t6, 0x20($sp)
/* B5C120 800E4F80 000E7E02 */  srl   $t7, $t6, 0x18
/* B5C124 800E4F84 000FC080 */  sll   $t8, $t7, 2
/* B5C128 800E4F88 3C028017 */  lui   $v0, %hi(D_8016B738)
/* B5C12C 800E4F8C 00581021 */  addu  $v0, $v0, $t8
/* B5C130 800E4F90 8C42B738 */  lw    $v0, %lo(D_8016B738)($v0)
/* B5C134 800E4F94 50400003 */  beql  $v0, $zero, .L800E4FA4
/* B5C138 800E4F98 8FBF0014 */   lw    $ra, 0x14($sp)
/* B5C13C 800E4F9C A0400000 */  sb    $zero, ($v0)
.L800E4FA0:
/* B5C140 800E4FA0 8FBF0014 */  lw    $ra, 0x14($sp)
.L800E4FA4:
/* B5C144 800E4FA4 27BD0028 */  addiu $sp, $sp, 0x28
/* B5C148 800E4FA8 03E00008 */  jr    $ra
/* B5C14C 800E4FAC 00000000 */   nop

