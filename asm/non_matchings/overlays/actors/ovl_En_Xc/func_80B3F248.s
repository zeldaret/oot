glabel func_80B3F248
/* 03068 80B3F248 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0306C 80B3F24C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03070 80B3F250 0C2CF960 */  jal     func_80B3E580              
/* 03074 80B3F254 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03078 80B3F258 0C2CFBE0 */  jal     func_80B3EF80              
/* 0307C 80B3F25C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03080 80B3F260 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03084 80B3F264 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03088 80B3F268 03E00008 */  jr      $ra                        
/* 0308C 80B3F26C 00000000 */  nop


