glabel func_809E06D4
/* 00494 809E06D4 3C0E809E */  lui     $t6, %hi(func_809E0F54)    ## $t6 = 809E0000
/* 00498 809E06D8 25CE0F54 */  addiu   $t6, $t6, %lo(func_809E0F54) ## $t6 = 809E0F54
/* 0049C 809E06DC A0800114 */  sb      $zero, 0x0114($a0)         ## 00000114
/* 004A0 809E06E0 03E00008 */  jr      $ra                        
/* 004A4 809E06E4 AC8E01C0 */  sw      $t6, 0x01C0($a0)           ## 000001C0


