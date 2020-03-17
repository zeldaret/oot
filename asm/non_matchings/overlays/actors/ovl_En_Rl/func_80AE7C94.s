glabel func_80AE7C94
/* 009E4 80AE7C94 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 009E8 80AE7C98 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 009EC 80AE7C9C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 009F0 80AE7CA0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009F4 80AE7CA4 0C2B9D13 */  jal     func_80AE744C              
/* 009F8 80AE7CA8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 009FC 80AE7CAC 0C2B9D25 */  jal     func_80AE7494              
/* 00A00 80AE7CB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A04 80AE7CB4 0C2B9CB4 */  jal     func_80AE72D0              
/* 00A08 80AE7CB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A0C 80AE7CBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A10 80AE7CC0 0C2B9E69 */  jal     func_80AE79A4              
/* 00A14 80AE7CC4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00A18 80AE7CC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A1C 80AE7CCC 0C2B9CF6 */  jal     func_80AE73D8              
/* 00A20 80AE7CD0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00A24 80AE7CD4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A28 80AE7CD8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A2C 80AE7CDC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A30 80AE7CE0 03E00008 */  jr      $ra                        
/* 00A34 80AE7CE4 00000000 */  nop


