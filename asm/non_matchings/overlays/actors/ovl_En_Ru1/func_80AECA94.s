glabel func_80AECA94
/* 01E84 80AECA94 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E88 80AECA98 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E8C 80AECA9C 0C2BB1E0 */  jal     func_80AEC780              
/* 01E90 80AECAA0 00000000 */  nop
/* 01E94 80AECAA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E98 80AECAA8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E9C 80AECAAC 03E00008 */  jr      $ra                        
/* 01EA0 80AECAB0 00000000 */  nop


