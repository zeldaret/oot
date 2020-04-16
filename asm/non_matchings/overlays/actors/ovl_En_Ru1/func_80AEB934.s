glabel func_80AEB934
/* 00D24 80AEB934 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D28 80AEB938 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D2C 80AEB93C 0C2BAE27 */  jal     func_80AEB89C              
/* 00D30 80AEB940 00000000 */  nop
/* 00D34 80AEB944 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D38 80AEB948 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D3C 80AEB94C 03E00008 */  jr      $ra                        
/* 00D40 80AEB950 00000000 */  nop
