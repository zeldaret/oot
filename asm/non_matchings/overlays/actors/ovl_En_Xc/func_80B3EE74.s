glabel func_80B3EE74
/* 02C94 80B3EE74 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02C98 80B3EE78 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02C9C 80B3EE7C 0C2CF366 */  jal     func_80B3CD98              
/* 02CA0 80B3EE80 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02CA4 80B3EE84 10400003 */  beq     $v0, $zero, .L80B3EE94     
/* 02CA8 80B3EE88 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 02CAC 80B3EE8C 240E001E */  addiu   $t6, $zero, 0x001E         ## $t6 = 0000001E
/* 02CB0 80B3EE90 ADEE0260 */  sw      $t6, 0x0260($t7)           ## 00000260
.L80B3EE94:
/* 02CB4 80B3EE94 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02CB8 80B3EE98 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02CBC 80B3EE9C 03E00008 */  jr      $ra                        
/* 02CC0 80B3EEA0 00000000 */  nop


