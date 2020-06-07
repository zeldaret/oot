glabel func_8097AE38
/* 02508 8097AE38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0250C 8097AE3C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02510 8097AE40 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 02514 8097AE44 0C25E40C */  jal     func_80979030              
/* 02518 8097AE48 24C60DC0 */  addiu   $a2, $a2, 0x0DC0           ## $a2 = 06000DC0
/* 0251C 8097AE4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02520 8097AE50 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02524 8097AE54 03E00008 */  jr      $ra                        
/* 02528 8097AE58 00000000 */  nop
