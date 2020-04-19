glabel func_808B44B8
/* 00B58 808B44B8 3C0E808B */  lui     $t6, %hi(func_808B44CC)    ## $t6 = 808B0000
/* 00B5C 808B44BC AFA50004 */  sw      $a1, 0x0004($sp)           
/* 00B60 808B44C0 25CE44CC */  addiu   $t6, $t6, %lo(func_808B44CC) ## $t6 = 808B44CC
/* 00B64 808B44C4 03E00008 */  jr      $ra                        
/* 00B68 808B44C8 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
