glabel func_8096D52C
/* 0007C 8096D52C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00080 8096D530 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00084 8096D534 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00088 8096D538 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0008C 8096D53C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00090 8096D540 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00094 8096D544 03E00008 */  jr      $ra                        
/* 00098 8096D548 00000000 */  nop
