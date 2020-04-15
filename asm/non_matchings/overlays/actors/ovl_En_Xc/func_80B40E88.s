glabel func_80B40E88
/* 04CA8 80B40E88 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04CAC 80B40E8C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04CB0 80B40E90 2405004D */  addiu   $a1, $zero, 0x004D         ## $a1 = 0000004D
/* 04CB4 80B40E94 0C2CF1EF */  jal     func_80B3C7BC              
/* 04CB8 80B40E98 2406004E */  addiu   $a2, $zero, 0x004E         ## $a2 = 0000004E
/* 04CBC 80B40E9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04CC0 80B40EA0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04CC4 80B40EA4 03E00008 */  jr      $ra                        
/* 04CC8 80B40EA8 00000000 */  nop
