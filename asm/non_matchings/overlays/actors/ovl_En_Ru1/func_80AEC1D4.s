glabel func_80AEC1D4
/* 015C4 80AEC1D4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 015C8 80AEC1D8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 015CC 80AEC1DC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 015D0 80AEC1E0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 015D4 80AEC1E4 0C2BACC8 */  jal     func_80AEB320              
/* 015D8 80AEC1E8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 015DC 80AEC1EC AFA20024 */  sw      $v0, 0x0024($sp)           
/* 015E0 80AEC1F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015E4 80AEC1F4 0C2BABB3 */  jal     func_80AEAECC              
/* 015E8 80AEC1F8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 015EC 80AEC1FC 0C2BAB87 */  jal     func_80AEAE1C              
/* 015F0 80AEC200 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015F4 80AEC204 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015F8 80AEC208 0C2BAD43 */  jal     func_80AEB50C              
/* 015FC 80AEC20C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01600 80AEC210 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01604 80AEC214 0C2BAF2E */  jal     func_80AEBCB8              
/* 01608 80AEC218 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0160C 80AEC21C 0C2BAEFD */  jal     func_80AEBBF4              
/* 01610 80AEC220 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01614 80AEC224 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01618 80AEC228 0C2BAFD8 */  jal     func_80AEBF60              
/* 0161C 80AEC22C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01620 80AEC230 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01624 80AEC234 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01628 80AEC238 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0162C 80AEC23C 03E00008 */  jr      $ra                        
/* 01630 80AEC240 00000000 */  nop


