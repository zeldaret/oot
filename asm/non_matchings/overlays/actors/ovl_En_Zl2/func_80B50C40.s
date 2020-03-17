glabel func_80B50C40
/* 022B0 80B50C40 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 022B4 80B50C44 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 022B8 80B50C48 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 022BC 80B50C4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 022C0 80B50C50 0C2D3F33 */  jal     func_80B4FCCC              
/* 022C4 80B50C54 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 022C8 80B50C58 0C2D3F75 */  jal     func_80B4FDD4              
/* 022CC 80B50C5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022D0 80B50C60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022D4 80B50C64 0C2D3B4B */  jal     func_80B4ED2C              
/* 022D8 80B50C68 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 022DC 80B50C6C 0C2D3A6C */  jal     func_80B4E9B0              
/* 022E0 80B50C70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022E4 80B50C74 0C2D3B5D */  jal     func_80B4ED74              
/* 022E8 80B50C78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022EC 80B50C7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022F0 80B50C80 0C2D4038 */  jal     func_80B500E0              
/* 022F4 80B50C84 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 022F8 80B50C88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022FC 80B50C8C 0C2D40F7 */  jal     func_80B503DC              
/* 02300 80B50C90 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02304 80B50C94 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02308 80B50C98 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0230C 80B50C9C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02310 80B50CA0 03E00008 */  jr      $ra                        
/* 02314 80B50CA4 00000000 */  nop


