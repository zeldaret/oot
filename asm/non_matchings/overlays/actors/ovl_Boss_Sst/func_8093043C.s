glabel func_8093043C
/* 03E6C 8093043C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03E70 80930440 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03E74 80930444 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03E78 80930448 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03E7C 8093044C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 03E80 80930450 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03E84 80930454 50400004 */  beql    $v0, $zero, .L80930468     
/* 03E88 80930458 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03E8C 8093045C 0C24C11D */  jal     func_80930474              
/* 03E90 80930460 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03E94 80930464 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80930468:
/* 03E98 80930468 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03E9C 8093046C 03E00008 */  jr      $ra                        
/* 03EA0 80930470 00000000 */  nop


