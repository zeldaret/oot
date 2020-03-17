glabel func_80B57EEC
/* 04B3C 80B57EEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04B40 80B57EF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04B44 80B57EF4 0C2D5CF2 */  jal     func_80B573C8              
/* 04B48 80B57EF8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 04B4C 80B57EFC 10400003 */  beq     $v0, $zero, .L80B57F0C     
/* 04B50 80B57F00 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 04B54 80B57F04 240E001B */  addiu   $t6, $zero, 0x001B         ## $t6 = 0000001B
/* 04B58 80B57F08 ADEE024C */  sw      $t6, 0x024C($t7)           ## 0000024C
.L80B57F0C:
/* 04B5C 80B57F0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04B60 80B57F10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04B64 80B57F14 03E00008 */  jr      $ra                        
/* 04B68 80B57F18 00000000 */  nop


