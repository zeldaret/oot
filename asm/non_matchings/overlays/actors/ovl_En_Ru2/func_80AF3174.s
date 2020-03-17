glabel func_80AF3174
/* 00C24 80AF3174 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00C28 80AF3178 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C2C 80AF317C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C30 80AF3180 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C34 80AF3184 0C2BC9D1 */  jal     func_80AF2744              
/* 00C38 80AF3188 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00C3C 80AF318C 0C2BC9E3 */  jal     func_80AF278C              
/* 00C40 80AF3190 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C44 80AF3194 0C2BC982 */  jal     func_80AF2608              
/* 00C48 80AF3198 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C4C 80AF319C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C50 80AF31A0 0C2BCBD6 */  jal     func_80AF2F58              
/* 00C54 80AF31A4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00C58 80AF31A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C5C 80AF31AC 0C2BC9B4 */  jal     func_80AF26D0              
/* 00C60 80AF31B0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00C64 80AF31B4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C68 80AF31B8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00C6C 80AF31BC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00C70 80AF31C0 03E00008 */  jr      $ra                        
/* 00C74 80AF31C4 00000000 */  nop


