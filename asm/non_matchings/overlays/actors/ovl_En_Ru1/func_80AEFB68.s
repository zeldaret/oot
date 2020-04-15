glabel func_80AEFB68
/* 04F58 80AEFB68 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04F5C 80AEFB6C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04F60 80AEFB70 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04F64 80AEFB74 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04F68 80AEFB78 0C2BB60F */  jal     func_80AED83C              
/* 04F6C 80AEFB7C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 04F70 80AEFB80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F74 80AEFB84 0C2BABB3 */  jal     func_80AEAECC              
/* 04F78 80AEFB88 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04F7C 80AEFB8C 0C2BACC8 */  jal     func_80AEB320              
/* 04F80 80AEFB90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F84 80AEFB94 0C2BAB87 */  jal     func_80AEAE1C              
/* 04F88 80AEFB98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F8C 80AEFB9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F90 80AEFBA0 0C2BBE24 */  jal     func_80AEF890              
/* 04F94 80AEFBA4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04F98 80AEFBA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F9C 80AEFBAC 0C2BAC88 */  jal     func_80AEB220              
/* 04FA0 80AEFBB0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04FA4 80AEFBB4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04FA8 80AEFBB8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 04FAC 80AEFBBC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04FB0 80AEFBC0 03E00008 */  jr      $ra                        
/* 04FB4 80AEFBC4 00000000 */  nop
