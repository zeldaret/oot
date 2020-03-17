glabel func_80A735A0
/* 005B0 80A735A0 3C0E80A7 */  lui     $t6, %hi(func_80A735C0)    ## $t6 = 80A70000
/* 005B4 80A735A4 25CE35C0 */  addiu   $t6, $t6, %lo(func_80A735C0) ## $t6 = 80A735C0
/* 005B8 80A735A8 240F00C8 */  addiu   $t7, $zero, 0x00C8         ## $t7 = 000000C8
/* 005BC 80A735AC 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 005C0 80A735B0 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 005C4 80A735B4 A48F0152 */  sh      $t7, 0x0152($a0)           ## 00000152
/* 005C8 80A735B8 03E00008 */  jr      $ra                        
/* 005CC 80A735BC A4980150 */  sh      $t8, 0x0150($a0)           ## 00000150


