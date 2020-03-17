glabel func_808B8DC0
/* 004B0 808B8DC0 3C0E808C */  lui     $t6, %hi(func_808B8DD0)    ## $t6 = 808C0000
/* 004B4 808B8DC4 25CE8DD0 */  addiu   $t6, $t6, %lo(func_808B8DD0) ## $t6 = 808B8DD0
/* 004B8 808B8DC8 03E00008 */  jr      $ra                        
/* 004BC 808B8DCC AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164


