glabel func_80979818
/* 00EE8 80979818 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00EEC 8097981C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00EF0 80979820 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00EF4 80979824 0C25E5F9 */  jal     func_809797E4              
/* 00EF8 80979828 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00EFC 8097982C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F00 80979830 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F04 80979834 03E00008 */  jr      $ra                        
/* 00F08 80979838 00000000 */  nop


