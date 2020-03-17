glabel EnTa_Update
/* 02EF0 80B16990 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 02EF4 80B16994 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 02EF8 80B16998 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02EFC 80B1699C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 02F00 80B169A0 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 02F04 80B169A4 26060264 */  addiu   $a2, $s0, 0x0264           ## $a2 = 00000264
/* 02F08 80B169A8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000264
/* 02F0C 80B169AC 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 02F10 80B169B0 AFA60034 */  sw      $a2, 0x0034($sp)           
/* 02F14 80B169B4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 02F18 80B169B8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02F1C 80B169BC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02F20 80B169C0 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 02F24 80B169C4 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 02F28 80B169C8 00812821 */  addu    $a1, $a0, $at              
/* 02F2C 80B169CC 0C00B638 */  jal     Actor_MoveForward
              
/* 02F30 80B169D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F34 80B169D4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02F38 80B169D8 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 02F3C 80B169DC AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 02F40 80B169E0 44060000 */  mfc1    $a2, $f0                   
/* 02F44 80B169E4 44070000 */  mfc1    $a3, $f0                   
/* 02F48 80B169E8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 02F4C 80B169EC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02F50 80B169F0 0C00B92D */  jal     func_8002E4B4              
/* 02F54 80B169F4 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 02F58 80B169F8 8E190260 */  lw      $t9, 0x0260($s0)           ## 00000260
/* 02F5C 80B169FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F60 80B16A00 0320F809 */  jalr    $ra, $t9                   
/* 02F64 80B16A04 00000000 */  nop
/* 02F68 80B16A08 8E19025C */  lw      $t9, 0x025C($s0)           ## 0000025C
/* 02F6C 80B16A0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F70 80B16A10 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 02F74 80B16A14 0320F809 */  jalr    $ra, $t9                   
/* 02F78 80B16A18 00000000 */  nop
/* 02F7C 80B16A1C 960202E0 */  lhu     $v0, 0x02E0($s0)           ## 000002E0
/* 02F80 80B16A20 304F0004 */  andi    $t7, $v0, 0x0004           ## $t7 = 00000000
/* 02F84 80B16A24 55E00007 */  bnel    $t7, $zero, .L80B16A44     
/* 02F88 80B16A28 30580001 */  andi    $t8, $v0, 0x0001           ## $t8 = 00000000
/* 02F8C 80B16A2C 8E1902B0 */  lw      $t9, 0x02B0($s0)           ## 000002B0
/* 02F90 80B16A30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F94 80B16A34 0320F809 */  jalr    $ra, $t9                   
/* 02F98 80B16A38 00000000 */  nop
/* 02F9C 80B16A3C 960202E0 */  lhu     $v0, 0x02E0($s0)           ## 000002E0
/* 02FA0 80B16A40 30580001 */  andi    $t8, $v0, 0x0001           ## $t8 = 00000000
.L80B16A44:
/* 02FA4 80B16A44 1300000E */  beq     $t8, $zero, .L80B16A80     
/* 02FA8 80B16A48 260402D4 */  addiu   $a0, $s0, 0x02D4           ## $a0 = 000002D4
/* 02FAC 80B16A4C 8E090038 */  lw      $t1, 0x0038($s0)           ## 00000038
/* 02FB0 80B16A50 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 02FB4 80B16A54 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02FB8 80B16A58 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 02FBC 80B16A5C 8E08003C */  lw      $t0, 0x003C($s0)           ## 0000003C
/* 02FC0 80B16A60 260602D4 */  addiu   $a2, $s0, 0x02D4           ## $a2 = 000002D4
/* 02FC4 80B16A64 260702DA */  addiu   $a3, $s0, 0x02DA           ## $a3 = 000002DA
/* 02FC8 80B16A68 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 02FCC 80B16A6C 8E090040 */  lw      $t1, 0x0040($s0)           ## 00000040
/* 02FD0 80B16A70 0C00E0A4 */  jal     func_80038290              
/* 02FD4 80B16A74 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 02FD8 80B16A78 1000001D */  beq     $zero, $zero, .L80B16AF0   
/* 02FDC 80B16A7C 960E02E0 */  lhu     $t6, 0x02E0($s0)           ## 000002E0
.L80B16A80:
/* 02FE0 80B16A80 240A0064 */  addiu   $t2, $zero, 0x0064         ## $t2 = 00000064
/* 02FE4 80B16A84 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 02FE8 80B16A88 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02FEC 80B16A8C 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 02FF0 80B16A90 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02FF4 80B16A94 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 02FF8 80B16A98 240B0064 */  addiu   $t3, $zero, 0x0064         ## $t3 = 00000064
/* 02FFC 80B16A9C AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 03000 80B16AA0 260402D6 */  addiu   $a0, $s0, 0x02D6           ## $a0 = 000002D6
/* 03004 80B16AA4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 03008 80B16AA8 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 0300C 80B16AAC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 03010 80B16AB0 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 03014 80B16AB4 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 03018 80B16AB8 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 0301C 80B16ABC 260402DA */  addiu   $a0, $s0, 0x02DA           ## $a0 = 000002DA
/* 03020 80B16AC0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 03024 80B16AC4 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 03028 80B16AC8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0302C 80B16ACC 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 03030 80B16AD0 240D0064 */  addiu   $t5, $zero, 0x0064         ## $t5 = 00000064
/* 03034 80B16AD4 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 03038 80B16AD8 260402DC */  addiu   $a0, $s0, 0x02DC           ## $a0 = 000002DC
/* 0303C 80B16ADC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 03040 80B16AE0 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 03044 80B16AE4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 03048 80B16AE8 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 0304C 80B16AEC 960E02E0 */  lhu     $t6, 0x02E0($s0)           ## 000002E0
.L80B16AF0:
/* 03050 80B16AF0 860202CC */  lh      $v0, 0x02CC($s0)           ## 000002CC
/* 03054 80B16AF4 31CFFFFA */  andi    $t7, $t6, 0xFFFA           ## $t7 = 00000000
/* 03058 80B16AF8 18400003 */  blez    $v0, .L80B16B08            
/* 0305C 80B16AFC A60F02E0 */  sh      $t7, 0x02E0($s0)           ## 000002E0
/* 03060 80B16B00 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 03064 80B16B04 A61902CC */  sh      $t9, 0x02CC($s0)           ## 000002CC
.L80B16B08:
/* 03068 80B16B08 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0306C 80B16B0C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 03070 80B16B10 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 03074 80B16B14 03E00008 */  jr      $ra                        
/* 03078 80B16B18 00000000 */  nop


