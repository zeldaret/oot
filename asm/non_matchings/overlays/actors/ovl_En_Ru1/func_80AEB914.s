glabel func_80AEB914
/* 00D04 80AEB914 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D08 80AEB918 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D0C 80AEB91C 0C2BAE27 */  jal     func_80AEB89C              
/* 00D10 80AEB920 00000000 */  nop
/* 00D14 80AEB924 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D18 80AEB928 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D1C 80AEB92C 03E00008 */  jr      $ra                        
/* 00D20 80AEB930 00000000 */  nop


