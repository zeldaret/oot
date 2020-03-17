glabel func_80B3E668
/* 02488 80B3E668 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0248C 80B3E66C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02490 80B3E670 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02494 80B3E674 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02498 80B3E678 0C2CF5BC */  jal     func_80B3D6F0              
/* 0249C 80B3E67C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 024A0 80B3E680 0C2CF12C */  jal     func_80B3C4B0              
/* 024A4 80B3E684 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024A8 80B3E688 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024AC 80B3E68C 0C2CF11A */  jal     func_80B3C468              
/* 024B0 80B3E690 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 024B4 80B3E694 0C2CF0C7 */  jal     func_80B3C31C              
/* 024B8 80B3E698 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024BC 80B3E69C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024C0 80B3E6A0 0C2CF3A1 */  jal     func_80B3CE84              
/* 024C4 80B3E6A4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 024C8 80B3E6A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024CC 80B3E6AC 0C2CF4FC */  jal     func_80B3D3F0              
/* 024D0 80B3E6B0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 024D4 80B3E6B4 0C2CF7E9 */  jal     func_80B3DFA4              
/* 024D8 80B3E6B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024DC 80B3E6BC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 024E0 80B3E6C0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 024E4 80B3E6C4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 024E8 80B3E6C8 03E00008 */  jr      $ra                        
/* 024EC 80B3E6CC 00000000 */  nop


