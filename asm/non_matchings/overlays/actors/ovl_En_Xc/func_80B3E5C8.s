glabel func_80B3E5C8
/* 023E8 80B3E5C8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 023EC 80B3E5CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 023F0 80B3E5D0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 023F4 80B3E5D4 0C2CF12C */  jal     func_80B3C4B0              
/* 023F8 80B3E5D8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 023FC 80B3E5DC AFA2001C */  sw      $v0, 0x001C($sp)           
/* 02400 80B3E5E0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02404 80B3E5E4 0C2CF11A */  jal     func_80B3C468              
/* 02408 80B3E5E8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0240C 80B3E5EC 0C2CF0C7 */  jal     func_80B3C31C              
/* 02410 80B3E5F0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02414 80B3E5F4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02418 80B3E5F8 0C2CF79E */  jal     func_80B3DE78              
/* 0241C 80B3E5FC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02420 80B3E600 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02424 80B3E604 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02428 80B3E608 03E00008 */  jr      $ra                        
/* 0242C 80B3E60C 00000000 */  nop


