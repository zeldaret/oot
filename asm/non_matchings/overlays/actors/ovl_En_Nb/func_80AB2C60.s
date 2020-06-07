glabel func_80AB2C60
/* 01ED0 80AB2C60 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01ED4 80AB2C64 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01ED8 80AB2C68 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01EDC 80AB2C6C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01EE0 80AB2C70 0C2AC459 */  jal     func_80AB1164              
/* 01EE4 80AB2C74 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01EE8 80AB2C78 0C2AC4B3 */  jal     func_80AB12CC              
/* 01EEC 80AB2C7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EF0 80AB2C80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EF4 80AB2C84 0C2AC9FC */  jal     func_80AB27F0              
/* 01EF8 80AB2C88 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 01EFC 80AB2C8C 0C2AC943 */  jal     func_80AB250C              
/* 01F00 80AB2C90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F04 80AB2C94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F08 80AB2C98 0C2AC9A2 */  jal     func_80AB2688              
/* 01F0C 80AB2C9C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01F10 80AB2CA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F14 80AB2CA4 0C2AC4A1 */  jal     func_80AB1284              
/* 01F18 80AB2CA8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01F1C 80AB2CAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F20 80AB2CB0 0C2ACABF */  jal     func_80AB2AFC              
/* 01F24 80AB2CB4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01F28 80AB2CB8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01F2C 80AB2CBC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01F30 80AB2CC0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01F34 80AB2CC4 03E00008 */  jr      $ra                        
/* 01F38 80AB2CC8 00000000 */  nop
