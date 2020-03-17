glabel func_8098E610
/* 001B0 8098E610 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001B4 8098E614 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001B8 8098E618 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 001BC 8098E61C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 001C0 8098E620 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001C4 8098E624 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001C8 8098E628 03E00008 */  jr      $ra                        
/* 001CC 8098E62C 00000000 */  nop


