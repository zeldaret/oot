glabel func_80BA2600
/* 00810 80BA2600 3C0E80BA */  lui     $t6, %hi(func_80BA2610)    ## $t6 = 80BA0000
/* 00814 80BA2604 25CE2610 */  addiu   $t6, $t6, %lo(func_80BA2610) ## $t6 = 80BA2610
/* 00818 80BA2608 03E00008 */  jr      $ra                        
/* 0081C 80BA260C AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
