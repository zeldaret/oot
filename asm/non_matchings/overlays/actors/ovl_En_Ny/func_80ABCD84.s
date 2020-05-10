glabel func_80ABCD84
/* 001D4 80ABCD84 3C0E80AC */  lui     $t6, %hi(func_80ABCE50)    ## $t6 = 80AC0000
/* 001D8 80ABCD88 25CECE50 */  addiu   $t6, $t6, %lo(func_80ABCE50) ## $t6 = 80ABCE50
/* 001DC 80ABCD8C 03E00008 */  jr      $ra                        
/* 001E0 80ABCD90 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
