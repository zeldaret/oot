glabel func_80A20A88
/* 00CC8 80A20A88 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CCC 80A20A8C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CD0 80A20A90 3C1880A2 */  lui     $t8, %hi(func_80A20AC0)    ## $t8 = 80A20000
/* 00CD4 80A20A94 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00CD8 80A20A98 240F0050 */  addiu   $t7, $zero, 0x0050         ## $t7 = 00000050
/* 00CDC 80A20A9C 27180AC0 */  addiu   $t8, $t8, %lo(func_80A20AC0) ## $t8 = 80A20AC0
/* 00CE0 80A20AA0 A08E0260 */  sb      $t6, 0x0260($a0)           ## 00000260
/* 00CE4 80A20AA4 A48F0244 */  sh      $t7, 0x0244($a0)           ## 00000244
/* 00CE8 80A20AA8 0C287FE3 */  jal     func_80A1FF8C              
/* 00CEC 80A20AAC AC98014C */  sw      $t8, 0x014C($a0)           ## 0000014C
/* 00CF0 80A20AB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CF4 80A20AB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CF8 80A20AB8 03E00008 */  jr      $ra                        
/* 00CFC 80A20ABC 00000000 */  nop


