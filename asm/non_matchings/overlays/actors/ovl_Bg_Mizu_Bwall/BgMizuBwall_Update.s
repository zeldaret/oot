glabel BgMizuBwall_Update
/* 00F08 8089D388 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F0C 8089D38C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F10 8089D390 8C990298 */  lw      $t9, 0x0298($a0)           ## 00000298
/* 00F14 8089D394 0320F809 */  jalr    $ra, $t9                   
/* 00F18 8089D398 00000000 */  nop
/* 00F1C 8089D39C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F20 8089D3A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F24 8089D3A4 03E00008 */  jr      $ra                        
/* 00F28 8089D3A8 00000000 */  nop
