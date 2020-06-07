glabel func_80B410AC
/* 04ECC 80B410AC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04ED0 80B410B0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04ED4 80B410B4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04ED8 80B410B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04EDC 80B410BC 0C2D01A8 */  jal     func_80B406A0              
/* 04EE0 80B410C0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 04EE4 80B410C4 0C2CF12C */  jal     func_80B3C4B0              
/* 04EE8 80B410C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04EEC 80B410CC 0C2CF0C7 */  jal     func_80B3C31C              
/* 04EF0 80B410D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04EF4 80B410D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04EF8 80B410D8 0C2D03AB */  jal     func_80B40EAC              
/* 04EFC 80B410DC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04F00 80B410E0 14400006 */  bne     $v0, $zero, .L80B410FC     
/* 04F04 80B410E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F08 80B410E8 0C2CF249 */  jal     func_80B3C924              
/* 04F0C 80B410EC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04F10 80B410F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F14 80B410F4 0C2CF11A */  jal     func_80B3C468              
/* 04F18 80B410F8 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80B410FC:
/* 04F1C 80B410FC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04F20 80B41100 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 04F24 80B41104 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04F28 80B41108 03E00008 */  jr      $ra                        
/* 04F2C 80B4110C 00000000 */  nop
