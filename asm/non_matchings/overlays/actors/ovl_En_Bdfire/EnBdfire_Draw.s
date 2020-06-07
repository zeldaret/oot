glabel EnBdfire_Draw
/* 00A94 809BCAC4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A98 809BCAC8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A9C 809BCACC 8C990150 */  lw      $t9, 0x0150($a0)           ## 00000150
/* 00AA0 809BCAD0 0320F809 */  jalr    $ra, $t9                   
/* 00AA4 809BCAD4 00000000 */  nop
/* 00AA8 809BCAD8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AAC 809BCADC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AB0 809BCAE0 03E00008 */  jr      $ra                        
/* 00AB4 809BCAE4 00000000 */  nop
/* 00AB8 809BCAE8 00000000 */  nop
/* 00ABC 809BCAEC 00000000 */  nop
