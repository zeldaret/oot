glabel func_808A1C30
/* 00430 808A1C30 3C0E808A */  lui     $t6, %hi(func_808A1C40)    ## $t6 = 808A0000
/* 00434 808A1C34 25CE1C40 */  addiu   $t6, $t6, %lo(func_808A1C40) ## $t6 = 808A1C40
/* 00438 808A1C38 03E00008 */  jr      $ra                        
/* 0043C 808A1C3C AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
