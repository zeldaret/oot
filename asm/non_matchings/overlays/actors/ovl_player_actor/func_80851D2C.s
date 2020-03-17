glabel func_80851D2C
/* 1FB1C 80851D2C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1FB20 80851D30 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 1FB24 80851D34 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1FB28 80851D38 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 1FB2C 80851D3C 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1FB30 80851D40 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 1FB34 80851D44 0C2143C7 */  jal     func_80850F1C              
/* 1FB38 80851D48 24C630A0 */  addiu   $a2, $a2, 0x30A0           ## $a2 = 040030A0
/* 1FB3C 80851D4C 0C212D26 */  jal     func_8084B498              
/* 1FB40 80851D50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1FB44 80851D54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1FB48 80851D58 0C023A7E */  jal     func_8008E9F8              
/* 1FB4C 80851D5C 82050154 */  lb      $a1, 0x0154($s0)           ## 00000154
/* 1FB50 80851D60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1FB54 80851D64 0C023ACB */  jal     func_8008EB2C              
/* 1FB58 80851D68 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 1FB5C 80851D6C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1FB60 80851D70 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 1FB64 80851D74 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1FB68 80851D78 03E00008 */  jr      $ra                        
/* 1FB6C 80851D7C 00000000 */  nop


