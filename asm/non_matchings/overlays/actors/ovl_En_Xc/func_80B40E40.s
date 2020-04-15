glabel func_80B40E40
/* 04C60 80B40E40 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04C64 80B40E44 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04C68 80B40E48 2405004B */  addiu   $a1, $zero, 0x004B         ## $a1 = 0000004B
/* 04C6C 80B40E4C 0C2CF1EF */  jal     func_80B3C7BC              
/* 04C70 80B40E50 2406004C */  addiu   $a2, $zero, 0x004C         ## $a2 = 0000004C
/* 04C74 80B40E54 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04C78 80B40E58 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04C7C 80B40E5C 03E00008 */  jr      $ra                        
/* 04C80 80B40E60 00000000 */  nop
