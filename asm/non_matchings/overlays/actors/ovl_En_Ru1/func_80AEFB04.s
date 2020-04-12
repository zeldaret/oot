glabel func_80AEFB04
/* 04EF4 80AEFB04 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04EF8 80AEFB08 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04EFC 80AEFB0C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04F00 80AEFB10 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04F04 80AEFB14 0C2BB60F */  jal     func_80AED83C              
/* 04F08 80AEFB18 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 04F0C 80AEFB1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F10 80AEFB20 0C2BABB3 */  jal     func_80AEAECC              
/* 04F14 80AEFB24 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 04F18 80AEFB28 0C2BACC8 */  jal     func_80AEB320              
/* 04F1C 80AEFB2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F20 80AEFB30 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 04F24 80AEFB34 0C2BAB87 */  jal     func_80AEAE1C              
/* 04F28 80AEFB38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F2C 80AEFB3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F30 80AEFB40 0C2BBE08 */  jal     func_80AEF820              
/* 04F34 80AEFB44 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04F38 80AEFB48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F3C 80AEFB4C 0C2BAC88 */  jal     func_80AEB220              
/* 04F40 80AEFB50 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 04F44 80AEFB54 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04F48 80AEFB58 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 04F4C 80AEFB5C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04F50 80AEFB60 03E00008 */  jr      $ra                        
/* 04F54 80AEFB64 00000000 */  nop
