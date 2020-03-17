glabel func_8097983C
/* 00F0C 8097983C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F10 80979840 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F14 80979844 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00F18 80979848 0C25E5F9 */  jal     func_809797E4              
/* 00F1C 8097984C 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 00F20 80979850 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F24 80979854 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F28 80979858 03E00008 */  jr      $ra                        
/* 00F2C 8097985C 00000000 */  nop


