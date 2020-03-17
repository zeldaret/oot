glabel BgSpot01Idomizu_Update
/* 00154 808ABC34 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00158 808ABC38 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0015C 808ABC3C 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00160 808ABC40 0320F809 */  jalr    $ra, $t9                   
/* 00164 808ABC44 00000000 */  nop
/* 00168 808ABC48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0016C 808ABC4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00170 808ABC50 03E00008 */  jr      $ra                        
/* 00174 808ABC54 00000000 */  nop


