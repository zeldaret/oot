glabel func_80A7707C
/* 02D6C 80A7707C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02D70 80A77080 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02D74 80A77084 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02D78 80A77088 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02D7C 80A7708C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02D80 80A77090 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02D84 80A77094 03E00008 */  jr      $ra                        
/* 02D88 80A77098 00000000 */  nop
