glabel func_80B41464
/* 05284 80B41464 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05288 80B41468 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0528C 80B4146C 0C2CFA01 */  jal     func_80B3E804              
/* 05290 80B41470 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 05294 80B41474 0C2D03A2 */  jal     func_80B40E88              
/* 05298 80B41478 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0529C 80B4147C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 052A0 80B41480 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 052A4 80B41484 03E00008 */  jr      $ra                        
/* 052A8 80B41488 00000000 */  nop


