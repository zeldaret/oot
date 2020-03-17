glabel func_80AED600
/* 029F0 80AED600 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 029F4 80AED604 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 029F8 80AED608 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 029FC 80AED60C 0C01E245 */  jal     func_80078914              
/* 02A00 80AED610 24056861 */  addiu   $a1, $zero, 0x6861         ## $a1 = 00006861
/* 02A04 80AED614 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02A08 80AED618 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02A0C 80AED61C 03E00008 */  jr      $ra                        
/* 02A10 80AED620 00000000 */  nop


