glabel func_80B40104
/* 03F24 80B40104 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03F28 80B40108 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03F2C 80B4010C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03F30 80B40110 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03F34 80B40114 0C2CF12C */  jal     func_80B3C4B0              
/* 03F38 80B40118 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03F3C 80B4011C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03F40 80B40120 0C2CF11A */  jal     func_80B3C468              
/* 03F44 80B40124 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03F48 80B40128 0C2CF0C7 */  jal     func_80B3C31C              
/* 03F4C 80B4012C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03F50 80B40130 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03F54 80B40134 0C2CFFED */  jal     func_80B3FFB4              
/* 03F58 80B40138 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03F5C 80B4013C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03F60 80B40140 0C2CF222 */  jal     func_80B3C888              
/* 03F64 80B40144 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03F68 80B40148 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03F6C 80B4014C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03F70 80B40150 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03F74 80B40154 03E00008 */  jr      $ra                        
/* 03F78 80B40158 00000000 */  nop
