glabel func_80AD443C
/* 0093C 80AD443C 3C0E80AD */  lui     $t6, %hi(func_80AD5AD8)    ## $t6 = 80AD0000
/* 00940 80AD4440 25CE5AD8 */  addiu   $t6, $t6, %lo(func_80AD5AD8) ## $t6 = 80AD5AD8
/* 00944 80AD4444 03E00008 */  jr      $ra                        
/* 00948 80AD4448 AC8E0190 */  sw      $t6, 0x0190($a0)           ## 00000190
