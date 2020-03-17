glabel BgYdanMaruta_Update
/* 00528 808BF268 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0052C 808BF26C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00530 808BF270 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00534 808BF274 0320F809 */  jalr    $ra, $t9                   
/* 00538 808BF278 00000000 */  nop
/* 0053C 808BF27C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00540 808BF280 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00544 808BF284 03E00008 */  jr      $ra                        
/* 00548 808BF288 00000000 */  nop


