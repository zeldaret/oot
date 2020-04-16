glabel func_80AEEDCC
/* 041BC 80AEEDCC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 041C0 80AEEDD0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 041C4 80AEEDD4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 041C8 80AEEDD8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 041CC 80AEEDDC 0C2BB637 */  jal     func_80AED8DC              
/* 041D0 80AEEDE0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 041D4 80AEEDE4 0C2BACC8 */  jal     func_80AEB320              
/* 041D8 80AEEDE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 041DC 80AEEDEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 041E0 80AEEDF0 0C2BABB3 */  jal     func_80AEAECC              
/* 041E4 80AEEDF4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 041E8 80AEEDF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 041EC 80AEEDFC 0C2BB8BE */  jal     func_80AEE2F8              
/* 041F0 80AEEE00 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 041F4 80AEEE04 0C2BAB87 */  jal     func_80AEAE1C              
/* 041F8 80AEEE08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 041FC 80AEEE0C 0C2BB5BE */  jal     func_80AED6F8              
/* 04200 80AEEE10 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 04204 80AEEE14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04208 80AEEE18 0C2BB9F1 */  jal     func_80AEE7C4              
/* 0420C 80AEEE1C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04210 80AEEE20 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04214 80AEEE24 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 04218 80AEEE28 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0421C 80AEEE2C 03E00008 */  jr      $ra                        
/* 04220 80AEEE30 00000000 */  nop
