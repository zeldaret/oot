glabel func_808512E0
/* 1F0D0 808512E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1F0D4 808512E4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1F0D8 808512E8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1F0DC 808512EC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1F0E0 808512F0 0C028EF0 */  jal     func_800A3BC0              
/* 1F0E4 808512F4 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1F0E8 808512F8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 1F0EC 808512FC 0C20CA49 */  jal     func_80832924              
/* 1F0F0 80851300 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 1F0F4 80851304 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1F0F8 80851308 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1F0FC 8085130C 03E00008 */  jr      $ra                        
/* 1F100 80851310 00000000 */  nop
