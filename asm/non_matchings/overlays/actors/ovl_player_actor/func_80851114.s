glabel func_80851114
/* 1EF04 80851114 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1EF08 80851118 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1EF0C 8085111C 0C20CC4F */  jal     func_8083313C              
/* 1EF10 80851120 00000000 */  nop
/* 1EF14 80851124 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1EF18 80851128 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1EF1C 8085112C 03E00008 */  jr      $ra                        
/* 1EF20 80851130 00000000 */  nop


