glabel func_80B9DF8C
/* 00D7C 80B9DF8C 3C0E80BA */  lui     $t6, %hi(func_80B9DF9C)    ## $t6 = 80BA0000
/* 00D80 80B9DF90 25CEDF9C */  addiu   $t6, $t6, %lo(func_80B9DF9C) ## $t6 = 80B9DF9C
/* 00D84 80B9DF94 03E00008 */  jr      $ra                        
/* 00D88 80B9DF98 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
