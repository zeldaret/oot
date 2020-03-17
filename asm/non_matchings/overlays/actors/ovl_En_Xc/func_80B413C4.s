glabel func_80B413C4
/* 051E4 80B413C4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 051E8 80B413C8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 051EC 80B413CC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 051F0 80B413D0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 051F4 80B413D4 0C2CF5C4 */  jal     func_80B3D710              
/* 051F8 80B413D8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 051FC 80B413DC 0C2CF12C */  jal     func_80B3C4B0              
/* 05200 80B413E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05204 80B413E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05208 80B413E8 0C2CF11A */  jal     func_80B3C468              
/* 0520C 80B413EC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05210 80B413F0 0C2CF0C7 */  jal     func_80B3C31C              
/* 05214 80B413F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05218 80B413F8 0C2D0366 */  jal     func_80B40D98              
/* 0521C 80B413FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05220 80B41400 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05224 80B41404 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 05228 80B41408 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0522C 80B4140C 03E00008 */  jr      $ra                        
/* 05230 80B41410 00000000 */  nop


