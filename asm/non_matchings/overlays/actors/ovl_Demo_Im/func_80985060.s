glabel func_80985060
/* 00480 80985060 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00484 80985064 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00488 80985068 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0048C 8098506C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00490 80985070 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00494 80985074 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00498 80985078 03E00008 */  jr      $ra                        
/* 0049C 8098507C 00000000 */  nop


