glabel func_800B3BD4
/* B2AD74 800B3BD4 27BDFF40 */  addiu $sp, $sp, -0xc0
/* B2AD78 800B3BD8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B2AD7C 800B3BDC AFA400C0 */  sw    $a0, 0xc0($sp)
/* B2AD80 800B3BE0 AFA500C4 */  sw    $a1, 0xc4($sp)
/* B2AD84 800B3BE4 F7B60018 */  sdc1  $f22, 0x18($sp)
/* B2AD88 800B3BE8 F7B40010 */  sdc1  $f20, 0x10($sp)
/* B2AD8C 800B3BEC AFA600C8 */  sw    $a2, 0xc8($sp)
/* B2AD90 800B3BF0 AFA700CC */  sw    $a3, 0xcc($sp)
/* B2AD94 800B3BF4 0C01DE1C */  jal   Math_Sins
/* B2AD98 800B3BF8 87A400C6 */   lh    $a0, 0xc6($sp)
/* B2AD9C 800B3BFC 46000586 */  mov.s $f22, $f0
/* B2ADA0 800B3C00 0C01DE0D */  jal   Math_Coss
/* B2ADA4 800B3C04 87A400C6 */   lh    $a0, 0xc6($sp)
/* B2ADA8 800B3C08 46000506 */  mov.s $f20, $f0
/* B2ADAC 800B3C0C 0C01DE1C */  jal   Math_Sins
/* B2ADB0 800B3C10 87A400CA */   lh    $a0, 0xca($sp)
/* B2ADB4 800B3C14 E7A000B4 */  swc1  $f0, 0xb4($sp)
/* B2ADB8 800B3C18 0C01DE0D */  jal   Math_Coss
/* B2ADBC 800B3C1C 87A400CA */   lh    $a0, 0xca($sp)
/* B2ADC0 800B3C20 87A400CE */  lh    $a0, 0xce($sp)
/* B2ADC4 800B3C24 E7A000B0 */  swc1  $f0, 0xb0($sp)
/* B2ADC8 800B3C28 00042023 */  negu  $a0, $a0
/* B2ADCC 800B3C2C 00042400 */  sll   $a0, $a0, 0x10
/* B2ADD0 800B3C30 00042403 */  sra   $a0, $a0, 0x10
/* B2ADD4 800B3C34 0C01DE1C */  jal   Math_Sins
/* B2ADD8 800B3C38 AFA4005C */   sw    $a0, 0x5c($sp)
/* B2ADDC 800B3C3C 8FA4005C */  lw    $a0, 0x5c($sp)
/* B2ADE0 800B3C40 0C01DE0D */  jal   Math_Coss
/* B2ADE4 800B3C44 E7A000AC */   swc1  $f0, 0xac($sp)
/* B2ADE8 800B3C48 4600B287 */  neg.s $f10, $f22
/* B2ADEC 800B3C4C C7A400B4 */  lwc1  $f4, 0xb4($sp)
/* B2ADF0 800B3C50 E7AA005C */  swc1  $f10, 0x5c($sp)
/* B2ADF4 800B3C54 C7A6005C */  lwc1  $f6, 0x5c($sp)
/* B2ADF8 800B3C58 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B2ADFC 800B3C5C 44815000 */  mtc1  $at, $f10
/* B2AE00 800B3C60 46043382 */  mul.s $f14, $f6, $f4
/* B2AE04 800B3C64 27B9009C */  addiu $t9, $sp, 0x9c
/* B2AE08 800B3C68 46005481 */  sub.s $f18, $f10, $f0
/* B2AE0C 800B3C6C 4604A082 */  mul.s $f2, $f20, $f4
/* B2AE10 800B3C70 C7AA00B0 */  lwc1  $f10, 0xb0($sp)
/* B2AE14 800B3C74 8FA200C0 */  lw    $v0, 0xc0($sp)
/* B2AE18 800B3C78 46021202 */  mul.s $f8, $f2, $f2
/* B2AE1C 800B3C7C 00000000 */  nop   
/* B2AE20 800B3C80 46161102 */  mul.s $f4, $f2, $f22
/* B2AE24 800B3C84 E7A80050 */  swc1  $f8, 0x50($sp)
/* B2AE28 800B3C88 46049202 */  mul.s $f8, $f18, $f4
/* B2AE2C 800B3C8C C7A400AC */  lwc1  $f4, 0xac($sp)
/* B2AE30 800B3C90 460AA302 */  mul.s $f12, $f20, $f10
/* B2AE34 800B3C94 E7A40028 */  swc1  $f4, 0x28($sp)
/* B2AE38 800B3C98 E7A80048 */  swc1  $f8, 0x48($sp)
/* B2AE3C 800B3C9C 46046202 */  mul.s $f8, $f12, $f4
/* B2AE40 800B3CA0 E7A80040 */  swc1  $f8, 0x40($sp)
/* B2AE44 800B3CA4 460A3402 */  mul.s $f16, $f6, $f10
/* B2AE48 800B3CA8 00000000 */  nop   
/* B2AE4C 800B3CAC 46026202 */  mul.s $f8, $f12, $f2
/* B2AE50 800B3CB0 00000000 */  nop   
/* B2AE54 800B3CB4 46089182 */  mul.s $f6, $f18, $f8
/* B2AE58 800B3CB8 44814000 */  mtc1  $at, $f8
/* B2AE5C 800B3CBC 4604B282 */  mul.s $f10, $f22, $f4
/* B2AE60 800B3CC0 E7A6003C */  swc1  $f6, 0x3c($sp)
/* B2AE64 800B3CC4 C7A60050 */  lwc1  $f6, 0x50($sp)
/* B2AE68 800B3CC8 E7AA0038 */  swc1  $f10, 0x38($sp)
/* B2AE6C 800B3CCC 46064281 */  sub.s $f10, $f8, $f6
/* B2AE70 800B3CD0 46005202 */  mul.s $f8, $f10, $f0
/* B2AE74 800B3CD4 46064280 */  add.s $f10, $f8, $f6
/* B2AE78 800B3CD8 C7A60048 */  lwc1  $f6, 0x48($sp)
/* B2AE7C 800B3CDC 460A7202 */  mul.s $f8, $f14, $f10
/* B2AE80 800B3CE0 C7AA0040 */  lwc1  $f10, 0x40($sp)
/* B2AE84 800B3CE4 E7A6002C */  swc1  $f6, 0x2c($sp)
/* B2AE88 800B3CE8 E7AA0030 */  swc1  $f10, 0x30($sp)
/* B2AE8C 800B3CEC 460A3101 */  sub.s $f4, $f6, $f10
/* B2AE90 800B3CF0 C7A60038 */  lwc1  $f6, 0x38($sp)
/* B2AE94 800B3CF4 4604A102 */  mul.s $f4, $f20, $f4
/* B2AE98 800B3CF8 46044200 */  add.s $f8, $f8, $f4
/* B2AE9C 800B3CFC C7A4003C */  lwc1  $f4, 0x3c($sp)
/* B2AEA0 800B3D00 46062280 */  add.s $f10, $f4, $f6
/* B2AEA4 800B3D04 460A8282 */  mul.s $f10, $f16, $f10
/* B2AEA8 800B3D08 460A4200 */  add.s $f8, $f8, $f10
/* B2AEAC 800B3D0C 4616B282 */  mul.s $f10, $f22, $f22
/* B2AEB0 800B3D10 E7A8009C */  swc1  $f8, 0x9c($sp)
/* B2AEB4 800B3D14 460CB202 */  mul.s $f8, $f22, $f12
/* B2AEB8 800B3D18 E7AA0050 */  swc1  $f10, 0x50($sp)
/* B2AEBC 800B3D1C 46089282 */  mul.s $f10, $f18, $f8
/* B2AEC0 800B3D20 C7A80028 */  lwc1  $f8, 0x28($sp)
/* B2AEC4 800B3D24 E7AA004C */  swc1  $f10, 0x4c($sp)
/* B2AEC8 800B3D28 46081282 */  mul.s $f10, $f2, $f8
/* B2AECC 800B3D2C C7A8002C */  lwc1  $f8, 0x2c($sp)
/* B2AED0 800B3D30 E7AA0054 */  swc1  $f10, 0x54($sp)
/* B2AED4 800B3D34 C7AA0030 */  lwc1  $f10, 0x30($sp)
/* B2AED8 800B3D38 E7A40030 */  swc1  $f4, 0x30($sp)
/* B2AEDC 800B3D3C C7A40050 */  lwc1  $f4, 0x50($sp)
/* B2AEE0 800B3D40 460A4200 */  add.s $f8, $f8, $f10
/* B2AEE4 800B3D44 46087282 */  mul.s $f10, $f14, $f8
/* B2AEE8 800B3D48 44814000 */  mtc1  $at, $f8
/* B2AEEC 800B3D4C 00000000 */  nop   
/* B2AEF0 800B3D50 46044201 */  sub.s $f8, $f8, $f4
/* B2AEF4 800B3D54 46004102 */  mul.s $f4, $f8, $f0
/* B2AEF8 800B3D58 C7A80050 */  lwc1  $f8, 0x50($sp)
/* B2AEFC 800B3D5C 46082100 */  add.s $f4, $f4, $f8
/* B2AF00 800B3D60 4604A202 */  mul.s $f8, $f20, $f4
/* B2AF04 800B3D64 46085100 */  add.s $f4, $f10, $f8
/* B2AF08 800B3D68 C7A80054 */  lwc1  $f8, 0x54($sp)
/* B2AF0C 800B3D6C C7AA004C */  lwc1  $f10, 0x4c($sp)
/* B2AF10 800B3D70 46085281 */  sub.s $f10, $f10, $f8
/* B2AF14 800B3D74 460A8202 */  mul.s $f8, $f16, $f10
/* B2AF18 800B3D78 46082280 */  add.s $f10, $f4, $f8
/* B2AF1C 800B3D7C 460C6102 */  mul.s $f4, $f12, $f12
/* B2AF20 800B3D80 C7A80030 */  lwc1  $f8, 0x30($sp)
/* B2AF24 800B3D84 E7AA00A0 */  swc1  $f10, 0xa0($sp)
/* B2AF28 800B3D88 46064281 */  sub.s $f10, $f8, $f6
/* B2AF2C 800B3D8C C7A60054 */  lwc1  $f6, 0x54($sp)
/* B2AF30 800B3D90 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* B2AF34 800B3D94 E7A40050 */  swc1  $f4, 0x50($sp)
/* B2AF38 800B3D98 460A7102 */  mul.s $f4, $f14, $f10
/* B2AF3C 800B3D9C 46064280 */  add.s $f10, $f8, $f6
/* B2AF40 800B3DA0 460AA202 */  mul.s $f8, $f20, $f10
/* B2AF44 800B3DA4 44815000 */  mtc1  $at, $f10
/* B2AF48 800B3DA8 46082180 */  add.s $f6, $f4, $f8
/* B2AF4C 800B3DAC C7A40050 */  lwc1  $f4, 0x50($sp)
/* B2AF50 800B3DB0 46045201 */  sub.s $f8, $f10, $f4
/* B2AF54 800B3DB4 C7A40050 */  lwc1  $f4, 0x50($sp)
/* B2AF58 800B3DB8 46004282 */  mul.s $f10, $f8, $f0
/* B2AF5C 800B3DBC 46045200 */  add.s $f8, $f10, $f4
/* B2AF60 800B3DC0 46088282 */  mul.s $f10, $f16, $f8
/* B2AF64 800B3DC4 460A3100 */  add.s $f4, $f6, $f10
/* B2AF68 800B3DC8 E7A400A4 */  swc1  $f4, 0xa4($sp)
/* B2AF6C 800B3DCC 8F290000 */  lw    $t1, ($t9)
/* B2AF70 800B3DD0 AC490000 */  sw    $t1, ($v0)
/* B2AF74 800B3DD4 8F280004 */  lw    $t0, 4($t9)
/* B2AF78 800B3DD8 AC480004 */  sw    $t0, 4($v0)
/* B2AF7C 800B3DDC 8F290008 */  lw    $t1, 8($t9)
/* B2AF80 800B3DE0 AC490008 */  sw    $t1, 8($v0)
/* B2AF84 800B3DE4 8FBF0024 */  lw    $ra, 0x24($sp)
/* B2AF88 800B3DE8 D7B60018 */  ldc1  $f22, 0x18($sp)
/* B2AF8C 800B3DEC D7B40010 */  ldc1  $f20, 0x10($sp)
/* B2AF90 800B3DF0 03E00008 */  jr    $ra
/* B2AF94 800B3DF4 27BD00C0 */   addiu $sp, $sp, 0xc0

