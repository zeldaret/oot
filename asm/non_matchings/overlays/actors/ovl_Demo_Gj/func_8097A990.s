glabel func_8097A990
/* 02060 8097A990 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02064 8097A994 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02068 8097A998 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0206C 8097A99C 0C25E447 */  jal     func_8097911C              
/* 02070 8097A9A0 24C62E80 */  addiu   $a2, $a2, 0x2E80           ## $a2 = 06002E80
/* 02074 8097A9A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02078 8097A9A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0207C 8097A9AC 03E00008 */  jr      $ra                        
/* 02080 8097A9B0 00000000 */  nop


