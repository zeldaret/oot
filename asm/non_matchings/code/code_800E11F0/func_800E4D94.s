glabel func_800E4D94
/* B5BF34 800E4D94 27BDFF88 */  addiu $sp, $sp, -0x78
/* B5BF38 800E4D98 AFBF003C */  sw    $ra, 0x3c($sp)
/* B5BF3C 800E4D9C AFBE0038 */  sw    $fp, 0x38($sp)
/* B5BF40 800E4DA0 AFB70034 */  sw    $s7, 0x34($sp)
/* B5BF44 800E4DA4 AFB60030 */  sw    $s6, 0x30($sp)
/* B5BF48 800E4DA8 AFB5002C */  sw    $s5, 0x2c($sp)
/* B5BF4C 800E4DAC AFB40028 */  sw    $s4, 0x28($sp)
/* B5BF50 800E4DB0 AFB30024 */  sw    $s3, 0x24($sp)
/* B5BF54 800E4DB4 AFB20020 */  sw    $s2, 0x20($sp)
/* B5BF58 800E4DB8 AFB1001C */  sw    $s1, 0x1c($sp)
/* B5BF5C 800E4DBC AFB00018 */  sw    $s0, 0x18($sp)
/* B5BF60 800E4DC0 0C0389FE */  jal   func_800E27F8
/* B5BF64 800E4DC4 24040002 */   li    $a0, 2
/* B5BF68 800E4DC8 3C158017 */  lui   $s5, %hi(gAudioContext) # $s5, 0x8017
/* B5BF6C 800E4DCC 26B5F180 */  addiu $s5, %lo(gAudioContext) # addiu $s5, $s5, -0xe80
/* B5BF70 800E4DD0 8EA32D5C */  lw    $v1, 0x2d5c($s5)
/* B5BF74 800E4DD4 00409825 */  move  $s3, $v0
/* B5BF78 800E4DD8 00008825 */  move  $s1, $zero
/* B5BF7C 800E4DDC 18600031 */  blez  $v1, .L800E4EA4
/* B5BF80 800E4DE0 3C108017 */   lui   $s0, %hi(gAudioContext) # $s0, 0x8017
/* B5BF84 800E4DE4 2610F180 */  addiu $s0, %lo(gAudioContext) # addiu $s0, $s0, -0xe80
/* B5BF88 800E4DE8 27BE004C */  addiu $fp, $sp, 0x4c
/* B5BF8C 800E4DEC 24170014 */  li    $s7, 20
/* B5BF90 800E4DF0 24160001 */  li    $s6, 1
/* B5BF94 800E4DF4 241400FF */  li    $s4, 255
.L800E4DF8:
/* B5BF98 800E4DF8 860E2D68 */  lh    $t6, 0x2d68($s0)
/* B5BF9C 800E4DFC 02C02025 */  move  $a0, $s6
/* B5BFA0 800E4E00 56CE0025 */  bnel  $s6, $t6, .L800E4E98
/* B5BFA4 800E4E04 26310001 */   addiu $s1, $s1, 1
/* B5BFA8 800E4E08 0C0389DA */  jal   func_800E2768
/* B5BFAC 800E4E0C 86052D6A */   lh    $a1, 0x2d6a($s0)
/* B5BFB0 800E4E10 00570019 */  multu $v0, $s7
/* B5BFB4 800E4E14 8EAF2844 */  lw    $t7, 0x2844($s5)
/* B5BFB8 800E4E18 00409025 */  move  $s2, $v0
/* B5BFBC 800E4E1C 24040002 */  li    $a0, 2
/* B5BFC0 800E4E20 0000C012 */  mflo  $t8
/* B5BFC4 800E4E24 01F81821 */  addu  $v1, $t7, $t8
/* B5BFC8 800E4E28 90790002 */  lbu   $t9, 2($v1)
/* B5BFCC 800E4E2C AFB9004C */  sw    $t9, 0x4c($sp)
/* B5BFD0 800E4E30 90680003 */  lbu   $t0, 3($v1)
/* B5BFD4 800E4E34 13340008 */  beq   $t9, $s4, .L800E4E58
/* B5BFD8 800E4E38 AFA80050 */   sw    $t0, 0x50($sp)
/* B5BFDC 800E4E3C 0C0389DA */  jal   func_800E2768
/* B5BFE0 800E4E40 03202825 */   move  $a1, $t9
/* B5BFE4 800E4E44 00025100 */  sll   $t2, $v0, 4
/* B5BFE8 800E4E48 AFA2004C */  sw    $v0, 0x4c($sp)
/* B5BFEC 800E4E4C 026A5821 */  addu  $t3, $s3, $t2
/* B5BFF0 800E4E50 816C0018 */  lb    $t4, 0x18($t3)
/* B5BFF4 800E4E54 AFAC005C */  sw    $t4, 0x5c($sp)
.L800E4E58:
/* B5BFF8 800E4E58 8FA50050 */  lw    $a1, 0x50($sp)
/* B5BFFC 800E4E5C 50B40009 */  beql  $a1, $s4, .L800E4E84
/* B5C000 800E4E60 02402025 */   move  $a0, $s2
/* B5C004 800E4E64 0C0389DA */  jal   func_800E2768
/* B5C008 800E4E68 24040002 */   li    $a0, 2
/* B5C00C 800E4E6C 00026900 */  sll   $t5, $v0, 4
/* B5C010 800E4E70 AFA20050 */  sw    $v0, 0x50($sp)
/* B5C014 800E4E74 026D7021 */  addu  $t6, $s3, $t5
/* B5C018 800E4E78 81CF0018 */  lb    $t7, 0x18($t6)
/* B5C01C 800E4E7C AFAF0060 */  sw    $t7, 0x60($sp)
/* B5C020 800E4E80 02402025 */  move  $a0, $s2
.L800E4E84:
/* B5C024 800E4E84 00002825 */  move  $a1, $zero
/* B5C028 800E4E88 0C039246 */  jal   func_800E4918
/* B5C02C 800E4E8C 03C03025 */   move  $a2, $fp
/* B5C030 800E4E90 8EA32D5C */  lw    $v1, 0x2d5c($s5)
/* B5C034 800E4E94 26310001 */  addiu $s1, $s1, 1
.L800E4E98:
/* B5C038 800E4E98 0223082A */  slt   $at, $s1, $v1
/* B5C03C 800E4E9C 1420FFD6 */  bnez  $at, .L800E4DF8
/* B5C040 800E4EA0 2610000C */   addiu $s0, $s0, 0xc
.L800E4EA4:
/* B5C044 800E4EA4 8FBF003C */  lw    $ra, 0x3c($sp)
/* B5C048 800E4EA8 8FB00018 */  lw    $s0, 0x18($sp)
/* B5C04C 800E4EAC 8FB1001C */  lw    $s1, 0x1c($sp)
/* B5C050 800E4EB0 8FB20020 */  lw    $s2, 0x20($sp)
/* B5C054 800E4EB4 8FB30024 */  lw    $s3, 0x24($sp)
/* B5C058 800E4EB8 8FB40028 */  lw    $s4, 0x28($sp)
/* B5C05C 800E4EBC 8FB5002C */  lw    $s5, 0x2c($sp)
/* B5C060 800E4EC0 8FB60030 */  lw    $s6, 0x30($sp)
/* B5C064 800E4EC4 8FB70034 */  lw    $s7, 0x34($sp)
/* B5C068 800E4EC8 8FBE0038 */  lw    $fp, 0x38($sp)
/* B5C06C 800E4ECC 03E00008 */  jr    $ra
/* B5C070 800E4ED0 27BD0078 */   addiu $sp, $sp, 0x78

