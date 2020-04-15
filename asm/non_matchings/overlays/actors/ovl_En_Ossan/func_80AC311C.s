glabel func_80AC311C
/* 0047C 80AC311C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00480 80AC3120 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00484 80AC3124 0C042DC8 */  jal     func_8010B720              
/* 00488 80AC3128 240510BA */  addiu   $a1, $zero, 0x10BA         ## $a1 = 000010BA
/* 0048C 80AC312C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00490 80AC3130 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00494 80AC3134 03E00008 */  jr      $ra                        
/* 00498 80AC3138 00000000 */  nop
