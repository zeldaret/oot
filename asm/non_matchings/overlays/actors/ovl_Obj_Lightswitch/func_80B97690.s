glabel func_80B97690
/* 00AF0 80B97690 3C0E80B9 */  lui     $t6, %hi(func_80B976A8)    ## $t6 = 80B90000
/* 00AF4 80B97694 25CE76A8 */  addiu   $t6, $t6, %lo(func_80B976A8) ## $t6 = 80B976A8
/* 00AF8 80B97698 240F3FC0 */  addiu   $t7, $zero, 0x3FC0         ## $t7 = 00003FC0
/* 00AFC 80B9769C AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 00B00 80B976A0 03E00008 */  jr      $ra                        
/* 00B04 80B976A4 A48F01BC */  sh      $t7, 0x01BC($a0)           ## 000001BC


