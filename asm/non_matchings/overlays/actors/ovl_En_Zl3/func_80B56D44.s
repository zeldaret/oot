glabel func_80B56D44
/* 03994 80B56D44 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03998 80B56D48 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0399C 80B56D4C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 039A0 80B56D50 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 039A4 80B56D54 0C2D5378 */  jal     func_80B54DE0              
/* 039A8 80B56D58 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 039AC 80B56D5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 039B0 80B56D60 0C2D4D9B */  jal     func_80B5366C              
/* 039B4 80B56D64 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 039B8 80B56D68 0C2D4D33 */  jal     func_80B534CC              
/* 039BC 80B56D6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 039C0 80B56D70 0C2D4E53 */  jal     func_80B5394C              
/* 039C4 80B56D74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 039C8 80B56D78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 039CC 80B56D7C 0C2D591D */  jal     func_80B56474              
/* 039D0 80B56D80 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 039D4 80B56D84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 039D8 80B56D88 0C2D592A */  jal     func_80B564A8              
/* 039DC 80B56D8C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 039E0 80B56D90 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 039E4 80B56D94 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 039E8 80B56D98 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 039EC 80B56D9C 03E00008 */  jr      $ra                        
/* 039F0 80B56DA0 00000000 */  nop


