glabel func_80B591BC
/* 05E0C 80B591BC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05E10 80B591C0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05E14 80B591C4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 05E18 80B591C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05E1C 80B591CC 0C2D5378 */  jal     func_80B54DE0              
/* 05E20 80B591D0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 05E24 80B591D4 0C2D4DB1 */  jal     func_80B536C4              
/* 05E28 80B591D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05E2C 80B591DC 0C2D4E2C */  jal     func_80B538B0              
/* 05E30 80B591E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05E34 80B591E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05E38 80B591E8 0C2D4CFF */  jal     func_80B533FC              
/* 05E3C 80B591EC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05E40 80B591F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05E44 80B591F4 0C2D4D9B */  jal     func_80B5366C              
/* 05E48 80B591F8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05E4C 80B591FC 0C2D4D33 */  jal     func_80B534CC              
/* 05E50 80B59200 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05E54 80B59204 0C2D4E53 */  jal     func_80B5394C              
/* 05E58 80B59208 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05E5C 80B5920C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05E60 80B59210 0C2D6294 */  jal     func_80B58A50              
/* 05E64 80B59214 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05E68 80B59218 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05E6C 80B5921C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 05E70 80B59220 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 05E74 80B59224 03E00008 */  jr      $ra                        
/* 05E78 80B59228 00000000 */  nop


