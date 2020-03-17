glabel func_80AEFF40
/* 05330 80AEFF40 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05334 80AEFF44 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05338 80AEFF48 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0533C 80AEFF4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05340 80AEFF50 0C2BBBFB */  jal     func_80AEEFEC              
/* 05344 80AEFF54 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 05348 80AEFF58 0C2BACC8 */  jal     func_80AEB320              
/* 0534C 80AEFF5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05350 80AEFF60 0C2BAB87 */  jal     func_80AEAE1C              
/* 05354 80AEFF64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05358 80AEFF68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0535C 80AEFF6C 0C2BABB3 */  jal     func_80AEAECC              
/* 05360 80AEFF70 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05364 80AEFF74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05368 80AEFF78 0C2BBFA7 */  jal     func_80AEFE9C              
/* 0536C 80AEFF7C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05370 80AEFF80 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05374 80AEFF84 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 05378 80AEFF88 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0537C 80AEFF8C 03E00008 */  jr      $ra                        
/* 05380 80AEFF90 00000000 */  nop


