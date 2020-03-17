glabel func_80B50644
/* 01CB4 80B50644 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01CB8 80B50648 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01CBC 80B5064C 0C2D3FE1 */  jal     func_80B4FF84              
/* 01CC0 80B50650 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01CC4 80B50654 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 01CC8 80B50658 240E000C */  addiu   $t6, $zero, 0x000C         ## $t6 = 0000000C
/* 01CCC 80B5065C ADEE019C */  sw      $t6, 0x019C($t7)           ## 0000019C
/* 01CD0 80B50660 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01CD4 80B50664 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01CD8 80B50668 03E00008 */  jr      $ra                        
/* 01CDC 80B5066C 00000000 */  nop


