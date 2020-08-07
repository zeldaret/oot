glabel func_800E9A2C
/* B60BCC 800E9A2C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B60BD0 800E9A30 AFB20020 */  sw    $s2, 0x20($sp)
/* B60BD4 800E9A34 AFB40028 */  sw    $s4, 0x28($sp)
/* B60BD8 800E9A38 AFB30024 */  sw    $s3, 0x24($sp)
/* B60BDC 800E9A3C AFB1001C */  sw    $s1, 0x1c($sp)
/* B60BE0 800E9A40 AFB00018 */  sw    $s0, 0x18($sp)
/* B60BE4 800E9A44 3C128017 */  lui   $s2, %hi(D_80174C30) # $s2, 0x8017
/* B60BE8 800E9A48 AFBF002C */  sw    $ra, 0x2c($sp)
/* B60BEC 800E9A4C AFA50034 */  sw    $a1, 0x34($sp)
/* B60BF0 800E9A50 26524C30 */  addiu $s2, %lo(D_80174C30) # addiu $s2, $s2, 0x4c30
/* B60BF4 800E9A54 00008025 */  move  $s0, $zero
/* B60BF8 800E9A58 00808825 */  move  $s1, $a0
/* B60BFC 800E9A5C 24130001 */  li    $s3, 1
/* B60C00 800E9A60 24140040 */  li    $s4, 64
.L800E9A64:
/* B60C04 800E9A64 8E240038 */  lw    $a0, 0x38($s1)
/* B60C08 800E9A68 00927026 */  xor   $t6, $a0, $s2
/* B60C0C 800E9A6C 000E702B */  sltu  $t6, $zero, $t6
/* B60C10 800E9A70 566E0004 */  bnel  $s3, $t6, .L800E9A84
/* B60C14 800E9A74 26100004 */   addiu $s0, $s0, 4
/* B60C18 800E9A78 0C03A632 */  jal   Audio_SequenceChannelDisable
/* B60C1C 800E9A7C 00000000 */   nop   
/* B60C20 800E9A80 26100004 */  addiu $s0, $s0, 4
.L800E9A84:
/* B60C24 800E9A84 1614FFF7 */  bne   $s0, $s4, .L800E9A64
/* B60C28 800E9A88 26310004 */   addiu $s1, $s1, 4
/* B60C2C 800E9A8C 8FBF002C */  lw    $ra, 0x2c($sp)
/* B60C30 800E9A90 8FB00018 */  lw    $s0, 0x18($sp)
/* B60C34 800E9A94 8FB1001C */  lw    $s1, 0x1c($sp)
/* B60C38 800E9A98 8FB20020 */  lw    $s2, 0x20($sp)
/* B60C3C 800E9A9C 8FB30024 */  lw    $s3, 0x24($sp)
/* B60C40 800E9AA0 8FB40028 */  lw    $s4, 0x28($sp)
/* B60C44 800E9AA4 03E00008 */  jr    $ra
/* B60C48 800E9AA8 27BD0030 */   addiu $sp, $sp, 0x30

