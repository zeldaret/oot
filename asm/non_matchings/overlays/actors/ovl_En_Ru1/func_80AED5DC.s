glabel func_80AED5DC
/* 029CC 80AED5DC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 029D0 80AED5E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 029D4 80AED5E4 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 029D8 80AED5E8 0C01E245 */  jal     func_80078914              
/* 029DC 80AED5EC 24056866 */  addiu   $a1, $zero, 0x6866         ## $a1 = 00006866
/* 029E0 80AED5F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 029E4 80AED5F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 029E8 80AED5F8 03E00008 */  jr      $ra                        
/* 029EC 80AED5FC 00000000 */  nop
