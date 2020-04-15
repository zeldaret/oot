glabel func_80AED324
/* 02714 80AED324 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02718 80AED328 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0271C 80AED32C 0C2BB436 */  jal     func_80AED0D8              
/* 02720 80AED330 00000000 */  nop
/* 02724 80AED334 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02728 80AED338 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0272C 80AED33C 03E00008 */  jr      $ra                        
/* 02730 80AED340 00000000 */  nop
