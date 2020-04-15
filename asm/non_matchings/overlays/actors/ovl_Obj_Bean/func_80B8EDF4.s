glabel func_80B8EDF4
/* 00374 80B8EDF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00378 80B8EDF8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0037C 80B8EDFC A48001BA */  sh      $zero, 0x01BA($a0)         ## 000001BA
/* 00380 80B8EE00 848201BA */  lh      $v0, 0x01BA($a0)           ## 000001BA
/* 00384 80B8EE04 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00388 80B8EE08 A48201B8 */  sh      $v0, 0x01B8($a0)           ## 000001B8
/* 0038C 80B8EE0C 0C00B58B */  jal     Actor_SetScale
              
/* 00390 80B8EE10 A48201B6 */  sh      $v0, 0x01B6($a0)           ## 000001B6
/* 00394 80B8EE14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00398 80B8EE18 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0039C 80B8EE1C 03E00008 */  jr      $ra                        
/* 003A0 80B8EE20 00000000 */  nop
