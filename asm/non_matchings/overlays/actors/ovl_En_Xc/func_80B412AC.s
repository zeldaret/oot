glabel func_80B412AC
/* 050CC 80B412AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 050D0 80B412B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 050D4 80B412B4 0C2CF92B */  jal     func_80B3E4AC              
/* 050D8 80B412B8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 050DC 80B412BC 0C2D0326 */  jal     func_80B40C98              
/* 050E0 80B412C0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 050E4 80B412C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 050E8 80B412C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 050EC 80B412CC 03E00008 */  jr      $ra                        
/* 050F0 80B412D0 00000000 */  nop


