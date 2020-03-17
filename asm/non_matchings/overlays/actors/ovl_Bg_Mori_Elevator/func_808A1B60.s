glabel func_808A1B60
/* 00360 808A1B60 3C0E808A */  lui     $t6, %hi(func_808A1B70)    ## $t6 = 808A0000
/* 00364 808A1B64 25CE1B70 */  addiu   $t6, $t6, %lo(func_808A1B70) ## $t6 = 808A1B70
/* 00368 808A1B68 03E00008 */  jr      $ra                        
/* 0036C 808A1B6C AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164


