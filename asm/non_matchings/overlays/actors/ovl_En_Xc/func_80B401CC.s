glabel func_80B401CC
/* 03FEC 80B401CC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03FF0 80B401D0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03FF4 80B401D4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03FF8 80B401D8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03FFC 80B401DC 0C2CF12C */  jal     func_80B3C4B0              
/* 04000 80B401E0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 04004 80B401E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04008 80B401E8 0C2CF11A */  jal     func_80B3C468              
/* 0400C 80B401EC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04010 80B401F0 0C2CF0C7 */  jal     func_80B3C31C              
/* 04014 80B401F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04018 80B401F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0401C 80B401FC 0C2CFEC9 */  jal     func_80B3FB24              
/* 04020 80B40200 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04024 80B40204 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04028 80B40208 0C2D002B */  jal     func_80B400AC              
/* 0402C 80B4020C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04030 80B40210 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04034 80B40214 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 04038 80B40218 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0403C 80B4021C 03E00008 */  jr      $ra                        
/* 04040 80B40220 00000000 */  nop
