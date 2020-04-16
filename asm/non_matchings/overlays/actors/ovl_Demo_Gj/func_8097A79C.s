glabel func_8097A79C
/* 01E6C 8097A79C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E70 8097A7A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E74 8097A7A4 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 01E78 8097A7A8 0C25E40C */  jal     func_80979030              
/* 01E7C 8097A7AC 24C62A40 */  addiu   $a2, $a2, 0x2A40           ## $a2 = 06002A40
/* 01E80 8097A7B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E84 8097A7B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E88 8097A7B8 03E00008 */  jr      $ra                        
/* 01E8C 8097A7BC 00000000 */  nop
