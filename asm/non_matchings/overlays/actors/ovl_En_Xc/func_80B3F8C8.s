glabel func_80B3F8C8
/* 036E8 80B3F8C8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 036EC 80B3F8CC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 036F0 80B3F8D0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 036F4 80B3F8D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 036F8 80B3F8D8 0C2CF5C4 */  jal     func_80B3D710              
/* 036FC 80B3F8DC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03700 80B3F8E0 0C2CF12C */  jal     func_80B3C4B0              
/* 03704 80B3F8E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03708 80B3F8E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0370C 80B3F8EC 0C2CF11A */  jal     func_80B3C468              
/* 03710 80B3F8F0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03714 80B3F8F4 0C2CF0C7 */  jal     func_80B3C31C              
/* 03718 80B3F8F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0371C 80B3F8FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03720 80B3F900 0C2CF3A1 */  jal     func_80B3CE84              
/* 03724 80B3F904 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03728 80B3F908 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0372C 80B3F90C 0C2CFDC0 */  jal     func_80B3F700              
/* 03730 80B3F910 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03734 80B3F914 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03738 80B3F918 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0373C 80B3F91C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03740 80B3F920 03E00008 */  jr      $ra                        
/* 03744 80B3F924 00000000 */  nop


