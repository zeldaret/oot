glabel ObjKibako2_Update
/* 00588 80B95F58 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0058C 80B95F5C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00590 80B95F60 8C9901B0 */  lw      $t9, 0x01B0($a0)           ## 000001B0
/* 00594 80B95F64 0320F809 */  jalr    $ra, $t9                   
/* 00598 80B95F68 00000000 */  nop
/* 0059C 80B95F6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005A0 80B95F70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005A4 80B95F74 03E00008 */  jr      $ra                        
/* 005A8 80B95F78 00000000 */  nop
