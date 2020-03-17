glabel func_80BA24C8
/* 006D8 80BA24C8 3C0E80BA */  lui     $t6, %hi(func_80BA24DC)    ## $t6 = 80BA0000
/* 006DC 80BA24CC 25CE24DC */  addiu   $t6, $t6, %lo(func_80BA24DC) ## $t6 = 80BA24DC
/* 006E0 80BA24D0 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 006E4 80BA24D4 03E00008 */  jr      $ra                        
/* 006E8 80BA24D8 AC800134 */  sw      $zero, 0x0134($a0)         ## 00000134


