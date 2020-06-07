glabel func_80B58F6C
/* 05BBC 80B58F6C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05BC0 80B58F70 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05BC4 80B58F74 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 05BC8 80B58F78 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05BCC 80B58F7C 0C2D5378 */  jal     func_80B54DE0              
/* 05BD0 80B58F80 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 05BD4 80B58F84 0C2D4DFA */  jal     func_80B537E8              
/* 05BD8 80B58F88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05BDC 80B58F8C 0C2D4DB1 */  jal     func_80B536C4              
/* 05BE0 80B58F90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05BE4 80B58F94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05BE8 80B58F98 0C2D4CFF */  jal     func_80B533FC              
/* 05BEC 80B58F9C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05BF0 80B58FA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05BF4 80B58FA4 0C2D4D9B */  jal     func_80B5366C              
/* 05BF8 80B58FA8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05BFC 80B58FAC 0C2D4D33 */  jal     func_80B534CC              
/* 05C00 80B58FB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C04 80B58FB4 0C2D4E53 */  jal     func_80B5394C              
/* 05C08 80B58FB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C0C 80B58FBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C10 80B58FC0 0C2D609A */  jal     func_80B58268              
/* 05C14 80B58FC4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05C18 80B58FC8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05C1C 80B58FCC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 05C20 80B58FD0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 05C24 80B58FD4 03E00008 */  jr      $ra                        
/* 05C28 80B58FD8 00000000 */  nop
