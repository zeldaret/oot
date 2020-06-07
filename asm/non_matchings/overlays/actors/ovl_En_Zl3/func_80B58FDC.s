glabel func_80B58FDC
/* 05C2C 80B58FDC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05C30 80B58FE0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05C34 80B58FE4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 05C38 80B58FE8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05C3C 80B58FEC 0C2D5378 */  jal     func_80B54DE0              
/* 05C40 80B58FF0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 05C44 80B58FF4 0C2D4DFA */  jal     func_80B537E8              
/* 05C48 80B58FF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C4C 80B58FFC 0C2D4DB1 */  jal     func_80B536C4              
/* 05C50 80B59000 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C54 80B59004 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C58 80B59008 0C2D4CFF */  jal     func_80B533FC              
/* 05C5C 80B5900C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05C60 80B59010 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C64 80B59014 0C2D4D9B */  jal     func_80B5366C              
/* 05C68 80B59018 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05C6C 80B5901C 0C2D4D33 */  jal     func_80B534CC              
/* 05C70 80B59020 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C74 80B59024 0C2D4E53 */  jal     func_80B5394C              
/* 05C78 80B59028 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C7C 80B5902C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C80 80B59030 0C2D60B2 */  jal     func_80B582C8              
/* 05C84 80B59034 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05C88 80B59038 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05C8C 80B5903C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 05C90 80B59040 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 05C94 80B59044 03E00008 */  jr      $ra                        
/* 05C98 80B59048 00000000 */  nop
