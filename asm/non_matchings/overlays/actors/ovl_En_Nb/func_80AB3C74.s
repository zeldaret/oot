glabel func_80AB3C74
/* 02EE4 80AB3C74 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02EE8 80AB3C78 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02EEC 80AB3C7C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02EF0 80AB3C80 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02EF4 80AB3C84 0C2AC4A1 */  jal     func_80AB1284              
/* 02EF8 80AB3C88 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02EFC 80AB3C8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F00 80AB3C90 0C2AC3D4 */  jal     func_80AB0F50              
/* 02F04 80AB3C94 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02F08 80AB3C98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F0C 80AB3C9C 0C2AC3EF */  jal     func_80AB0FBC              
/* 02F10 80AB3CA0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02F14 80AB3CA4 0C2AC4B3 */  jal     func_80AB12CC              
/* 02F18 80AB3CA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F1C 80AB3CAC 0C2AC459 */  jal     func_80AB1164              
/* 02F20 80AB3CB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F24 80AB3CB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F28 80AB3CB8 0C2ACE0E */  jal     func_80AB3838              
/* 02F2C 80AB3CBC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02F30 80AB3CC0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02F34 80AB3CC4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02F38 80AB3CC8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02F3C 80AB3CCC 03E00008 */  jr      $ra                        
/* 02F40 80AB3CD0 00000000 */  nop
