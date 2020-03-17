glabel func_80B3F298
/* 030B8 80B3F298 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 030BC 80B3F29C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 030C0 80B3F2A0 0C2CF984 */  jal     func_80B3E610              
/* 030C4 80B3F2A4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 030C8 80B3F2A8 0C2CFBF2 */  jal     func_80B3EFC8              
/* 030CC 80B3F2AC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 030D0 80B3F2B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 030D4 80B3F2B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 030D8 80B3F2B8 03E00008 */  jr      $ra                        
/* 030DC 80B3F2BC 00000000 */  nop


