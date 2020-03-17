glabel func_80851134
/* 1EF24 80851134 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1EF28 80851138 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1EF2C 8085113C 0C20CC3B */  jal     func_808330EC              
/* 1EF30 80851140 2407009C */  addiu   $a3, $zero, 0x009C         ## $a3 = 0000009C
/* 1EF34 80851144 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1EF38 80851148 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1EF3C 8085114C 03E00008 */  jr      $ra                        
/* 1EF40 80851150 00000000 */  nop


