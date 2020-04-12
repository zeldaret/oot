glabel func_80AB1D84
/* 00FF4 80AB1D84 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00FF8 80AB1D88 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00FFC 80AB1D8C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01000 80AB1D90 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01004 80AB1D94 0C2AC4A1 */  jal     func_80AB1284              
/* 01008 80AB1D98 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0100C 80AB1D9C 0C2AC4B3 */  jal     func_80AB12CC              
/* 01010 80AB1DA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01014 80AB1DA4 0C2AC459 */  jal     func_80AB1164              
/* 01018 80AB1DA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0101C 80AB1DAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01020 80AB1DB0 0C2AC6DA */  jal     func_80AB1B68              
/* 01024 80AB1DB4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01028 80AB1DB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0102C 80AB1DBC 0C2AC484 */  jal     func_80AB1210              
/* 01030 80AB1DC0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01034 80AB1DC4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01038 80AB1DC8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0103C 80AB1DCC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01040 80AB1DD0 03E00008 */  jr      $ra                        
/* 01044 80AB1DD4 00000000 */  nop
