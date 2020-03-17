glabel func_80AF38D0
/* 01380 80AF38D0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01384 80AF38D4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01388 80AF38D8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0138C 80AF38DC 240E0010 */  addiu   $t6, $zero, 0x0010         ## $t6 = 00000010
/* 01390 80AF38E0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01394 80AF38E4 AC8E02A8 */  sw      $t6, 0x02A8($a0)           ## 000002A8
/* 01398 80AF38E8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0139C 80AF38EC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 013A0 80AF38F0 24050C3A */  addiu   $a1, $zero, 0x0C3A         ## $a1 = 00000C3A
/* 013A4 80AF38F4 0C02003E */  jal     func_800800F8              
/* 013A8 80AF38F8 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 013AC 80AF38FC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 013B0 80AF3900 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 013B4 80AF3904 03E00008 */  jr      $ra                        
/* 013B8 80AF3908 00000000 */  nop


