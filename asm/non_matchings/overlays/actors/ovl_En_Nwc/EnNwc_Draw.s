glabel EnNwc_Draw
/* 00958 80ABCA38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0095C 80ABCA3C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00960 80ABCA40 0C2AF118 */  jal     func_80ABC460              
/* 00964 80ABCA44 00000000 */  nop
/* 00968 80ABCA48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0096C 80ABCA4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00970 80ABCA50 03E00008 */  jr      $ra                        
/* 00974 80ABCA54 00000000 */  nop
/* 00978 80ABCA58 00000000 */  nop
/* 0097C 80ABCA5C 00000000 */  nop

