glabel func_80AE7494
/* 001E4 80AE7494 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001E8 80AE7498 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001EC 80AE749C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 001F0 80AE74A0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 001F4 80AE74A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001F8 80AE74A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001FC 80AE74AC 03E00008 */  jr      $ra                        
/* 00200 80AE74B0 00000000 */  nop


