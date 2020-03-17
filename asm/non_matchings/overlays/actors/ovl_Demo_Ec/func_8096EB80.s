glabel func_8096EB80
/* 016D0 8096EB80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 016D4 8096EB84 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 016D8 8096EB88 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 016DC 8096EB8C 0C25B54B */  jal     func_8096D52C              
/* 016E0 8096EB90 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 016E4 8096EB94 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 016E8 8096EB98 0C25B565 */  jal     func_8096D594              
/* 016EC 8096EB9C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 016F0 8096EBA0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 016F4 8096EBA4 0C25B553 */  jal     func_8096D54C              
/* 016F8 8096EBA8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 016FC 8096EBAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01700 8096EBB0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01704 8096EBB4 03E00008 */  jr      $ra                        
/* 01708 8096EBB8 00000000 */  nop


