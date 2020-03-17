glabel func_80B40C74
/* 04A94 80B40C74 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04A98 80B40C78 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04A9C 80B40C7C 24050042 */  addiu   $a1, $zero, 0x0042         ## $a1 = 00000042
/* 04AA0 80B40C80 0C2CF1EF */  jal     func_80B3C7BC              
/* 04AA4 80B40C84 24060043 */  addiu   $a2, $zero, 0x0043         ## $a2 = 00000043
/* 04AA8 80B40C88 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04AAC 80B40C8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04AB0 80B40C90 03E00008 */  jr      $ra                        
/* 04AB4 80B40C94 00000000 */  nop


