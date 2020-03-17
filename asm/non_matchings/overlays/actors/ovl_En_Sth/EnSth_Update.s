glabel EnSth_Update
/* 0097C 80B07EBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00980 80B07EC0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00984 80B07EC4 8C9902B8 */  lw      $t9, 0x02B8($a0)           ## 000002B8
/* 00988 80B07EC8 0320F809 */  jalr    $ra, $t9                   
/* 0098C 80B07ECC 00000000 */  nop
/* 00990 80B07ED0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00994 80B07ED4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00998 80B07ED8 03E00008 */  jr      $ra                        
/* 0099C 80B07EDC 00000000 */  nop


