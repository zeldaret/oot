glabel func_80B40E64
/* 04C84 80B40E64 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04C88 80B40E68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04C8C 80B40E6C 2405004C */  addiu   $a1, $zero, 0x004C         ## $a1 = 0000004C
/* 04C90 80B40E70 0C2CF1EF */  jal     func_80B3C7BC              
/* 04C94 80B40E74 2406004D */  addiu   $a2, $zero, 0x004D         ## $a2 = 0000004D
/* 04C98 80B40E78 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04C9C 80B40E7C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04CA0 80B40E80 03E00008 */  jr      $ra                        
/* 04CA4 80B40E84 00000000 */  nop


