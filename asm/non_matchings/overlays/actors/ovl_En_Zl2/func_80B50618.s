glabel func_80B50618
/* 01C88 80B50618 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C8C 80B5061C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01C90 80B50620 0C2D3FBF */  jal     func_80B4FEFC              
/* 01C94 80B50624 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01C98 80B50628 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 01C9C 80B5062C 240E000B */  addiu   $t6, $zero, 0x000B         ## $t6 = 0000000B
/* 01CA0 80B50630 ADEE019C */  sw      $t6, 0x019C($t7)           ## 0000019C
/* 01CA4 80B50634 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01CA8 80B50638 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01CAC 80B5063C 03E00008 */  jr      $ra                        
/* 01CB0 80B50640 00000000 */  nop
