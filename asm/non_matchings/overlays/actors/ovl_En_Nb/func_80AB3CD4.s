glabel func_80AB3CD4
/* 02F44 80AB3CD4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02F48 80AB3CD8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02F4C 80AB3CDC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02F50 80AB3CE0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02F54 80AB3CE4 0C2AC4A1 */  jal     func_80AB1284              
/* 02F58 80AB3CE8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02F5C 80AB3CEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F60 80AB3CF0 0C2AC3D4 */  jal     func_80AB0F50              
/* 02F64 80AB3CF4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02F68 80AB3CF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F6C 80AB3CFC 0C2AC3EF */  jal     func_80AB0FBC              
/* 02F70 80AB3D00 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02F74 80AB3D04 0C2AC4B3 */  jal     func_80AB12CC              
/* 02F78 80AB3D08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F7C 80AB3D0C 0C2AC459 */  jal     func_80AB1164              
/* 02F80 80AB3D10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F84 80AB3D14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F88 80AB3D18 0C2ACE45 */  jal     func_80AB3914              
/* 02F8C 80AB3D1C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02F90 80AB3D20 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02F94 80AB3D24 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02F98 80AB3D28 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02F9C 80AB3D2C 03E00008 */  jr      $ra                        
/* 02FA0 80AB3D30 00000000 */  nop
