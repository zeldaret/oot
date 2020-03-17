glabel func_80AEFBC8
/* 04FB8 80AEFBC8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04FBC 80AEFBCC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04FC0 80AEFBD0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04FC4 80AEFBD4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04FC8 80AEFBD8 0C2BB60F */  jal     func_80AED83C              
/* 04FCC 80AEFBDC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 04FD0 80AEFBE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04FD4 80AEFBE4 0C2BABB3 */  jal     func_80AEAECC              
/* 04FD8 80AEFBE8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04FDC 80AEFBEC 0C2BACC8 */  jal     func_80AEB320              
/* 04FE0 80AEFBF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04FE4 80AEFBF4 0C2BAB87 */  jal     func_80AEAE1C              
/* 04FE8 80AEFBF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04FEC 80AEFBFC 0C2BBD50 */  jal     func_80AEF540              
/* 04FF0 80AEFC00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04FF4 80AEFC04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04FF8 80AEFC08 0C2BBE4C */  jal     func_80AEF930              
/* 04FFC 80AEFC0C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05000 80AEFC10 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05004 80AEFC14 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 05008 80AEFC18 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0500C 80AEFC1C 03E00008 */  jr      $ra                        
/* 05010 80AEFC20 00000000 */  nop


