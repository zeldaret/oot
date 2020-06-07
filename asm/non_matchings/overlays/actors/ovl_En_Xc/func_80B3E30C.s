glabel func_80B3E30C
/* 0212C 80B3E30C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02130 80B3E310 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02134 80B3E314 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02138 80B3E318 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0213C 80B3E31C 0C2CF55B */  jal     func_80B3D56C              
/* 02140 80B3E320 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02144 80B3E324 0C2CF12C */  jal     func_80B3C4B0              
/* 02148 80B3E328 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0214C 80B3E32C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02150 80B3E330 0C2CF11A */  jal     func_80B3C468              
/* 02154 80B3E334 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02158 80B3E338 0C2CF0C7 */  jal     func_80B3C31C              
/* 0215C 80B3E33C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02160 80B3E340 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02164 80B3E344 0C2CF3A1 */  jal     func_80B3CE84              
/* 02168 80B3E348 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0216C 80B3E34C 0C2CF664 */  jal     func_80B3D990              
/* 02170 80B3E350 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02174 80B3E354 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02178 80B3E358 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0217C 80B3E35C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02180 80B3E360 03E00008 */  jr      $ra                        
/* 02184 80B3E364 00000000 */  nop
