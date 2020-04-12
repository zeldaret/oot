glabel func_80A64ED4
/* 09BE4 80A64ED4 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 09BE8 80A64ED8 AFA60008 */  sw      $a2, 0x0008($sp)           
/* 09BEC 80A64EDC 8C820370 */  lw      $v0, 0x0370($a0)           ## 00000370
/* 09BF0 80A64EE0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 09BF4 80A64EE4 54410004 */  bnel    $v0, $at, .L80A64EF8       
/* 09BF8 80A64EE8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 09BFC 80A64EEC 03E00008 */  jr      $ra                        
/* 09C00 80A64EF0 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80A64EF4:
/* 09C04 80A64EF4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
.L80A64EF8:
/* 09C08 80A64EF8 54410004 */  bnel    $v0, $at, .L80A64F0C       
/* 09C0C 80A64EFC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 09C10 80A64F00 03E00008 */  jr      $ra                        
/* 09C14 80A64F04 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A64F08:
/* 09C18 80A64F08 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A64F0C:
/* 09C1C 80A64F0C 03E00008 */  jr      $ra                        
/* 09C20 80A64F10 00000000 */  nop
