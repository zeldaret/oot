glabel func_80B41174
/* 04F94 80B41174 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04F98 80B41178 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04F9C 80B4117C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 04FA0 80B41180 0C2CF11A */  jal     func_80B3C468              
/* 04FA4 80B41184 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 04FA8 80B41188 0C2CF0C7 */  jal     func_80B3C31C              
/* 04FAC 80B4118C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04FB0 80B41190 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04FB4 80B41194 0C2D03AB */  jal     func_80B40EAC              
/* 04FB8 80B41198 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 04FBC 80B4119C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04FC0 80B411A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04FC4 80B411A4 03E00008 */  jr      $ra                        
/* 04FC8 80B411A8 00000000 */  nop


