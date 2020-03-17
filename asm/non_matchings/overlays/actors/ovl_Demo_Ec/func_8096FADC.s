glabel func_8096FADC
/* 0262C 8096FADC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02630 8096FAE0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02634 8096FAE4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02638 8096FAE8 0C25B54B */  jal     func_8096D52C              
/* 0263C 8096FAEC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02640 8096FAF0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02644 8096FAF4 0C25B565 */  jal     func_8096D594              
/* 02648 8096FAF8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0264C 8096FAFC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02650 8096FB00 0C25B553 */  jal     func_8096D54C              
/* 02654 8096FB04 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02658 8096FB08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0265C 8096FB0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02660 8096FB10 03E00008 */  jr      $ra                        
/* 02664 8096FB14 00000000 */  nop


