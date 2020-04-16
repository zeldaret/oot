glabel func_8080AF30
/* 071F0 8080AF30 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 071F4 8080AF34 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 071F8 8080AF38 0C202672 */  jal     func_808099C8              
/* 071FC 8080AF3C 00000000 */  nop
/* 07200 8080AF40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 07204 8080AF44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 07208 8080AF48 03E00008 */  jr      $ra                        
/* 0720C 8080AF4C 00000000 */  nop
