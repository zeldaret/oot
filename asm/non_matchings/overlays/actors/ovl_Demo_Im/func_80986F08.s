glabel func_80986F08
/* 02328 80986F08 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0232C 80986F0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02330 80986F10 0C261AFE */  jal     func_80986BF8              
/* 02334 80986F14 00000000 */  nop
/* 02338 80986F18 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0233C 80986F1C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02340 80986F20 03E00008 */  jr      $ra                        
/* 02344 80986F24 00000000 */  nop


