glabel func_8097B370
/* 02A40 8097B370 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02A44 8097B374 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02A48 8097B378 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02A4C 8097B37C 0C25EC8B */  jal     func_8097B22C              
/* 02A50 8097B380 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02A54 8097B384 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02A58 8097B388 0C25EBB7 */  jal     func_8097AEDC              
/* 02A5C 8097B38C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02A60 8097B390 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02A64 8097B394 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02A68 8097B398 03E00008 */  jr      $ra                        
/* 02A6C 8097B39C 00000000 */  nop


