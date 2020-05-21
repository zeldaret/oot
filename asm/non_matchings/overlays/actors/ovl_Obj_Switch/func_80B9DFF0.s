glabel func_80B9DFF0
/* 00DE0 80B9DFF0 3C0E80BA */  lui     $t6, %hi(func_80B9E004)    ## $t6 = 80BA0000
/* 00DE4 80B9DFF4 25CEE004 */  addiu   $t6, $t6, %lo(func_80B9E004) ## $t6 = 80B9E004
/* 00DE8 80B9DFF8 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 00DEC 80B9DFFC 03E00008 */  jr      $ra                        
/* 00DF0 80B9E000 A4800170 */  sh      $zero, 0x0170($a0)         ## 00000170
