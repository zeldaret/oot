glabel func_809BD3E0
/* 00780 809BD3E0 3C0F809C */  lui     $t7, %hi(func_809BDB90)    ## $t7 = 809C0000
/* 00784 809BD3E4 240E0028 */  addiu   $t6, $zero, 0x0028         ## $t6 = 00000028
/* 00788 809BD3E8 25EFDB90 */  addiu   $t7, $t7, %lo(func_809BDB90) ## $t7 = 809BDB90
/* 0078C 809BD3EC A48E0196 */  sh      $t6, 0x0196($a0)           ## 00000196
/* 00790 809BD3F0 03E00008 */  jr      $ra                        
/* 00794 809BD3F4 AC8F0190 */  sw      $t7, 0x0190($a0)           ## 00000190
