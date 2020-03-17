glabel func_80AF278C
/* 0023C 80AF278C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00240 80AF2790 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00244 80AF2794 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00248 80AF2798 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0024C 80AF279C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00250 80AF27A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00254 80AF27A4 03E00008 */  jr      $ra                        
/* 00258 80AF27A8 00000000 */  nop


