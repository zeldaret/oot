glabel func_80106BC8
/* B7DD68 80106BC8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B7DD6C 80106BCC AFBF001C */  sw    $ra, 0x1c($sp)
/* B7DD70 80106BD0 AFA40030 */  sw    $a0, 0x30($sp)
/* B7DD74 80106BD4 948F0020 */  lhu   $t7, 0x20($a0)
/* B7DD78 80106BD8 3C01FFFF */  lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
/* B7DD7C 80106BDC 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* B7DD80 80106BE0 01E1C027 */  nor   $t8, $t7, $at
/* B7DD84 80106BE4 13000008 */  beqz  $t8, .L80106C08
/* B7DD88 80106BE8 2401BFFF */   li    $at, -16385
/* B7DD8C 80106BEC 01E1C827 */  nor   $t9, $t7, $at
/* B7DD90 80106BF0 13200005 */  beqz  $t9, .L80106C08
/* B7DD94 80106BF4 01E01025 */   move  $v0, $t7
/* B7DD98 80106BF8 2401FFF7 */  li    $at, -9
/* B7DD9C 80106BFC 01E14027 */  nor   $t0, $t7, $at
/* B7DDA0 80106C00 55000012 */  bnezl $t0, .L80106C4C
/* B7DDA4 80106C04 3C01FFFF */   lui   $at, 0xffff
.L80106C08:
/* B7DDA8 80106C08 8FAA0030 */  lw    $t2, 0x30($sp)
/* B7DDAC 80106C0C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B7DDB0 80106C10 3C098013 */  lui   $t1, %hi(D_801333E8) # $t1, 0x8013
/* B7DDB4 80106C14 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B7DDB8 80106C18 252933E8 */  addiu $t1, %lo(D_801333E8) # addiu $t1, $t1, 0x33e8
/* B7DDBC 80106C1C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7DDC0 80106C20 254B0014 */  addiu $t3, $t2, 0x14
/* B7DDC4 80106C24 AFAB0024 */  sw    $t3, 0x24($sp)
/* B7DDC8 80106C28 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7DDCC 80106C2C AFA90014 */  sw    $t1, 0x14($sp)
/* B7DDD0 80106C30 AFA70010 */  sw    $a3, 0x10($sp)
/* B7DDD4 80106C34 24044818 */  li    $a0, 18456
/* B7DDD8 80106C38 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7DDDC 80106C3C 24060004 */   li    $a2, 4
/* B7DDE0 80106C40 8FAC0024 */  lw    $t4, 0x24($sp)
/* B7DDE4 80106C44 9582000C */  lhu   $v0, 0xc($t4)
/* B7DDE8 80106C48 3C01FFFF */  lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
.L80106C4C:
/* B7DDEC 80106C4C 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* B7DDF0 80106C50 00411827 */  nor   $v1, $v0, $at
/* B7DDF4 80106C54 2C630001 */  sltiu $v1, $v1, 1
/* B7DDF8 80106C58 14600008 */  bnez  $v1, .L80106C7C
/* B7DDFC 80106C5C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B7DE00 80106C60 2401BFFF */  li    $at, -16385
/* B7DE04 80106C64 00411827 */  nor   $v1, $v0, $at
/* B7DE08 80106C68 2C630001 */  sltiu $v1, $v1, 1
/* B7DE0C 80106C6C 14600003 */  bnez  $v1, .L80106C7C
/* B7DE10 80106C70 2401FFF7 */   li    $at, -9
/* B7DE14 80106C74 00411827 */  nor   $v1, $v0, $at
/* B7DE18 80106C78 2C630001 */  sltiu $v1, $v1, 1
.L80106C7C:
/* B7DE1C 80106C7C 306200FF */  andi  $v0, $v1, 0xff
/* B7DE20 80106C80 03E00008 */  jr    $ra
/* B7DE24 80106C84 27BD0030 */   addiu $sp, $sp, 0x30

