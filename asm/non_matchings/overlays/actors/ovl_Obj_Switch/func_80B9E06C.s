glabel func_80B9E06C
/* 00E5C 80B9E06C 3C0E80BA */  lui     $t6, %hi(func_80B9E084)    ## $t6 = 80BA0000
/* 00E60 80B9E070 25CEE084 */  addiu   $t6, $t6, %lo(func_80B9E084) ## $t6 = 80B9E084
/* 00E64 80B9E074 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 00E68 80B9E078 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 00E6C 80B9E07C 03E00008 */  jr      $ra                        
/* 00E70 80B9E080 A48F016C */  sh      $t7, 0x016C($a0)           ## 0000016C


