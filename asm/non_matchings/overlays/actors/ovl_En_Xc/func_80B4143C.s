glabel func_80B4143C
/* 0525C 80B4143C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05260 80B41440 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05264 80B41444 0C2CF9E8 */  jal     func_80B3E7A0              
/* 05268 80B41448 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0526C 80B4144C 0C2D0399 */  jal     func_80B40E64              
/* 05270 80B41450 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 05274 80B41454 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05278 80B41458 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0527C 80B4145C 03E00008 */  jr      $ra                        
/* 05280 80B41460 00000000 */  nop


