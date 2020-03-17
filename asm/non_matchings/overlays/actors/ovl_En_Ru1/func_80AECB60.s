glabel func_80AECB60
/* 01F50 80AECB60 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01F54 80AECB64 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01F58 80AECB68 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01F5C 80AECB6C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01F60 80AECB70 0C2BB103 */  jal     func_80AEC40C              
/* 01F64 80AECB74 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01F68 80AECB78 0C2BACC8 */  jal     func_80AEB320              
/* 01F6C 80AECB7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F70 80AECB80 0C2BAB87 */  jal     func_80AEAE1C              
/* 01F74 80AECB84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F78 80AECB88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F7C 80AECB8C 0C2BABB3 */  jal     func_80AEAECC              
/* 01F80 80AECB90 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01F84 80AECB94 0C2BB194 */  jal     func_80AEC650              
/* 01F88 80AECB98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F8C 80AECB9C 0C2BB271 */  jal     func_80AEC9C4              
/* 01F90 80AECBA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F94 80AECBA4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01F98 80AECBA8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01F9C 80AECBAC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01FA0 80AECBB0 03E00008 */  jr      $ra                        
/* 01FA4 80AECBB4 00000000 */  nop


