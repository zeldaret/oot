glabel func_80AECC1C
/* 0200C 80AECC1C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02010 80AECC20 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02014 80AECC24 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02018 80AECC28 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0201C 80AECC2C 0C2BB13D */  jal     func_80AEC4F4              
/* 02020 80AECC30 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02024 80AECC34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02028 80AECC38 0C2BB1B9 */  jal     func_80AEC6E4              
/* 0202C 80AECC3C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02030 80AECC40 0C2BACC8 */  jal     func_80AEB320              
/* 02034 80AECC44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02038 80AECC48 0C2BAB87 */  jal     func_80AEAE1C              
/* 0203C 80AECC4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02040 80AECC50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02044 80AECC54 0C2BABB3 */  jal     func_80AEAECC              
/* 02048 80AECC58 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0204C 80AECC5C 0C2BB194 */  jal     func_80AEC650              
/* 02050 80AECC60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02054 80AECC64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02058 80AECC68 0C2BB291 */  jal     func_80AECA44              
/* 0205C 80AECC6C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02060 80AECC70 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02064 80AECC74 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02068 80AECC78 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0206C 80AECC7C 03E00008 */  jr      $ra                        
/* 02070 80AECC80 00000000 */  nop


