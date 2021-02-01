glabel func_8097AB60
/* 02230 8097AB60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02234 8097AB64 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02238 8097AB68 3C060600 */  lui     $a2, %hi(D_06003190)                ## $a2 = 06000000
/* 0223C 8097AB6C 0C25E447 */  jal     func_8097911C              
/* 02240 8097AB70 24C63190 */  addiu   $a2, $a2, %lo(D_06003190)           ## $a2 = 06003190
/* 02244 8097AB74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02248 8097AB78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0224C 8097AB7C 03E00008 */  jr      $ra                        
/* 02250 8097AB80 00000000 */  nop
