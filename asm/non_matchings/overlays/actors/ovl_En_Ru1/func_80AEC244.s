glabel func_80AEC244
/* 01634 80AEC244 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01638 80AEC248 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0163C 80AEC24C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01640 80AEC250 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01644 80AEC254 0C2BACC8 */  jal     func_80AEB320              
/* 01648 80AEC258 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0164C 80AEC25C AFA20024 */  sw      $v0, 0x0024($sp)           
/* 01650 80AEC260 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01654 80AEC264 0C2BAE8B */  jal     func_80AEBA2C              
/* 01658 80AEC268 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0165C 80AEC26C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01660 80AEC270 0C2BABB3 */  jal     func_80AEAECC              
/* 01664 80AEC274 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01668 80AEC278 0C2BAB87 */  jal     func_80AEAE1C              
/* 0166C 80AEC27C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01670 80AEC280 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01674 80AEC284 0C2BAD43 */  jal     func_80AEB50C              
/* 01678 80AEC288 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0167C 80AEC28C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01680 80AEC290 0C2BAF2E */  jal     func_80AEBCB8              
/* 01684 80AEC294 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01688 80AEC298 0C2BAEDE */  jal     func_80AEBB78              
/* 0168C 80AEC29C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01690 80AEC2A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01694 80AEC2A4 0C2BAFF6 */  jal     func_80AEBFD8              
/* 01698 80AEC2A8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0169C 80AEC2AC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 016A0 80AEC2B0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 016A4 80AEC2B4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 016A8 80AEC2B8 03E00008 */  jr      $ra                        
/* 016AC 80AEC2BC 00000000 */  nop


