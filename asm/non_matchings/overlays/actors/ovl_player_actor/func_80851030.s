glabel func_80851030
/* 1EE20 80851030 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1EE24 80851034 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1EE28 80851038 0C2143B6 */  jal     func_80850ED8              
/* 1EE2C 8085103C 00000000 */  nop
/* 1EE30 80851040 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1EE34 80851044 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1EE38 80851048 03E00008 */  jr      $ra                        
/* 1EE3C 8085104C 00000000 */  nop


