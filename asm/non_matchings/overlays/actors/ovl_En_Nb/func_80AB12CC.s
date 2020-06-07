glabel func_80AB12CC
/* 0053C 80AB12CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00540 80AB12D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00544 80AB12D4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00548 80AB12D8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0054C 80AB12DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00550 80AB12E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00554 80AB12E4 03E00008 */  jr      $ra                        
/* 00558 80AB12E8 00000000 */  nop
