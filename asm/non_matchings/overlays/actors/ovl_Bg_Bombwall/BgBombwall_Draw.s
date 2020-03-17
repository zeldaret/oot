glabel BgBombwall_Draw
/* 00724 8086EEF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00728 8086EEF8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0072C 8086EEFC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00730 8086EF00 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00734 8086EF04 0C00D498 */  jal     Draw_DListOpa
              
/* 00738 8086EF08 8CC5029C */  lw      $a1, 0x029C($a2)           ## 0000029C
/* 0073C 8086EF0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00740 8086EF10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00744 8086EF14 03E00008 */  jr      $ra                        
/* 00748 8086EF18 00000000 */  nop
/* 0074C 8086EF1C 00000000 */  nop

