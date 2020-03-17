glabel func_80AEED58
/* 04148 80AEED58 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0414C 80AEED5C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04150 80AEED60 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04154 80AEED64 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04158 80AEED68 0C2BB60F */  jal     func_80AED83C              
/* 0415C 80AEED6C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 04160 80AEED70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04164 80AEED74 0C2BABB3 */  jal     func_80AEAECC              
/* 04168 80AEED78 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0416C 80AEED7C 0C00B638 */  jal     Actor_MoveForward
              
/* 04170 80AEED80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04174 80AEED84 0C2BACC8 */  jal     func_80AEB320              
/* 04178 80AEED88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0417C 80AEED8C 0C2BAB87 */  jal     func_80AEAE1C              
/* 04180 80AEED90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04184 80AEED94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04188 80AEED98 0C2BBAB2 */  jal     func_80AEEAC8              
/* 0418C 80AEED9C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04190 80AEEDA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04194 80AEEDA4 0C2BB589 */  jal     func_80AED624              
/* 04198 80AEEDA8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0419C 80AEEDAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 041A0 80AEEDB0 0C2BB6B8 */  jal     func_80AEDAE0              
/* 041A4 80AEEDB4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 041A8 80AEEDB8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 041AC 80AEEDBC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 041B0 80AEEDC0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 041B4 80AEEDC4 03E00008 */  jr      $ra                        
/* 041B8 80AEEDC8 00000000 */  nop


