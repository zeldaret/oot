glabel func_8096BBE8
/* 02118 8096BBE8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0211C 8096BBEC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02120 8096BBF0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02124 8096BBF4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02128 8096BBF8 24A56104 */  addiu   $a1, $a1, 0x6104           ## $a1 = 06006104
/* 0212C 8096BBFC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02130 8096BC00 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02134 8096BC04 0C25A777 */  jal     func_80969DDC              
/* 02138 8096BC08 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0213C 8096BC0C 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 02140 8096BC10 240E001C */  addiu   $t6, $zero, 0x001C         ## $t6 = 0000001C
/* 02144 8096BC14 ADEE0198 */  sw      $t6, 0x0198($t7)           ## 00000198
/* 02148 8096BC18 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0214C 8096BC1C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02150 8096BC20 03E00008 */  jr      $ra                        
/* 02154 8096BC24 00000000 */  nop
