glabel EnHs_Update
/* 00750 80A6EAF0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00754 80A6EAF4 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00758 80A6EAF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0075C 80A6EAFC AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00760 80A6EB00 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00764 80A6EB04 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00768 80A6EB08 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 0076C 80A6EB0C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000014C
/* 00770 80A6EB10 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00774 80A6EB14 AFA60034 */  sw      $a2, 0x0034($sp)           
/* 00778 80A6EB18 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0077C 80A6EB1C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00780 80A6EB20 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 00784 80A6EB24 02212821 */  addu    $a1, $s1, $at              
/* 00788 80A6EB28 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 0078C 80A6EB2C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00790 80A6EB30 0C00B638 */  jal     Actor_MoveForward
              
/* 00794 80A6EB34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00798 80A6EB38 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0079C 80A6EB3C 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 007A0 80A6EB40 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 007A4 80A6EB44 44060000 */  mfc1    $a2, $f0                   
/* 007A8 80A6EB48 44070000 */  mfc1    $a3, $f0                   
/* 007AC 80A6EB4C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 007B0 80A6EB50 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 007B4 80A6EB54 0C00B92D */  jal     func_8002E4B4              
/* 007B8 80A6EB58 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 007BC 80A6EB5C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 007C0 80A6EB60 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 007C4 80A6EB64 50400005 */  beql    $v0, $zero, .L80A6EB7C     
/* 007C8 80A6EB68 8E1902AC */  lw      $t9, 0x02AC($s0)           ## 000002AC
/* 007CC 80A6EB6C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 007D0 80A6EB70 00000000 */  nop
/* 007D4 80A6EB74 E60401B0 */  swc1    $f4, 0x01B0($s0)           ## 000001B0
/* 007D8 80A6EB78 8E1902AC */  lw      $t9, 0x02AC($s0)           ## 000002AC
.L80A6EB7C:
/* 007DC 80A6EB7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007E0 80A6EB80 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 007E4 80A6EB84 0320F809 */  jalr    $ra, $t9                   
/* 007E8 80A6EB88 00000000 */  nop
/* 007EC 80A6EB8C 960F02A8 */  lhu     $t7, 0x02A8($s0)           ## 000002A8
/* 007F0 80A6EB90 2604029C */  addiu   $a0, $s0, 0x029C           ## $a0 = 0000029C
/* 007F4 80A6EB94 24053200 */  addiu   $a1, $zero, 0x3200         ## $a1 = 00003200
/* 007F8 80A6EB98 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 007FC 80A6EB9C 13000010 */  beq     $t8, $zero, .L80A6EBE0     
/* 00800 80A6EBA0 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00804 80A6EBA4 8E090038 */  lw      $t1, 0x0038($s0)           ## 00000038
/* 00808 80A6EBA8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0080C 80A6EBAC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00810 80A6EBB0 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00814 80A6EBB4 8E08003C */  lw      $t0, 0x003C($s0)           ## 0000003C
/* 00818 80A6EBB8 2606029C */  addiu   $a2, $s0, 0x029C           ## $a2 = 0000029C
/* 0081C 80A6EBBC 260702A2 */  addiu   $a3, $s0, 0x02A2           ## $a3 = 000002A2
/* 00820 80A6EBC0 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00824 80A6EBC4 8E090040 */  lw      $t1, 0x0040($s0)           ## 00000040
/* 00828 80A6EBC8 0C00E0A4 */  jal     func_80038290              
/* 0082C 80A6EBCC AFA90018 */  sw      $t1, 0x0018($sp)           
/* 00830 80A6EBD0 960A02A8 */  lhu     $t2, 0x02A8($s0)           ## 000002A8
/* 00834 80A6EBD4 314BFFFE */  andi    $t3, $t2, 0xFFFE           ## $t3 = 00000000
/* 00838 80A6EBD8 1000001A */  beq     $zero, $zero, .L80A6EC44   
/* 0083C 80A6EBDC A60B02A8 */  sh      $t3, 0x02A8($s0)           ## 000002A8
.L80A6EBE0:
/* 00840 80A6EBE0 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 00844 80A6EBE4 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00848 80A6EBE8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0084C 80A6EBEC 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00850 80A6EBF0 240D0064 */  addiu   $t5, $zero, 0x0064         ## $t5 = 00000064
/* 00854 80A6EBF4 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00858 80A6EBF8 2604029E */  addiu   $a0, $s0, 0x029E           ## $a0 = 0000029E
/* 0085C 80A6EBFC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00860 80A6EC00 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00864 80A6EC04 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00868 80A6EC08 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 0086C 80A6EC0C 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 00870 80A6EC10 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00874 80A6EC14 260402A2 */  addiu   $a0, $s0, 0x02A2           ## $a0 = 000002A2
/* 00878 80A6EC18 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0087C 80A6EC1C 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00880 80A6EC20 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00884 80A6EC24 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00888 80A6EC28 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 0088C 80A6EC2C AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00890 80A6EC30 260402A4 */  addiu   $a0, $s0, 0x02A4           ## $a0 = 000002A4
/* 00894 80A6EC34 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00898 80A6EC38 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 0089C 80A6EC3C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 008A0 80A6EC40 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
.L80A6EC44:
/* 008A4 80A6EC44 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 008A8 80A6EC48 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 008AC 80A6EC4C 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 008B0 80A6EC50 03E00008 */  jr      $ra                        
/* 008B4 80A6EC54 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
