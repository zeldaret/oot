glabel func_80AF31C8
/* 00C78 80AF31C8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00C7C 80AF31CC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C80 80AF31D0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C84 80AF31D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C88 80AF31D8 0C2BC9D1 */  jal     func_80AF2744              
/* 00C8C 80AF31DC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00C90 80AF31E0 0C2BC9E3 */  jal     func_80AF278C              
/* 00C94 80AF31E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C98 80AF31E8 0C2BC982 */  jal     func_80AF2608              
/* 00C9C 80AF31EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CA0 80AF31F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CA4 80AF31F4 0C2BCC2B */  jal     func_80AF30AC              
/* 00CA8 80AF31F8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00CAC 80AF31FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CB0 80AF3200 0C2BC9B4 */  jal     func_80AF26D0              
/* 00CB4 80AF3204 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00CB8 80AF3208 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00CBC 80AF320C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00CC0 80AF3210 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00CC4 80AF3214 03E00008 */  jr      $ra                        
/* 00CC8 80AF3218 00000000 */  nop


