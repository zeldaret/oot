glabel func_8097AD78
/* 02448 8097AD78 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0244C 8097AD7C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02450 8097AD80 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 02454 8097AD84 0C25E40C */  jal     func_80979030              
/* 02458 8097AD88 24C63710 */  addiu   $a2, $a2, 0x3710           ## $a2 = 06003710
/* 0245C 8097AD8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02460 8097AD90 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02464 8097AD94 03E00008 */  jr      $ra                        
/* 02468 8097AD98 00000000 */  nop


