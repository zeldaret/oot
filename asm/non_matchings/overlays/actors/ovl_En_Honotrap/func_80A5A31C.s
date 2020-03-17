glabel func_80A5A31C
/* 006EC 80A5A31C 3C0E80A6 */  lui     $t6, %hi(func_80A5A32C)    ## $t6 = 80A60000
/* 006F0 80A5A320 25CEA32C */  addiu   $t6, $t6, %lo(func_80A5A32C) ## $t6 = 80A5A32C
/* 006F4 80A5A324 03E00008 */  jr      $ra                        
/* 006F8 80A5A328 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C


