glabel func_80A00534
/* 00594 80A00534 3C0E80A0 */  lui     $t6, %hi(func_80A00E8C)    ## $t6 = 80A00000
/* 00598 80A00538 25CE0E8C */  addiu   $t6, $t6, %lo(func_80A00E8C) ## $t6 = 80A00E8C
/* 0059C 80A0053C 03E00008 */  jr      $ra                        
/* 005A0 80A00540 AC8E0190 */  sw      $t6, 0x0190($a0)           ## 00000190
