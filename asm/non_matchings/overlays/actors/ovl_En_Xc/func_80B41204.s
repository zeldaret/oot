glabel func_80B41204
/* 05024 80B41204 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05028 80B41208 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0502C 80B4120C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 05030 80B41210 0C2CF12C */  jal     func_80B3C4B0              
/* 05034 80B41214 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 05038 80B41218 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0503C 80B4121C 0C2CF11A */  jal     func_80B3C468              
/* 05040 80B41220 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 05044 80B41224 0C2CF0C7 */  jal     func_80B3C31C              
/* 05048 80B41228 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0504C 80B4122C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 05050 80B41230 0C2D03AB */  jal     func_80B40EAC              
/* 05054 80B41234 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 05058 80B41238 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0505C 80B4123C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05060 80B41240 03E00008 */  jr      $ra                        
/* 05064 80B41244 00000000 */  nop
