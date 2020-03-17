glabel func_808A2A78
/* 00518 808A2A78 3C0E808A */  lui     $t6, %hi(func_808A2A88)    ## $t6 = 808A0000
/* 0051C 808A2A7C 25CE2A88 */  addiu   $t6, $t6, %lo(func_808A2A88) ## $t6 = 808A2A88
/* 00520 808A2A80 03E00008 */  jr      $ra                        
/* 00524 808A2A84 AC8E01C4 */  sw      $t6, 0x01C4($a0)           ## 000001C4


