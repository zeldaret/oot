.rdata
glabel D_80A90BA0
    .asciz "[33m☆☆☆☆☆ this->actor.player_distance ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80A90BE0
    .asciz "[33m☆☆☆☆☆ this->hosei.x ☆☆☆☆☆ %f\n[m"
    .balign 4

.late_rodata
glabel D_80A90C10
 .word 0x0A0A0000, 0x00000000, 0x00000000, 0x00000000

.text
glabel EnKakasi2_Update
/* 00720 80A90730 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00724 80A90734 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 00728 80A90738 AFB10048 */  sw      $s1, 0x0048($sp)           
/* 0072C 80A9073C AFB00044 */  sw      $s0, 0x0044($sp)           
/* 00730 80A90740 888F00B4 */  lwl     $t7, 0x00B4($a0)           ## 000000B4
/* 00734 80A90744 988F00B7 */  lwr     $t7, 0x00B7($a0)           ## 000000B7
/* 00738 80A90748 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0073C 80A9074C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00740 80A90750 A88F0030 */  swl     $t7, 0x0030($a0)           ## 00000030
/* 00744 80A90754 B88F0033 */  swr     $t7, 0x0033($a0)           ## 00000033
/* 00748 80A90758 948F00B8 */  lhu     $t7, 0x00B8($a0)           ## 000000B8
/* 0074C 80A9075C A48F0034 */  sh      $t7, 0x0034($a0)           ## 00000034
/* 00750 80A90760 0C00B56E */  jal     Actor_SetHeight
              
/* 00754 80A90764 8E0501A8 */  lw      $a1, 0x01A8($s0)           ## 000001A8
/* 00758 80A90768 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 0075C 80A9076C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00760 80A90770 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00764 80A90774 0320F809 */  jalr    $ra, $t9                   
/* 00768 80A90778 00000000 */  nop
/* 0076C 80A9077C 0C00B638 */  jal     Actor_MoveForward
              
/* 00770 80A90780 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00774 80A90784 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00778 80A90788 C60600BC */  lwc1    $f6, 0x00BC($s0)           ## 000000BC
/* 0077C 80A9078C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00780 80A90790 260501AC */  addiu   $a1, $s0, 0x01AC           ## $a1 = 000001AC
/* 00784 80A90794 46062032 */  c.eq.s  $f4, $f6                   
/* 00788 80A90798 00000000 */  nop
/* 0078C 80A9079C 4500000E */  bc1f    .L80A907D8                 
/* 00790 80A907A0 00000000 */  nop
/* 00794 80A907A4 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00798 80A907A8 AFA50050 */  sw      $a1, 0x0050($sp)           
/* 0079C 80A907AC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 007A0 80A907B0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 007A4 80A907B4 02212821 */  addu    $a1, $s1, $at              
/* 007A8 80A907B8 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 007AC 80A907BC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 007B0 80A907C0 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 007B4 80A907C4 8FA60050 */  lw      $a2, 0x0050($sp)           
/* 007B8 80A907C8 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 007BC 80A907CC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 007C0 80A907D0 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 007C4 80A907D4 8FA60050 */  lw      $a2, 0x0050($sp)           
.L80A907D8:
/* 007C8 80A907D8 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 007CC 80A907DC 8C42FA90 */  lw      $v0, -0x0570($v0)          ## 8015FA90
/* 007D0 80A907E0 845812D4 */  lh      $t8, 0x12D4($v0)           ## 801612D4
/* 007D4 80A907E4 53000054 */  beql    $t8, $zero, .L80A90938     
/* 007D8 80A907E8 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 007DC 80A907EC 844812DE */  lh      $t0, 0x12DE($v0)           ## 801612DE
/* 007E0 80A907F0 51000015 */  beql    $t0, $zero, .L80A90848     
/* 007E4 80A907F4 8E090134 */  lw      $t1, 0x0134($s0)           ## 00000134
/* 007E8 80A907F8 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 007EC 80A907FC 3C0480A9 */  lui     $a0, %hi(D_80A90BA0)       ## $a0 = 80A90000
/* 007F0 80A90800 24840BA0 */  addiu   $a0, $a0, %lo(D_80A90BA0)  ## $a0 = 80A90BA0
/* 007F4 80A90804 460042A1 */  cvt.d.s $f10, $f8                  
/* 007F8 80A90808 44075000 */  mfc1    $a3, $f10                  
/* 007FC 80A9080C 44065800 */  mfc1    $a2, $f11                  
/* 00800 80A90810 0C00084C */  jal     osSyncPrintf
              
/* 00804 80A90814 00000000 */  nop
/* 00808 80A90818 C610019C */  lwc1    $f16, 0x019C($s0)          ## 0000019C
/* 0080C 80A9081C 3C0480A9 */  lui     $a0, %hi(D_80A90BE0)       ## $a0 = 80A90000
/* 00810 80A90820 24840BE0 */  addiu   $a0, $a0, %lo(D_80A90BE0)  ## $a0 = 80A90BE0
/* 00814 80A90824 460084A1 */  cvt.d.s $f18, $f16                 
/* 00818 80A90828 44079000 */  mfc1    $a3, $f18                  
/* 0081C 80A9082C 44069800 */  mfc1    $a2, $f19                  
/* 00820 80A90830 0C00084C */  jal     osSyncPrintf
              
/* 00824 80A90834 00000000 */  nop
/* 00828 80A90838 3C0480A9 */  lui     $a0, %hi(D_80A90C10)       ## $a0 = 80A90000
/* 0082C 80A9083C 0C00084C */  jal     osSyncPrintf
              
/* 00830 80A90840 24840C10 */  addiu   $a0, $a0, %lo(D_80A90C10)  ## $a0 = 80A90C10
/* 00834 80A90844 8E090134 */  lw      $t1, 0x0134($s0)           ## 00000134
.L80A90848:
/* 00838 80A90848 5520003B */  bnel    $t1, $zero, .L80A90938     
/* 0083C 80A9084C 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 00840 80A90850 86020194 */  lh      $v0, 0x0194($s0)           ## 00000194
/* 00844 80A90854 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00848 80A90858 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 0084C 80A9085C 1040001F */  beq     $v0, $zero, .L80A908DC     
/* 00850 80A90860 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 00854 80A90864 304A0001 */  andi    $t2, $v0, 0x0001           ## $t2 = 00000000
/* 00858 80A90868 15400032 */  bne     $t2, $zero, .L80A90934     
/* 0085C 80A9086C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00860 80A90870 860B0032 */  lh      $t3, 0x0032($s0)           ## 00000032
/* 00864 80A90874 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 00868 80A90878 C60E0028 */  lwc1    $f14, 0x0028($s0)          ## 00000028
/* 0086C 80A9087C 8E06002C */  lw      $a2, 0x002C($s0)           ## 0000002C
/* 00870 80A90880 86070030 */  lh      $a3, 0x0030($s0)           ## 00000030
/* 00874 80A90884 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 00878 80A90888 860C0034 */  lh      $t4, 0x0034($s0)           ## 00000034
/* 0087C 80A9088C 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00880 80A90890 240D0046 */  addiu   $t5, $zero, 0x0046         ## $t5 = 00000046
/* 00884 80A90894 240E0046 */  addiu   $t6, $zero, 0x0046         ## $t6 = 00000046
/* 00888 80A90898 240F0046 */  addiu   $t7, $zero, 0x0046         ## $t7 = 00000046
/* 0088C 80A9089C 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00890 80A908A0 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 00894 80A908A4 AFB80034 */  sw      $t8, 0x0034($sp)           
/* 00898 80A908A8 AFB90030 */  sw      $t9, 0x0030($sp)           
/* 0089C 80A908AC AFAF002C */  sw      $t7, 0x002C($sp)           
/* 008A0 80A908B0 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 008A4 80A908B4 AFAD0024 */  sw      $t5, 0x0024($sp)           
/* 008A8 80A908B8 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 008AC 80A908BC E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 008B0 80A908C0 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 008B4 80A908C4 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 008B8 80A908C8 8E280000 */  lw      $t0, 0x0000($s1)           ## 00000000
/* 008BC 80A908CC 0C018FA7 */  jal     DebugDisplay_AddObject
              
/* 008C0 80A908D0 AFA80038 */  sw      $t0, 0x0038($sp)           
/* 008C4 80A908D4 10000018 */  beq     $zero, $zero, .L80A90938   
/* 008C8 80A908D8 8FBF004C */  lw      $ra, 0x004C($sp)           
.L80A908DC:
/* 008CC 80A908DC 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
/* 008D0 80A908E0 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 008D4 80A908E4 C60E0028 */  lwc1    $f14, 0x0028($s0)          ## 00000028
/* 008D8 80A908E8 8E06002C */  lw      $a2, 0x002C($s0)           ## 0000002C
/* 008DC 80A908EC 86070030 */  lh      $a3, 0x0030($s0)           ## 00000030
/* 008E0 80A908F0 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 008E4 80A908F4 860A0034 */  lh      $t2, 0x0034($s0)           ## 00000034
/* 008E8 80A908F8 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.00
/* 008EC 80A908FC 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 008F0 80A90900 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 008F4 80A90904 AFAE0034 */  sw      $t6, 0x0034($sp)           
/* 008F8 80A90908 AFAD0030 */  sw      $t5, 0x0030($sp)           
/* 008FC 80A9090C AFAC002C */  sw      $t4, 0x002C($sp)           
/* 00900 80A90910 AFAB0028 */  sw      $t3, 0x0028($sp)           
/* 00904 80A90914 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00908 80A90918 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 0090C 80A9091C E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00910 80A90920 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 00914 80A90924 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 00918 80A90928 8E2F0000 */  lw      $t7, 0x0000($s1)           ## 00000000
/* 0091C 80A9092C 0C018FA7 */  jal     DebugDisplay_AddObject
              
/* 00920 80A90930 AFAF0038 */  sw      $t7, 0x0038($sp)           
.L80A90934:
/* 00924 80A90934 8FBF004C */  lw      $ra, 0x004C($sp)           
.L80A90938:
/* 00928 80A90938 8FB00044 */  lw      $s0, 0x0044($sp)           
/* 0092C 80A9093C 8FB10048 */  lw      $s1, 0x0048($sp)           
/* 00930 80A90940 03E00008 */  jr      $ra                        
/* 00934 80A90944 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
