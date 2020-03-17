glabel func_80B58D50
/* 059A0 80B58D50 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 059A4 80B58D54 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 059A8 80B58D58 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 059AC 80B58D5C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 059B0 80B58D60 0C2D5378 */  jal     func_80B54DE0              
/* 059B4 80B58D64 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 059B8 80B58D68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 059BC 80B58D6C 0C2D4CFF */  jal     func_80B533FC              
/* 059C0 80B58D70 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 059C4 80B58D74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 059C8 80B58D78 0C2D4D9B */  jal     func_80B5366C              
/* 059CC 80B58D7C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 059D0 80B58D80 0C2D4D33 */  jal     func_80B534CC              
/* 059D4 80B58D84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 059D8 80B58D88 0C2D4E53 */  jal     func_80B5394C              
/* 059DC 80B58D8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 059E0 80B58D90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 059E4 80B58D94 0C2D5FAB */  jal     func_80B57EAC              
/* 059E8 80B58D98 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 059EC 80B58D9C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 059F0 80B58DA0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 059F4 80B58DA4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 059F8 80B58DA8 03E00008 */  jr      $ra                        
/* 059FC 80B58DAC 00000000 */  nop


