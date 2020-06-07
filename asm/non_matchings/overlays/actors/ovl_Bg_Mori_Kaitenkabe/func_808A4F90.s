glabel func_808A4F90
/* 001D0 808A4F90 3C0E808A */  lui     $t6, %hi(func_808A4FA4)    ## $t6 = 808A0000
/* 001D4 808A4F94 25CE4FA4 */  addiu   $t6, $t6, %lo(func_808A4FA4) ## $t6 = 808A4FA4
/* 001D8 808A4F98 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 001DC 808A4F9C 03E00008 */  jr      $ra                        
/* 001E0 808A4FA0 AC800168 */  sw      $zero, 0x0168($a0)         ## 00000168
