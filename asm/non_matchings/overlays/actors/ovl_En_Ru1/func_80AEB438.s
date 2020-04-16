glabel func_80AEB438
/* 00828 80AEB438 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0082C 80AEB43C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00830 80AEB440 0C2BABD6 */  jal     func_80AEAF58              
/* 00834 80AEB444 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00838 80AEB448 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0083C 80AEB44C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00840 80AEB450 03E00008 */  jr      $ra                        
/* 00844 80AEB454 00000000 */  nop
