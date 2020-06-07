glabel func_80B9E56C
/* 0135C 80B9E56C 3C0E80BA */  lui     $t6, %hi(func_80B9E584)    ## $t6 = 80BA0000
/* 01360 80B9E570 25CEE584 */  addiu   $t6, $t6, %lo(func_80B9E584) ## $t6 = 80B9E584
/* 01364 80B9E574 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 01368 80B9E578 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 0136C 80B9E57C 03E00008 */  jr      $ra                        
/* 01370 80B9E580 A48F016C */  sh      $t7, 0x016C($a0)           ## 0000016C
