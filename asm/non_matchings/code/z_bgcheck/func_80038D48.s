glabel func_80038D48
/* AAFEE8 80038D48 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AAFEEC 80038D4C AFBF003C */  sw    $ra, 0x3c($sp)
/* AAFEF0 80038D50 AFB00038 */  sw    $s0, 0x38($sp)
/* AAFEF4 80038D54 AFA50044 */  sw    $a1, 0x44($sp)
/* AAFEF8 80038D58 AFA60048 */  sw    $a2, 0x48($sp)
/* AAFEFC 80038D5C AFA7004C */  sw    $a3, 0x4c($sp)
/* AAFF00 80038D60 948E0002 */  lhu   $t6, 2($a0)
/* AAFF04 80038D64 00808025 */  move  $s0, $a0
/* AAFF08 80038D68 3C048016 */  lui   $a0, %hi(D_8015BC30) # $a0, 0x8016
/* AAFF0C 80038D6C 31CF1FFF */  andi  $t7, $t6, 0x1fff
/* AAFF10 80038D70 000FC080 */  sll   $t8, $t7, 2
/* AAFF14 80038D74 030FC023 */  subu  $t8, $t8, $t7
/* AAFF18 80038D78 0018C040 */  sll   $t8, $t8, 1
/* AAFF1C 80038D7C 03052821 */  addu  $a1, $t8, $a1
/* AAFF20 80038D80 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* AAFF24 80038D84 2484BC30 */   addiu $a0, %lo(D_8015BC30) # addiu $a0, $a0, -0x43d0
/* AAFF28 80038D88 96080004 */  lhu   $t0, 4($s0)
/* AAFF2C 80038D8C 8FAB0044 */  lw    $t3, 0x44($sp)
/* AAFF30 80038D90 3C048016 */  lui   $a0, %hi(D_8015BC3C) # $a0, 0x8016
/* AAFF34 80038D94 31091FFF */  andi  $t1, $t0, 0x1fff
/* AAFF38 80038D98 00095080 */  sll   $t2, $t1, 2
/* AAFF3C 80038D9C 01495023 */  subu  $t2, $t2, $t1
/* AAFF40 80038DA0 000A5040 */  sll   $t2, $t2, 1
/* AAFF44 80038DA4 2484BC3C */  addiu $a0, %lo(D_8015BC3C) # addiu $a0, $a0, -0x43c4
/* AAFF48 80038DA8 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* AAFF4C 80038DAC 014B2821 */   addu  $a1, $t2, $t3
/* AAFF50 80038DB0 960C0006 */  lhu   $t4, 6($s0)
/* AAFF54 80038DB4 8FAE0044 */  lw    $t6, 0x44($sp)
/* AAFF58 80038DB8 3C048016 */  lui   $a0, %hi(D_8015BC48) # $a0, 0x8016
/* AAFF5C 80038DBC 000C6880 */  sll   $t5, $t4, 2
/* AAFF60 80038DC0 01AC6823 */  subu  $t5, $t5, $t4
/* AAFF64 80038DC4 000D6840 */  sll   $t5, $t5, 1
/* AAFF68 80038DC8 2484BC48 */  addiu $a0, %lo(D_8015BC48) # addiu $a0, $a0, -0x43b8
/* AAFF6C 80038DCC 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* AAFF70 80038DD0 01AE2821 */   addu  $a1, $t5, $t6
/* AAFF74 80038DD4 860F0008 */  lh    $t7, 8($s0)
/* AAFF78 80038DD8 8618000A */  lh    $t8, 0xa($s0)
/* AAFF7C 80038DDC 8619000C */  lh    $t9, 0xc($s0)
/* AAFF80 80038DE0 448F2000 */  mtc1  $t7, $f4
/* AAFF84 80038DE4 44984000 */  mtc1  $t8, $f8
/* AAFF88 80038DE8 3C018014 */  lui   $at, %hi(D_80138F4C)
/* AAFF8C 80038DEC 468021A0 */  cvt.s.w $f6, $f4
/* AAFF90 80038DF0 C42E8F4C */  lwc1  $f14, %lo(D_80138F4C)($at)
/* AAFF94 80038DF4 44998000 */  mtc1  $t9, $f16
/* AAFF98 80038DF8 8FA90050 */  lw    $t1, 0x50($sp)
/* AAFF9C 80038DFC 3C048016 */  lui   $a0, %hi(D_8015BC30) # $a0, 0x8016
/* AAFFA0 80038E00 468042A0 */  cvt.s.w $f10, $f8
/* AAFFA4 80038E04 460E3002 */  mul.s $f0, $f6, $f14
/* AAFFA8 80038E08 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* AAFFAC 80038E0C 3C058016 */  lui   $a1, %hi(D_8015BC3C) # $a1, 0x8016
/* AAFFB0 80038E10 3C068016 */  lui   $a2, %hi(D_8015BC48) # $a2, 0x8016
/* AAFFB4 80038E14 24C6BC48 */  addiu $a2, %lo(D_8015BC48) # addiu $a2, $a2, -0x43b8
/* AAFFB8 80038E18 460E5082 */  mul.s $f2, $f10, $f14
/* AAFFBC 80038E1C C7AA0048 */  lwc1  $f10, 0x48($sp)
/* AAFFC0 80038E20 44070000 */  mfc1  $a3, $f0
/* AAFFC4 80038E24 24A5BC3C */  addiu $a1, %lo(D_8015BC3C) # addiu $a1, $a1, -0x43c4
/* AAFFC8 80038E28 2484BC30 */  addiu $a0, %lo(D_8015BC30) # addiu $a0, $a0, -0x43d0
/* AAFFCC 80038E2C 468084A0 */  cvt.s.w $f18, $f16
/* AAFFD0 80038E30 E7A20010 */  swc1  $f2, 0x10($sp)
/* AAFFD4 80038E34 C7B00054 */  lwc1  $f16, 0x54($sp)
/* AAFFD8 80038E38 460E9302 */  mul.s $f12, $f18, $f14
/* AAFFDC 80038E3C E7AC0014 */  swc1  $f12, 0x14($sp)
/* AAFFE0 80038E40 8608000E */  lh    $t0, 0xe($s0)
/* AAFFE4 80038E44 AFA90024 */  sw    $t1, 0x24($sp)
/* AAFFE8 80038E48 E7A8001C */  swc1  $f8, 0x1c($sp)
/* AAFFEC 80038E4C 44882000 */  mtc1  $t0, $f4
/* AAFFF0 80038E50 E7AA0020 */  swc1  $f10, 0x20($sp)
/* AAFFF4 80038E54 E7B00028 */  swc1  $f16, 0x28($sp)
/* AAFFF8 80038E58 468021A0 */  cvt.s.w $f6, $f4
/* AAFFFC 80038E5C 0C0333E6 */  jal   func_800CCF98
/* AB0000 80038E60 E7A60018 */   swc1  $f6, 0x18($sp)
/* AB0004 80038E64 8FBF003C */  lw    $ra, 0x3c($sp)
/* AB0008 80038E68 8FB00038 */  lw    $s0, 0x38($sp)
/* AB000C 80038E6C 27BD0040 */  addiu $sp, $sp, 0x40
/* AB0010 80038E70 03E00008 */  jr    $ra
/* AB0014 80038E74 00000000 */   nop   

