glabel func_80B58EF4
/* 05B44 80B58EF4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05B48 80B58EF8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05B4C 80B58EFC AFB10018 */  sw      $s1, 0x0018($sp)           
/* 05B50 80B58F00 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 05B54 80B58F04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05B58 80B58F08 0C2D5378 */  jal     func_80B54DE0              
/* 05B5C 80B58F0C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 05B60 80B58F10 0C2D4E2C */  jal     func_80B538B0              
/* 05B64 80B58F14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05B68 80B58F18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05B6C 80B58F1C 0C2D4DD9 */  jal     func_80B53764              
/* 05B70 80B58F20 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05B74 80B58F24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05B78 80B58F28 0C2D4CFF */  jal     func_80B533FC              
/* 05B7C 80B58F2C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05B80 80B58F30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05B84 80B58F34 0C2D4D9B */  jal     func_80B5366C              
/* 05B88 80B58F38 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05B8C 80B58F3C 0C2D4D33 */  jal     func_80B534CC              
/* 05B90 80B58F40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05B94 80B58F44 0C2D4E53 */  jal     func_80B5394C              
/* 05B98 80B58F48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05B9C 80B58F4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05BA0 80B58F50 0C2D6085 */  jal     func_80B58214              
/* 05BA4 80B58F54 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05BA8 80B58F58 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05BAC 80B58F5C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 05BB0 80B58F60 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 05BB4 80B58F64 03E00008 */  jr      $ra                        
/* 05BB8 80B58F68 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


