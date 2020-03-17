glabel func_808B5B58
/* 00F28 808B5B58 3C0E808B */  lui     $t6, %hi(func_808B5B6C)    ## $t6 = 808B0000
/* 00F2C 808B5B5C 25CE5B6C */  addiu   $t6, $t6, %lo(func_808B5B6C) ## $t6 = 808B5B6C
/* 00F30 808B5B60 A4800154 */  sh      $zero, 0x0154($a0)         ## 00000154
/* 00F34 808B5B64 03E00008 */  jr      $ra                        
/* 00F38 808B5B68 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C


