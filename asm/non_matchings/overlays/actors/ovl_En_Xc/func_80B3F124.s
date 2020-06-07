glabel func_80B3F124
/* 02F44 80B3F124 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02F48 80B3F128 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02F4C 80B3F12C 0C2CFB9D */  jal     func_80B3EE74              
/* 02F50 80B3F130 00000000 */  nop
/* 02F54 80B3F134 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02F58 80B3F138 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02F5C 80B3F13C 03E00008 */  jr      $ra                        
/* 02F60 80B3F140 00000000 */  nop
