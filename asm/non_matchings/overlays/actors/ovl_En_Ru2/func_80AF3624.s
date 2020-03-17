glabel func_80AF3624
/* 010D4 80AF3624 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 010D8 80AF3628 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 010DC 80AF362C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 010E0 80AF3630 0C2BC9D1 */  jal     func_80AF2744              
/* 010E4 80AF3634 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 010E8 80AF3638 0C2BC9E3 */  jal     func_80AF278C              
/* 010EC 80AF363C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010F0 80AF3640 0C2BC982 */  jal     func_80AF2608              
/* 010F4 80AF3644 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010F8 80AF3648 0C2BCCF8 */  jal     func_80AF33E0              
/* 010FC 80AF364C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01100 80AF3650 0C2BCD29 */  jal     func_80AF34A4              
/* 01104 80AF3654 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01108 80AF3658 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0110C 80AF365C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01110 80AF3660 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01114 80AF3664 03E00008 */  jr      $ra                        
/* 01118 80AF3668 00000000 */  nop


