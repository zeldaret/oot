glabel func_8097A5F0
/* 01CC0 8097A5F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01CC4 8097A5F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01CC8 8097A5F8 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 01CCC 8097A5FC 0C25E447 */  jal     func_8097911C              
/* 01CD0 8097A600 24C62600 */  addiu   $a2, $a2, 0x2600           ## $a2 = 06002600
/* 01CD4 8097A604 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01CD8 8097A608 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01CDC 8097A60C 03E00008 */  jr      $ra                        
/* 01CE0 8097A610 00000000 */  nop


