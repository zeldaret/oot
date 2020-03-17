glabel func_80B3E7A0
/* 025C0 80B3E7A0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 025C4 80B3E7A4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 025C8 80B3E7A8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 025CC 80B3E7AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 025D0 80B3E7B0 0C2CF12C */  jal     func_80B3C4B0              
/* 025D4 80B3E7B4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 025D8 80B3E7B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025DC 80B3E7BC 0C2CF11A */  jal     func_80B3C468              
/* 025E0 80B3E7C0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 025E4 80B3E7C4 0C2CF0C7 */  jal     func_80B3C31C              
/* 025E8 80B3E7C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025EC 80B3E7CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025F0 80B3E7D0 0C2CF3C1 */  jal     func_80B3CF04              
/* 025F4 80B3E7D4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 025F8 80B3E7D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025FC 80B3E7DC 0C2CF4FC */  jal     func_80B3D3F0              
/* 02600 80B3E7E0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02604 80B3E7E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02608 80B3E7E8 0C2CF859 */  jal     func_80B3E164              
/* 0260C 80B3E7EC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02610 80B3E7F0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02614 80B3E7F4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02618 80B3E7F8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0261C 80B3E7FC 03E00008 */  jr      $ra                        
/* 02620 80B3E800 00000000 */  nop


