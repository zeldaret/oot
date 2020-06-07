glabel EnGm_Update
/* 0098C 80A3E06C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00990 80A3E070 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00994 80A3E074 8C990268 */  lw      $t9, 0x0268($a0)           ## 00000268
/* 00998 80A3E078 0320F809 */  jalr    $ra, $t9                   
/* 0099C 80A3E07C 00000000 */  nop
/* 009A0 80A3E080 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009A4 80A3E084 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 009A8 80A3E088 03E00008 */  jr      $ra                        
/* 009AC 80A3E08C 00000000 */  nop
