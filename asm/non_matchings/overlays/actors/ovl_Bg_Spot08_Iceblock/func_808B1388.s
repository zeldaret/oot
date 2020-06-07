glabel func_808B1388
/* 00A28 808B1388 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A2C 808B138C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A30 808B1390 3C05808B */  lui     $a1, %hi(func_808B13AC)    ## $a1 = 808B0000
/* 00A34 808B1394 0C22C258 */  jal     func_808B0960              
/* 00A38 808B1398 24A513AC */  addiu   $a1, $a1, %lo(func_808B13AC) ## $a1 = 808B13AC
/* 00A3C 808B139C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A40 808B13A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A44 808B13A4 03E00008 */  jr      $ra                        
/* 00A48 808B13A8 00000000 */  nop
