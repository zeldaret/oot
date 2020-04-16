glabel func_80B3F16C
/* 02F8C 80B3F16C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02F90 80B3F170 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02F94 80B3F174 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02F98 80B3F178 0C2CF908 */  jal     func_80B3E420              
/* 02F9C 80B3F17C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02FA0 80B3F180 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02FA4 80B3F184 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02FA8 80B3F188 0C2CF162 */  jal     func_80B3C588              
/* 02FAC 80B3F18C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 02FB0 80B3F190 0C2CFBB2 */  jal     func_80B3EEC8              
/* 02FB4 80B3F194 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02FB8 80B3F198 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02FBC 80B3F19C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02FC0 80B3F1A0 03E00008 */  jr      $ra                        
/* 02FC4 80B3F1A4 00000000 */  nop
