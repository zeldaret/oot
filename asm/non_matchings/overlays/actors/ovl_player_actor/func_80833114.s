.late_rodata
glabel D_80855358
 .word 0x3F2AAAAB

.text
glabel func_80833114
/* 00F04 80833114 3C018085 */  lui     $at, %hi(D_80855358)       ## $at = 80850000
/* 00F08 80833118 C4245358 */  lwc1    $f4, %lo(D_80855358)($at)  
/* 00F0C 8083311C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00F10 80833120 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00F14 80833124 0C20CC2B */  jal     func_808330AC              
/* 00F18 80833128 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00F1C 8083312C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00F20 80833130 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00F24 80833134 03E00008 */  jr      $ra                        
/* 00F28 80833138 00000000 */  nop
