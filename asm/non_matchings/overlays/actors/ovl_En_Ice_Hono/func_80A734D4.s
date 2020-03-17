glabel func_80A734D4
/* 004E4 80A734D4 3C01C47A */  lui     $at, 0xC47A                ## $at = C47A0000
/* 004E8 80A734D8 44812000 */  mtc1    $at, $f4                   ## $f4 = -1000.00
/* 004EC 80A734DC 3C0E80A7 */  lui     $t6, %hi(func_80A734F8)    ## $t6 = 80A70000
/* 004F0 80A734E0 25CE34F8 */  addiu   $t6, $t6, %lo(func_80A734F8) ## $t6 = 80A734F8
/* 004F4 80A734E4 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 004F8 80A734E8 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 004FC 80A734EC A48F0150 */  sh      $t7, 0x0150($a0)           ## 00000150
/* 00500 80A734F0 03E00008 */  jr      $ra                        
/* 00504 80A734F4 E48400BC */  swc1    $f4, 0x00BC($a0)           ## 000000BC


