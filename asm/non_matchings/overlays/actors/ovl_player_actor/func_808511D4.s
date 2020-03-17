glabel func_808511D4
/* 1EFC4 808511D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1EFC8 808511D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1EFCC 808511DC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1EFD0 808511E0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1EFD4 808511E4 0C028EF0 */  jal     func_800A3BC0              
/* 1EFD8 808511E8 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1EFDC 808511EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1EFE0 808511F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1EFE4 808511F4 03E00008 */  jr      $ra                        
/* 1EFE8 808511F8 00000000 */  nop


