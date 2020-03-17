glabel func_80B91FB0
/* 00450 80B91FB0 3C0E80B9 */  lui     $t6, %hi(func_80B91FC0)    ## $t6 = 80B90000
/* 00454 80B91FB4 25CE1FC0 */  addiu   $t6, $t6, %lo(func_80B91FC0) ## $t6 = 80B91FC0
/* 00458 80B91FB8 03E00008 */  jr      $ra                        
/* 0045C 80B91FBC AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C


