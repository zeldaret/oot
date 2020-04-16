glabel func_80AEB954
/* 00D44 80AEB954 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D48 80AEB958 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D4C 80AEB95C 0C2BADB8 */  jal     func_80AEB6E0              
/* 00D50 80AEB960 00000000 */  nop
/* 00D54 80AEB964 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D58 80AEB968 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D5C 80AEB96C 03E00008 */  jr      $ra                        
/* 00D60 80AEB970 00000000 */  nop
