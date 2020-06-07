glabel func_808B147C
/* 00B1C 808B147C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B20 808B1480 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B24 808B1484 3C05808B */  lui     $a1, %hi(func_808B14A0)    ## $a1 = 808B0000
/* 00B28 808B1488 0C22C258 */  jal     func_808B0960              
/* 00B2C 808B148C 24A514A0 */  addiu   $a1, $a1, %lo(func_808B14A0) ## $a1 = 808B14A0
/* 00B30 808B1490 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B34 808B1494 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B38 808B1498 03E00008 */  jr      $ra                        
/* 00B3C 808B149C 00000000 */  nop
