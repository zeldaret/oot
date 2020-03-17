glabel func_80B56DC8
/* 03A18 80B56DC8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03A1C 80B56DCC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03A20 80B56DD0 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 03A24 80B56DD4 0C01E245 */  jal     func_80078914              
/* 03A28 80B56DD8 24056879 */  addiu   $a1, $zero, 0x6879         ## $a1 = 00006879
/* 03A2C 80B56DDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03A30 80B56DE0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03A34 80B56DE4 03E00008 */  jr      $ra                        
/* 03A38 80B56DE8 00000000 */  nop


