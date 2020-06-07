glabel func_80ABC9D0
/* 008F0 80ABC9D0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008F4 80ABC9D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008F8 80ABC9D8 0C2AF098 */  jal     func_80ABC260              
/* 008FC 80ABC9DC 00000000 */  nop
/* 00900 80ABC9E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00904 80ABC9E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00908 80ABC9E8 03E00008 */  jr      $ra                        
/* 0090C 80ABC9EC 00000000 */  nop
