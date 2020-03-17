glabel BgJyaMegami_Update
/* 00A74 8089ABA4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A78 8089ABA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A7C 8089ABAC 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00A80 8089ABB0 0320F809 */  jalr    $ra, $t9                   
/* 00A84 8089ABB4 00000000 */  nop
/* 00A88 8089ABB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A8C 8089ABBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A90 8089ABC0 03E00008 */  jr      $ra                        
/* 00A94 8089ABC4 00000000 */  nop


