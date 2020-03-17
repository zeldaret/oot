glabel func_80B9E1D8
/* 00FC8 80B9E1D8 3C0E80BA */  lui     $t6, %hi(func_80B9E1F0)    ## $t6 = 80BA0000
/* 00FCC 80B9E1DC 25CEE1F0 */  addiu   $t6, $t6, %lo(func_80B9E1F0) ## $t6 = 80B9E1F0
/* 00FD0 80B9E1E0 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 00FD4 80B9E1E4 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 00FD8 80B9E1E8 03E00008 */  jr      $ra                        
/* 00FDC 80B9E1EC A48F016C */  sh      $t7, 0x016C($a0)           ## 0000016C


