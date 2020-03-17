glabel func_80B3F2E8
/* 03108 80B3F2E8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0310C 80B3F2EC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03110 80B3F2F0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03114 80B3F2F4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03118 80B3F2F8 0C2CF5C4 */  jal     func_80B3D710              
/* 0311C 80B3F2FC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03120 80B3F300 0C2CF12C */  jal     func_80B3C4B0              
/* 03124 80B3F304 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03128 80B3F308 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0312C 80B3F30C 0C2CF11A */  jal     func_80B3C468              
/* 03130 80B3F310 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03134 80B3F314 0C2CF0C7 */  jal     func_80B3C31C              
/* 03138 80B3F318 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0313C 80B3F31C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03140 80B3F320 0C2CF3A1 */  jal     func_80B3CE84              
/* 03144 80B3F324 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03148 80B3F328 0C2CFC04 */  jal     func_80B3F010              
/* 0314C 80B3F32C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03150 80B3F330 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03154 80B3F334 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03158 80B3F338 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0315C 80B3F33C 03E00008 */  jr      $ra                        
/* 03160 80B3F340 00000000 */  nop


