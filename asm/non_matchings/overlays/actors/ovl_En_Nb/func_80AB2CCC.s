glabel func_80AB2CCC
/* 01F3C 80AB2CCC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01F40 80AB2CD0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01F44 80AB2CD4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01F48 80AB2CD8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01F4C 80AB2CDC 0C2AC459 */  jal     func_80AB1164              
/* 01F50 80AB2CE0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01F54 80AB2CE4 0C2AC4B3 */  jal     func_80AB12CC              
/* 01F58 80AB2CE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F5C 80AB2CEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F60 80AB2CF0 0C2ACA37 */  jal     func_80AB28DC              
/* 01F64 80AB2CF4 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 01F68 80AB2CF8 0C2AC95C */  jal     func_80AB2570              
/* 01F6C 80AB2CFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F70 80AB2D00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F74 80AB2D04 0C2AC9A2 */  jal     func_80AB2688              
/* 01F78 80AB2D08 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01F7C 80AB2D0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F80 80AB2D10 0C2AC4A1 */  jal     func_80AB1284              
/* 01F84 80AB2D14 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01F88 80AB2D18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F8C 80AB2D1C 0C2ACABF */  jal     func_80AB2AFC              
/* 01F90 80AB2D20 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01F94 80AB2D24 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01F98 80AB2D28 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01F9C 80AB2D2C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01FA0 80AB2D30 03E00008 */  jr      $ra                        
/* 01FA4 80AB2D34 00000000 */  nop
