glabel func_80AED5B8
/* 029A8 80AED5B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 029AC 80AED5BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 029B0 80AED5C0 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 029B4 80AED5C4 0C01E245 */  jal     func_80078914              
/* 029B8 80AED5C8 24056860 */  addiu   $a1, $zero, 0x6860         ## $a1 = 00006860
/* 029BC 80AED5CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 029C0 80AED5D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 029C4 80AED5D4 03E00008 */  jr      $ra                        
/* 029C8 80AED5D8 00000000 */  nop


