glabel func_808B7AEC
/* 003DC 808B7AEC 3C0E808B */  lui     $t6, %hi(func_808B7AFC)    ## $t6 = 808B0000
/* 003E0 808B7AF0 25CE7AFC */  addiu   $t6, $t6, %lo(func_808B7AFC) ## $t6 = 808B7AFC
/* 003E4 808B7AF4 03E00008 */  jr      $ra                        
/* 003E8 808B7AF8 AC8E0204 */  sw      $t6, 0x0204($a0)           ## 00000204
