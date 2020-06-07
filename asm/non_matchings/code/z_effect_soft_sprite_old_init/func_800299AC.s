.late_rodata
glabel D_80135C50
    .float 1.99

.text
glabel func_800299AC
/* AA0B4C 800299AC 27BDFF88 */  addiu $sp, $sp, -0x78
/* AA0B50 800299B0 3C0F8011 */  lui   $t7, %hi(D_801158FC) # $t7, 0x8011
/* AA0B54 800299B4 AFBF0044 */  sw    $ra, 0x44($sp)
/* AA0B58 800299B8 AFB60040 */  sw    $s6, 0x40($sp)
/* AA0B5C 800299BC AFB5003C */  sw    $s5, 0x3c($sp)
/* AA0B60 800299C0 AFB40038 */  sw    $s4, 0x38($sp)
/* AA0B64 800299C4 AFB30034 */  sw    $s3, 0x34($sp)
/* AA0B68 800299C8 AFB20030 */  sw    $s2, 0x30($sp)
/* AA0B6C 800299CC AFB1002C */  sw    $s1, 0x2c($sp)
/* AA0B70 800299D0 AFB00028 */  sw    $s0, 0x28($sp)
/* AA0B74 800299D4 25EF58FC */  addiu $t7, %lo(D_801158FC) # addiu $t7, $t7, 0x58fc
/* AA0B78 800299D8 8DF90000 */  lw    $t9, ($t7)
/* AA0B7C 800299DC 27AE0068 */  addiu $t6, $sp, 0x68
/* AA0B80 800299E0 8DF80004 */  lw    $t8, 4($t7)
/* AA0B84 800299E4 ADD90000 */  sw    $t9, ($t6)
/* AA0B88 800299E8 8DF90008 */  lw    $t9, 8($t7)
/* AA0B8C 800299EC 3C098011 */  lui   $t1, %hi(D_80115908) # $t1, 0x8011
/* AA0B90 800299F0 25295908 */  addiu $t1, %lo(D_80115908) # addiu $t1, $t1, 0x5908
/* AA0B94 800299F4 ADD80004 */  sw    $t8, 4($t6)
/* AA0B98 800299F8 ADD90008 */  sw    $t9, 8($t6)
/* AA0B9C 800299FC 8D2B0000 */  lw    $t3, ($t1)
/* AA0BA0 80029A00 27A8005C */  addiu $t0, $sp, 0x5c
/* AA0BA4 80029A04 8D2A0004 */  lw    $t2, 4($t1)
/* AA0BA8 80029A08 AD0B0000 */  sw    $t3, ($t0)
/* AA0BAC 80029A0C 8D2B0008 */  lw    $t3, 8($t1)
/* AA0BB0 80029A10 3C0C8011 */  lui   $t4, %hi(D_80115914) # $t4, 0x8011
/* AA0BB4 80029A14 258C5914 */  addiu $t4, %lo(D_80115914) # addiu $t4, $t4, 0x5914
/* AA0BB8 80029A18 AD0A0004 */  sw    $t2, 4($t0)
/* AA0BBC 80029A1C AD0B0008 */  sw    $t3, 8($t0)
/* AA0BC0 80029A20 8D8E0000 */  lw    $t6, ($t4)
/* AA0BC4 80029A24 27B20050 */  addiu $s2, $sp, 0x50
/* AA0BC8 80029A28 0080A025 */  move  $s4, $a0
/* AA0BCC 80029A2C AE4E0000 */  sw    $t6, ($s2)
/* AA0BD0 80029A30 8D8D0004 */  lw    $t5, 4($t4)
/* AA0BD4 80029A34 00A0A825 */  move  $s5, $a1
/* AA0BD8 80029A38 AE4D0004 */  sw    $t5, 4($s2)
/* AA0BDC 80029A3C 8D8E0008 */  lw    $t6, 8($t4)
/* AA0BE0 80029A40 0C03F66B */  jal   Math_Rand_ZeroOne
/* AA0BE4 80029A44 AE4E0008 */   sw    $t6, 8($s2)
/* AA0BE8 80029A48 3C018013 */  lui   $at, %hi(D_80135C50)
/* AA0BEC 80029A4C C4245C50 */  lwc1  $f4, %lo(D_80135C50)($at)
/* AA0BF0 80029A50 3C168016 */  lui   $s6, %hi(gGameInfo) # $s6, 0x8016
/* AA0BF4 80029A54 26D6FA90 */  addiu $s6, %lo(gGameInfo) # addiu $s6, $s6, -0x570
/* AA0BF8 80029A58 46040182 */  mul.s $f6, $f0, $f4
/* AA0BFC 80029A5C 8ED00000 */  lw    $s0, ($s6)
/* AA0C00 80029A60 00008825 */  move  $s1, $zero
/* AA0C04 80029A64 861809FA */  lh    $t8, 0x9fa($s0)
/* AA0C08 80029A68 4600320D */  trunc.w.s $f8, $f6
/* AA0C0C 80029A6C 2719001E */  addiu $t9, $t8, 0x1e
/* AA0C10 80029A70 44134000 */  mfc1  $s3, $f8
/* AA0C14 80029A74 00000000 */  nop   
/* AA0C18 80029A78 00139C00 */  sll   $s3, $s3, 0x10
/* AA0C1C 80029A7C 1B200022 */  blez  $t9, .L80029B08
/* AA0C20 80029A80 00139C03 */   sra   $s3, $s3, 0x10
/* AA0C24 80029A84 86080A0A */  lh    $t0, 0xa0a($s0)
.L80029A88:
/* AA0C28 80029A88 AFB30014 */  sw    $s3, 0x14($sp)
/* AA0C2C 80029A8C 02802025 */  move  $a0, $s4
/* AA0C30 80029A90 25090006 */  addiu $t1, $t0, 6
/* AA0C34 80029A94 0229001A */  div   $zero, $s1, $t1
/* AA0C38 80029A98 00005012 */  mflo  $t2
/* AA0C3C 80029A9C AFAA0010 */  sw    $t2, 0x10($sp)
/* AA0C40 80029AA0 860B09F8 */  lh    $t3, 0x9f8($s0)
/* AA0C44 80029AA4 02A02825 */  move  $a1, $s5
/* AA0C48 80029AA8 02403025 */  move  $a2, $s2
/* AA0C4C 80029AAC 256C0028 */  addiu $t4, $t3, 0x28
/* AA0C50 80029AB0 AFAC0018 */  sw    $t4, 0x18($sp)
/* AA0C54 80029AB4 02403825 */  move  $a3, $s2
/* AA0C58 80029AB8 15200002 */  bnez  $t1, .L80029AC4
/* AA0C5C 80029ABC 00000000 */   nop   
/* AA0C60 80029AC0 0007000D */  break 7
.L80029AC4:
/* AA0C64 80029AC4 2401FFFF */  li    $at, -1
/* AA0C68 80029AC8 15210004 */  bne   $t1, $at, .L80029ADC
/* AA0C6C 80029ACC 3C018000 */   lui   $at, 0x8000
/* AA0C70 80029AD0 16210002 */  bne   $s1, $at, .L80029ADC
/* AA0C74 80029AD4 00000000 */   nop   
/* AA0C78 80029AD8 0006000D */  break 6
.L80029ADC:
/* AA0C7C 80029ADC 0C00A64F */  jal   func_8002993C
/* AA0C80 80029AE0 00000000 */   nop   
/* AA0C84 80029AE4 8ED00000 */  lw    $s0, ($s6)
/* AA0C88 80029AE8 26310001 */  addiu $s1, $s1, 1
/* AA0C8C 80029AEC 00118C00 */  sll   $s1, $s1, 0x10
/* AA0C90 80029AF0 860D09FA */  lh    $t5, 0x9fa($s0)
/* AA0C94 80029AF4 00118C03 */  sra   $s1, $s1, 0x10
/* AA0C98 80029AF8 25AE001E */  addiu $t6, $t5, 0x1e
/* AA0C9C 80029AFC 022E082A */  slt   $at, $s1, $t6
/* AA0CA0 80029B00 5420FFE1 */  bnezl $at, .L80029A88
/* AA0CA4 80029B04 86080A0A */   lh    $t0, 0xa0a($s0)
.L80029B08:
/* AA0CA8 80029B08 8FBF0044 */  lw    $ra, 0x44($sp)
/* AA0CAC 80029B0C 8FB00028 */  lw    $s0, 0x28($sp)
/* AA0CB0 80029B10 8FB1002C */  lw    $s1, 0x2c($sp)
/* AA0CB4 80029B14 8FB20030 */  lw    $s2, 0x30($sp)
/* AA0CB8 80029B18 8FB30034 */  lw    $s3, 0x34($sp)
/* AA0CBC 80029B1C 8FB40038 */  lw    $s4, 0x38($sp)
/* AA0CC0 80029B20 8FB5003C */  lw    $s5, 0x3c($sp)
/* AA0CC4 80029B24 8FB60040 */  lw    $s6, 0x40($sp)
/* AA0CC8 80029B28 03E00008 */  jr    $ra
/* AA0CCC 80029B2C 27BD0078 */   addiu $sp, $sp, 0x78

