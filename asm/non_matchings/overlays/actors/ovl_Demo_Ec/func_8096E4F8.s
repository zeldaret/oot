glabel func_8096E4F8
/* 01048 8096E4F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0104C 8096E4FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01050 8096E500 0C25B92D */  jal     func_8096E4B4              
/* 01054 8096E504 00000000 */  nop
/* 01058 8096E508 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0105C 8096E50C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01060 8096E510 03E00008 */  jr      $ra                        
/* 01064 8096E514 00000000 */  nop
