glabel func_808A2A04
/* 004A4 808A2A04 3C0E808A */  lui     $t6, %hi(func_808A2A14)    ## $t6 = 808A0000
/* 004A8 808A2A08 25CE2A14 */  addiu   $t6, $t6, %lo(func_808A2A14) ## $t6 = 808A2A14
/* 004AC 808A2A0C 03E00008 */  jr      $ra                        
/* 004B0 808A2A10 AC8E01C4 */  sw      $t6, 0x01C4($a0)           ## 000001C4


