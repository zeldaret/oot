glabel func_8007C1AC
/* AF334C 8007C1AC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AF3350 8007C1B0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AF3354 8007C1B4 AFB00018 */  sw    $s0, 0x18($sp)
/* AF3358 8007C1B8 AFA40040 */  sw    $a0, 0x40($sp)
/* AF335C 8007C1BC 00A08025 */  move  $s0, $a1
/* AF3360 8007C1C0 0C01DE0D */  jal   Math_Coss
/* AF3364 8007C1C4 84A40004 */   lh    $a0, 4($a1)
/* AF3368 8007C1C8 E7A0002C */  swc1  $f0, 0x2c($sp)
/* AF336C 8007C1CC 0C01DE0D */  jal   Math_Coss
/* AF3370 8007C1D0 86040006 */   lh    $a0, 6($s0)
/* AF3374 8007C1D4 E7A00024 */  swc1  $f0, 0x24($sp)
/* AF3378 8007C1D8 0C01DE1C */  jal   Math_Sins
/* AF337C 8007C1DC 86040004 */   lh    $a0, 4($s0)
/* AF3380 8007C1E0 86040006 */  lh    $a0, 6($s0)
/* AF3384 8007C1E4 0C01DE1C */  jal   Math_Sins
/* AF3388 8007C1E8 E7A00030 */   swc1  $f0, 0x30($sp)
/* AF338C 8007C1EC C7A20030 */  lwc1  $f2, 0x30($sp)
/* AF3390 8007C1F0 C6040000 */  lwc1  $f4, ($s0)
/* AF3394 8007C1F4 C7B0002C */  lwc1  $f16, 0x2c($sp)
/* AF3398 8007C1F8 27AE0034 */  addiu $t6, $sp, 0x34
/* AF339C 8007C1FC 46022182 */  mul.s $f6, $f4, $f2
/* AF33A0 8007C200 8FA20040 */  lw    $v0, 0x40($sp)
/* AF33A4 8007C204 46003202 */  mul.s $f8, $f6, $f0
/* AF33A8 8007C208 E7A80034 */  swc1  $f8, 0x34($sp)
/* AF33AC 8007C20C C60A0000 */  lwc1  $f10, ($s0)
/* AF33B0 8007C210 C7A80024 */  lwc1  $f8, 0x24($sp)
/* AF33B4 8007C214 46105482 */  mul.s $f18, $f10, $f16
/* AF33B8 8007C218 E7B20038 */  swc1  $f18, 0x38($sp)
/* AF33BC 8007C21C C6040000 */  lwc1  $f4, ($s0)
/* AF33C0 8007C220 46022182 */  mul.s $f6, $f4, $f2
/* AF33C4 8007C224 00000000 */  nop   
/* AF33C8 8007C228 46083282 */  mul.s $f10, $f6, $f8
/* AF33CC 8007C22C E7AA003C */  swc1  $f10, 0x3c($sp)
/* AF33D0 8007C230 8DD80000 */  lw    $t8, ($t6)
/* AF33D4 8007C234 AC580000 */  sw    $t8, ($v0)
/* AF33D8 8007C238 8DCF0004 */  lw    $t7, 4($t6)
/* AF33DC 8007C23C AC4F0004 */  sw    $t7, 4($v0)
/* AF33E0 8007C240 8DD80008 */  lw    $t8, 8($t6)
/* AF33E4 8007C244 AC580008 */  sw    $t8, 8($v0)
/* AF33E8 8007C248 8FBF001C */  lw    $ra, 0x1c($sp)
/* AF33EC 8007C24C 8FB00018 */  lw    $s0, 0x18($sp)
/* AF33F0 8007C250 27BD0040 */  addiu $sp, $sp, 0x40
/* AF33F4 8007C254 03E00008 */  jr    $ra
/* AF33F8 8007C258 00000000 */   nop   

