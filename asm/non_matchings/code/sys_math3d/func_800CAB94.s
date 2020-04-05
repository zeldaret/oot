glabel func_800CAB94
/* B41D34 800CAB94 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B41D38 800CAB98 AFB00018 */  sw    $s0, 0x18($sp)
/* B41D3C 800CAB9C 00808025 */  move  $s0, $a0
/* B41D40 800CABA0 AFBF001C */  sw    $ra, 0x1c($sp)
/* B41D44 800CABA4 AFA5002C */  sw    $a1, 0x2c($sp)
/* B41D48 800CABA8 AFA60030 */  sw    $a2, 0x30($sp)
/* B41D4C 800CABAC 0C032D80 */  jal   Math3D_Vec3f_HadamardProduct
/* B41D50 800CABB0 2484000C */   addiu $a0, $a0, 0xc
/* B41D54 800CABB4 3C018014 */  lui   $at, %hi(D_801464DC)
/* B41D58 800CABB8 C42464DC */  lwc1  $f4, %lo(D_801464DC)($at)
/* B41D5C 800CABBC E7A00024 */  swc1  $f0, 0x24($sp)
/* B41D60 800CABC0 46000005 */  abs.s $f0, $f0
/* B41D64 800CABC4 3C048014 */  lui   $a0, %hi(D_801463D0) # $a0, 0x8014
/* B41D68 800CABC8 4604003C */  c.lt.s $f0, $f4
/* B41D6C 800CABCC 00000000 */  nop   
/* B41D70 800CABD0 45020010 */  bc1fl .L800CAC14
/* B41D74 800CABD4 8FA3002C */   lw    $v1, 0x2c($sp)
/* B41D78 800CABD8 0C00084C */  jal   osSyncPrintf
/* B41D7C 800CABDC 248463D0 */   addiu $a0, %lo(D_801463D0) # addiu $a0, $a0, 0x63d0
/* B41D80 800CABE0 3C048014 */  lui   $a0, %hi(D_801463DC) # $a0, 0x8014
/* B41D84 800CABE4 0C00084C */  jal   osSyncPrintf
/* B41D88 800CABE8 248463DC */   addiu $a0, %lo(D_801463DC) # addiu $a0, $a0, 0x63dc
/* B41D8C 800CABEC 3C048014 */  lui   $a0, %hi(D_80146414) # $a0, 0x8014
/* B41D90 800CABF0 0C00084C */  jal   osSyncPrintf
/* B41D94 800CABF4 24846414 */   addiu $a0, %lo(D_80146414) # addiu $a0, $a0, 0x6414
/* B41D98 800CABF8 3C048014 */  lui   $a0, %hi(D_80146430) # $a0, 0x8014
/* B41D9C 800CABFC 0C00084C */  jal   osSyncPrintf
/* B41DA0 800CAC00 24846430 */   addiu $a0, %lo(D_80146430) # addiu $a0, $a0, 0x6430
/* B41DA4 800CAC04 8FA40030 */  lw    $a0, 0x30($sp)
/* B41DA8 800CAC08 0C01DF90 */  jal   Math_Vec3f_Copy
/* B41DAC 800CAC0C 8FA5002C */   lw    $a1, 0x2c($sp)
/* B41DB0 800CAC10 8FA3002C */  lw    $v1, 0x2c($sp)
.L800CAC14:
/* B41DB4 800CAC14 C6080004 */  lwc1  $f8, 4($s0)
/* B41DB8 800CAC18 C6020000 */  lwc1  $f2, ($s0)
/* B41DBC 800CAC1C C4660004 */  lwc1  $f6, 4($v1)
/* B41DC0 800CAC20 C4640000 */  lwc1  $f4, ($v1)
/* B41DC4 800CAC24 C6100010 */  lwc1  $f16, 0x10($s0)
/* B41DC8 800CAC28 46083281 */  sub.s $f10, $f6, $f8
/* B41DCC 800CAC2C C60C000C */  lwc1  $f12, 0xc($s0)
/* B41DD0 800CAC30 8FA20030 */  lw    $v0, 0x30($sp)
/* B41DD4 800CAC34 46022181 */  sub.s $f6, $f4, $f2
/* B41DD8 800CAC38 46105482 */  mul.s $f18, $f10, $f16
/* B41DDC 800CAC3C C6040008 */  lwc1  $f4, 8($s0)
/* B41DE0 800CAC40 C4700008 */  lwc1  $f16, 8($v1)
/* B41DE4 800CAC44 460C3202 */  mul.s $f8, $f6, $f12
/* B41DE8 800CAC48 46048181 */  sub.s $f6, $f16, $f4
/* B41DEC 800CAC4C C7A40024 */  lwc1  $f4, 0x24($sp)
/* B41DF0 800CAC50 46124280 */  add.s $f10, $f8, $f18
/* B41DF4 800CAC54 C6080014 */  lwc1  $f8, 0x14($s0)
/* B41DF8 800CAC58 46083482 */  mul.s $f18, $f6, $f8
/* B41DFC 800CAC5C 46125400 */  add.s $f16, $f10, $f18
/* B41E00 800CAC60 46048003 */  div.s $f0, $f16, $f4
/* B41E04 800CAC64 46006182 */  mul.s $f6, $f12, $f0
/* B41E08 800CAC68 46023200 */  add.s $f8, $f6, $f2
/* B41E0C 800CAC6C E4480000 */  swc1  $f8, ($v0)
/* B41E10 800CAC70 C60A0010 */  lwc1  $f10, 0x10($s0)
/* B41E14 800CAC74 C6100004 */  lwc1  $f16, 4($s0)
/* B41E18 800CAC78 46005482 */  mul.s $f18, $f10, $f0
/* B41E1C 800CAC7C 46109100 */  add.s $f4, $f18, $f16
/* B41E20 800CAC80 E4440004 */  swc1  $f4, 4($v0)
/* B41E24 800CAC84 C6060014 */  lwc1  $f6, 0x14($s0)
/* B41E28 800CAC88 C60A0008 */  lwc1  $f10, 8($s0)
/* B41E2C 800CAC8C 46003202 */  mul.s $f8, $f6, $f0
/* B41E30 800CAC90 460A4480 */  add.s $f18, $f8, $f10
/* B41E34 800CAC94 E4520008 */  swc1  $f18, 8($v0)
/* B41E38 800CAC98 8FBF001C */  lw    $ra, 0x1c($sp)
/* B41E3C 800CAC9C 8FB00018 */  lw    $s0, 0x18($sp)
/* B41E40 800CACA0 27BD0028 */  addiu $sp, $sp, 0x28
/* B41E44 800CACA4 03E00008 */  jr    $ra
/* B41E48 800CACA8 00000000 */   nop   

