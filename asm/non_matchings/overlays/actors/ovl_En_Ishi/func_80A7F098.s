glabel func_80A7F098
/* 00C38 80A7F098 3C0E80A8 */  lui     $t6, %hi(func_80A7F0A8)    ## $t6 = 80A80000
/* 00C3C 80A7F09C 25CEF0A8 */  addiu   $t6, $t6, %lo(func_80A7F0A8) ## $t6 = 80A7F0A8
/* 00C40 80A7F0A0 03E00008 */  jr      $ra                        
/* 00C44 80A7F0A4 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
