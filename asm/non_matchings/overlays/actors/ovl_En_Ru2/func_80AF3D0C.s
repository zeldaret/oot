glabel func_80AF3D0C
/* 017BC 80AF3D0C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 017C0 80AF3D10 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 017C4 80AF3D14 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 017C8 80AF3D18 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 017CC 80AF3D1C 0C2BC9D1 */  jal     func_80AF2744              
/* 017D0 80AF3D20 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 017D4 80AF3D24 0C2BC9E3 */  jal     func_80AF278C              
/* 017D8 80AF3D28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017DC 80AF3D2C 0C2BC982 */  jal     func_80AF2608              
/* 017E0 80AF3D30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017E4 80AF3D34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017E8 80AF3D38 0C00B56E */  jal     Actor_SetHeight
              
/* 017EC 80AF3D3C 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 017F0 80AF3D40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017F4 80AF3D44 0C2BCEB7 */  jal     func_80AF3ADC              
/* 017F8 80AF3D48 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 017FC 80AF3D4C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01800 80AF3D50 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01804 80AF3D54 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01808 80AF3D58 03E00008 */  jr      $ra                        
/* 0180C 80AF3D5C 00000000 */  nop


