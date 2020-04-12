glabel ObjTsubo_Update
/* 00D88 80BA1AE8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D8C 80BA1AEC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D90 80BA1AF0 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00D94 80BA1AF4 0320F809 */  jalr    $ra, $t9                   
/* 00D98 80BA1AF8 00000000 */  nop
/* 00D9C 80BA1AFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DA0 80BA1B00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DA4 80BA1B04 03E00008 */  jr      $ra                        
/* 00DA8 80BA1B08 00000000 */  nop
