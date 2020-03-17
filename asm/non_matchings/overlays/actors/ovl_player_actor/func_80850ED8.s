glabel func_80850ED8
/* 1ECC8 80850ED8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1ECCC 80850EDC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1ECD0 80850EE0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 1ECD4 80850EE4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1ECD8 80850EE8 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1ECDC 80850EEC 0C20CB6C */  jal     func_80832DB0              
/* 1ECE0 80850EF0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 1ECE4 80850EF4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 1ECE8 80850EF8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 1ECEC 80850EFC 0C20CAC3 */  jal     func_80832B0C              
/* 1ECF0 80850F00 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 1ECF4 80850F04 0C20C884 */  jal     func_80832210              
/* 1ECF8 80850F08 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 1ECFC 80850F0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1ED00 80850F10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1ED04 80850F14 03E00008 */  jr      $ra                        
/* 1ED08 80850F18 00000000 */  nop


