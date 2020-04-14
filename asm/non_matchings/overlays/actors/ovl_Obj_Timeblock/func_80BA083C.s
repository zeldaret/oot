glabel func_80BA083C
/* 0089C 80BA083C 3C0E80BA */  lui     $t6, %hi(func_80BA084C)    ## $t6 = 80BA0000
/* 008A0 80BA0840 25CE084C */  addiu   $t6, $t6, %lo(func_80BA084C) ## $t6 = 80BA084C
/* 008A4 80BA0844 03E00008 */  jr      $ra                        
/* 008A8 80BA0848 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
