glabel func_80B3E3C4
/* 021E4 80B3E3C4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 021E8 80B3E3C8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 021EC 80B3E3CC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 021F0 80B3E3D0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 021F4 80B3E3D4 0C2CF599 */  jal     func_80B3D664              
/* 021F8 80B3E3D8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 021FC 80B3E3DC 0C2CF12C */  jal     func_80B3C4B0              
/* 02200 80B3E3E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02204 80B3E3E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02208 80B3E3E8 0C2CF11A */  jal     func_80B3C468              
/* 0220C 80B3E3EC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02210 80B3E3F0 0C2CF0C7 */  jal     func_80B3C31C              
/* 02214 80B3E3F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02218 80B3E3F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0221C 80B3E3FC 0C2CF3A1 */  jal     func_80B3CE84              
/* 02220 80B3E400 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02224 80B3E404 0C2CF6AA */  jal     func_80B3DAA8              
/* 02228 80B3E408 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0222C 80B3E40C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02230 80B3E410 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02234 80B3E414 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02238 80B3E418 03E00008 */  jr      $ra                        
/* 0223C 80B3E41C 00000000 */  nop


