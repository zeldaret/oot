glabel ObjKibako_Update
/* 00B34 80B957D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B38 80B957D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B3C 80B957DC 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00B40 80B957E0 0320F809 */  jalr    $ra, $t9                   
/* 00B44 80B957E4 00000000 */  nop
/* 00B48 80B957E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B4C 80B957EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B50 80B957F0 03E00008 */  jr      $ra                        
/* 00B54 80B957F4 00000000 */  nop
