glabel func_80AED4FC
/* 028EC 80AED4FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 028F0 80AED500 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 028F4 80AED504 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 028F8 80AED508 0C01E245 */  jal     func_80078914              
/* 028FC 80AED50C 240528AC */  addiu   $a1, $zero, 0x28AC         ## $a1 = 000028AC
/* 02900 80AED510 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02904 80AED514 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02908 80AED518 03E00008 */  jr      $ra                        
/* 0290C 80AED51C 00000000 */  nop


