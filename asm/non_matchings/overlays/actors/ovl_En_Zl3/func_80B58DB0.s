glabel func_80B58DB0
/* 05A00 80B58DB0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05A04 80B58DB4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05A08 80B58DB8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 05A0C 80B58DBC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05A10 80B58DC0 0C2D5378 */  jal     func_80B54DE0              
/* 05A14 80B58DC4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 05A18 80B58DC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05A1C 80B58DCC 0C2D4CFF */  jal     func_80B533FC              
/* 05A20 80B58DD0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05A24 80B58DD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05A28 80B58DD8 0C2D4D9B */  jal     func_80B5366C              
/* 05A2C 80B58DDC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05A30 80B58DE0 0C2D4D33 */  jal     func_80B534CC              
/* 05A34 80B58DE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05A38 80B58DE8 0C2D4E53 */  jal     func_80B5394C              
/* 05A3C 80B58DEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05A40 80B58DF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05A44 80B58DF4 0C2D5FBB */  jal     func_80B57EEC              
/* 05A48 80B58DF8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05A4C 80B58DFC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05A50 80B58E00 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 05A54 80B58E04 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 05A58 80B58E08 03E00008 */  jr      $ra                        
/* 05A5C 80B58E0C 00000000 */  nop


