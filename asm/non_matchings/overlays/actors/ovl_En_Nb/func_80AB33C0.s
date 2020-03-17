glabel func_80AB33C0
/* 02630 80AB33C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02634 80AB33C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02638 80AB33C8 0C2ACCC8 */  jal     func_80AB3320              
/* 0263C 80AB33CC 00000000 */  nop
/* 02640 80AB33D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02644 80AB33D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02648 80AB33D8 03E00008 */  jr      $ra                        
/* 0264C 80AB33DC 00000000 */  nop


