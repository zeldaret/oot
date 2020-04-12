glabel func_80B3ED48
/* 02B68 80B3ED48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02B6C 80B3ED4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02B70 80B3ED50 0C2CFB00 */  jal     func_80B3EC00              
/* 02B74 80B3ED54 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02B78 80B3ED58 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02B7C 80B3ED5C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02B80 80B3ED60 03E00008 */  jr      $ra                        
/* 02B84 80B3ED64 00000000 */  nop
