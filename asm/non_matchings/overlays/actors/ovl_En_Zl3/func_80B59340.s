glabel func_80B59340
/* 05F90 80B59340 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05F94 80B59344 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05F98 80B59348 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 05F9C 80B5934C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05FA0 80B59350 0C2D5378 */  jal     func_80B54DE0              
/* 05FA4 80B59354 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 05FA8 80B59358 0C2D4DB1 */  jal     func_80B536C4              
/* 05FAC 80B5935C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05FB0 80B59360 0C2D5CA6 */  jal     func_80B57298              
/* 05FB4 80B59364 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05FB8 80B59368 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05FBC 80B5936C 0C00B56E */  jal     Actor_SetHeight
              
/* 05FC0 80B59370 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 05FC4 80B59374 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05FC8 80B59378 0C2D4CFF */  jal     func_80B533FC              
/* 05FCC 80B5937C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05FD0 80B59380 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05FD4 80B59384 0C2D4D9B */  jal     func_80B5366C              
/* 05FD8 80B59388 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05FDC 80B5938C 0C2D4D33 */  jal     func_80B534CC              
/* 05FE0 80B59390 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05FE4 80B59394 0C2D4E53 */  jal     func_80B5394C              
/* 05FE8 80B59398 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05FEC 80B5939C 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 05FF0 80B593A0 24C69FBC */  addiu   $a2, $a2, 0x9FBC           ## $a2 = 06009FBC
/* 05FF4 80B593A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05FF8 80B593A8 0C2D5EAB */  jal     func_80B57AAC              
/* 05FFC 80B593AC 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 06000 80B593B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06004 80B593B4 0C2D62AB */  jal     func_80B58AAC              
/* 06008 80B593B8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0600C 80B593BC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 06010 80B593C0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 06014 80B593C4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 06018 80B593C8 03E00008 */  jr      $ra                        
/* 0601C 80B593CC 00000000 */  nop


