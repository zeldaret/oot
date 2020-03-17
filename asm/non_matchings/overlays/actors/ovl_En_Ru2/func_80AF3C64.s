glabel func_80AF3C64
/* 01714 80AF3C64 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01718 80AF3C68 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0171C 80AF3C6C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01720 80AF3C70 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01724 80AF3C74 0C2BC9D1 */  jal     func_80AF2744              
/* 01728 80AF3C78 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0172C 80AF3C7C 0C2BC9E3 */  jal     func_80AF278C              
/* 01730 80AF3C80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01734 80AF3C84 0C2BC982 */  jal     func_80AF2608              
/* 01738 80AF3C88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0173C 80AF3C8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01740 80AF3C90 0C00B56E */  jal     Actor_SetHeight
              
/* 01744 80AF3C94 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 01748 80AF3C98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0174C 80AF3C9C 0C2BCE43 */  jal     func_80AF390C              
/* 01750 80AF3CA0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01754 80AF3CA4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01758 80AF3CA8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0175C 80AF3CAC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01760 80AF3CB0 03E00008 */  jr      $ra                        
/* 01764 80AF3CB4 00000000 */  nop


