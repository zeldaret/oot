glabel func_80B5394C
/* 0059C 80B5394C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005A0 80B53950 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005A4 80B53954 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 005A8 80B53958 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 005AC 80B5395C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005B0 80B53960 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005B4 80B53964 03E00008 */  jr      $ra                        
/* 005B8 80B53968 00000000 */  nop


