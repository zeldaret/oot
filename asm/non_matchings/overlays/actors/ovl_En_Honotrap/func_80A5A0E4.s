glabel func_80A5A0E4
/* 004B4 80A5A0E4 3C0E80A6 */  lui     $t6, %hi(func_80A5A0FC)    ## $t6 = 80A60000
/* 004B8 80A5A0E8 25CEA0FC */  addiu   $t6, $t6, %lo(func_80A5A0FC) ## $t6 = 80A5A0FC
/* 004BC 80A5A0EC 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 004C0 80A5A0F0 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 004C4 80A5A0F4 03E00008 */  jr      $ra                        
/* 004C8 80A5A0F8 A48F022A */  sh      $t7, 0x022A($a0)           ## 0000022A


