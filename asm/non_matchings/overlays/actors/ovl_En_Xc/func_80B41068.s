glabel func_80B41068
/* 04E88 80B41068 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04E8C 80B4106C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04E90 80B41070 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 04E94 80B41074 0C2CF12C */  jal     func_80B3C4B0              
/* 04E98 80B41078 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 04E9C 80B4107C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04EA0 80B41080 0C2CF11A */  jal     func_80B3C468              
/* 04EA4 80B41084 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 04EA8 80B41088 0C2CF0C7 */  jal     func_80B3C31C              
/* 04EAC 80B4108C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04EB0 80B41090 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04EB4 80B41094 0C2D03AB */  jal     func_80B40EAC              
/* 04EB8 80B41098 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 04EBC 80B4109C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04EC0 80B410A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04EC4 80B410A4 03E00008 */  jr      $ra                        
/* 04EC8 80B410A8 00000000 */  nop
