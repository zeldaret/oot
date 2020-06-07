glabel func_80028BB0
/* A9FD50 80028BB0 27BDFFA8 */  addiu $sp, $sp, -0x58
/* A9FD54 80028BB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* A9FD58 80028BB8 AFA40058 */  sw    $a0, 0x58($sp)
/* A9FD5C 80028BBC AFA60060 */  sw    $a2, 0x60($sp)
/* A9FD60 80028BC0 AFA70064 */  sw    $a3, 0x64($sp)
/* A9FD64 80028BC4 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FD68 80028BC8 27A4001C */   addiu $a0, $sp, 0x1c
/* A9FD6C 80028BCC 27A40028 */  addiu $a0, $sp, 0x28
/* A9FD70 80028BD0 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FD74 80028BD4 8FA50060 */   lw    $a1, 0x60($sp)
/* A9FD78 80028BD8 0C03F66B */  jal   Math_Rand_ZeroOne
/* A9FD7C 80028BDC 00000000 */   nop   
/* A9FD80 80028BE0 C7A2002C */  lwc1  $f2, 0x2c($sp)
/* A9FD84 80028BE4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* A9FD88 80028BE8 44814000 */  mtc1  $at, $f8
/* A9FD8C 80028BEC 46020102 */  mul.s $f4, $f0, $f2
/* A9FD90 80028BF0 27A40034 */  addiu $a0, $sp, 0x34
/* A9FD94 80028BF4 8FA50064 */  lw    $a1, 0x64($sp)
/* A9FD98 80028BF8 46022180 */  add.s $f6, $f4, $f2
/* A9FD9C 80028BFC 46083082 */  mul.s $f2, $f6, $f8
/* A9FDA0 80028C00 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FDA4 80028C04 E7A2002C */   swc1  $f2, 0x2c($sp)
/* A9FDA8 80028C08 0C03F66B */  jal   Math_Rand_ZeroOne
/* A9FDAC 80028C0C 00000000 */   nop   
/* A9FDB0 80028C10 C7A20038 */  lwc1  $f2, 0x38($sp)
/* A9FDB4 80028C14 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* A9FDB8 80028C18 44819000 */  mtc1  $at, $f18
/* A9FDBC 80028C1C 46020282 */  mul.s $f10, $f0, $f2
/* A9FDC0 80028C20 8FAE0074 */  lw    $t6, 0x74($sp)
/* A9FDC4 80028C24 240F1518 */  li    $t7, 5400
/* A9FDC8 80028C28 A3A00054 */  sb    $zero, 0x54($sp)
/* A9FDCC 80028C2C A7AF0050 */  sh    $t7, 0x50($sp)
/* A9FDD0 80028C30 AFAE004C */  sw    $t6, 0x4c($sp)
/* A9FDD4 80028C34 46025400 */  add.s $f16, $f10, $f2
/* A9FDD8 80028C38 46128082 */  mul.s $f2, $f16, $f18
/* A9FDDC 80028C3C 0C03F66B */  jal   Math_Rand_ZeroOne
/* A9FDE0 80028C40 E7A20038 */   swc1  $f2, 0x38($sp)
/* A9FDE4 80028C44 3C014680 */  li    $at, 0x46800000 # 0.000000
/* A9FDE8 80028C48 44812000 */  mtc1  $at, $f4
/* A9FDEC 80028C4C 87A80072 */  lh    $t0, 0x72($sp)
/* A9FDF0 80028C50 8FAA0068 */  lw    $t2, 0x68($sp)
/* A9FDF4 80028C54 46040182 */  mul.s $f6, $f0, $f4
/* A9FDF8 80028C58 A7A8004A */  sh    $t0, 0x4a($sp)
/* A9FDFC 80028C5C 27A90040 */  addiu $t1, $sp, 0x40
/* A9FE00 80028C60 27AD0044 */  addiu $t5, $sp, 0x44
/* A9FE04 80028C64 3C01437F */  li    $at, 0x437F0000 # 0.000000
/* A9FE08 80028C68 44815000 */  mtc1  $at, $f10
/* A9FE0C 80028C6C 24050001 */  li    $a1, 1
/* A9FE10 80028C70 4600320D */  trunc.w.s $f8, $f6
/* A9FE14 80028C74 24060080 */  li    $a2, 128
/* A9FE18 80028C78 27A7001C */  addiu $a3, $sp, 0x1c
/* A9FE1C 80028C7C 44194000 */  mfc1  $t9, $f8
/* A9FE20 80028C80 00000000 */  nop   
/* A9FE24 80028C84 A7B90052 */  sh    $t9, 0x52($sp)
/* A9FE28 80028C88 894C0000 */  lwl   $t4, ($t2)
/* A9FE2C 80028C8C 994C0003 */  lwr   $t4, 3($t2)
/* A9FE30 80028C90 A92C0000 */  swl   $t4, ($t1)
/* A9FE34 80028C94 B92C0003 */  swr   $t4, 3($t1)
/* A9FE38 80028C98 8FAE006C */  lw    $t6, 0x6c($sp)
/* A9FE3C 80028C9C 89D80000 */  lwl   $t8, ($t6)
/* A9FE40 80028CA0 99D80003 */  lwr   $t8, 3($t6)
/* A9FE44 80028CA4 A9B80000 */  swl   $t8, ($t5)
/* A9FE48 80028CA8 B9B80003 */  swr   $t8, 3($t5)
/* A9FE4C 80028CAC 8FB9004C */  lw    $t9, 0x4c($sp)
/* A9FE50 80028CB0 8FA40058 */  lw    $a0, 0x58($sp)
/* A9FE54 80028CB4 44998000 */  mtc1  $t9, $f16
/* A9FE58 80028CB8 00000000 */  nop   
/* A9FE5C 80028CBC 468084A0 */  cvt.s.w $f18, $f16
/* A9FE60 80028CC0 46125083 */  div.s $f2, $f10, $f18
/* A9FE64 80028CC4 46001087 */  neg.s $f2, $f2
/* A9FE68 80028CC8 46021100 */  add.s $f4, $f2, $f2
/* A9FE6C 80028CCC 4600218D */  trunc.w.s $f6, $f4
/* A9FE70 80028CD0 44093000 */  mfc1  $t1, $f6
/* A9FE74 80028CD4 0C009DE6 */  jal   EffectSs_Spawn
/* A9FE78 80028CD8 A7A90048 */   sh    $t1, 0x48($sp)
/* A9FE7C 80028CDC 8FBF0014 */  lw    $ra, 0x14($sp)
/* A9FE80 80028CE0 27BD0058 */  addiu $sp, $sp, 0x58
/* A9FE84 80028CE4 03E00008 */  jr    $ra
/* A9FE88 80028CE8 00000000 */   nop   

