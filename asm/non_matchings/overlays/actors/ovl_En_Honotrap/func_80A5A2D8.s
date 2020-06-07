glabel func_80A5A2D8
/* 006A8 80A5A2D8 3C0E80A6 */  lui     $t6, %hi(func_80A5A2EC)    ## $t6 = 80A60000
/* 006AC 80A5A2DC 25CEA2EC */  addiu   $t6, $t6, %lo(func_80A5A2EC) ## $t6 = 80A5A2EC
/* 006B0 80A5A2E0 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 006B4 80A5A2E4 03E00008 */  jr      $ra                        
/* 006B8 80A5A2E8 A480022A */  sh      $zero, 0x022A($a0)         ## 0000022A
