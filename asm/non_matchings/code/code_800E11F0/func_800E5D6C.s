glabel func_800E5D6C
/* B5CF0C 800E5D6C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B5CF10 800E5D70 AFB30020 */  sw    $s3, 0x20($sp)
/* B5CF14 800E5D74 3C138017 */  lui   $s3, %hi(gAudioContext) # $s3, 0x8017
/* B5CF18 800E5D78 2673F180 */  addiu $s3, %lo(gAudioContext) # addiu $s3, $s3, -0xe80
/* B5CF1C 800E5D7C 926E5BDA */  lbu   $t6, 0x5bda($s3)
/* B5CF20 800E5D80 AFBF0024 */  sw    $ra, 0x24($sp)
/* B5CF24 800E5D84 AFB2001C */  sw    $s2, 0x1c($sp)
/* B5CF28 800E5D88 AFB10018 */  sw    $s1, 0x18($sp)
/* B5CF2C 800E5D8C 15C00004 */  bnez  $t6, .L800E5DA0
/* B5CF30 800E5D90 AFB00014 */   sw    $s0, 0x14($sp)
/* B5CF34 800E5D94 00041A02 */  srl   $v1, $a0, 8
/* B5CF38 800E5D98 3C018013 */  lui   $at, %hi(D_801304EC) # $at, 0x8013
/* B5CF3C 800E5D9C A02304EC */  sb    $v1, %lo(D_801304EC)($at)
.L800E5DA0:
/* B5CF40 800E5DA0 00808825 */  move  $s1, $a0
/* B5CF44 800E5DA4 323100FF */  andi  $s1, $s1, 0xff
/* B5CF48 800E5DA8 241200F8 */  li    $s2, 248
.L800E5DAC:
/* B5CF4C 800E5DAC 3C038013 */  lui   $v1, %hi(D_801304EC) # $v1, 0x8013
/* B5CF50 800E5DB0 906304EC */  lbu   $v1, %lo(D_801304EC)($v1)
/* B5CF54 800E5DB4 3C018013 */  lui   $at, %hi(D_801304EC) # $at, 0x8013
/* B5CF58 800E5DB8 16230003 */  bne   $s1, $v1, .L800E5DC8
/* B5CF5C 800E5DBC 00601025 */   move  $v0, $v1
/* B5CF60 800E5DC0 10000010 */  b     .L800E5E04
/* B5CF64 800E5DC4 A2605BDA */   sb    $zero, 0x5bda($s3)
.L800E5DC8:
/* B5CF68 800E5DC8 304F00FF */  andi  $t7, $v0, 0xff
/* B5CF6C 800E5DCC 000FC0C0 */  sll   $t8, $t7, 3
/* B5CF70 800E5DD0 24630001 */  addiu $v1, $v1, 1
/* B5CF74 800E5DD4 02788021 */  addu  $s0, $s3, $t8
/* B5CF78 800E5DD8 A02304EC */  sb    $v1, %lo(D_801304EC)($at)
/* B5CF7C 800E5DDC 92195C50 */  lbu   $t9, 0x5c50($s0)
/* B5CF80 800E5DE0 26105C50 */  addiu $s0, $s0, 0x5c50
/* B5CF84 800E5DE4 16590003 */  bne   $s2, $t9, .L800E5DF4
/* B5CF88 800E5DE8 24080001 */   li    $t0, 1
/* B5CF8C 800E5DEC 10000005 */  b     .L800E5E04
/* B5CF90 800E5DF0 A2685BDA */   sb    $t0, 0x5bda($s3)
.L800E5DF4:
/* B5CF94 800E5DF4 0C03970A */  jal   func_800E5C28
/* B5CF98 800E5DF8 02002025 */   move  $a0, $s0
/* B5CF9C 800E5DFC 1000FFEB */  b     .L800E5DAC
/* B5CFA0 800E5E00 A2000000 */   sb    $zero, ($s0)
.L800E5E04:
/* B5CFA4 800E5E04 8FBF0024 */  lw    $ra, 0x24($sp)
/* B5CFA8 800E5E08 8FB00014 */  lw    $s0, 0x14($sp)
/* B5CFAC 800E5E0C 8FB10018 */  lw    $s1, 0x18($sp)
/* B5CFB0 800E5E10 8FB2001C */  lw    $s2, 0x1c($sp)
/* B5CFB4 800E5E14 8FB30020 */  lw    $s3, 0x20($sp)
/* B5CFB8 800E5E18 03E00008 */  jr    $ra
/* B5CFBC 800E5E1C 27BD0028 */   addiu $sp, $sp, 0x28

