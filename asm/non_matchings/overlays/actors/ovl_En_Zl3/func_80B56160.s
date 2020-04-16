glabel func_80B56160
/* 02DB0 80B56160 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02DB4 80B56164 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02DB8 80B56168 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02DBC 80B5616C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02DC0 80B56170 24A501D8 */  addiu   $a1, $a1, 0x01D8           ## $a1 = 060001D8
/* 02DC4 80B56174 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02DC8 80B56178 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02DCC 80B5617C 0C2D5385 */  jal     func_80B54E14              
/* 02DD0 80B56180 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02DD4 80B56184 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 02DD8 80B56188 240E0013 */  addiu   $t6, $zero, 0x0013         ## $t6 = 00000013
/* 02DDC 80B5618C ADEE024C */  sw      $t6, 0x024C($t7)           ## 0000024C
/* 02DE0 80B56190 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02DE4 80B56194 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02DE8 80B56198 03E00008 */  jr      $ra                        
/* 02DEC 80B5619C 00000000 */  nop
