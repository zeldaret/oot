glabel func_80AEF2D0
/* 046C0 80AEF2D0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 046C4 80AEF2D4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 046C8 80AEF2D8 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 046CC 80AEF2DC AFB00014 */  sw      $s0, 0x0014($sp)           
/* 046D0 80AEF2E0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 046D4 80AEF2E4 0C2BBBDA */  jal     func_80AEEF68              
/* 046D8 80AEF2E8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 046DC 80AEF2EC 0C2BACC8 */  jal     func_80AEB320              
/* 046E0 80AEF2F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 046E4 80AEF2F4 0C2BAB87 */  jal     func_80AEAE1C              
/* 046E8 80AEF2F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 046EC 80AEF2FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 046F0 80AEF300 0C2BAB04 */  jal     func_80AEAC10              
/* 046F4 80AEF304 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 046F8 80AEF308 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 046FC 80AEF30C 0C2BABB3 */  jal     func_80AEAECC              
/* 04700 80AEF310 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 04704 80AEF314 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04708 80AEF318 0C2BB899 */  jal     func_80AEE264              
/* 0470C 80AEF31C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 04710 80AEF320 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 04714 80AEF324 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04718 80AEF328 0C2BB589 */  jal     func_80AED624              
/* 0471C 80AEF32C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 04720 80AEF330 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04724 80AEF334 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 04728 80AEF338 0C2BBC5C */  jal     func_80AEF170              
/* 0472C 80AEF33C 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 04730 80AEF340 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04734 80AEF344 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 04738 80AEF348 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 0473C 80AEF34C 03E00008 */  jr      $ra                        
/* 04740 80AEF350 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
