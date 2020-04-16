glabel func_80AED374
/* 02764 80AED374 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02768 80AED378 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0276C 80AED37C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02770 80AED380 0C2BACC8 */  jal     func_80AEB320              
/* 02774 80AED384 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02778 80AED388 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0277C 80AED38C 0C2BB455 */  jal     func_80AED154              
/* 02780 80AED390 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02784 80AED394 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02788 80AED398 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0278C 80AED39C 03E00008 */  jr      $ra                        
/* 02790 80AED3A0 00000000 */  nop
