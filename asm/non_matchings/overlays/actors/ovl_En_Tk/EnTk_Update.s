glabel EnTk_Update
/* 01858 80B1D158 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0185C 80B1D15C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01860 80B1D160 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01864 80B1D164 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01868 80B1D168 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 0186C 80B1D16C 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 01870 80B1D170 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 01874 80B1D174 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 01878 80B1D178 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 0187C 80B1D17C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 01880 80B1D180 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01884 80B1D184 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01888 80B1D188 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 0188C 80B1D18C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01890 80B1D190 00812821 */  addu    $a1, $a0, $at              
/* 01894 80B1D194 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01898 80B1D198 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0189C 80B1D19C 0C00B638 */  jal     Actor_MoveForward
              
/* 018A0 80B1D1A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018A4 80B1D1A4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 018A8 80B1D1A8 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 018AC 80B1D1AC AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 018B0 80B1D1B0 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 018B4 80B1D1B4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 018B8 80B1D1B8 3C064220 */  lui     $a2, 0x4220                ## $a2 = 42200000
/* 018BC 80B1D1BC 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 018C0 80B1D1C0 0C00B92D */  jal     func_8002E4B4              
/* 018C4 80B1D1C4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 018C8 80B1D1C8 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 018CC 80B1D1CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018D0 80B1D1D0 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 018D4 80B1D1D4 0320F809 */  jalr    $ra, $t9                   
/* 018D8 80B1D1D8 00000000 */  nop
/* 018DC 80B1D1DC 0C2C6E69 */  jal     func_80B1B9A4              
/* 018E0 80B1D1E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018E4 80B1D1E4 0C2C7003 */  jal     func_80B1C00C              
/* 018E8 80B1D1E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018EC 80B1D1EC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 018F0 80B1D1F0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 018F4 80B1D1F4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 018F8 80B1D1F8 03E00008 */  jr      $ra                        
/* 018FC 80B1D1FC 00000000 */  nop


