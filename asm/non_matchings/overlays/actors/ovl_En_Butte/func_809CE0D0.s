glabel func_809CE0D0
/* 01060 809CE0D0 3C0F809D */  lui     $t7, %hi(func_809CE0EC)    ## $t7 = 809D0000
/* 01064 809CE0D4 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 01068 809CE0D8 25EFE0EC */  addiu   $t7, $t7, %lo(func_809CE0EC) ## $t7 = 809CE0EC
/* 0106C 809CE0DC A48E0254 */  sh      $t6, 0x0254($a0)           ## 00000254
/* 01070 809CE0E0 AC8F0250 */  sw      $t7, 0x0250($a0)           ## 00000250
/* 01074 809CE0E4 03E00008 */  jr      $ra                        
/* 01078 809CE0E8 AC800134 */  sw      $zero, 0x0134($a0)         ## 00000134
