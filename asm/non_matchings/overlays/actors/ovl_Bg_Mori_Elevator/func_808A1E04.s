glabel func_808A1E04
/* 00604 808A1E04 3C0E808A */  lui     $t6, %hi(func_808A1E14)    ## $t6 = 808A0000
/* 00608 808A1E08 25CE1E14 */  addiu   $t6, $t6, %lo(func_808A1E14) ## $t6 = 808A1E14
/* 0060C 808A1E0C 03E00008 */  jr      $ra                        
/* 00610 808A1E10 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
