glabel func_80B05C24
/* 01394 80B05C24 848203CE */  lh      $v0, 0x03CE($a0)           ## 000003CE
/* 01398 80B05C28 14400003 */  bne     $v0, $zero, .L80B05C38     
/* 0139C 80B05C2C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 013A0 80B05C30 03E00008 */  jr      $ra                        
/* 013A4 80B05C34 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B05C38:
/* 013A8 80B05C38 A48E03CE */  sh      $t6, 0x03CE($a0)           ## 000003CE
/* 013AC 80B05C3C 03E00008 */  jr      $ra                        
/* 013B0 80B05C40 00000000 */  nop


