glabel func_80AECBB8
/* 01FA8 80AECBB8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01FAC 80AECBBC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01FB0 80AECBC0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01FB4 80AECBC4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01FB8 80AECBC8 0C2BB133 */  jal     func_80AEC4CC              
/* 01FBC 80AECBCC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01FC0 80AECBD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FC4 80AECBD4 0C2BB1B9 */  jal     func_80AEC6E4              
/* 01FC8 80AECBD8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01FCC 80AECBDC 0C2BACC8 */  jal     func_80AEB320              
/* 01FD0 80AECBE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FD4 80AECBE4 0C2BAB87 */  jal     func_80AEAE1C              
/* 01FD8 80AECBE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FDC 80AECBEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FE0 80AECBF0 0C2BABB3 */  jal     func_80AEAECC              
/* 01FE4 80AECBF4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01FE8 80AECBF8 0C2BB194 */  jal     func_80AEC650              
/* 01FEC 80AECBFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FF0 80AECC00 0C2BB286 */  jal     func_80AECA18              
/* 01FF4 80AECC04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FF8 80AECC08 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01FFC 80AECC0C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02000 80AECC10 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02004 80AECC14 03E00008 */  jr      $ra                        
/* 02008 80AECC18 00000000 */  nop
