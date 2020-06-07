glabel func_80B41374
/* 05194 80B41374 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05198 80B41378 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0519C 80B4137C 0C2CF984 */  jal     func_80B3E610              
/* 051A0 80B41380 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 051A4 80B41384 0C2D0354 */  jal     func_80B40D50              
/* 051A8 80B41388 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 051AC 80B4138C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 051B0 80B41390 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 051B4 80B41394 03E00008 */  jr      $ra                        
/* 051B8 80B41398 00000000 */  nop
