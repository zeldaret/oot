glabel func_808A325C
/* 001FC 808A325C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00200 808A3260 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00204 808A3264 3C05808A */  lui     $a1, %hi(func_808A3280)    ## $a1 = 808A0000
/* 00208 808A3268 0C228C18 */  jal     func_808A3060              
/* 0020C 808A326C 24A53280 */  addiu   $a1, $a1, %lo(func_808A3280) ## $a1 = 808A3280
/* 00210 808A3270 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00214 808A3274 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00218 808A3278 03E00008 */  jr      $ra                        
/* 0021C 808A327C 00000000 */  nop
