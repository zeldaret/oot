glabel func_8097A420
/* 01AF0 8097A420 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01AF4 8097A424 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01AF8 8097A428 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 01AFC 8097A42C 0C25E447 */  jal     func_8097911C              
/* 01B00 8097A430 24C62160 */  addiu   $a2, $a2, 0x2160           ## $a2 = 06002160
/* 01B04 8097A434 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01B08 8097A438 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01B0C 8097A43C 03E00008 */  jr      $ra                        
/* 01B10 8097A440 00000000 */  nop


