glabel func_80969C38
/* 00168 80969C38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0016C 80969C3C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00170 80969C40 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00174 80969C44 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00178 80969C48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0017C 80969C4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00180 80969C50 03E00008 */  jr      $ra                        
/* 00184 80969C54 00000000 */  nop
