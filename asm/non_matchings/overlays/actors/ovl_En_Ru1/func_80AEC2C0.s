glabel func_80AEC2C0
/* 016B0 80AEC2C0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 016B4 80AEC2C4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 016B8 80AEC2C8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 016BC 80AEC2CC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 016C0 80AEC2D0 0C2BACC8 */  jal     func_80AEB320              
/* 016C4 80AEC2D4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 016C8 80AEC2D8 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 016CC 80AEC2DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016D0 80AEC2E0 0C2BABB3 */  jal     func_80AEAECC              
/* 016D4 80AEC2E4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 016D8 80AEC2E8 0C2BAB87 */  jal     func_80AEAE1C              
/* 016DC 80AEC2EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016E0 80AEC2F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016E4 80AEC2F4 0C2BAD43 */  jal     func_80AEB50C              
/* 016E8 80AEC2F8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 016EC 80AEC2FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016F0 80AEC300 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 016F4 80AEC304 0C2BB01C */  jal     func_80AEC070              
/* 016F8 80AEC308 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 016FC 80AEC30C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01700 80AEC310 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01704 80AEC314 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01708 80AEC318 03E00008 */  jr      $ra                        
/* 0170C 80AEC31C 00000000 */  nop


