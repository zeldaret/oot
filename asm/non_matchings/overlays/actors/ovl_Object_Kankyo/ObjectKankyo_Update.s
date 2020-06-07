glabel ObjectKankyo_Update
/* 0114C 80BA3BEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01150 80BA3BF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01154 80BA3BF4 8C99165C */  lw      $t9, 0x165C($a0)           ## 0000165C
/* 01158 80BA3BF8 0320F809 */  jalr    $ra, $t9                   
/* 0115C 80BA3BFC 00000000 */  nop
/* 01160 80BA3C00 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01164 80BA3C04 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01168 80BA3C08 03E00008 */  jr      $ra                        
/* 0116C 80BA3C0C 00000000 */  nop
