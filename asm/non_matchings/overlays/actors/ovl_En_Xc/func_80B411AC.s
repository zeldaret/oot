glabel func_80B411AC
/* 04FCC 80B411AC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04FD0 80B411B0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04FD4 80B411B4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04FD8 80B411B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04FDC 80B411BC 0C2CF12C */  jal     func_80B3C4B0              
/* 04FE0 80B411C0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 04FE4 80B411C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04FE8 80B411C8 0C2D019B */  jal     func_80B4066C              
/* 04FEC 80B411CC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04FF0 80B411D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04FF4 80B411D4 0C2CF11A */  jal     func_80B3C468              
/* 04FF8 80B411D8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04FFC 80B411DC 0C2CF0C7 */  jal     func_80B3C31C              
/* 05000 80B411E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05004 80B411E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05008 80B411E8 0C2D03AB */  jal     func_80B40EAC              
/* 0500C 80B411EC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 05010 80B411F0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05014 80B411F4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 05018 80B411F8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0501C 80B411FC 03E00008 */  jr      $ra                        
/* 05020 80B41200 00000000 */  nop
