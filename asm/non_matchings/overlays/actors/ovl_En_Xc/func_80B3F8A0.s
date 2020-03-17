glabel func_80B3F8A0
/* 036C0 80B3F8A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 036C4 80B3F8A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 036C8 80B3F8A8 0C2CFB73 */  jal     func_80B3EDCC              
/* 036CC 80B3F8AC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 036D0 80B3F8B0 0C2CFDB7 */  jal     func_80B3F6DC              
/* 036D4 80B3F8B4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 036D8 80B3F8B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 036DC 80B3F8BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 036E0 80B3F8C0 03E00008 */  jr      $ra                        
/* 036E4 80B3F8C4 00000000 */  nop


