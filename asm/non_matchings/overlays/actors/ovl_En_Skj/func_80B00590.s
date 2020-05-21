glabel func_80B00590
/* 022E0 80B00590 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 022E4 80B00594 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 022E8 80B00598 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 022EC 80B0059C 3C0F80B0 */  lui     $t7, %hi(D_80B01648)       ## $t7 = 80B00000
/* 022F0 80B005A0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 022F4 80B005A4 2442FFFF */  addiu   $v0, $v0, 0xFFFF           ## $v0 = FFFFFFFF
/* 022F8 80B005A8 000270C0 */  sll     $t6, $v0,  3               
/* 022FC 80B005AC 01EE7821 */  addu    $t7, $t7, $t6              
/* 02300 80B005B0 91EF1648 */  lbu     $t7, %lo(D_80B01648)($t7)  
/* 02304 80B005B4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02308 80B005B8 15E10005 */  bne     $t7, $at, .L80B005D0       
/* 0230C 80B005BC 00000000 */  nop
/* 02310 80B005C0 0C2C01BE */  jal     func_80B006F8              
/* 02314 80B005C4 00000000 */  nop
/* 02318 80B005C8 10000001 */  beq     $zero, $zero, .L80B005D0   
/* 0231C 80B005CC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B005D0:
/* 02320 80B005D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02324 80B005D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02328 80B005D8 03E00008 */  jr      $ra                        
/* 0232C 80B005DC 00000000 */  nop
