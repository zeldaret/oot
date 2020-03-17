glabel func_80B4FEB4
/* 01524 80B4FEB4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01528 80B4FEB8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0152C 80B4FEBC 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 01530 80B4FEC0 0C01E245 */  jal     func_80078914              
/* 01534 80B4FEC4 24056879 */  addiu   $a1, $zero, 0x6879         ## $a1 = 00006879
/* 01538 80B4FEC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0153C 80B4FECC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01540 80B4FED0 03E00008 */  jr      $ra                        
/* 01544 80B4FED4 00000000 */  nop


