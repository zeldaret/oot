glabel BgGndFiremeiro_Update
/* 00408 808798C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0040C 808798CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00410 808798D0 8C990174 */  lw      $t9, 0x0174($a0)           ## 00000174
/* 00414 808798D4 0320F809 */  jalr    $ra, $t9                   
/* 00418 808798D8 00000000 */  nop
/* 0041C 808798DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00420 808798E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00424 808798E4 03E00008 */  jr      $ra                        
/* 00428 808798E8 00000000 */  nop
