glabel func_80983354
/* 00054 80983354 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00058 80983358 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0005C 8098335C 0C02927F */  jal     SkelAnime_Update
              
/* 00060 80983360 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00064 80983364 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00068 80983368 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0006C 8098336C 03E00008 */  jr      $ra                        
/* 00070 80983370 00000000 */  nop
