glabel func_80B3C4B0
/* 002D0 80B3C4B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002D4 80B3C4B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002D8 80B3C4B8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 002DC 80B3C4BC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 002E0 80B3C4C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002E4 80B3C4C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002E8 80B3C4C8 03E00008 */  jr      $ra                        
/* 002EC 80B3C4CC 00000000 */  nop
