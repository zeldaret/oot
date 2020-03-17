glabel func_808B13FC
/* 00A9C 808B13FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AA0 808B1400 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AA4 808B1404 3C05808B */  lui     $a1, %hi(func_808B1420)    ## $a1 = 808B0000
/* 00AA8 808B1408 0C22C258 */  jal     func_808B0960              
/* 00AAC 808B140C 24A51420 */  addiu   $a1, $a1, %lo(func_808B1420) ## $a1 = 808B1420
/* 00AB0 808B1410 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AB4 808B1414 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AB8 808B1418 03E00008 */  jr      $ra                        
/* 00ABC 808B141C 00000000 */  nop


