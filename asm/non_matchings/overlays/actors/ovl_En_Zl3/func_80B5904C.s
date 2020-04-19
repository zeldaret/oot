glabel func_80B5904C
/* 05C9C 80B5904C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05CA0 80B59050 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05CA4 80B59054 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 05CA8 80B59058 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05CAC 80B5905C 0C2D5378 */  jal     func_80B54DE0              
/* 05CB0 80B59060 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 05CB4 80B59064 0C2D4DFA */  jal     func_80B537E8              
/* 05CB8 80B59068 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05CBC 80B5906C 0C2D4DB1 */  jal     func_80B536C4              
/* 05CC0 80B59070 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05CC4 80B59074 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05CC8 80B59078 0C2D4CFF */  jal     func_80B533FC              
/* 05CCC 80B5907C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05CD0 80B59080 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05CD4 80B59084 0C2D4D9B */  jal     func_80B5366C              
/* 05CD8 80B59088 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05CDC 80B5908C 0C2D4D33 */  jal     func_80B534CC              
/* 05CE0 80B59090 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05CE4 80B59094 0C2D4E53 */  jal     func_80B5394C              
/* 05CE8 80B59098 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05CEC 80B5909C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05CF0 80B590A0 0C2D612D */  jal     func_80B584B4              
/* 05CF4 80B590A4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05CF8 80B590A8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05CFC 80B590AC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 05D00 80B590B0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 05D04 80B590B4 03E00008 */  jr      $ra                        
/* 05D08 80B590B8 00000000 */  nop
