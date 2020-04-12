glabel func_809856F8
/* 00B18 809856F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B1C 809856FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B20 80985700 0C261513 */  jal     func_8098544C              
/* 00B24 80985704 00000000 */  nop
/* 00B28 80985708 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B2C 8098570C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B30 80985710 03E00008 */  jr      $ra                        
/* 00B34 80985714 00000000 */  nop
