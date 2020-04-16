glabel EnHorseGanon_Update
/* 0087C 80A68EDC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00880 80A68EE0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00884 80A68EE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00888 80A68EE8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0088C 80A68EEC AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00890 80A68EF0 8E0E014C */  lw      $t6, 0x014C($s0)           ## 0000014C
/* 00894 80A68EF4 3C1980A7 */  lui     $t9, %hi(D_80A692C4)       ## $t9 = 80A70000
/* 00898 80A68EF8 000E7880 */  sll     $t7, $t6,  2               
/* 0089C 80A68EFC 032FC821 */  addu    $t9, $t9, $t7              
/* 008A0 80A68F00 8F3992C4 */  lw      $t9, %lo(D_80A692C4)($t9)  
/* 008A4 80A68F04 0320F809 */  jalr    $ra, $t9                   
/* 008A8 80A68F08 00000000 */  nop
/* 008AC 80A68F0C 0C00B638 */  jal     Actor_MoveForward
              
/* 008B0 80A68F10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008B4 80A68F14 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 008B8 80A68F18 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 008BC 80A68F1C 2418001D */  addiu   $t8, $zero, 0x001D         ## $t8 = 0000001D
/* 008C0 80A68F20 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 008C4 80A68F24 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 008C8 80A68F28 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 008CC 80A68F2C 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 008D0 80A68F30 3C07425C */  lui     $a3, 0x425C                ## $a3 = 425C0000
/* 008D4 80A68F34 0C00B92D */  jal     func_8002E4B4              
/* 008D8 80A68F38 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 008DC 80A68F3C 8E080028 */  lw      $t0, 0x0028($s0)           ## 00000028
/* 008E0 80A68F40 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 008E4 80A68F44 8E090024 */  lw      $t1, 0x0024($s0)           ## 00000024
/* 008E8 80A68F48 AE08003C */  sw      $t0, 0x003C($s0)           ## 0000003C
/* 008EC 80A68F4C C606003C */  lwc1    $f6, 0x003C($s0)           ## 0000003C
/* 008F0 80A68F50 44814000 */  mtc1    $at, $f8                   ## $f8 = 70.00
/* 008F4 80A68F54 AE090038 */  sw      $t1, 0x0038($s0)           ## 00000038
/* 008F8 80A68F58 8E09002C */  lw      $t1, 0x002C($s0)           ## 0000002C
/* 008FC 80A68F5C 46083280 */  add.s   $f10, $f6, $f8             
/* 00900 80A68F60 260601FC */  addiu   $a2, $s0, 0x01FC           ## $a2 = 000001FC
/* 00904 80A68F64 AE090040 */  sw      $t1, 0x0040($s0)           ## 00000040
/* 00908 80A68F68 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000001FC
/* 0090C 80A68F6C E60A003C */  swc1    $f10, 0x003C($s0)          ## 0000003C
/* 00910 80A68F70 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 00914 80A68F74 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00918 80A68F78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0091C 80A68F7C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00920 80A68F80 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00924 80A68F84 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00928 80A68F88 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 0092C 80A68F8C 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 00930 80A68F90 00812821 */  addu    $a1, $a0, $at              
/* 00934 80A68F94 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00938 80A68F98 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0093C 80A68F9C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00940 80A68FA0 03E00008 */  jr      $ra                        
/* 00944 80A68FA4 00000000 */  nop
