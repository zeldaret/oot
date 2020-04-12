glabel func_80B3F270
/* 03090 80B3F270 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03094 80B3F274 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03098 80B3F278 0C2CF972 */  jal     func_80B3E5C8              
/* 0309C 80B3F27C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 030A0 80B3F280 0C2CFBE9 */  jal     func_80B3EFA4              
/* 030A4 80B3F284 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 030A8 80B3F288 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 030AC 80B3F28C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 030B0 80B3F290 03E00008 */  jr      $ra                        
/* 030B4 80B3F294 00000000 */  nop
