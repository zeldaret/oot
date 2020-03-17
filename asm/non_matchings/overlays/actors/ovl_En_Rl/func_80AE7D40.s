glabel func_80AE7D40
/* 00A90 80AE7D40 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A94 80AE7D44 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A98 80AE7D48 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A9C 80AE7D4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AA0 80AE7D50 0C2B9D13 */  jal     func_80AE744C              
/* 00AA4 80AE7D54 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00AA8 80AE7D58 0C2B9D25 */  jal     func_80AE7494              
/* 00AAC 80AE7D5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AB0 80AE7D60 0C2B9CB4 */  jal     func_80AE72D0              
/* 00AB4 80AE7D64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AB8 80AE7D68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ABC 80AE7D6C 0C2B9EBE */  jal     func_80AE7AF8              
/* 00AC0 80AE7D70 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00AC4 80AE7D74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AC8 80AE7D78 0C2B9CF6 */  jal     func_80AE73D8              
/* 00ACC 80AE7D7C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00AD0 80AE7D80 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00AD4 80AE7D84 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00AD8 80AE7D88 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00ADC 80AE7D8C 03E00008 */  jr      $ra                        
/* 00AE0 80AE7D90 00000000 */  nop


