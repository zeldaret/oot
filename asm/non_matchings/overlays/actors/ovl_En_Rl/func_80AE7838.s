glabel func_80AE7838
/* 00588 80AE7838 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0058C 80AE783C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00590 80AE7840 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00594 80AE7844 0C2B9D13 */  jal     func_80AE744C              
/* 00598 80AE7848 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0059C 80AE784C 0C2B9D25 */  jal     func_80AE7494              
/* 005A0 80AE7850 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 005A4 80AE7854 0C2B9CB4 */  jal     func_80AE72D0              
/* 005A8 80AE7858 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 005AC 80AE785C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 005B0 80AE7860 0C2B9D64 */  jal     func_80AE7590              
/* 005B4 80AE7864 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 005B8 80AE7868 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005BC 80AE786C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005C0 80AE7870 03E00008 */  jr      $ra                        
/* 005C4 80AE7874 00000000 */  nop


