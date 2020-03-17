glabel func_80B9E3DC
/* 011CC 80B9E3DC 3C0E80BA */  lui     $t6, %hi(func_80B9E3F4)    ## $t6 = 80BA0000
/* 011D0 80B9E3E0 25CEE3F4 */  addiu   $t6, $t6, %lo(func_80B9E3F4) ## $t6 = 80B9E3F4
/* 011D4 80B9E3E4 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 011D8 80B9E3E8 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 011DC 80B9E3EC 03E00008 */  jr      $ra                        
/* 011E0 80B9E3F0 A48F016C */  sh      $t7, 0x016C($a0)           ## 0000016C


