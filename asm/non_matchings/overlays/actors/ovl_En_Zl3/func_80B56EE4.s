glabel func_80B56EE4
/* 03B34 80B56EE4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03B38 80B56EE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03B3C 80B56EEC 0C2D536D */  jal     func_80B54DB4              
/* 03B40 80B56EF0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03B44 80B56EF4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 03B48 80B56EF8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 03B4C 80B56EFC 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 03B50 80B56F00 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03B54 80B56F04 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03B58 80B56F08 03E00008 */  jr      $ra                        
/* 03B5C 80B56F0C 00000000 */  nop


