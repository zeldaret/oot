.rdata
glabel D_8013EF10
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EF1C
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80095974
/* B0CB14 80095974 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B0CB18 80095978 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0CB1C 8009597C 00802825 */  move  $a1, $a0
/* B0CB20 80095980 3C068014 */  lui   $a2, %hi(D_8013EF10) # $a2, 0x8014
/* B0CB24 80095984 24C6EF10 */  addiu $a2, %lo(D_8013EF10) # addiu $a2, $a2, -0x10f0
/* B0CB28 80095988 AFA50040 */  sw    $a1, 0x40($sp)
/* B0CB2C 8009598C 27A4002C */  addiu $a0, $sp, 0x2c
/* B0CB30 80095990 0C031AB1 */  jal   func_800C6AC4
/* B0CB34 80095994 240709C7 */   li    $a3, 2503
/* B0CB38 80095998 8FA50040 */  lw    $a1, 0x40($sp)
/* B0CB3C 8009599C 3C188012 */  lui   $t8, %hi(D_80126FD0) # $t8, 0x8012
/* B0CB40 800959A0 27186FD0 */  addiu $t8, %lo(D_80126FD0) # addiu $t8, $t8, 0x6fd0
/* B0CB44 800959A4 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0CB48 800959A8 3C0FDE00 */  lui   $t7, 0xde00
/* B0CB4C 800959AC 3C048013 */  lui   $a0, %hi(gScreenWidth) # $a0, 0x8013
/* B0CB50 800959B0 244E0008 */  addiu $t6, $v0, 8
/* B0CB54 800959B4 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0CB58 800959B8 AC580004 */  sw    $t8, 4($v0)
/* B0CB5C 800959BC AC4F0000 */  sw    $t7, ($v0)
/* B0CB60 800959C0 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0CB64 800959C4 3C08ED00 */  li    $t0, 0xED000000 # 0.000000
/* B0CB68 800959C8 2484D270 */  addiu $a0, %lo(gScreenWidth) # addiu $a0, $a0, -0x2d90
/* B0CB6C 800959CC 24590008 */  addiu $t9, $v0, 8
/* B0CB70 800959D0 ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B0CB74 800959D4 AC480000 */  sw    $t0, ($v0)
/* B0CB78 800959D8 8C890000 */  lw    $t1, ($a0)
/* B0CB7C 800959DC 3C0E8013 */  lui   $t6, %hi(gScreenHeight)
/* B0CB80 800959E0 8DCED274 */  lw    $t6, %lo(gScreenHeight)($t6)
/* B0CB84 800959E4 44892000 */  mtc1  $t1, $f4
/* B0CB88 800959E8 3C014080 */  li    $at, 0x40800000 # 0.000000
/* B0CB8C 800959EC 448E8000 */  mtc1  $t6, $f16
/* B0CB90 800959F0 468021A0 */  cvt.s.w $f6, $f4
/* B0CB94 800959F4 44810000 */  mtc1  $at, $f0
/* B0CB98 800959F8 3C0AFE00 */  lui   $t2, 0xfe00
/* B0CB9C 800959FC 3C01FF10 */  lui   $at, 0xff10
/* B0CBA0 80095A00 3C068014 */  lui   $a2, %hi(D_8013EF1C) # $a2, 0x8014
/* B0CBA4 80095A04 468084A0 */  cvt.s.w $f18, $f16
/* B0CBA8 80095A08 46003202 */  mul.s $f8, $f6, $f0
/* B0CBAC 80095A0C 24C6EF1C */  addiu $a2, %lo(D_8013EF1C) # addiu $a2, $a2, -0x10e4
/* B0CBB0 80095A10 240709D1 */  li    $a3, 2513
/* B0CBB4 80095A14 46009102 */  mul.s $f4, $f18, $f0
/* B0CBB8 80095A18 4600428D */  trunc.w.s $f10, $f8
/* B0CBBC 80095A1C 4600218D */  trunc.w.s $f6, $f4
/* B0CBC0 80095A20 440B5000 */  mfc1  $t3, $f10
/* B0CBC4 80095A24 44183000 */  mfc1  $t8, $f6
/* B0CBC8 80095A28 316C0FFF */  andi  $t4, $t3, 0xfff
/* B0CBCC 80095A2C 000C6B00 */  sll   $t5, $t4, 0xc
/* B0CBD0 80095A30 33190FFF */  andi  $t9, $t8, 0xfff
/* B0CBD4 80095A34 01B94025 */  or    $t0, $t5, $t9
/* B0CBD8 80095A38 AC480004 */  sw    $t0, 4($v0)
/* B0CBDC 80095A3C 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0CBE0 80095A40 3C0B8017 */  lui   $t3, %hi(D_801759C0) # $t3, 0x8017
/* B0CBE4 80095A44 256B59C0 */  addiu $t3, %lo(D_801759C0) # addiu $t3, $t3, 0x59c0
/* B0CBE8 80095A48 24490008 */  addiu $t1, $v0, 8
/* B0CBEC 80095A4C ACA902C0 */  sw    $t1, 0x2c0($a1)
/* B0CBF0 80095A50 AC4B0004 */  sw    $t3, 4($v0)
/* B0CBF4 80095A54 AC4A0000 */  sw    $t2, ($v0)
/* B0CBF8 80095A58 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0CBFC 80095A5C 244C0008 */  addiu $t4, $v0, 8
/* B0CC00 80095A60 ACAC02C0 */  sw    $t4, 0x2c0($a1)
/* B0CC04 80095A64 8C8E0000 */  lw    $t6, ($a0)
/* B0CC08 80095A68 27A4002C */  addiu $a0, $sp, 0x2c
/* B0CC0C 80095A6C 25CFFFFF */  addiu $t7, $t6, -1
/* B0CC10 80095A70 31F80FFF */  andi  $t8, $t7, 0xfff
/* B0CC14 80095A74 03016825 */  or    $t5, $t8, $at
/* B0CC18 80095A78 AC4D0000 */  sw    $t5, ($v0)
/* B0CC1C 80095A7C 8CB902DC */  lw    $t9, 0x2dc($a1)
/* B0CC20 80095A80 0C031AD5 */  jal   func_800C6B54
/* B0CC24 80095A84 AC590004 */   sw    $t9, 4($v0)
/* B0CC28 80095A88 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0CC2C 80095A8C 27BD0040 */  addiu $sp, $sp, 0x40
/* B0CC30 80095A90 03E00008 */  jr    $ra
/* B0CC34 80095A94 00000000 */   nop   
