glabel func_800CC9C8
/* B43B68 800CC9C8 8FA40010 */  lw    $a0, 0x10($sp)
/* B43B6C 800CC9CC AFA60008 */  sw    $a2, 8($sp)
/* B43B70 800CC9D0 AFA7000C */  sw    $a3, 0xc($sp)
/* B43B74 800CC9D4 C4840000 */  lwc1  $f4, ($a0)
/* B43B78 800CC9D8 C4880004 */  lwc1  $f8, 4($a0)
/* B43B7C 800CC9DC C7B20008 */  lwc1  $f18, 8($sp)
/* B43B80 800CC9E0 460C2182 */  mul.s $f6, $f4, $f12
/* B43B84 800CC9E4 C4840008 */  lwc1  $f4, 8($a0)
/* B43B88 800CC9E8 46087282 */  mul.s $f10, $f14, $f8
/* B43B8C 800CC9EC 460A3400 */  add.s $f16, $f6, $f10
/* B43B90 800CC9F0 46049202 */  mul.s $f8, $f18, $f4
/* B43B94 800CC9F4 C7AA000C */  lwc1  $f10, 0xc($sp)
/* B43B98 800CC9F8 46088180 */  add.s $f6, $f16, $f8
/* B43B9C 800CC9FC 03E00008 */  jr    $ra
/* B43BA0 800CCA00 460A3000 */   add.s $f0, $f6, $f10

