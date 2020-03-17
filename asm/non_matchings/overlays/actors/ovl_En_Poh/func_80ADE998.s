glabel func_80ADE998
/* 00C48 80ADE998 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00C4C 80ADE99C 44813000 */  mtc1    $at, $f6                   ## $f6 = 15.00
/* 00C50 80ADE9A0 C4840028 */  lwc1    $f4, 0x0028($a0)           ## 00000028
/* 00C54 80ADE9A4 3C0E80AE */  lui     $t6, %hi(func_80AE00DC)    ## $t6 = 80AE0000
/* 00C58 80ADE9A8 25CE00DC */  addiu   $t6, $t6, %lo(func_80AE00DC) ## $t6 = 80AE00DC
/* 00C5C 80ADE9AC 46062201 */  sub.s   $f8, $f4, $f6              
/* 00C60 80ADE9B0 AC8E0190 */  sw      $t6, 0x0190($a0)           ## 00000190
/* 00C64 80ADE9B4 03E00008 */  jr      $ra                        
/* 00C68 80ADE9B8 E488000C */  swc1    $f8, 0x000C($a0)           ## 0000000C


