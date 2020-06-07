glabel func_80B412D4
/* 050F4 80B412D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 050F8 80B412D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 050FC 80B412DC 0C2CF93E */  jal     func_80B3E4F8              
/* 05100 80B412E0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 05104 80B412E4 0C2D032F */  jal     func_80B40CBC              
/* 05108 80B412E8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0510C 80B412EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05110 80B412F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05114 80B412F4 03E00008 */  jr      $ra                        
/* 05118 80B412F8 00000000 */  nop
