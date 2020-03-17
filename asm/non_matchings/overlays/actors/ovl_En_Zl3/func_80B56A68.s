glabel func_80B56A68
/* 036B8 80B56A68 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 036BC 80B56A6C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 036C0 80B56A70 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 036C4 80B56A74 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 036C8 80B56A78 0C2D5378 */  jal     func_80B54DE0              
/* 036CC 80B56A7C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 036D0 80B56A80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 036D4 80B56A84 0C2D4CFF */  jal     func_80B533FC              
/* 036D8 80B56A88 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 036DC 80B56A8C 0C2D4DFA */  jal     func_80B537E8              
/* 036E0 80B56A90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 036E4 80B56A94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 036E8 80B56A98 0C2D4D9B */  jal     func_80B5366C              
/* 036EC 80B56A9C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 036F0 80B56AA0 0C2D4D33 */  jal     func_80B534CC              
/* 036F4 80B56AA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 036F8 80B56AA8 0C2D4E53 */  jal     func_80B5394C              
/* 036FC 80B56AAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03700 80B56AB0 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 03704 80B56AB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03708 80B56AB8 0C2D592A */  jal     func_80B564A8              
/* 0370C 80B56ABC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 03710 80B56AC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03714 80B56AC4 0C2D5824 */  jal     func_80B56090              
/* 03718 80B56AC8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0371C 80B56ACC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03720 80B56AD0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03724 80B56AD4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03728 80B56AD8 03E00008 */  jr      $ra                        
/* 0372C 80B56ADC 00000000 */  nop


