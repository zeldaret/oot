glabel func_80B27464
/* 00DB4 80B27464 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00DB8 80B27468 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DBC 80B2746C 84820196 */  lh      $v0, 0x0196($a0)           ## 00000196
/* 00DC0 80B27470 10400003 */  beq     $v0, $zero, .L80B27480     
/* 00DC4 80B27474 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00DC8 80B27478 A48E0196 */  sh      $t6, 0x0196($a0)           ## 00000196
/* 00DCC 80B2747C 84820196 */  lh      $v0, 0x0196($a0)           ## 00000196
.L80B27480:
/* 00DD0 80B27480 54400004 */  bnel    $v0, $zero, .L80B27494     
/* 00DD4 80B27484 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DD8 80B27488 0C2C9B14 */  jal     func_80B26C50              
/* 00DDC 80B2748C 00000000 */  nop
/* 00DE0 80B27490 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B27494:
/* 00DE4 80B27494 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DE8 80B27498 03E00008 */  jr      $ra                        
/* 00DEC 80B2749C 00000000 */  nop
