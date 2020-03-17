glabel func_808B29E0
/* 001F0 808B29E0 3C0E808B */  lui     $t6, %hi(func_808B29F0)    ## $t6 = 808B0000
/* 001F4 808B29E4 25CE29F0 */  addiu   $t6, $t6, %lo(func_808B29F0) ## $t6 = 808B29F0
/* 001F8 808B29E8 03E00008 */  jr      $ra                        
/* 001FC 808B29EC AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C


