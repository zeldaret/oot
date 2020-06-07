glabel func_80B8F8D4
/* 00E54 80B8F8D4 3C0E80B9 */  lui     $t6, %hi(func_80B8F8E4)    ## $t6 = 80B90000
/* 00E58 80B8F8D8 25CEF8E4 */  addiu   $t6, $t6, %lo(func_80B8F8E4) ## $t6 = 80B8F8E4
/* 00E5C 80B8F8DC 03E00008 */  jr      $ra                        
/* 00E60 80B8F8E0 AC8E01BC */  sw      $t6, 0x01BC($a0)           ## 000001BC
