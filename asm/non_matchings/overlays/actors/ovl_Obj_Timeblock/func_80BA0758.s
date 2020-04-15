glabel func_80BA0758
/* 007B8 80BA0758 3C0E80BA */  lui     $t6, %hi(func_80BA0768)    ## $t6 = 80BA0000
/* 007BC 80BA075C 25CE0768 */  addiu   $t6, $t6, %lo(func_80BA0768) ## $t6 = 80BA0768
/* 007C0 80BA0760 03E00008 */  jr      $ra                        
/* 007C4 80BA0764 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
