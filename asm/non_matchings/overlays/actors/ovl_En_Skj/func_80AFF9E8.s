glabel func_80AFF9E8
/* 01738 80AFF9E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0173C 80AFF9EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01740 80AFF9F0 A08002D6 */  sb      $zero, 0x02D6($a0)         ## 000002D6
/* 01744 80AFF9F4 0C2BF8CE */  jal     func_80AFE338              
/* 01748 80AFF9F8 2405000B */  addiu   $a1, $zero, 0x000B         ## $a1 = 0000000B
/* 0174C 80AFF9FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01750 80AFFA00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01754 80AFFA04 03E00008 */  jr      $ra                        
/* 01758 80AFFA08 00000000 */  nop
