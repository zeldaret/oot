glabel func_80B57C54
/* 048A4 80B57C54 948E0344 */  lhu     $t6, 0x0344($a0)           ## 00000344
/* 048A8 80B57C58 948F0346 */  lhu     $t7, 0x0346($a0)           ## 00000346
/* 048AC 80B57C5C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 048B0 80B57C60 01CF082A */  slt     $at, $t6, $t7              
/* 048B4 80B57C64 14200003 */  bne     $at, $zero, .L80B57C74     
/* 048B8 80B57C68 00000000 */  nop
/* 048BC 80B57C6C 03E00008 */  jr      $ra                        
/* 048C0 80B57C70 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B57C74:
/* 048C4 80B57C74 03E00008 */  jr      $ra                        
/* 048C8 80B57C78 00000000 */  nop
