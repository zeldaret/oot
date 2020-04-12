glabel func_8097BBD8
/* 032A8 8097BBD8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 032AC 8097BBDC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 032B0 8097BBE0 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 032B4 8097BBE4 0C25E40C */  jal     func_80979030              
/* 032B8 8097BBE8 24C63710 */  addiu   $a2, $a2, 0x3710           ## $a2 = 06003710
/* 032BC 8097BBEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 032C0 8097BBF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 032C4 8097BBF4 03E00008 */  jr      $ra                        
/* 032C8 8097BBF8 00000000 */  nop
