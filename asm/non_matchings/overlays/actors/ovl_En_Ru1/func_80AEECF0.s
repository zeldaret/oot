glabel func_80AEECF0
/* 040E0 80AEECF0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 040E4 80AEECF4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 040E8 80AEECF8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 040EC 80AEECFC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 040F0 80AEED00 0C2BB60F */  jal     func_80AED83C              
/* 040F4 80AEED04 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 040F8 80AEED08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 040FC 80AEED0C 0C2BABB3 */  jal     func_80AEAECC              
/* 04100 80AEED10 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04104 80AEED14 0C2BB814 */  jal     func_80AEE050              
/* 04108 80AEED18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0410C 80AEED1C 0C2BACC8 */  jal     func_80AEB320              
/* 04110 80AEED20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04114 80AEED24 0C2BAB87 */  jal     func_80AEAE1C              
/* 04118 80AEED28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0411C 80AEED2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04120 80AEED30 0C2BBAC9 */  jal     func_80AEEB24              
/* 04124 80AEED34 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04128 80AEED38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0412C 80AEED3C 0C2BB589 */  jal     func_80AED624              
/* 04130 80AEED40 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04134 80AEED44 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04138 80AEED48 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0413C 80AEED4C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04140 80AEED50 03E00008 */  jr      $ra                        
/* 04144 80AEED54 00000000 */  nop


