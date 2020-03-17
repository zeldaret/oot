glabel func_80851008
/* 1EDF8 80851008 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1EDFC 8085100C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1EE00 80851010 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 1EE04 80851014 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1EE08 80851018 0C20C884 */  jal     func_80832210              
/* 1EE0C 8085101C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 1EE10 80851020 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1EE14 80851024 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1EE18 80851028 03E00008 */  jr      $ra                        
/* 1EE1C 8085102C 00000000 */  nop


