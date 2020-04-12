glabel func_809F43C8
/* 01108 809F43C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0110C 809F43CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01110 809F43D0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01114 809F43D4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01118 809F43D8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0111C 809F43DC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01120 809F43E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01124 809F43E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01128 809F43E8 03E00008 */  jr      $ra                        
/* 0112C 809F43EC 00000000 */  nop
