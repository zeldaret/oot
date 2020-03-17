glabel func_809E3338
/* 00808 809E3338 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0080C 809E333C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00810 809E3340 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00814 809E3344 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00818 809E3348 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0081C 809E334C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00820 809E3350 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00824 809E3354 0C278C1A */  jal     func_809E3068              
/* 00828 809E3358 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0082C 809E335C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00830 809E3360 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00834 809E3364 03E00008 */  jr      $ra                        
/* 00838 809E3368 00000000 */  nop


