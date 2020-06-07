glabel func_80AE7CE8
/* 00A38 80AE7CE8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A3C 80AE7CEC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A40 80AE7CF0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A44 80AE7CF4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A48 80AE7CF8 0C2B9D13 */  jal     func_80AE744C              
/* 00A4C 80AE7CFC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00A50 80AE7D00 0C2B9D25 */  jal     func_80AE7494              
/* 00A54 80AE7D04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A58 80AE7D08 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 00A5C 80AE7D0C 0C2B9CB4 */  jal     func_80AE72D0              
/* 00A60 80AE7D10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A64 80AE7D14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A68 80AE7D18 0C2B9EFE */  jal     func_80AE7BF8              
/* 00A6C 80AE7D1C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00A70 80AE7D20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A74 80AE7D24 0C2B9CF6 */  jal     func_80AE73D8              
/* 00A78 80AE7D28 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00A7C 80AE7D2C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A80 80AE7D30 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A84 80AE7D34 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A88 80AE7D38 03E00008 */  jr      $ra                        
/* 00A8C 80AE7D3C 00000000 */  nop
