glabel func_80028CEC
/* A9FE8C 80028CEC 27BDFFA8 */  addiu $sp, $sp, -0x58
/* A9FE90 80028CF0 AFBF0014 */  sw    $ra, 0x14($sp)
/* A9FE94 80028CF4 AFA40058 */  sw    $a0, 0x58($sp)
/* A9FE98 80028CF8 AFA60060 */  sw    $a2, 0x60($sp)
/* A9FE9C 80028CFC AFA70064 */  sw    $a3, 0x64($sp)
/* A9FEA0 80028D00 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FEA4 80028D04 27A4001C */   addiu $a0, $sp, 0x1c
/* A9FEA8 80028D08 27A40028 */  addiu $a0, $sp, 0x28
/* A9FEAC 80028D0C 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FEB0 80028D10 8FA50060 */   lw    $a1, 0x60($sp)
/* A9FEB4 80028D14 27A40034 */  addiu $a0, $sp, 0x34
/* A9FEB8 80028D18 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FEBC 80028D1C 8FA50064 */   lw    $a1, 0x64($sp)
/* A9FEC0 80028D20 8FAE0074 */  lw    $t6, 0x74($sp)
/* A9FEC4 80028D24 240F0001 */  li    $t7, 1
/* A9FEC8 80028D28 24181518 */  li    $t8, 5400
/* A9FECC 80028D2C A3AF0054 */  sb    $t7, 0x54($sp)
/* A9FED0 80028D30 A7B80050 */  sh    $t8, 0x50($sp)
/* A9FED4 80028D34 0C03F66B */  jal   Math_Rand_ZeroOne
/* A9FED8 80028D38 AFAE004C */   sw    $t6, 0x4c($sp)
/* A9FEDC 80028D3C 3C014680 */  li    $at, 0x46800000 # 0.000000
/* A9FEE0 80028D40 44812000 */  mtc1  $at, $f4
/* A9FEE4 80028D44 87A90072 */  lh    $t1, 0x72($sp)
/* A9FEE8 80028D48 27A40040 */  addiu $a0, $sp, 0x40
/* A9FEEC 80028D4C 46040182 */  mul.s $f6, $f0, $f4
/* A9FEF0 80028D50 8FA50068 */  lw    $a1, 0x68($sp)
/* A9FEF4 80028D54 A7A9004A */  sh    $t1, 0x4a($sp)
/* A9FEF8 80028D58 4600320D */  trunc.w.s $f8, $f6
/* A9FEFC 80028D5C 44084000 */  mfc1  $t0, $f8
/* A9FF00 80028D60 0C01E218 */  jal   Color_RGBA8_Copy
/* A9FF04 80028D64 A7A80052 */   sh    $t0, 0x52($sp)
/* A9FF08 80028D68 27A40044 */  addiu $a0, $sp, 0x44
/* A9FF0C 80028D6C 0C01E218 */  jal   Color_RGBA8_Copy
/* A9FF10 80028D70 8FA5006C */   lw    $a1, 0x6c($sp)
/* A9FF14 80028D74 8FAA004C */  lw    $t2, 0x4c($sp)
/* A9FF18 80028D78 3C01437F */  li    $at, 0x437F0000 # 0.000000
/* A9FF1C 80028D7C 44815000 */  mtc1  $at, $f10
/* A9FF20 80028D80 448A8000 */  mtc1  $t2, $f16
/* A9FF24 80028D84 8FA40058 */  lw    $a0, 0x58($sp)
/* A9FF28 80028D88 24050001 */  li    $a1, 1
/* A9FF2C 80028D8C 468084A0 */  cvt.s.w $f18, $f16
/* A9FF30 80028D90 24060080 */  li    $a2, 128
/* A9FF34 80028D94 27A7001C */  addiu $a3, $sp, 0x1c
/* A9FF38 80028D98 46125003 */  div.s $f0, $f10, $f18
/* A9FF3C 80028D9C 46000007 */  neg.s $f0, $f0
/* A9FF40 80028DA0 46000100 */  add.s $f4, $f0, $f0
/* A9FF44 80028DA4 4600218D */  trunc.w.s $f6, $f4
/* A9FF48 80028DA8 440C3000 */  mfc1  $t4, $f6
/* A9FF4C 80028DAC 0C009DE6 */  jal   EffectSs_Spawn
/* A9FF50 80028DB0 A7AC0048 */   sh    $t4, 0x48($sp)
/* A9FF54 80028DB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* A9FF58 80028DB8 27BD0058 */  addiu $sp, $sp, 0x58
/* A9FF5C 80028DBC 03E00008 */  jr    $ra
/* A9FF60 80028DC0 00000000 */   nop   

