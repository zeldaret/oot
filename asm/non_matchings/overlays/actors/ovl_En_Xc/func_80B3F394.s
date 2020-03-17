glabel func_80B3F394
/* 031B4 80B3F394 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 031B8 80B3F398 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 031BC 80B3F39C 0C2CFA01 */  jal     func_80B3E804              
/* 031C0 80B3F3A0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 031C4 80B3F3A4 0C2CFC40 */  jal     func_80B3F100              
/* 031C8 80B3F3A8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 031CC 80B3F3AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 031D0 80B3F3B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 031D4 80B3F3B4 03E00008 */  jr      $ra                        
/* 031D8 80B3F3B8 00000000 */  nop


