glabel func_80AFF660
/* 013B0 80AFF660 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 013B4 80AFF664 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 013B8 80AFF668 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 013BC 80AFF66C A08E02D2 */  sb      $t6, 0x02D2($a0)           ## 000002D2
/* 013C0 80AFF670 0C2BF8CE */  jal     func_80AFE338              
/* 013C4 80AFF674 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 013C8 80AFF678 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 013CC 80AFF67C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 013D0 80AFF680 03E00008 */  jr      $ra                        
/* 013D4 80AFF684 00000000 */  nop
