glabel func_80899DBC
/* 0021C 80899DBC 3C0E808A */  lui     $t6, %hi(func_80899DCC)    ## $t6 = 808A0000
/* 00220 80899DC0 25CE9DCC */  addiu   $t6, $t6, %lo(func_80899DCC) ## $t6 = 80899DCC
/* 00224 80899DC4 03E00008 */  jr      $ra                        
/* 00228 80899DC8 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
