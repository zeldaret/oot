glabel func_8097AD9C
/* 0246C 8097AD9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02470 8097ADA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02474 8097ADA4 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 02478 8097ADA8 0C25E447 */  jal     func_8097911C              
/* 0247C 8097ADAC 24C63710 */  addiu   $a2, $a2, 0x3710           ## $a2 = 06003710
/* 02480 8097ADB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02484 8097ADB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02488 8097ADB8 03E00008 */  jr      $ra                        
/* 0248C 8097ADBC 00000000 */  nop
