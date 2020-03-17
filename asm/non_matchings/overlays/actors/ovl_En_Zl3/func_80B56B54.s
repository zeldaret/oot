glabel func_80B56B54
/* 037A4 80B56B54 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 037A8 80B56B58 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 037AC 80B56B5C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 037B0 80B56B60 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 037B4 80B56B64 0C2D5378 */  jal     func_80B54DE0              
/* 037B8 80B56B68 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 037BC 80B56B6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 037C0 80B56B70 0C2D4D9B */  jal     func_80B5366C              
/* 037C4 80B56B74 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 037C8 80B56B78 0C2D4D33 */  jal     func_80B534CC              
/* 037CC 80B56B7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 037D0 80B56B80 0C2D4E53 */  jal     func_80B5394C              
/* 037D4 80B56B84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 037D8 80B56B88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 037DC 80B56B8C 0C2D592A */  jal     func_80B564A8              
/* 037E0 80B56B90 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 037E4 80B56B94 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 037E8 80B56B98 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 037EC 80B56B9C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 037F0 80B56BA0 03E00008 */  jr      $ra                        
/* 037F4 80B56BA4 00000000 */  nop


