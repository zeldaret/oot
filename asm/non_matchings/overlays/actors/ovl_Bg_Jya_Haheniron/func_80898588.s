glabel func_80898588
/* 004C8 80898588 3C0E808A */  lui     $t6, %hi(func_80898598)    ## $t6 = 808A0000
/* 004CC 8089858C 25CE8598 */  addiu   $t6, $t6, %lo(func_80898598) ## $t6 = 80898598
/* 004D0 80898590 03E00008 */  jr      $ra                        
/* 004D4 80898594 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
