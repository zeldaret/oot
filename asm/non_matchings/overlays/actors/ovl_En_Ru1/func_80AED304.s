glabel func_80AED304
/* 026F4 80AED304 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 026F8 80AED308 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 026FC 80AED30C 0C2BB432 */  jal     func_80AED0C8              
/* 02700 80AED310 00000000 */  nop
/* 02704 80AED314 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02708 80AED318 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0270C 80AED31C 03E00008 */  jr      $ra                        
/* 02710 80AED320 00000000 */  nop


