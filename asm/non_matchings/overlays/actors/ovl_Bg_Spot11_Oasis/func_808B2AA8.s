glabel func_808B2AA8
/* 002B8 808B2AA8 3C0E808B */  lui     $t6, %hi(func_808B2AB8)    ## $t6 = 808B0000
/* 002BC 808B2AAC 25CE2AB8 */  addiu   $t6, $t6, %lo(func_808B2AB8) ## $t6 = 808B2AB8
/* 002C0 808B2AB0 03E00008 */  jr      $ra                        
/* 002C4 808B2AB4 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
