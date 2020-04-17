glabel func_80AED414
/* 02804 80AED414 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02808 80AED418 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0280C 80AED41C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02810 80AED420 0C2BB388 */  jal     func_80AECE20              
/* 02814 80AED424 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02818 80AED428 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0281C 80AED42C 0C2BABB3 */  jal     func_80AEAECC              
/* 02820 80AED430 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02824 80AED434 0C2BACC8 */  jal     func_80AEB320              
/* 02828 80AED438 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0282C 80AED43C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02830 80AED440 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02834 80AED444 03E00008 */  jr      $ra                        
/* 02838 80AED448 00000000 */  nop
