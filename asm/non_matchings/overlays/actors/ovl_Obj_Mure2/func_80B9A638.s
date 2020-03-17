glabel func_80B9A638
/* 006F8 80B9A638 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006FC 80B9A63C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00700 80B9A640 0C2E6996 */  jal     func_80B9A658              
/* 00704 80B9A644 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00708 80B9A648 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0070C 80B9A64C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00710 80B9A650 03E00008 */  jr      $ra                        
/* 00714 80B9A654 00000000 */  nop


