glabel func_80AC62C4
/* 03624 80AC62C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03628 80AC62C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0362C 80AC62CC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03630 80AC62D0 0C042DC8 */  jal     func_8010B720              
/* 03634 80AC62D4 240571B2 */  addiu   $a1, $zero, 0x71B2         ## $a1 = 000071B2
/* 03638 80AC62D8 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 0363C 80AC62DC 240E001A */  addiu   $t6, $zero, 0x001A         ## $t6 = 0000001A
/* 03640 80AC62E0 A5EE01FC */  sh      $t6, 0x01FC($t7)           ## 000001FC
/* 03644 80AC62E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03648 80AC62E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0364C 80AC62EC 03E00008 */  jr      $ra                        
/* 03650 80AC62F0 00000000 */  nop


