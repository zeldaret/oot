glabel EnFu_Update
/* 0075C 80A1DF6C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00760 80A1DF70 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00764 80A1DF74 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00768 80A1DF78 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0076C 80A1DF7C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00770 80A1DF80 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 00774 80A1DF84 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000014C
/* 00778 80A1DF88 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 0077C 80A1DF8C AFA60030 */  sw      $a2, 0x0030($sp)           
/* 00780 80A1DF90 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00784 80A1DF94 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00788 80A1DF98 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0078C 80A1DF9C 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 00790 80A1DFA0 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00794 80A1DFA4 00812821 */  addu    $a1, $a0, $at              
/* 00798 80A1DFA8 0C00B638 */  jal     Actor_MoveForward
              
/* 0079C 80A1DFAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007A0 80A1DFB0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 007A4 80A1DFB4 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 007A8 80A1DFB8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 007AC 80A1DFBC 44060000 */  mfc1    $a2, $f0                   
/* 007B0 80A1DFC0 44070000 */  mfc1    $a3, $f0                   
/* 007B4 80A1DFC4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 007B8 80A1DFC8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 007BC 80A1DFCC 0C00B92D */  jal     func_8002E4B4              
/* 007C0 80A1DFD0 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 007C4 80A1DFD4 960F02A8 */  lhu     $t7, 0x02A8($s0)           ## 000002A8
/* 007C8 80A1DFD8 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 007CC 80A1DFDC 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 007D0 80A1DFE0 57000014 */  bnel    $t8, $zero, .L80A1E034     
/* 007D4 80A1DFE4 8E1902AC */  lw      $t9, 0x02AC($s0)           ## 000002AC
/* 007D8 80A1DFE8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 007DC 80A1DFEC AFA40030 */  sw      $a0, 0x0030($sp)           
/* 007E0 80A1DFF0 50400010 */  beql    $v0, $zero, .L80A1E034     
/* 007E4 80A1DFF4 8E1902AC */  lw      $t9, 0x02AC($s0)           ## 000002AC
/* 007E8 80A1DFF8 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 007EC 80A1DFFC 8E0401A0 */  lw      $a0, 0x01A0($s0)           ## 000001A0
/* 007F0 80A1E000 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 007F4 80A1E004 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 007F8 80A1E008 8E0501A0 */  lw      $a1, 0x01A0($s0)           ## 000001A0
/* 007FC 80A1E00C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00800 80A1E010 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 00804 80A1E014 44070000 */  mfc1    $a3, $f0                   
/* 00808 80A1E018 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 0080C 80A1E01C 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00810 80A1E020 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00814 80A1E024 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00818 80A1E028 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 0081C 80A1E02C E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00820 80A1E030 8E1902AC */  lw      $t9, 0x02AC($s0)           ## 000002AC
.L80A1E034:
/* 00824 80A1E034 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00828 80A1E038 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 0082C 80A1E03C 0320F809 */  jalr    $ra, $t9                   
/* 00830 80A1E040 00000000 */  nop
/* 00834 80A1E044 960802A8 */  lhu     $t0, 0x02A8($s0)           ## 000002A8
/* 00838 80A1E048 2604029C */  addiu   $a0, $s0, 0x029C           ## $a0 = 0000029C
/* 0083C 80A1E04C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00840 80A1E050 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 00844 80A1E054 1120001E */  beq     $t1, $zero, .L80A1E0D0     
/* 00848 80A1E058 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 0084C 80A1E05C 240A0064 */  addiu   $t2, $zero, 0x0064         ## $t2 = 00000064
/* 00850 80A1E060 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00854 80A1E064 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00858 80A1E068 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 0085C 80A1E06C 240B0064 */  addiu   $t3, $zero, 0x0064         ## $t3 = 00000064
/* 00860 80A1E070 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 00864 80A1E074 2604029E */  addiu   $a0, $s0, 0x029E           ## $a0 = 0000029E
/* 00868 80A1E078 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0086C 80A1E07C 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00870 80A1E080 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00874 80A1E084 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00878 80A1E088 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 0087C 80A1E08C AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00880 80A1E090 260402A2 */  addiu   $a0, $s0, 0x02A2           ## $a0 = 000002A2
/* 00884 80A1E094 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00888 80A1E098 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 0088C 80A1E09C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00890 80A1E0A0 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00894 80A1E0A4 240D0064 */  addiu   $t5, $zero, 0x0064         ## $t5 = 00000064
/* 00898 80A1E0A8 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 0089C 80A1E0AC 260402A4 */  addiu   $a0, $s0, 0x02A4           ## $a0 = 000002A4
/* 008A0 80A1E0B0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 008A4 80A1E0B4 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 008A8 80A1E0B8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 008AC 80A1E0BC 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 008B0 80A1E0C0 960E02A8 */  lhu     $t6, 0x02A8($s0)           ## 000002A8
/* 008B4 80A1E0C4 31CFFFFE */  andi    $t7, $t6, 0xFFFE           ## $t7 = 00000000
/* 008B8 80A1E0C8 1000000C */  beq     $zero, $zero, .L80A1E0FC   
/* 008BC 80A1E0CC A60F02A8 */  sh      $t7, 0x02A8($s0)           ## 000002A8
.L80A1E0D0:
/* 008C0 80A1E0D0 8E190038 */  lw      $t9, 0x0038($s0)           ## 00000038
/* 008C4 80A1E0D4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 008C8 80A1E0D8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 008CC 80A1E0DC AFB90010 */  sw      $t9, 0x0010($sp)           
/* 008D0 80A1E0E0 8E18003C */  lw      $t8, 0x003C($s0)           ## 0000003C
/* 008D4 80A1E0E4 2606029C */  addiu   $a2, $s0, 0x029C           ## $a2 = 0000029C
/* 008D8 80A1E0E8 260702A2 */  addiu   $a3, $s0, 0x02A2           ## $a3 = 000002A2
/* 008DC 80A1E0EC AFB80014 */  sw      $t8, 0x0014($sp)           
/* 008E0 80A1E0F0 8E190040 */  lw      $t9, 0x0040($s0)           ## 00000040
/* 008E4 80A1E0F4 0C00E0A4 */  jal     func_80038290              
/* 008E8 80A1E0F8 AFB90018 */  sw      $t9, 0x0018($sp)           
.L80A1E0FC:
/* 008EC 80A1E0FC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 008F0 80A1E100 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 008F4 80A1E104 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 008F8 80A1E108 03E00008 */  jr      $ra                        
/* 008FC 80A1E10C 00000000 */  nop


