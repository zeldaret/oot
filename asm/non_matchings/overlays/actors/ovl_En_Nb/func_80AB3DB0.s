glabel func_80AB3DB0
/* 03020 80AB3DB0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03024 80AB3DB4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03028 80AB3DB8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0302C 80AB3DBC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03030 80AB3DC0 0C2AC4A1 */  jal     func_80AB1284              
/* 03034 80AB3DC4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03038 80AB3DC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0303C 80AB3DCC 0C2AC3D4 */  jal     func_80AB0F50              
/* 03040 80AB3DD0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03044 80AB3DD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03048 80AB3DD8 0C2AC3EF */  jal     func_80AB0FBC              
/* 0304C 80AB3DDC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03050 80AB3DE0 0C2AC4B3 */  jal     func_80AB12CC              
/* 03054 80AB3DE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03058 80AB3DE8 0C2AC459 */  jal     func_80AB1164              
/* 0305C 80AB3DEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03060 80AB3DF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03064 80AB3DF4 0C2ACEC1 */  jal     func_80AB3B04              
/* 03068 80AB3DF8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0306C 80AB3DFC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03070 80AB3E00 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03074 80AB3E04 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03078 80AB3E08 03E00008 */  jr      $ra                        
/* 0307C 80AB3E0C 00000000 */  nop


