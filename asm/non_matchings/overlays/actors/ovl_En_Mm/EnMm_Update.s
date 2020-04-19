glabel EnMm_Update
/* 00ED0 80AAE640 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00ED4 80AAE644 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00ED8 80AAE648 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00EDC 80AAE64C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00EE0 80AAE650 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00EE4 80AAE654 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 00EE8 80AAE658 0320F809 */  jalr    $ra, $t9                   
/* 00EEC 80AAE65C 00000000 */  nop
/* 00EF0 80AAE660 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EF4 80AAE664 0C2AB734 */  jal     func_80AADCD0              
/* 00EF8 80AAE668 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00EFC 80AAE66C 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 00F00 80AAE670 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 00F04 80AAE674 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00F08 80AAE678 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00F0C 80AAE67C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F10 80AAE680 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00F14 80AAE684 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00F18 80AAE688 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00F1C 80AAE68C 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00F20 80AAE690 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00F24 80AAE694 00812821 */  addu    $a1, $a0, $at              
/* 00F28 80AAE698 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00F2C 80AAE69C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00F30 80AAE6A0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00F34 80AAE6A4 03E00008 */  jr      $ra                        
/* 00F38 80AAE6A8 00000000 */  nop
