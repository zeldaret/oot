glabel func_808A5BD4
/* 00664 808A5BD4 3C0E808A */  lui     $t6, %hi(func_808A5BF0)    ## $t6 = 808A0000
/* 00668 808A5BD8 25CE5BF0 */  addiu   $t6, $t6, %lo(func_808A5BF0) ## $t6 = 808A5BF0
/* 0066C 808A5BDC AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 00670 808A5BE0 3C01808A */  lui     $at, %hi(D_808A6080)       ## $at = 808A0000
/* 00674 808A5BE4 C4246080 */  lwc1    $f4, %lo(D_808A6080)($at)  
/* 00678 808A5BE8 03E00008 */  jr      $ra                        
/* 0067C 808A5BEC E4840060 */  swc1    $f4, 0x0060($a0)           ## 00000060


