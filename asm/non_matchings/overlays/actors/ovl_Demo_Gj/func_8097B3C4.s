glabel func_8097B3C4
/* 02A94 8097B3C4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02A98 8097B3C8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02A9C 8097B3CC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02AA0 8097B3D0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02AA4 8097B3D4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02AA8 8097B3D8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02AAC 8097B3DC 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 02AB0 8097B3E0 0C25E3F3 */  jal     func_80978FCC              
/* 02AB4 8097B3E4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02AB8 8097B3E8 3C078098 */  lui     $a3, %hi(D_8097BE0C)       ## $a3 = 80980000
/* 02ABC 8097B3EC 24E7BE0C */  addiu   $a3, $a3, %lo(D_8097BE0C)  ## $a3 = 8097BE0C
/* 02AC0 8097B3F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AC4 8097B3F4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02AC8 8097B3F8 0C25E257 */  jal     func_8097895C              
/* 02ACC 8097B3FC 26060184 */  addiu   $a2, $s0, 0x0184           ## $a2 = 00000184
/* 02AD0 8097B400 3C078098 */  lui     $a3, %hi(D_8097BE0C)       ## $a3 = 80980000
/* 02AD4 8097B404 24E7BE0C */  addiu   $a3, $a3, %lo(D_8097BE0C)  ## $a3 = 8097BE0C
/* 02AD8 8097B408 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02ADC 8097B40C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02AE0 8097B410 0C25E257 */  jal     func_8097895C              
/* 02AE4 8097B414 260601D0 */  addiu   $a2, $s0, 0x01D0           ## $a2 = 000001D0
/* 02AE8 8097B418 3C078098 */  lui     $a3, %hi(D_8097BE0C)       ## $a3 = 80980000
/* 02AEC 8097B41C 24E7BE0C */  addiu   $a3, $a3, %lo(D_8097BE0C)  ## $a3 = 8097BE0C
/* 02AF0 8097B420 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AF4 8097B424 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02AF8 8097B428 0C25E257 */  jal     func_8097895C              
/* 02AFC 8097B42C 2606021C */  addiu   $a2, $s0, 0x021C           ## $a2 = 0000021C
/* 02B00 8097B430 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02B04 8097B434 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02B08 8097B438 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02B0C 8097B43C 03E00008 */  jr      $ra                        
/* 02B10 8097B440 00000000 */  nop
