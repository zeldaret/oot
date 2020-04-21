glabel func_80B41284
/* 050A4 80B41284 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 050A8 80B41288 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 050AC 80B4128C 0C2CF919 */  jal     func_80B3E464              
/* 050B0 80B41290 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 050B4 80B41294 0C2D031D */  jal     func_80B40C74              
/* 050B8 80B41298 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 050BC 80B4129C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 050C0 80B412A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 050C4 80B412A4 03E00008 */  jr      $ra                        
/* 050C8 80B412A8 00000000 */  nop
