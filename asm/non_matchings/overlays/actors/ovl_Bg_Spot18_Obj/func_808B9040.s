glabel func_808B9040
/* 00730 808B9040 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00734 808B9044 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00738 808B9048 0C22E388 */  jal     func_808B8E20              
/* 0073C 808B904C 00000000 */  nop
/* 00740 808B9050 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00744 808B9054 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00748 808B9058 03E00008 */  jr      $ra                        
/* 0074C 808B905C 00000000 */  nop
