glabel func_80B572F0
/* 03F40 80B572F0 848200A4 */  lh      $v0, 0x00A4($a0)           ## 000000A4
/* 03F44 80B572F4 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 03F48 80B572F8 54410004 */  bnel    $v0, $at, .L80B5730C       
/* 03F4C 80B572FC 2401001A */  addiu   $at, $zero, 0x001A         ## $at = 0000001A
/* 03F50 80B57300 03E00008 */  jr      $ra                        
/* 03F54 80B57304 240271A8 */  addiu   $v0, $zero, 0x71A8         ## $v0 = 000071A8
.L80B57308:
/* 03F58 80B57308 2401001A */  addiu   $at, $zero, 0x001A         ## $at = 0000001A
.L80B5730C:
/* 03F5C 80B5730C 14410003 */  bne     $v0, $at, .L80B5731C       
/* 03F60 80B57310 240371AB */  addiu   $v1, $zero, 0x71AB         ## $v1 = 000071AB
/* 03F64 80B57314 03E00008 */  jr      $ra                        
/* 03F68 80B57318 240271A9 */  addiu   $v0, $zero, 0x71A9         ## $v0 = 000071A9
.L80B5731C:
/* 03F6C 80B5731C 03E00008 */  jr      $ra                        
/* 03F70 80B57320 00601025 */  or      $v0, $v1, $zero            ## $v0 = 000071AB
