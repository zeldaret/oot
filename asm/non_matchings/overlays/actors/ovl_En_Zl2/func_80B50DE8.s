glabel func_80B50DE8
/* 02458 80B50DE8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0245C 80B50DEC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02460 80B50DF0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02464 80B50DF4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02468 80B50DF8 0C2D3F33 */  jal     func_80B4FCCC              
/* 0246C 80B50DFC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02470 80B50E00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02474 80B50E04 0C2D3B4B */  jal     func_80B4ED2C              
/* 02478 80B50E08 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0247C 80B50E0C 0C2D3A6C */  jal     func_80B4E9B0              
/* 02480 80B50E10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02484 80B50E14 0C2D3B5D */  jal     func_80B4ED74              
/* 02488 80B50E18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0248C 80B50E1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02490 80B50E20 0C2D4281 */  jal     func_80B50A04              
/* 02494 80B50E24 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02498 80B50E28 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0249C 80B50E2C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 024A0 80B50E30 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 024A4 80B50E34 03E00008 */  jr      $ra                        
/* 024A8 80B50E38 00000000 */  nop


