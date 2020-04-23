.late_rodata
glabel D_80AA9E94
    .float 4500.0

glabel D_80AA9E98
 .word 0xC5898000
glabel D_80AA9E9C
 .word 0xC5898000

.text
glabel EnMb_Update
/* 03654 80AA96A4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 03658 80AA96A8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0365C 80AA96AC AFB10020 */  sw      $s1, 0x0020($sp)           
/* 03660 80AA96B0 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 03664 80AA96B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03668 80AA96B8 0C2AA536 */  jal     func_80AA94D8              
/* 0366C 80AA96BC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 03670 80AA96C0 920E00B1 */  lbu     $t6, 0x00B1($s0)           ## 000000B1
/* 03674 80AA96C4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 03678 80AA96C8 51C10065 */  beql    $t6, $at, .L80AA9860       
/* 0367C 80AA96CC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03680 80AA96D0 8E190324 */  lw      $t9, 0x0324($s0)           ## 00000324
/* 03684 80AA96D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03688 80AA96D8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0368C 80AA96DC 0320F809 */  jalr    $ra, $t9                   
/* 03690 80AA96E0 00000000 */  nop
/* 03694 80AA96E4 0C00B638 */  jal     Actor_MoveForward
              
/* 03698 80AA96E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0369C 80AA96EC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 036A0 80AA96F0 44810000 */  mtc1    $at, $f0                   ## $f0 = 40.00
/* 036A4 80AA96F4 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 036A8 80AA96F8 44812000 */  mtc1    $at, $f4                   ## $f4 = 70.00
/* 036AC 80AA96FC 240F001D */  addiu   $t7, $zero, 0x001D         ## $t7 = 0000001D
/* 036B0 80AA9700 44060000 */  mfc1    $a2, $f0                   
/* 036B4 80AA9704 44070000 */  mfc1    $a3, $f0                   
/* 036B8 80AA9708 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 036BC 80AA970C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 036C0 80AA9710 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 036C4 80AA9714 0C00B92D */  jal     func_8002E4B4              
/* 036C8 80AA9718 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 036CC 80AA971C 3C0180AB */  lui     $at, %hi(D_80AA9E94)       ## $at = 80AB0000
/* 036D0 80AA9720 C4289E94 */  lwc1    $f8, %lo(D_80AA9E94)($at)  
/* 036D4 80AA9724 C6060050 */  lwc1    $f6, 0x0050($s0)           ## 00000050
/* 036D8 80AA9728 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 036DC 80AA972C 46083282 */  mul.s   $f10, $f6, $f8             
/* 036E0 80AA9730 44055000 */  mfc1    $a1, $f10                  
/* 036E4 80AA9734 0C00B56E */  jal     Actor_SetHeight
              
/* 036E8 80AA9738 00000000 */  nop
/* 036EC 80AA973C 26050368 */  addiu   $a1, $s0, 0x0368           ## $a1 = 00000368
/* 036F0 80AA9740 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 036F4 80AA9744 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 036F8 80AA9748 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 036FC 80AA974C 921800AF */  lbu     $t8, 0x00AF($s0)           ## 000000AF
/* 03700 80AA9750 5F000021 */  bgtzl   $t8, .L80AA97D8            
/* 03704 80AA9754 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03708 80AA9758 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0370C 80AA975C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 03710 80AA9760 3C0180AB */  lui     $at, %hi(D_80AA9E98)       ## $at = 80AB0000
/* 03714 80AA9764 C4309E98 */  lwc1    $f16, %lo(D_80AA9E98)($at) 
/* 03718 80AA9768 C6120054 */  lwc1    $f18, 0x0054($s0)          ## 00000054
/* 0371C 80AA976C 860803AE */  lh      $t0, 0x03AE($s0)           ## 000003AE
/* 03720 80AA9770 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 03724 80AA9774 46128102 */  mul.s   $f4, $f16, $f18            
/* 03728 80AA9778 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 0372C 80AA977C 00000000 */  nop
/* 03730 80AA9780 468042A0 */  cvt.s.w $f10, $f8                  
/* 03734 80AA9784 46040182 */  mul.s   $f6, $f0, $f4              
/* 03738 80AA9788 46065400 */  add.s   $f16, $f10, $f6            
/* 0373C 80AA978C 4600848D */  trunc.w.s $f18, $f16                 
/* 03740 80AA9790 440A9000 */  mfc1    $t2, $f18                  
/* 03744 80AA9794 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 03748 80AA9798 A60A03AE */  sh      $t2, 0x03AE($s0)           ## 000003AE
/* 0374C 80AA979C 3C0180AB */  lui     $at, %hi(D_80AA9E9C)       ## $at = 80AB0000
/* 03750 80AA97A0 C4249E9C */  lwc1    $f4, %lo(D_80AA9E9C)($at)  
/* 03754 80AA97A4 C6080054 */  lwc1    $f8, 0x0054($s0)           ## 00000054
/* 03758 80AA97A8 860B03B2 */  lh      $t3, 0x03B2($s0)           ## 000003B2
/* 0375C 80AA97AC 46082282 */  mul.s   $f10, $f4, $f8             
/* 03760 80AA97B0 448B8000 */  mtc1    $t3, $f16                  ## $f16 = 0.00
/* 03764 80AA97B4 00000000 */  nop
/* 03768 80AA97B8 468084A0 */  cvt.s.w $f18, $f16                 
/* 0376C 80AA97BC 460A0182 */  mul.s   $f6, $f0, $f10             
/* 03770 80AA97C0 46069100 */  add.s   $f4, $f18, $f6             
/* 03774 80AA97C4 4600220D */  trunc.w.s $f8, $f4                   
/* 03778 80AA97C8 440D4000 */  mfc1    $t5, $f8                   
/* 0377C 80AA97CC 00000000 */  nop
/* 03780 80AA97D0 A60D03B2 */  sh      $t5, 0x03B2($s0)           ## 000003B2
/* 03784 80AA97D4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80AA97D8:
/* 03788 80AA97D8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0378C 80AA97DC 02212821 */  addu    $a1, $s1, $at              
/* 03790 80AA97E0 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 03794 80AA97E4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03798 80AA97E8 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 0379C 80AA97EC 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 037A0 80AA97F0 8E020320 */  lw      $v0, 0x0320($s0)           ## 00000320
/* 037A4 80AA97F4 28410005 */  slti    $at, $v0, 0x0005           
/* 037A8 80AA97F8 5420000C */  bnel    $at, $zero, .L80AA982C     
/* 037AC 80AA97FC 28410006 */  slti    $at, $v0, 0x0006           
/* 037B0 80AA9800 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 037B4 80AA9804 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 037B8 80AA9808 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 037BC 80AA980C 11C00003 */  beq     $t6, $zero, .L80AA981C     
/* 037C0 80AA9810 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 037C4 80AA9814 50410005 */  beql    $v0, $at, .L80AA982C       
/* 037C8 80AA9818 28410006 */  slti    $at, $v0, 0x0006           
.L80AA981C:
/* 037CC 80AA981C 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 037D0 80AA9820 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 037D4 80AA9824 8E020320 */  lw      $v0, 0x0320($s0)           ## 00000320
/* 037D8 80AA9828 28410006 */  slti    $at, $v0, 0x0006           
.L80AA982C:
/* 037DC 80AA982C 14200004 */  bne     $at, $zero, .L80AA9840     
/* 037E0 80AA9830 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 037E4 80AA9834 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 037E8 80AA9838 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 037EC 80AA983C 26060434 */  addiu   $a2, $s0, 0x0434           ## $a2 = 00000434
.L80AA9840:
/* 037F0 80AA9840 86190334 */  lh      $t9, 0x0334($s0)           ## 00000334
/* 037F4 80AA9844 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 037F8 80AA9848 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 037FC 80AA984C 5B200004 */  blezl   $t9, .L80AA9860            
/* 03800 80AA9850 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03804 80AA9854 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 03808 80AA9858 260603B4 */  addiu   $a2, $s0, 0x03B4           ## $a2 = 000003B4
/* 0380C 80AA985C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AA9860:
/* 03810 80AA9860 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 03814 80AA9864 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 03818 80AA9868 03E00008 */  jr      $ra                        
/* 0381C 80AA986C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
