glabel DoorGerudo_Update
/* 00444 80994A24 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00448 80994A28 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0044C 80994A2C 8C990168 */  lw      $t9, 0x0168($a0)           ## 00000168
/* 00450 80994A30 0320F809 */  jalr    $ra, $t9                   
/* 00454 80994A34 00000000 */  nop
/* 00458 80994A38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0045C 80994A3C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00460 80994A40 03E00008 */  jr      $ra                        
/* 00464 80994A44 00000000 */  nop
