glabel func_80B3EDCC
/* 02BEC 80B3EDCC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02BF0 80B3EDD0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02BF4 80B3EDD4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02BF8 80B3EDD8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02BFC 80B3EDDC 0C2CF5BC */  jal     func_80B3D6F0              
/* 02C00 80B3EDE0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02C04 80B3EDE4 0C2CF12C */  jal     func_80B3C4B0              
/* 02C08 80B3EDE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C0C 80B3EDEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C10 80B3EDF0 0C2CF11A */  jal     func_80B3C468              
/* 02C14 80B3EDF4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02C18 80B3EDF8 0C2CF0C7 */  jal     func_80B3C31C              
/* 02C1C 80B3EDFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C20 80B3EE00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C24 80B3EE04 0C2CF3A1 */  jal     func_80B3CE84              
/* 02C28 80B3EE08 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02C2C 80B3EE0C 0C2CFB36 */  jal     func_80B3ECD8              
/* 02C30 80B3EE10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C34 80B3EE14 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02C38 80B3EE18 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02C3C 80B3EE1C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02C40 80B3EE20 03E00008 */  jr      $ra                        
/* 02C44 80B3EE24 00000000 */  nop


