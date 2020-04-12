glabel func_80B9DBD8
/* 009C8 80B9DBD8 3C0E80BA */  lui     $t6, %hi(func_80B9DBF0)    ## $t6 = 80BA0000
/* 009CC 80B9DBDC 25CEDBF0 */  addiu   $t6, $t6, %lo(func_80B9DBF0) ## $t6 = 80B9DBF0
/* 009D0 80B9DBE0 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 009D4 80B9DBE4 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 009D8 80B9DBE8 03E00008 */  jr      $ra                        
/* 009DC 80B9DBEC A48F016C */  sh      $t7, 0x016C($a0)           ## 0000016C
