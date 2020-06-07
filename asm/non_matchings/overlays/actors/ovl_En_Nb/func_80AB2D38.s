glabel func_80AB2D38
/* 01FA8 80AB2D38 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01FAC 80AB2D3C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01FB0 80AB2D40 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01FB4 80AB2D44 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01FB8 80AB2D48 0C2AC459 */  jal     func_80AB1164              
/* 01FBC 80AB2D4C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01FC0 80AB2D50 0C2AC4B3 */  jal     func_80AB12CC              
/* 01FC4 80AB2D54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FC8 80AB2D58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FCC 80AB2D5C 0C2ACA72 */  jal     func_80AB29C8              
/* 01FD0 80AB2D60 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 01FD4 80AB2D64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FD8 80AB2D68 0C2AC9A2 */  jal     func_80AB2688              
/* 01FDC 80AB2D6C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01FE0 80AB2D70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FE4 80AB2D74 0C2AC4A1 */  jal     func_80AB1284              
/* 01FE8 80AB2D78 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01FEC 80AB2D7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FF0 80AB2D80 0C2ACABF */  jal     func_80AB2AFC              
/* 01FF4 80AB2D84 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01FF8 80AB2D88 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01FFC 80AB2D8C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02000 80AB2D90 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02004 80AB2D94 03E00008 */  jr      $ra                        
/* 02008 80AB2D98 00000000 */  nop
