glabel func_80B55A58
/* 026A8 80B55A58 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 026AC 80B55A5C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 026B0 80B55A60 84AE07A0 */  lh      $t6, 0x07A0($a1)           ## 000007A0
/* 026B4 80B55A64 55C00004 */  bnel    $t6, $zero, .L80B55A78     
/* 026B8 80B55A68 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 026BC 80B55A6C 0C2D4DFA */  jal     func_80B537E8              
/* 026C0 80B55A70 00000000 */  nop
/* 026C4 80B55A74 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B55A78:
/* 026C8 80B55A78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 026CC 80B55A7C 03E00008 */  jr      $ra                        
/* 026D0 80B55A80 00000000 */  nop
