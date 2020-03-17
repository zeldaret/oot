glabel func_808B317C
/* 001EC 808B317C 3C0E808B */  lui     $t6, %hi(func_808B318C)    ## $t6 = 808B0000
/* 001F0 808B3180 25CE318C */  addiu   $t6, $t6, %lo(func_808B318C) ## $t6 = 808B318C
/* 001F4 808B3184 03E00008 */  jr      $ra                        
/* 001F8 808B3188 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164


