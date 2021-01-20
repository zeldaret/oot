glabel func_8097A7C0
/* 01E90 8097A7C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E94 8097A7C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E98 8097A7C8 3C060600 */  lui     $a2, %hi(D_06002A40)                ## $a2 = 06000000
/* 01E9C 8097A7CC 0C25E447 */  jal     func_8097911C              
/* 01EA0 8097A7D0 24C62A40 */  addiu   $a2, $a2, %lo(D_06002A40)           ## $a2 = 06002A40
/* 01EA4 8097A7D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01EA8 8097A7D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01EAC 8097A7DC 03E00008 */  jr      $ra                        
/* 01EB0 8097A7E0 00000000 */  nop
