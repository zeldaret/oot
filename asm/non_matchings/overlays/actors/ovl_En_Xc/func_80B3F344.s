glabel func_80B3F344
/* 03164 80B3F344 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03168 80B3F348 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0316C 80B3F34C 0C2CF9CE */  jal     func_80B3E738              
/* 03170 80B3F350 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03174 80B3F354 0C2CFC2E */  jal     func_80B3F0B8              
/* 03178 80B3F358 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0317C 80B3F35C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03180 80B3F360 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03184 80B3F364 03E00008 */  jr      $ra                        
/* 03188 80B3F368 00000000 */  nop


