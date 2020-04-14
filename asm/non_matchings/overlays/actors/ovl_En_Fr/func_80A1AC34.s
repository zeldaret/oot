glabel func_80A1AC34
/* 00294 80A1AC34 3C0E80A2 */  lui     $t6, %hi(func_80A1CD24)    ## $t6 = 80A20000
/* 00298 80A1AC38 25CECD24 */  addiu   $t6, $t6, %lo(func_80A1CD24) ## $t6 = 80A1CD24
/* 0029C 80A1AC3C 03E00008 */  jr      $ra                        
/* 002A0 80A1AC40 AC8E0134 */  sw      $t6, 0x0134($a0)           ## 00000134
