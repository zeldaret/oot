glabel func_8097A3FC
/* 01ACC 8097A3FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01AD0 8097A400 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01AD4 8097A404 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 01AD8 8097A408 0C25E40C */  jal     func_80979030              
/* 01ADC 8097A40C 24C62160 */  addiu   $a2, $a2, 0x2160           ## $a2 = 06002160
/* 01AE0 8097A410 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01AE4 8097A414 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01AE8 8097A418 03E00008 */  jr      $ra                        
/* 01AEC 8097A41C 00000000 */  nop


