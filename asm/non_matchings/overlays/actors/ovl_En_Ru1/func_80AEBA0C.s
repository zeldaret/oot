glabel func_80AEBA0C
/* 00DFC 80AEBA0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E00 80AEBA10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E04 80AEBA14 0C2BADB8 */  jal     func_80AEB6E0              
/* 00E08 80AEBA18 00000000 */  nop
/* 00E0C 80AEBA1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E10 80AEBA20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E14 80AEBA24 03E00008 */  jr      $ra                        
/* 00E18 80AEBA28 00000000 */  nop


