.late_rodata
glabel D_80B3C060
 .word 0x477FFF00, 0x00000000, 0x00000000, 0x00000000

.text
glabel EnWood02_Update
/* 007B0 80B3B720 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 007B4 80B3B724 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 007B8 80B3B728 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 007BC 80B3B72C AFB10034 */  sw      $s1, 0x0034($sp)           
/* 007C0 80B3B730 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 007C4 80B3B734 90820153 */  lbu     $v0, 0x0153($a0)           ## 00000153
/* 007C8 80B3B738 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 007CC 80B3B73C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 007D0 80B3B740 14410013 */  bne     $v0, $at, .L80B3B790       
/* 007D4 80B3B744 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 007D8 80B3B748 8C830118 */  lw      $v1, 0x0118($a0)           ## 00000118
/* 007DC 80B3B74C 50600011 */  beql    $v1, $zero, .L80B3B794     
/* 007E0 80B3B750 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 007E4 80B3B754 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 007E8 80B3B758 31CF0040 */  andi    $t7, $t6, 0x0040           ## $t7 = 00000000
/* 007EC 80B3B75C 55E00012 */  bnel    $t7, $zero, .L80B3B7A8     
/* 007F0 80B3B760 8622001C */  lh      $v0, 0x001C($s1)           ## 0000001C
/* 007F4 80B3B764 8498014C */  lh      $t8, 0x014C($a0)           ## 0000014C
/* 007F8 80B3B768 9085014E */  lbu     $a1, 0x014E($a0)           ## 0000014E
/* 007FC 80B3B76C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00800 80B3B770 07010002 */  bgez    $t8, .L80B3B77C            
/* 00804 80B3B774 0065C821 */  addu    $t9, $v1, $a1              
/* 00808 80B3B778 24020080 */  addiu   $v0, $zero, 0x0080         ## $v0 = 00000080
.L80B3B77C:
/* 0080C 80B3B77C A322014E */  sb      $v0, 0x014E($t9)           ## 0000014E
/* 00810 80B3B780 0C00B55C */  jal     Actor_Kill
              
/* 00814 80B3B784 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00818 80B3B788 1000011D */  beq     $zero, $zero, .L80B3BC00   
/* 0081C 80B3B78C 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80B3B790:
/* 00820 80B3B790 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L80B3B794:
/* 00824 80B3B794 14410003 */  bne     $v0, $at, .L80B3B7A4       
/* 00828 80B3B798 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0082C 80B3B79C 0C2CEC25 */  jal     func_80B3B094              
/* 00830 80B3B7A0 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
.L80B3B7A4:
/* 00834 80B3B7A4 8622001C */  lh      $v0, 0x001C($s1)           ## 0000001C
.L80B3B7A8:
/* 00838 80B3B7A8 2841000B */  slti    $at, $v0, 0x000B           
/* 0083C 80B3B7AC 50200083 */  beql    $at, $zero, .L80B3B9BC     
/* 00840 80B3B7B0 28410017 */  slti    $at, $v0, 0x0017           
/* 00844 80B3B7B4 92220169 */  lbu     $v0, 0x0169($s1)           ## 00000169
/* 00848 80B3B7B8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0084C 80B3B7BC 24051837 */  addiu   $a1, $zero, 0x1837         ## $a1 = 00001837
/* 00850 80B3B7C0 30480002 */  andi    $t0, $v0, 0x0002           ## $t0 = 00000000
/* 00854 80B3B7C4 11000003 */  beq     $t0, $zero, .L80B3B7D4     
/* 00858 80B3B7C8 3049FFFD */  andi    $t1, $v0, 0xFFFD           ## $t1 = 00000000
/* 0085C 80B3B7CC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00860 80B3B7D0 A2290169 */  sb      $t1, 0x0169($s1)           ## 00000169
.L80B3B7D4:
/* 00864 80B3B7D4 862A0016 */  lh      $t2, 0x0016($s1)           ## 00000016
/* 00868 80B3B7D8 51400060 */  beql    $t2, $zero, .L80B3B95C     
/* 0086C 80B3B7DC 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 00870 80B3B7E0 8E2C0024 */  lw      $t4, 0x0024($s1)           ## 00000024
/* 00874 80B3B7E4 27A60058 */  addiu   $a2, $sp, 0x0058           ## $a2 = FFFFFFE0
/* 00878 80B3B7E8 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0087C 80B3B7EC ACCC0000 */  sw      $t4, 0x0000($a2)           ## FFFFFFE0
/* 00880 80B3B7F0 8E2B0028 */  lw      $t3, 0x0028($s1)           ## 00000028
/* 00884 80B3B7F4 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 00888 80B3B7F8 ACCB0004 */  sw      $t3, 0x0004($a2)           ## FFFFFFE4
/* 0088C 80B3B7FC 8E2C002C */  lw      $t4, 0x002C($s1)           ## 0000002C
/* 00890 80B3B800 ACCC0008 */  sw      $t4, 0x0008($a2)           ## FFFFFFE8
/* 00894 80B3B804 C7A4005C */  lwc1    $f4, 0x005C($sp)           
/* 00898 80B3B808 46062200 */  add.s   $f8, $f4, $f6              
/* 0089C 80B3B80C E7A8005C */  swc1    $f8, 0x005C($sp)           
/* 008A0 80B3B810 8630014C */  lh      $s0, 0x014C($s1)           ## 0000014C
/* 008A4 80B3B814 0600000A */  bltz    $s0, .L80B3B840            
/* 008A8 80B3B818 2A010064 */  slti    $at, $s0, 0x0064           
/* 008AC 80B3B81C 10200008 */  beq     $at, $zero, .L80B3B840     
/* 008B0 80B3B820 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 008B4 80B3B824 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 008B8 80B3B828 00073D00 */  sll     $a3, $a3, 20               
/* 008BC 80B3B82C 00073C03 */  sra     $a3, $a3, 16               
/* 008C0 80B3B830 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 008C4 80B3B834 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 008C8 80B3B838 10000019 */  beq     $zero, $zero, .L80B3B8A0   
/* 008CC 80B3B83C 8630014C */  lh      $s0, 0x014C($s1)           ## 0000014C
.L80B3B840:
/* 008D0 80B3B840 86220018 */  lh      $v0, 0x0018($s1)           ## 00000018
/* 008D4 80B3B844 10400016 */  beq     $v0, $zero, .L80B3B8A0     
/* 008D8 80B3B848 304D1FFF */  andi    $t5, $v0, 0x1FFF           ## $t5 = 00000000
/* 008DC 80B3B84C A62D0018 */  sh      $t5, 0x0018($s1)           ## 00000018
/* 008E0 80B3B850 862E0018 */  lh      $t6, 0x0018($s1)           ## 00000018
/* 008E4 80B3B854 26441C24 */  addiu   $a0, $s2, 0x1C24           ## $a0 = 00001C24
/* 008E8 80B3B858 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 008EC 80B3B85C 35CFE000 */  ori     $t7, $t6, 0xE000           ## $t7 = 0000E000
/* 008F0 80B3B860 A62F0018 */  sh      $t7, 0x0018($s1)           ## 00000018
/* 008F4 80B3B864 C7B00060 */  lwc1    $f16, 0x0060($sp)          
/* 008F8 80B3B868 C7AA005C */  lwc1    $f10, 0x005C($sp)          
/* 008FC 80B3B86C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00900 80B3B870 E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 00904 80B3B874 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00908 80B3B878 86380032 */  lh      $t8, 0x0032($s1)           ## 00000032
/* 0090C 80B3B87C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00910 80B3B880 8FA70058 */  lw      $a3, 0x0058($sp)           
/* 00914 80B3B884 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 00918 80B3B888 86390018 */  lh      $t9, 0x0018($s1)           ## 00000018
/* 0091C 80B3B88C 24060095 */  addiu   $a2, $zero, 0x0095         ## $a2 = 00000095
/* 00920 80B3B890 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00924 80B3B894 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 00928 80B3B898 A6200018 */  sh      $zero, 0x0018($s1)         ## 00000018
/* 0092C 80B3B89C 8630014C */  lh      $s0, 0x014C($s1)           ## 0000014C
.L80B3B8A0:
/* 00930 80B3B8A0 2A01FFFF */  slti    $at, $s0, 0xFFFF           
/* 00934 80B3B8A4 14200029 */  bne     $at, $zero, .L80B3B94C     
/* 00938 80B3B8A8 24030017 */  addiu   $v1, $zero, 0x0017         ## $v1 = 00000017
/* 0093C 80B3B8AC 8622001C */  lh      $v0, 0x001C($s1)           ## 0000001C
/* 00940 80B3B8B0 26481C24 */  addiu   $t0, $s2, 0x1C24           ## $t0 = 00001C24
/* 00944 80B3B8B4 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00948 80B3B8B8 10410004 */  beq     $v0, $at, .L80B3B8CC       
/* 0094C 80B3B8BC AFA80040 */  sw      $t0, 0x0040($sp)           
/* 00950 80B3B8C0 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00954 80B3B8C4 54410003 */  bnel    $v0, $at, .L80B3B8D4       
/* 00958 80B3B8C8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80B3B8CC:
/* 0095C 80B3B8CC 24030018 */  addiu   $v1, $zero, 0x0018         ## $v1 = 00000018
/* 00960 80B3B8D0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80B3B8D4:
/* 00964 80B3B8D4 24052877 */  addiu   $a1, $zero, 0x2877         ## $a1 = 00002877
/* 00968 80B3B8D8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0096C 80B3B8DC AFA30050 */  sw      $v1, 0x0050($sp)           
/* 00970 80B3B8E0 8FA30050 */  lw      $v1, 0x0050($sp)           
/* 00974 80B3B8E4 24100003 */  addiu   $s0, $zero, 0x0003         ## $s0 = 00000003
/* 00978 80B3B8E8 00034C00 */  sll     $t1, $v1, 16               
/* 0097C 80B3B8EC 00095403 */  sra     $t2, $t1, 16               
/* 00980 80B3B8F0 AFAA0044 */  sw      $t2, 0x0044($sp)           
.L80B3B8F4:
/* 00984 80B3B8F4 3C0180B4 */  lui     $at, %hi(D_80B3C060)       ## $at = 80B40000
/* 00988 80B3B8F8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0098C 80B3B8FC C42CC060 */  lwc1    $f12, %lo(D_80B3C060)($at) 
/* 00990 80B3B900 4600018D */  trunc.w.s $f6, $f0                   
/* 00994 80B3B904 C7B2005C */  lwc1    $f18, 0x005C($sp)          
/* 00998 80B3B908 C7A40060 */  lwc1    $f4, 0x0060($sp)           
/* 0099C 80B3B90C 8FAD0044 */  lw      $t5, 0x0044($sp)           
/* 009A0 80B3B910 440C3000 */  mfc1    $t4, $f6                   
/* 009A4 80B3B914 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 009A8 80B3B918 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 009AC 80B3B91C 24060077 */  addiu   $a2, $zero, 0x0077         ## $a2 = 00000077
/* 009B0 80B3B920 8FA70058 */  lw      $a3, 0x0058($sp)           
/* 009B4 80B3B924 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 009B8 80B3B928 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 009BC 80B3B92C E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 009C0 80B3B930 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 009C4 80B3B934 AFAD0024 */  sw      $t5, 0x0024($sp)           
/* 009C8 80B3B938 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 009CC 80B3B93C AFAC001C */  sw      $t4, 0x001C($sp)           
/* 009D0 80B3B940 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000002
/* 009D4 80B3B944 0601FFEB */  bgez    $s0, .L80B3B8F4            
/* 009D8 80B3B948 00000000 */  nop
.L80B3B94C:
/* 009DC 80B3B94C 240EFFEB */  addiu   $t6, $zero, 0xFFEB         ## $t6 = FFFFFFEB
/* 009E0 80B3B950 A62E014C */  sh      $t6, 0x014C($s1)           ## 0000014C
/* 009E4 80B3B954 A6200016 */  sh      $zero, 0x0016($s1)         ## 00000016
/* 009E8 80B3B958 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
.L80B3B95C:
/* 009EC 80B3B95C 44815000 */  mtc1    $at, $f10                  ## $f10 = 600.00
/* 009F0 80B3B960 C6280090 */  lwc1    $f8, 0x0090($s1)           ## 00000090
/* 009F4 80B3B964 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 009F8 80B3B968 26300158 */  addiu   $s0, $s1, 0x0158           ## $s0 = 00000158
/* 009FC 80B3B96C 460A403C */  c.lt.s  $f8, $f10                  
/* 00A00 80B3B970 00000000 */  nop
/* 00A04 80B3B974 45020079 */  bc1fl   .L80B3BB5C                 
/* 00A08 80B3B978 8630014C */  lh      $s0, 0x014C($s1)           ## 0000014C
/* 00A0C 80B3B97C 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00A10 80B3B980 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000158
/* 00A14 80B3B984 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00A18 80B3B988 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00A1C 80B3B98C 02412821 */  addu    $a1, $s2, $at              
/* 00A20 80B3B990 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00A24 80B3B994 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00A28 80B3B998 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00A2C 80B3B99C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000158
/* 00A30 80B3B9A0 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00A34 80B3B9A4 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00A38 80B3B9A8 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 00A3C 80B3B9AC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000158
/* 00A40 80B3B9B0 1000006A */  beq     $zero, $zero, .L80B3BB5C   
/* 00A44 80B3B9B4 8630014C */  lh      $s0, 0x014C($s1)           ## 0000014C
/* 00A48 80B3B9B8 28410017 */  slti    $at, $v0, 0x0017           
.L80B3B9BC:
/* 00A4C 80B3B9BC 1020003D */  beq     $at, $zero, .L80B3BAB4     
/* 00A50 80B3B9C0 2624005C */  addiu   $a0, $s1, 0x005C           ## $a0 = 0000005C
/* 00A54 80B3B9C4 8630014C */  lh      $s0, 0x014C($s1)           ## 0000014C
/* 00A58 80B3B9C8 8E421C44 */  lw      $v0, 0x1C44($s2)           ## 00001C44
/* 00A5C 80B3B9CC 2A01FFFF */  slti    $at, $s0, 0xFFFF           
/* 00A60 80B3B9D0 54200062 */  bnel    $at, $zero, .L80B3BB5C     
/* 00A64 80B3B9D4 8630014C */  lh      $s0, 0x014C($s1)           ## 0000014C
/* 00A68 80B3B9D8 8C430440 */  lw      $v1, 0x0440($v0)           ## 00000440
/* 00A6C 80B3B9DC 14600011 */  bne     $v1, $zero, .L80B3BA24     
/* 00A70 80B3B9E0 00000000 */  nop
/* 00A74 80B3B9E4 C630008C */  lwc1    $f16, 0x008C($s1)          ## 0000008C
/* 00A78 80B3B9E8 3C014034 */  lui     $at, 0x4034                ## $at = 40340000
/* 00A7C 80B3B9EC 44819800 */  mtc1    $at, $f19                  ## $f19 = 2.81
/* 00A80 80B3B9F0 46008021 */  cvt.d.s $f0, $f16                  
/* 00A84 80B3B9F4 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00A88 80B3B9F8 46200004 */  sqrt.d  $f0, $f0                   
/* 00A8C 80B3B9FC 4632003C */  c.lt.d  $f0, $f18                  
/* 00A90 80B3BA00 00000000 */  nop
/* 00A94 80B3BA04 45000007 */  bc1f    .L80B3BA24                 
/* 00A98 80B3BA08 00000000 */  nop
/* 00A9C 80B3BA0C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00AA0 80B3BA10 C4460838 */  lwc1    $f6, 0x0838($v0)           ## 00000838
/* 00AA4 80B3BA14 46062032 */  c.eq.s  $f4, $f6                   
/* 00AA8 80B3BA18 00000000 */  nop
/* 00AAC 80B3BA1C 45000013 */  bc1f    .L80B3BA6C                 
/* 00AB0 80B3BA20 00000000 */  nop
.L80B3BA24:
/* 00AB4 80B3BA24 5060004D */  beql    $v1, $zero, .L80B3BB5C     
/* 00AB8 80B3BA28 8630014C */  lh      $s0, 0x014C($s1)           ## 0000014C
/* 00ABC 80B3BA2C C628008C */  lwc1    $f8, 0x008C($s1)           ## 0000008C
/* 00AC0 80B3BA30 3C01404E */  lui     $at, 0x404E                ## $at = 404E0000
/* 00AC4 80B3BA34 44815800 */  mtc1    $at, $f11                  ## $f11 = 3.22
/* 00AC8 80B3BA38 46004021 */  cvt.d.s $f0, $f8                   
/* 00ACC 80B3BA3C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00AD0 80B3BA40 46200004 */  sqrt.d  $f0, $f0                   
/* 00AD4 80B3BA44 462A003C */  c.lt.d  $f0, $f10                  
/* 00AD8 80B3BA48 00000000 */  nop
/* 00ADC 80B3BA4C 45020043 */  bc1fl   .L80B3BB5C                 
/* 00AE0 80B3BA50 8630014C */  lh      $s0, 0x014C($s1)           ## 0000014C
/* 00AE4 80B3BA54 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00AE8 80B3BA58 C4720068 */  lwc1    $f18, 0x0068($v1)          ## 00000068
/* 00AEC 80B3BA5C 46128032 */  c.eq.s  $f16, $f18                 
/* 00AF0 80B3BA60 00000000 */  nop
/* 00AF4 80B3BA64 4503003D */  bc1tl   .L80B3BB5C                 
/* 00AF8 80B3BA68 8630014C */  lh      $s0, 0x014C($s1)           ## 0000014C
.L80B3BA6C:
/* 00AFC 80B3BA6C 0600000A */  bltz    $s0, .L80B3BA98            
/* 00B00 80B3BA70 2A010064 */  slti    $at, $s0, 0x0064           
/* 00B04 80B3BA74 10200008 */  beq     $at, $zero, .L80B3BA98     
/* 00B08 80B3BA78 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00B0C 80B3BA7C 00103900 */  sll     $a3, $s0,  4               
/* 00B10 80B3BA80 34E78000 */  ori     $a3, $a3, 0x8000           ## $a3 = 00008000
/* 00B14 80B3BA84 00073C00 */  sll     $a3, $a3, 16               
/* 00B18 80B3BA88 00073C03 */  sra     $a3, $a3, 16               
/* 00B1C 80B3BA8C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00B20 80B3BA90 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00B24 80B3BA94 26260024 */  addiu   $a2, $s1, 0x0024           ## $a2 = 00000024
.L80B3BA98:
/* 00B28 80B3BA98 240FFFEB */  addiu   $t7, $zero, 0xFFEB         ## $t7 = FFFFFFEB
/* 00B2C 80B3BA9C A62F014C */  sh      $t7, 0x014C($s1)           ## 0000014C
/* 00B30 80B3BAA0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B34 80B3BAA4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00B38 80B3BAA8 24052877 */  addiu   $a1, $zero, 0x2877         ## $a1 = 00002877
/* 00B3C 80B3BAAC 1000002B */  beq     $zero, $zero, .L80B3BB5C   
/* 00B40 80B3BAB0 8630014C */  lh      $s0, 0x014C($s1)           ## 0000014C
.L80B3BAB4:
/* 00B44 80B3BAB4 8638014C */  lh      $t8, 0x014C($s1)           ## 0000014C
/* 00B48 80B3BAB8 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 00B4C 80B3BABC 34E7CCCC */  ori     $a3, $a3, 0xCCCC           ## $a3 = 3D4CCCCC
/* 00B50 80B3BAC0 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00B54 80B3BAC4 A639014C */  sh      $t9, 0x014C($s1)           ## 0000014C
/* 00B58 80B3BAC8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00B5C 80B3BACC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00B60 80B3BAD0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00B64 80B3BAD4 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 00B68 80B3BAD8 34E7CCCC */  ori     $a3, $a3, 0xCCCC           ## $a3 = 3D4CCCCC
/* 00B6C 80B3BADC 26240064 */  addiu   $a0, $s1, 0x0064           ## $a0 = 00000064
/* 00B70 80B3BAE0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00B74 80B3BAE4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00B78 80B3BAE8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00B7C 80B3BAEC 0C00B5FB */  jal     func_8002D7EC              
/* 00B80 80B3BAF0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B84 80B3BAF4 8624014C */  lh      $a0, 0x014C($s1)           ## 0000014C
/* 00B88 80B3BAF8 00800821 */  addu    $at, $a0, $zero            
/* 00B8C 80B3BAFC 00042080 */  sll     $a0, $a0,  2               
/* 00B90 80B3BB00 00812023 */  subu    $a0, $a0, $at              
/* 00B94 80B3BB04 00042100 */  sll     $a0, $a0,  4               
/* 00B98 80B3BB08 00812023 */  subu    $a0, $a0, $at              
/* 00B9C 80B3BB0C 000420C0 */  sll     $a0, $a0,  3               
/* 00BA0 80B3BB10 00812023 */  subu    $a0, $a0, $at              
/* 00BA4 80B3BB14 000420C0 */  sll     $a0, $a0,  3               
/* 00BA8 80B3BB18 00042400 */  sll     $a0, $a0, 16               
/* 00BAC 80B3BB1C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00BB0 80B3BB20 00042403 */  sra     $a0, $a0, 16               
/* 00BB4 80B3BB24 3C014680 */  lui     $at, 0x4680                ## $at = 46800000
/* 00BB8 80B3BB28 44812000 */  mtc1    $at, $f4                   ## $f4 = 16384.00
/* 00BBC 80B3BB2C 922A014E */  lbu     $t2, 0x014E($s1)           ## 0000014E
/* 00BC0 80B3BB30 46040182 */  mul.s   $f6, $f0, $f4              
/* 00BC4 80B3BB34 254BFFFF */  addiu   $t3, $t2, 0xFFFF           ## $t3 = FFFFFFFF
/* 00BC8 80B3BB38 316C00FF */  andi    $t4, $t3, 0x00FF           ## $t4 = 000000FF
/* 00BCC 80B3BB3C A22B014E */  sb      $t3, 0x014E($s1)           ## 0000014E
/* 00BD0 80B3BB40 4600320D */  trunc.w.s $f8, $f6                   
/* 00BD4 80B3BB44 44094000 */  mfc1    $t1, $f8                   
/* 00BD8 80B3BB48 15800003 */  bne     $t4, $zero, .L80B3BB58     
/* 00BDC 80B3BB4C A62900B8 */  sh      $t1, 0x00B8($s1)           ## 000000B8
/* 00BE0 80B3BB50 0C00B55C */  jal     Actor_Kill
              
/* 00BE4 80B3BB54 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80B3BB58:
/* 00BE8 80B3BB58 8630014C */  lh      $s0, 0x014C($s1)           ## 0000014C
.L80B3BB5C:
/* 00BEC 80B3BB5C 2A01FFFF */  slti    $at, $s0, 0xFFFF           
/* 00BF0 80B3BB60 10200026 */  beq     $at, $zero, .L80B3BBFC     
/* 00BF4 80B3BB64 260D0001 */  addiu   $t5, $s0, 0x0001           ## $t5 = 00000159
/* 00BF8 80B3BB68 A62D014C */  sh      $t5, 0x014C($s1)           ## 0000014C
/* 00BFC 80B3BB6C 8624014C */  lh      $a0, 0x014C($s1)           ## 0000014C
/* 00C00 80B3BB70 24013332 */  addiu   $at, $zero, 0x3332         ## $at = 00003332
/* 00C04 80B3BB74 3884FFFF */  xori    $a0, $a0, 0xFFFF           ## $a0 = FFFFFFFF
/* 00C08 80B3BB78 00810019 */  multu   $a0, $at                   
/* 00C0C 80B3BB7C 00002012 */  mflo    $a0                        
/* 00C10 80B3BB80 00042400 */  sll     $a0, $a0, 16               
/* 00C14 80B3BB84 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00C18 80B3BB88 00042403 */  sra     $a0, $a0, 16               
/* 00C1C 80B3BB8C 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 00C20 80B3BB90 44815000 */  mtc1    $at, $f10                  ## $f10 = 250.00
/* 00C24 80B3BB94 00000000 */  nop
/* 00C28 80B3BB98 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00C2C 80B3BB9C E7B0006C */  swc1    $f16, 0x006C($sp)          
/* 00C30 80B3BBA0 862F00B6 */  lh      $t7, 0x00B6($s1)           ## 000000B6
/* 00C34 80B3BBA4 862E008A */  lh      $t6, 0x008A($s1)           ## 0000008A
/* 00C38 80B3BBA8 01CF2023 */  subu    $a0, $t6, $t7              
/* 00C3C 80B3BBAC 00042400 */  sll     $a0, $a0, 16               
/* 00C40 80B3BBB0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00C44 80B3BBB4 00042403 */  sra     $a0, $a0, 16               
/* 00C48 80B3BBB8 C7B2006C */  lwc1    $f18, 0x006C($sp)          
/* 00C4C 80B3BBBC 8628008A */  lh      $t0, 0x008A($s1)           ## 0000008A
/* 00C50 80B3BBC0 862900B6 */  lh      $t1, 0x00B6($s1)           ## 000000B6
/* 00C54 80B3BBC4 46120102 */  mul.s   $f4, $f0, $f18             
/* 00C58 80B3BBC8 01092023 */  subu    $a0, $t0, $t1              
/* 00C5C 80B3BBCC 00042400 */  sll     $a0, $a0, 16               
/* 00C60 80B3BBD0 00042403 */  sra     $a0, $a0, 16               
/* 00C64 80B3BBD4 4600218D */  trunc.w.s $f6, $f4                   
/* 00C68 80B3BBD8 44193000 */  mfc1    $t9, $f6                   
/* 00C6C 80B3BBDC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00C70 80B3BBE0 A63900B4 */  sh      $t9, 0x00B4($s1)           ## 000000B4
/* 00C74 80B3BBE4 C7A8006C */  lwc1    $f8, 0x006C($sp)           
/* 00C78 80B3BBE8 46080282 */  mul.s   $f10, $f0, $f8             
/* 00C7C 80B3BBEC 4600540D */  trunc.w.s $f16, $f10                 
/* 00C80 80B3BBF0 440B8000 */  mfc1    $t3, $f16                  
/* 00C84 80B3BBF4 00000000 */  nop
/* 00C88 80B3BBF8 A62B00B8 */  sh      $t3, 0x00B8($s1)           ## 000000B8
.L80B3BBFC:
/* 00C8C 80B3BBFC 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80B3BC00:
/* 00C90 80B3BC00 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00C94 80B3BC04 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 00C98 80B3BC08 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 00C9C 80B3BC0C 03E00008 */  jr      $ra                        
/* 00CA0 80B3BC10 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
