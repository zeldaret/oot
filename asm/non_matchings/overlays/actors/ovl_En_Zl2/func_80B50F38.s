glabel func_80B50F38
/* 025A8 80B50F38 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 025AC 80B50F3C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 025B0 80B50F40 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 025B4 80B50F44 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 025B8 80B50F48 0C2D3F33 */  jal     func_80B4FCCC              
/* 025BC 80B50F4C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 025C0 80B50F50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025C4 80B50F54 0C2D3B4B */  jal     func_80B4ED2C              
/* 025C8 80B50F58 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 025CC 80B50F5C 0C2D3A6C */  jal     func_80B4E9B0              
/* 025D0 80B50F60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025D4 80B50F64 0C2D3B5D */  jal     func_80B4ED74              
/* 025D8 80B50F68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025DC 80B50F6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025E0 80B50F70 0C2D4281 */  jal     func_80B50A04              
/* 025E4 80B50F74 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 025E8 80B50F78 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 025EC 80B50F7C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 025F0 80B50F80 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 025F4 80B50F84 03E00008 */  jr      $ra                        
/* 025F8 80B50F88 00000000 */  nop


