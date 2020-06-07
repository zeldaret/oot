glabel func_80B592A8
/* 05EF8 80B592A8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05EFC 80B592AC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05F00 80B592B0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 05F04 80B592B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05F08 80B592B8 0C2D5378 */  jal     func_80B54DE0              
/* 05F0C 80B592BC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 05F10 80B592C0 0C2D4DB1 */  jal     func_80B536C4              
/* 05F14 80B592C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05F18 80B592C8 0C2D5CA6 */  jal     func_80B57298              
/* 05F1C 80B592CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05F20 80B592D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05F24 80B592D4 0C00B56E */  jal     Actor_SetHeight
              
/* 05F28 80B592D8 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 05F2C 80B592DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05F30 80B592E0 0C2D4CFF */  jal     func_80B533FC              
/* 05F34 80B592E4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05F38 80B592E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05F3C 80B592EC 0C2D4D9B */  jal     func_80B5366C              
/* 05F40 80B592F0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05F44 80B592F4 0C2D4D33 */  jal     func_80B534CC              
/* 05F48 80B592F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05F4C 80B592FC 0C2D4E53 */  jal     func_80B5394C              
/* 05F50 80B59300 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05F54 80B59304 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 05F58 80B59308 24C63D20 */  addiu   $a2, $a2, 0x3D20           ## $a2 = 06003D20
/* 05F5C 80B5930C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05F60 80B59310 0C2D5EAB */  jal     func_80B57AAC              
/* 05F64 80B59314 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 05F68 80B59318 0C2D5B7B */  jal     func_80B56DEC              
/* 05F6C 80B5931C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05F70 80B59320 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05F74 80B59324 0C2D62AB */  jal     func_80B58AAC              
/* 05F78 80B59328 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05F7C 80B5932C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05F80 80B59330 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 05F84 80B59334 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 05F88 80B59338 03E00008 */  jr      $ra                        
/* 05F8C 80B5933C 00000000 */  nop
