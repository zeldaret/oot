glabel func_80AEC17C
/* 0156C 80AEC17C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01570 80AEC180 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01574 80AEC184 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01578 80AEC188 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0157C 80AEC18C 0C2BAE5D */  jal     func_80AEB974              
/* 01580 80AEC190 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01584 80AEC194 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01588 80AEC198 0C2BABB3 */  jal     func_80AEAECC              
/* 0158C 80AEC19C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01590 80AEC1A0 0C2BACC8 */  jal     func_80AEB320              
/* 01594 80AEC1A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01598 80AEC1A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0159C 80AEC1AC 0C2BAD43 */  jal     func_80AEB50C              
/* 015A0 80AEC1B0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 015A4 80AEC1B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015A8 80AEC1B8 0C2BAFB2 */  jal     func_80AEBEC8              
/* 015AC 80AEC1BC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 015B0 80AEC1C0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 015B4 80AEC1C4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 015B8 80AEC1C8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 015BC 80AEC1CC 03E00008 */  jr      $ra                        
/* 015C0 80AEC1D0 00000000 */  nop
