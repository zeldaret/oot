glabel func_808A32F8
/* 00298 808A32F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0029C 808A32FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002A0 808A3300 3C05808A */  lui     $a1, %hi(func_808A331C)    ## $a1 = 808A0000
/* 002A4 808A3304 0C228C18 */  jal     func_808A3060              
/* 002A8 808A3308 24A5331C */  addiu   $a1, $a1, %lo(func_808A331C) ## $a1 = 808A331C
/* 002AC 808A330C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002B0 808A3310 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002B4 808A3314 03E00008 */  jr      $ra                        
/* 002B8 808A3318 00000000 */  nop
