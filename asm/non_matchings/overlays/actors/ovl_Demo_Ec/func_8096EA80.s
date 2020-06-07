glabel func_8096EA80
/* 015D0 8096EA80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 015D4 8096EA84 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 015D8 8096EA88 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 015DC 8096EA8C 0C25B54B */  jal     func_8096D52C              
/* 015E0 8096EA90 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 015E4 8096EA94 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 015E8 8096EA98 0C25B565 */  jal     func_8096D594              
/* 015EC 8096EA9C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 015F0 8096EAA0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 015F4 8096EAA4 0C25B553 */  jal     func_8096D54C              
/* 015F8 8096EAA8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 015FC 8096EAAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01600 8096EAB0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01604 8096EAB4 03E00008 */  jr      $ra                        
/* 01608 8096EAB8 00000000 */  nop
