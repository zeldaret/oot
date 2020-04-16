glabel func_80BA24E8
/* 006F8 80BA24E8 3C0E80BA */  lui     $t6, %hi(func_80BA24F8)    ## $t6 = 80BA0000
/* 006FC 80BA24EC 25CE24F8 */  addiu   $t6, $t6, %lo(func_80BA24F8) ## $t6 = 80BA24F8
/* 00700 80BA24F0 03E00008 */  jr      $ra                        
/* 00704 80BA24F4 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
