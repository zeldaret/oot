glabel func_80B8F94C
/* 00ECC 80B8F94C 3C0E80B9 */  lui     $t6, %hi(func_80B8F964)    ## $t6 = 80B90000
/* 00ED0 80B8F950 25CEF964 */  addiu   $t6, $t6, %lo(func_80B8F964) ## $t6 = 80B8F964
/* 00ED4 80B8F954 240F33E9 */  addiu   $t7, $zero, 0x33E9         ## $t7 = 000033E9
/* 00ED8 80B8F958 AC8E01BC */  sw      $t6, 0x01BC($a0)           ## 000001BC
/* 00EDC 80B8F95C 03E00008 */  jr      $ra                        
/* 00EE0 80B8F960 A48F01D0 */  sh      $t7, 0x01D0($a0)           ## 000001D0


