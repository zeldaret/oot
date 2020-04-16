glabel func_80AECAB4
/* 01EA4 80AECAB4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01EA8 80AECAB8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01EAC 80AECABC 0C2BB207 */  jal     func_80AEC81C              
/* 01EB0 80AECAC0 00000000 */  nop
/* 01EB4 80AECAC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01EB8 80AECAC8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01EBC 80AECACC 03E00008 */  jr      $ra                        
/* 01EC0 80AECAD0 00000000 */  nop
