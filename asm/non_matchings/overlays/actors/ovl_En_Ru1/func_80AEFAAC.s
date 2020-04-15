glabel func_80AEFAAC
/* 04E9C 80AEFAAC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04EA0 80AEFAB0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04EA4 80AEFAB4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04EA8 80AEFAB8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04EAC 80AEFABC 0C2BB60F */  jal     func_80AED83C              
/* 04EB0 80AEFAC0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 04EB4 80AEFAC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04EB8 80AEFAC8 0C2BABB3 */  jal     func_80AEAECC              
/* 04EBC 80AEFACC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04EC0 80AEFAD0 0C2BACC8 */  jal     func_80AEB320              
/* 04EC4 80AEFAD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04EC8 80AEFAD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04ECC 80AEFADC 0C2BBDE7 */  jal     func_80AEF79C              
/* 04ED0 80AEFAE0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04ED4 80AEFAE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04ED8 80AEFAE8 0C2BAC88 */  jal     func_80AEB220              
/* 04EDC 80AEFAEC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04EE0 80AEFAF0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04EE4 80AEFAF4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 04EE8 80AEFAF8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04EEC 80AEFAFC 03E00008 */  jr      $ra                        
/* 04EF0 80AEFB00 00000000 */  nop
