glabel func_808C3704
/* 02574 808C3704 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 02578 808C3708 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 0257C 808C370C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 02580 808C3710 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 02584 808C3714 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 02588 808C3718 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 0258C 808C371C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02590 808C3720 01C17825 */  or      $t7, $t6, $at              ## $t7 = 01000000
/* 02594 808C3724 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 02598 808C3728 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0259C 808C372C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 025A0 808C3730 860201DA */  lh      $v0, 0x01DA($s0)           ## 000001DA
/* 025A4 808C3734 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 025A8 808C3738 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025AC 808C373C 14410006 */  bne     $v0, $at, .L808C3758       
/* 025B0 808C3740 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 025B4 808C3744 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 025B8 808C3748 24053805 */  addiu   $a1, $zero, 0x3805         ## $a1 = 00003805
/* 025BC 808C374C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 025C0 808C3750 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 025C4 808C3754 860201DA */  lh      $v0, 0x01DA($s0)           ## 000001DA
.L808C3758:
/* 025C8 808C3758 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 025CC 808C375C 14410004 */  bne     $v0, $at, .L808C3770       
/* 025D0 808C3760 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025D4 808C3764 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 025D8 808C3768 2405384D */  addiu   $a1, $zero, 0x384D         ## $a1 = 0000384D
/* 025DC 808C376C 860201DA */  lh      $v0, 0x01DA($s0)           ## 000001DA
.L808C3770:
/* 025E0 808C3770 861801A0 */  lh      $t8, 0x01A0($s0)           ## 000001A0
/* 025E4 808C3774 3C08808D */  lui     $t0, %hi(D_808CA3F8)       ## $t0 = 808D0000
/* 025E8 808C3778 2508A3F8 */  addiu   $t0, $t0, %lo(D_808CA3F8)  ## $t0 = 808CA3F8
/* 025EC 808C377C 0018C880 */  sll     $t9, $t8,  2               
/* 025F0 808C3780 0338C823 */  subu    $t9, $t9, $t8              
/* 025F4 808C3784 0019C880 */  sll     $t9, $t9,  2               
/* 025F8 808C3788 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 025FC 808C378C 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 02600 808C3790 03284821 */  addu    $t1, $t9, $t0              
/* 02604 808C3794 AFA9005C */  sw      $t1, 0x005C($sp)           
/* 02608 808C3798 14400048 */  bne     $v0, $zero, .L808C38BC     
/* 0260C 808C379C E60601EC */  swc1    $f6, 0x01EC($s0)           ## 000001EC
/* 02610 808C37A0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02614 808C37A4 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 02618 808C37A8 C60001EC */  lwc1    $f0, 0x01EC($s0)           ## 000001EC
/* 0261C 808C37AC 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 02620 808C37B0 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.25
/* 02624 808C37B4 46080282 */  mul.s   $f10, $f0, $f8             
/* 02628 808C37B8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0262C 808C37BC 260401E4 */  addiu   $a0, $s0, 0x01E4           ## $a0 = 000001E4
/* 02630 808C37C0 46100482 */  mul.s   $f18, $f0, $f16            
/* 02634 808C37C4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02638 808C37C8 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 0263C 808C37CC 44055000 */  mfc1    $a1, $f10                  
/* 02640 808C37D0 44079000 */  mfc1    $a3, $f18                  
/* 02644 808C37D4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 02648 808C37D8 00000000 */  nop
/* 0264C 808C37DC 8FAA005C */  lw      $t2, 0x005C($sp)           
/* 02650 808C37E0 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 02654 808C37E4 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 02658 808C37E8 8E0701E4 */  lw      $a3, 0x01E4($s0)           ## 000001E4
/* 0265C 808C37EC 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 02660 808C37F0 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 02664 808C37F4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02668 808C37F8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0266C 808C37FC E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 02670 808C3800 8FAB005C */  lw      $t3, 0x005C($sp)           
/* 02674 808C3804 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 02678 808C3808 8E0701E4 */  lw      $a3, 0x01E4($s0)           ## 000001E4
/* 0267C 808C380C 8D650008 */  lw      $a1, 0x0008($t3)           ## 00000008
/* 02680 808C3810 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 02684 808C3814 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02688 808C3818 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0268C 808C381C E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 02690 808C3820 860C01C4 */  lh      $t4, 0x01C4($s0)           ## 000001C4
/* 02694 808C3824 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 02698 808C3828 3C01808D */  lui     $at, %hi(D_808CA6CC)       ## $at = 808D0000
/* 0269C 808C382C 258D07D0 */  addiu   $t5, $t4, 0x07D0           ## $t5 = 000007D0
/* 026A0 808C3830 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 026A4 808C3834 11E00021 */  beq     $t7, $zero, .L808C38BC     
/* 026A8 808C3838 A60D01C4 */  sh      $t5, 0x01C4($s0)           ## 000001C4
/* 026AC 808C383C C42AA6CC */  lwc1    $f10, %lo(D_808CA6CC)($at) 
/* 026B0 808C3840 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 026B4 808C3844 2405304E */  addiu   $a1, $zero, 0x304E         ## $a1 = 0000304E
/* 026B8 808C3848 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 026BC 808C384C E60A0228 */  swc1    $f10, 0x0228($s0)          ## 00000228
/* 026C0 808C3850 8602019E */  lh      $v0, 0x019E($s0)           ## 0000019E
/* 026C4 808C3854 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 026C8 808C3858 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 026CC 808C385C 30580007 */  andi    $t8, $v0, 0x0007           ## $t8 = 00000000
/* 026D0 808C3860 17000005 */  bne     $t8, $zero, .L808C3878     
/* 026D4 808C3864 248401E0 */  addiu   $a0, $a0, 0x01E0           ## $a0 = 000001E0
/* 026D8 808C3868 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 026DC 808C386C 0C016A87 */  jal     func_8005AA1C              
/* 026E0 808C3870 24070008 */  addiu   $a3, $zero, 0x0008         ## $a3 = 00000008
/* 026E4 808C3874 8602019E */  lh      $v0, 0x019E($s0)           ## 0000019E
.L808C3878:
/* 026E8 808C3878 30590001 */  andi    $t9, $v0, 0x0001           ## $t9 = 00000000
/* 026EC 808C387C 1720000F */  bne     $t9, $zero, .L808C38BC     
/* 026F0 808C3880 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 026F4 808C3884 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 026F8 808C3888 44818000 */  mtc1    $at, $f16                  ## $f16 = 8.00
/* 026FC 808C388C 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 02700 808C3890 240901F4 */  addiu   $t1, $zero, 0x01F4         ## $t1 = 000001F4
/* 02704 808C3894 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 02708 808C3898 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 0270C 808C389C AFA90018 */  sw      $t1, 0x0018($sp)           
/* 02710 808C38A0 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 02714 808C38A4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02718 808C38A8 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 0271C 808C38AC 3C074220 */  lui     $a3, 0x4220                ## $a3 = 42200000
/* 02720 808C38B0 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 02724 808C38B4 0C00CC98 */  jal     func_80033260              
/* 02728 808C38B8 E7B00014 */  swc1    $f16, 0x0014($sp)          
.L808C38BC:
/* 0272C 808C38BC 8FAB005C */  lw      $t3, 0x005C($sp)           
/* 02730 808C38C0 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 02734 808C38C4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 02738 808C38C8 C5720000 */  lwc1    $f18, 0x0000($t3)          ## 00000000
/* 0273C 808C38CC 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
/* 02740 808C38D0 3C0544FA */  lui     $a1, 0x44FA                ## $a1 = 44FA0000
/* 02744 808C38D4 46049181 */  sub.s   $f6, $f18, $f4             
/* 02748 808C38D8 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 0274C 808C38DC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02750 808C38E0 E7A6004C */  swc1    $f6, 0x004C($sp)           
/* 02754 808C38E4 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 02758 808C38E8 C5680008 */  lwc1    $f8, 0x0008($t3)           ## 00000008
/* 0275C 808C38EC 460A4401 */  sub.s   $f16, $f8, $f10            
/* 02760 808C38F0 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 02764 808C38F4 E7B00048 */  swc1    $f16, 0x0048($sp)          
/* 02768 808C38F8 C61201EC */  lwc1    $f18, 0x01EC($s0)          ## 000001EC
/* 0276C 808C38FC E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 02770 808C3900 46049182 */  mul.s   $f6, $f18, $f4             
/* 02774 808C3904 44073000 */  mfc1    $a3, $f6                   
/* 02778 808C3908 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0277C 808C390C 00000000 */  nop
/* 02780 808C3910 C7AC004C */  lwc1    $f12, 0x004C($sp)          
/* 02784 808C3914 0C03F494 */  jal     Math_atan2f              
/* 02788 808C3918 C7AE0048 */  lwc1    $f14, 0x0048($sp)          
/* 0278C 808C391C 3C01808D */  lui     $at, %hi(D_808CA6D0)       ## $at = 808D0000
/* 02790 808C3920 C42AA6D0 */  lwc1    $f10, %lo(D_808CA6D0)($at) 
/* 02794 808C3924 C60401EC */  lwc1    $f4, 0x01EC($s0)           ## 000001EC
/* 02798 808C3928 C60601E8 */  lwc1    $f6, 0x01E8($s0)           ## 000001E8
/* 0279C 808C392C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 027A0 808C3930 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 027A4 808C3934 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 027A8 808C3938 46062202 */  mul.s   $f8, $f4, $f6              
/* 027AC 808C393C 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 027B0 808C3940 4600848D */  trunc.w.s $f18, $f16                 
/* 027B4 808C3944 4600428D */  trunc.w.s $f10, $f8                  
/* 027B8 808C3948 44059000 */  mfc1    $a1, $f18                  
/* 027BC 808C394C 44075000 */  mfc1    $a3, $f10                  
/* 027C0 808C3950 00052C00 */  sll     $a1, $a1, 16               
/* 027C4 808C3954 00052C03 */  sra     $a1, $a1, 16               
/* 027C8 808C3958 00073C00 */  sll     $a3, $a3, 16               
/* 027CC 808C395C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 027D0 808C3960 00073C03 */  sra     $a3, $a3, 16               
/* 027D4 808C3964 C7A0004C */  lwc1    $f0, 0x004C($sp)           
/* 027D8 808C3968 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 027DC 808C396C 44811000 */  mtc1    $at, $f2                   ## $f2 = 15.00
/* 027E0 808C3970 46000005 */  abs.s   $f0, $f0                   
/* 027E4 808C3974 4602003E */  c.le.s  $f0, $f2                   
/* 027E8 808C3978 C7A00048 */  lwc1    $f0, 0x0048($sp)           
/* 027EC 808C397C 4502005C */  bc1fl   .L808C3AF0                 
/* 027F0 808C3980 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 027F4 808C3984 46000005 */  abs.s   $f0, $f0                   
/* 027F8 808C3988 4602003E */  c.le.s  $f0, $f2                   
/* 027FC 808C398C 00000000 */  nop
/* 02800 808C3990 45020057 */  bc1fl   .L808C3AF0                 
/* 02804 808C3994 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 02808 808C3998 860E01A8 */  lh      $t6, 0x01A8($s0)           ## 000001A8
/* 0280C 808C399C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02810 808C39A0 2405384D */  addiu   $a1, $zero, 0x384D         ## $a1 = 0000384D
/* 02814 808C39A4 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 02818 808C39A8 A60F01A8 */  sh      $t7, 0x01A8($s0)           ## 000001A8
/* 0281C 808C39AC 861801A8 */  lh      $t8, 0x01A8($s0)           ## 000001A8
/* 02820 808C39B0 8FB90064 */  lw      $t9, 0x0064($sp)           
/* 02824 808C39B4 2B010002 */  slti    $at, $t8, 0x0002           
/* 02828 808C39B8 14200036 */  bne     $at, $zero, .L808C3A94     
/* 0282C 808C39BC 272801E0 */  addiu   $t0, $t9, 0x01E0           ## $t0 = 000001E0
/* 02830 808C39C0 AFA80040 */  sw      $t0, 0x0040($sp)           
/* 02834 808C39C4 860901A6 */  lh      $t1, 0x01A6($s0)           ## 000001A6
/* 02838 808C39C8 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0283C 808C39CC 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 02840 808C39D0 11200005 */  beq     $t1, $zero, .L808C39E8     
/* 02844 808C39D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02848 808C39D8 860A01A2 */  lh      $t2, 0x01A2($s0)           ## 000001A2
/* 0284C 808C39DC 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 02850 808C39E0 016A6023 */  subu    $t4, $t3, $t2              
/* 02854 808C39E4 A60C01A2 */  sh      $t4, 0x01A2($s0)           ## 000001A2
.L808C39E8:
/* 02858 808C39E8 E61001E8 */  swc1    $f16, 0x01E8($s0)          ## 000001E8
/* 0285C 808C39EC 0C230A6C */  jal     func_808C29B0              
/* 02860 808C39F0 E61201E4 */  swc1    $f18, 0x01E4($s0)          ## 000001E4
/* 02864 808C39F4 3C01808D */  lui     $at, %hi(D_808CA6D4)       ## $at = 808D0000
/* 02868 808C39F8 C424A6D4 */  lwc1    $f4, %lo(D_808CA6D4)($at)  
/* 0286C 808C39FC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02870 808C3A00 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 02874 808C3A04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02878 808C3A08 2405384C */  addiu   $a1, $zero, 0x384C         ## $a1 = 0000384C
/* 0287C 808C3A0C E6040228 */  swc1    $f4, 0x0228($s0)           ## 00000228
/* 02880 808C3A10 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02884 808C3A14 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
/* 02888 808C3A18 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 0288C 808C3A1C 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 02890 808C3A20 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 02894 808C3A24 0C016A87 */  jal     func_8005AA1C              
/* 02898 808C3A28 24070008 */  addiu   $a3, $zero, 0x0008         ## $a3 = 00000008
/* 0289C 808C3A2C C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 028A0 808C3A30 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 028A4 808C3A34 44818000 */  mtc1    $at, $f16                  ## $f16 = 60.00
/* 028A8 808C3A38 E7A80050 */  swc1    $f8, 0x0050($sp)           
/* 028AC 808C3A3C C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 028B0 808C3A40 240D0320 */  addiu   $t5, $zero, 0x0320         ## $t5 = 00000320
/* 028B4 808C3A44 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 028B8 808C3A48 46105480 */  add.s   $f18, $f10, $f16           
/* 028BC 808C3A4C 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 028C0 808C3A50 27A50050 */  addiu   $a1, $sp, 0x0050           ## $a1 = FFFFFFF0
/* 028C4 808C3A54 3C06437A */  lui     $a2, 0x437A                ## $a2 = 437A0000
/* 028C8 808C3A58 E7B20054 */  swc1    $f18, 0x0054($sp)          
/* 028CC 808C3A5C C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 028D0 808C3A60 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 028D4 808C3A64 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 028D8 808C3A68 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 028DC 808C3A6C 24070028 */  addiu   $a3, $zero, 0x0028         ## $a3 = 00000028
/* 028E0 808C3A70 0C00CD20 */  jal     func_80033480              
/* 028E4 808C3A74 E7A40058 */  swc1    $f4, 0x0058($sp)           
/* 028E8 808C3A78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 028EC 808C3A7C 8FA50064 */  lw      $a1, 0x0064($sp)           
/* 028F0 808C3A80 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 028F4 808C3A84 0C00CFA2 */  jal     func_80033E88              
/* 028F8 808C3A88 2407000F */  addiu   $a3, $zero, 0x000F         ## $a3 = 0000000F
/* 028FC 808C3A8C 10000004 */  beq     $zero, $zero, .L808C3AA0   
/* 02900 808C3A90 860F01A2 */  lh      $t7, 0x01A2($s0)           ## 000001A2
.L808C3A94:
/* 02904 808C3A94 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02908 808C3A98 E6020060 */  swc1    $f2, 0x0060($s0)           ## 00000060
/* 0290C 808C3A9C 860F01A2 */  lh      $t7, 0x01A2($s0)           ## 000001A2
.L808C3AA0:
/* 02910 808C3AA0 55E0000B */  bnel    $t7, $zero, .L808C3AD0     
/* 02914 808C3AA4 860901A0 */  lh      $t1, 0x01A0($s0)           ## 000001A0
/* 02918 808C3AA8 861801A0 */  lh      $t8, 0x01A0($s0)           ## 000001A0
/* 0291C 808C3AAC 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 02920 808C3AB0 A61901A0 */  sh      $t9, 0x01A0($s0)           ## 000001A0
/* 02924 808C3AB4 860801A0 */  lh      $t0, 0x01A0($s0)           ## 000001A0
/* 02928 808C3AB8 29010004 */  slti    $at, $t0, 0x0004           
/* 0292C 808C3ABC 5420000C */  bnel    $at, $zero, .L808C3AF0     
/* 02930 808C3AC0 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 02934 808C3AC4 10000009 */  beq     $zero, $zero, .L808C3AEC   
/* 02938 808C3AC8 A60001A0 */  sh      $zero, 0x01A0($s0)         ## 000001A0
/* 0293C 808C3ACC 860901A0 */  lh      $t1, 0x01A0($s0)           ## 000001A0
.L808C3AD0:
/* 02940 808C3AD0 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 02944 808C3AD4 252BFFFF */  addiu   $t3, $t1, 0xFFFF           ## $t3 = FFFFFFFF
/* 02948 808C3AD8 A60B01A0 */  sh      $t3, 0x01A0($s0)           ## 000001A0
/* 0294C 808C3ADC 860A01A0 */  lh      $t2, 0x01A0($s0)           ## 000001A0
/* 02950 808C3AE0 05430003 */  bgezl   $t2, .L808C3AF0            
/* 02954 808C3AE4 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 02958 808C3AE8 A60C01A0 */  sh      $t4, 0x01A0($s0)           ## 000001A0
.L808C3AEC:
/* 0295C 808C3AEC 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L808C3AF0:
/* 02960 808C3AF0 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 02964 808C3AF4 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 02968 808C3AF8 03E00008 */  jr      $ra                        
/* 0296C 808C3AFC 00000000 */  nop


