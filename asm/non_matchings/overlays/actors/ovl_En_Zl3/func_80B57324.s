glabel func_80B57324
/* 03F74 80B57324 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03F78 80B57328 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03F7C 80B5732C 0C00BC65 */  jal     func_8002F194              
/* 03F80 80B57330 00000000 */  nop
/* 03F84 80B57334 10400003 */  beq     $v0, $zero, .L80B57344     
/* 03F88 80B57338 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03F8C 80B5733C 10000002 */  beq     $zero, $zero, .L80B57348   
/* 03F90 80B57340 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B57344:
/* 03F94 80B57344 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B57348:
/* 03F98 80B57348 03E00008 */  jr      $ra                        
/* 03F9C 80B5734C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
