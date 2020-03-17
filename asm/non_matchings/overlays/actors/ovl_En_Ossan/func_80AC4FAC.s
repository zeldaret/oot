glabel func_80AC4FAC
/* 0230C 80AC4FAC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02310 80AC4FB0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02314 80AC4FB4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02318 80AC4FB8 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0231C 80AC4FBC 0C042DC8 */  jal     func_8010B720              
/* 02320 80AC4FC0 30C5FFFF */  andi    $a1, $a2, 0xFFFF           ## $a1 = 00000000
/* 02324 80AC4FC4 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 02328 80AC4FC8 240E000E */  addiu   $t6, $zero, 0x000E         ## $t6 = 0000000E
/* 0232C 80AC4FCC A5EE01FC */  sh      $t6, 0x01FC($t7)           ## 000001FC
/* 02330 80AC4FD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02334 80AC4FD4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02338 80AC4FD8 03E00008 */  jr      $ra                        
/* 0233C 80AC4FDC 00000000 */  nop


