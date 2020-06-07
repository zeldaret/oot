glabel func_80B41000
/* 04E20 80B41000 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04E24 80B41004 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04E28 80B41008 0C2D03AB */  jal     func_80B40EAC              
/* 04E2C 80B4100C 00000000 */  nop
/* 04E30 80B41010 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04E34 80B41014 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04E38 80B41018 03E00008 */  jr      $ra                        
/* 04E3C 80B4101C 00000000 */  nop
