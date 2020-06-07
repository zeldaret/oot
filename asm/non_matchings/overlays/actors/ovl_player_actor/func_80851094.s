glabel func_80851094
/* 1EE84 80851094 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1EE88 80851098 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1EE8C 8085109C 0C2143C7 */  jal     func_80850F1C              
/* 1EE90 808510A0 00000000 */  nop
/* 1EE94 808510A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1EE98 808510A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1EE9C 808510AC 03E00008 */  jr      $ra                        
/* 1EEA0 808510B0 00000000 */  nop
