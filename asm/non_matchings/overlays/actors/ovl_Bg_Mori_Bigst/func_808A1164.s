glabel func_808A1164
/* 005A4 808A1164 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005A8 808A1168 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005AC 808A116C 848E0168 */  lh      $t6, 0x0168($a0)           ## 00000168
/* 005B0 808A1170 5DC00004 */  bgtzl   $t6, .L808A1184            
/* 005B4 808A1174 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005B8 808A1178 0C228464 */  jal     func_808A1190              
/* 005BC 808A117C 00000000 */  nop
/* 005C0 808A1180 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A1184:
/* 005C4 808A1184 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005C8 808A1188 03E00008 */  jr      $ra                        
/* 005CC 808A118C 00000000 */  nop
