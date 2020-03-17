glabel func_8096F26C
/* 01DBC 8096F26C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01DC0 8096F270 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01DC4 8096F274 10A0000A */  beq     $a1, $zero, .L8096F2A0     
/* 01DC8 8096F278 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01DCC 8096F27C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01DD0 8096F280 24A56220 */  addiu   $a1, $a1, 0x6220           ## $a1 = 06006220
/* 01DD4 8096F284 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01DD8 8096F288 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01DDC 8096F28C 0C25B5E7 */  jal     func_8096D79C              
/* 01DE0 8096F290 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01DE4 8096F294 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 01DE8 8096F298 240E0012 */  addiu   $t6, $zero, 0x0012         ## $t6 = 00000012
/* 01DEC 8096F29C ADEE0194 */  sw      $t6, 0x0194($t7)           ## 00000194
.L8096F2A0:
/* 01DF0 8096F2A0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01DF4 8096F2A4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01DF8 8096F2A8 03E00008 */  jr      $ra                        
/* 01DFC 8096F2AC 00000000 */  nop


