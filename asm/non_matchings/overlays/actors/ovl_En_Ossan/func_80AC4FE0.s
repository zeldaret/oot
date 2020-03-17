glabel func_80AC4FE0
/* 02340 80AC4FE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02344 80AC4FE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02348 80AC4FE8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0234C 80AC4FEC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 02350 80AC4FF0 0C042DC8 */  jal     func_8010B720              
/* 02354 80AC4FF4 30C5FFFF */  andi    $a1, $a2, 0xFFFF           ## $a1 = 00000000
/* 02358 80AC4FF8 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 0235C 80AC4FFC 240E0017 */  addiu   $t6, $zero, 0x0017         ## $t6 = 00000017
/* 02360 80AC5000 A5EE01FC */  sh      $t6, 0x01FC($t7)           ## 000001FC
/* 02364 80AC5004 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02368 80AC5008 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0236C 80AC500C 03E00008 */  jr      $ra                        
/* 02370 80AC5010 00000000 */  nop


