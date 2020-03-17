glabel func_80A7D460
/* 01640 80A7D460 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 01644 80A7D464 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01648 80A7D468 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0164C 80A7D46C AFA5005C */  sw      $a1, 0x005C($sp)           
/* 01650 80A7D470 AFA00050 */  sw      $zero, 0x0050($sp)         
/* 01654 80A7D474 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 01658 80A7D478 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0165C 80A7D47C 31CF0003 */  andi    $t7, $t6, 0x0003           ## $t7 = 00000000
/* 01660 80A7D480 A7AF003A */  sh      $t7, 0x003A($sp)           
/* 01664 80A7D484 8C820320 */  lw      $v0, 0x0320($a0)           ## 00000320
/* 01668 80A7D488 10400005 */  beq     $v0, $zero, .L80A7D4A0     
/* 0166C 80A7D48C 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 01670 80A7D490 0C032D94 */  jal     func_800CB650              
/* 01674 80A7D494 24450024 */  addiu   $a1, $v0, 0x0024           ## $a1 = 00000024
/* 01678 80A7D498 10000015 */  beq     $zero, $zero, .L80A7D4F0   
/* 0167C 80A7D49C E7A00040 */  swc1    $f0, 0x0040($sp)           
.L80A7D4A0:
/* 01680 80A7D4A0 96180314 */  lhu     $t8, 0x0314($s0)           ## 00000314
/* 01684 80A7D4A4 3C0480A8 */  lui     $a0, %hi(D_80A7DF40)       ## $a0 = 80A80000
/* 01688 80A7D4A8 33190010 */  andi    $t9, $t8, 0x0010           ## $t9 = 00000000
/* 0168C 80A7D4AC 5320000D */  beql    $t9, $zero, .L80A7D4E4     
/* 01690 80A7D4B0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01694 80A7D4B4 0C00084C */  jal     osSyncPrintf
              
/* 01698 80A7D4B8 2484DF40 */  addiu   $a0, $a0, %lo(D_80A7DF40)  ## $a0 = 80A7DF40
/* 0169C 80A7D4BC 3C0480A8 */  lui     $a0, %hi(D_80A7DF4C)       ## $a0 = 80A80000
/* 016A0 80A7D4C0 3C0580A8 */  lui     $a1, %hi(D_80A7DF70)       ## $a1 = 80A80000
/* 016A4 80A7D4C4 24A5DF70 */  addiu   $a1, $a1, %lo(D_80A7DF70)  ## $a1 = 80A7DF70
/* 016A8 80A7D4C8 2484DF4C */  addiu   $a0, $a0, %lo(D_80A7DF4C)  ## $a0 = 80A7DF4C
/* 016AC 80A7D4CC 0C00084C */  jal     osSyncPrintf
              
/* 016B0 80A7D4D0 24060416 */  addiu   $a2, $zero, 0x0416         ## $a2 = 00000416
/* 016B4 80A7D4D4 3C0480A8 */  lui     $a0, %hi(D_80A7DF80)       ## $a0 = 80A80000
/* 016B8 80A7D4D8 0C00084C */  jal     osSyncPrintf
              
/* 016BC 80A7D4DC 2484DF80 */  addiu   $a0, $a0, %lo(D_80A7DF80)  ## $a0 = 80A7DF80
/* 016C0 80A7D4E0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
.L80A7D4E4:
/* 016C4 80A7D4E4 44812000 */  mtc1    $at, $f4                   ## $f4 = 40.00
/* 016C8 80A7D4E8 00000000 */  nop
/* 016CC 80A7D4EC E7A40040 */  swc1    $f4, 0x0040($sp)           
.L80A7D4F0:
/* 016D0 80A7D4F0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 016D4 80A7D4F4 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 016D8 80A7D4F8 3C0280A8 */  lui     $v0, %hi(D_80A7DEB0)       ## $v0 = 80A80000
/* 016DC 80A7D4FC 2442DEB0 */  addiu   $v0, $v0, %lo(D_80A7DEB0)  ## $v0 = 80A7DEB0
/* 016E0 80A7D500 3C0180A8 */  lui     $at, %hi(D_80A7E068)       ## $at = 80A80000
/* 016E4 80A7D504 C428E068 */  lwc1    $f8, %lo(D_80A7E068)($at)  
/* 016E8 80A7D508 C4460000 */  lwc1    $f6, 0x0000($v0)           ## 80A7DEB0
/* 016EC 80A7D50C 3C0180A8 */  lui     $at, %hi(D_80A7E06C)       ## $at = 80A80000
/* 016F0 80A7D510 46083280 */  add.s   $f10, $f6, $f8             
/* 016F4 80A7D514 E44A0000 */  swc1    $f10, 0x0000($v0)          ## 80A7DEB0
/* 016F8 80A7D518 C4400000 */  lwc1    $f0, 0x0000($v0)           ## 80A7DEB0
/* 016FC 80A7D51C 4600603C */  c.lt.s  $f12, $f0                  
/* 01700 80A7D520 00000000 */  nop
/* 01704 80A7D524 45000003 */  bc1f    .L80A7D534                 
/* 01708 80A7D528 00000000 */  nop
/* 0170C 80A7D52C E44C0000 */  swc1    $f12, 0x0000($v0)          ## 80A7DEB0
/* 01710 80A7D530 C4400000 */  lwc1    $f0, 0x0000($v0)           ## 80A7DEB0
.L80A7D534:
/* 01714 80A7D534 C430E06C */  lwc1    $f16, %lo(D_80A7E06C)($at) 
/* 01718 80A7D538 4600803C */  c.lt.s  $f16, $f0                  
/* 0171C 80A7D53C 00000000 */  nop
/* 01720 80A7D540 45020005 */  bc1fl   .L80A7D558                 
/* 01724 80A7D544 3C014461 */  lui     $at, 0x4461                ## $at = 44610000
/* 01728 80A7D548 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 0172C 80A7D54C 10000019 */  beq     $zero, $zero, .L80A7D5B4   
/* 01730 80A7D550 8E080320 */  lw      $t0, 0x0320($s0)           ## 00000320
/* 01734 80A7D554 3C014461 */  lui     $at, 0x4461                ## $at = 44610000
.L80A7D558:
/* 01738 80A7D558 44819000 */  mtc1    $at, $f18                  ## $f18 = 900.00
/* 0173C 80A7D55C C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 01740 80A7D560 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01744 80A7D564 4604903C */  c.lt.s  $f18, $f4                  
/* 01748 80A7D568 00000000 */  nop
/* 0174C 80A7D56C 4502000C */  bc1fl   .L80A7D5A0                 
/* 01750 80A7D570 46006101 */  sub.s   $f4, $f12, $f0             
/* 01754 80A7D574 3C0180A8 */  lui     $at, %hi(D_80A7E070)       ## $at = 80A80000
/* 01758 80A7D578 C426E070 */  lwc1    $f6, %lo(D_80A7E070)($at)  
/* 0175C 80A7D57C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01760 80A7D580 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 01764 80A7D584 46003201 */  sub.s   $f8, $f6, $f0              
/* 01768 80A7D588 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0176C 80A7D58C 44819000 */  mtc1    $at, $f18                  ## $f18 = 20.00
/* 01770 80A7D590 460A4402 */  mul.s   $f16, $f8, $f10            
/* 01774 80A7D594 10000006 */  beq     $zero, $zero, .L80A7D5B0   
/* 01778 80A7D598 46128080 */  add.s   $f2, $f16, $f18            
/* 0177C 80A7D59C 46006101 */  sub.s   $f4, $f12, $f0             
.L80A7D5A0:
/* 01780 80A7D5A0 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 01784 80A7D5A4 00000000 */  nop
/* 01788 80A7D5A8 46062082 */  mul.s   $f2, $f4, $f6              
/* 0178C 80A7D5AC 00000000 */  nop
.L80A7D5B0:
/* 01790 80A7D5B0 8E080320 */  lw      $t0, 0x0320($s0)           ## 00000320
.L80A7D5B4:
/* 01794 80A7D5B4 11000022 */  beq     $t0, $zero, .L80A7D640     
/* 01798 80A7D5B8 00000000 */  nop
/* 0179C 80A7D5BC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 017A0 80A7D5C0 E7A2003C */  swc1    $f2, 0x003C($sp)           
/* 017A4 80A7D5C4 3C0180A8 */  lui     $at, %hi(D_80A7E074)       ## $at = 80A80000
/* 017A8 80A7D5C8 C428E074 */  lwc1    $f8, %lo(D_80A7E074)($at)  
/* 017AC 80A7D5CC C7A2003C */  lwc1    $f2, 0x003C($sp)           
/* 017B0 80A7D5D0 4608003C */  c.lt.s  $f0, $f8                   
/* 017B4 80A7D5D4 00000000 */  nop
/* 017B8 80A7D5D8 45000019 */  bc1f    .L80A7D640                 
/* 017BC 80A7D5DC 00000000 */  nop
/* 017C0 80A7D5E0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 017C4 80A7D5E4 E7A2003C */  swc1    $f2, 0x003C($sp)           
/* 017C8 80A7D5E8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 017CC 80A7D5EC 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 017D0 80A7D5F0 C7A2003C */  lwc1    $f2, 0x003C($sp)           
/* 017D4 80A7D5F4 8E090320 */  lw      $t1, 0x0320($s0)           ## 00000320
/* 017D8 80A7D5F8 460A0401 */  sub.s   $f16, $f0, $f10            
/* 017DC 80A7D5FC 8E0A0320 */  lw      $t2, 0x0320($s0)           ## 00000320
/* 017E0 80A7D600 C5240024 */  lwc1    $f4, 0x0024($t1)           ## 00000024
/* 017E4 80A7D604 46028482 */  mul.s   $f18, $f16, $f2            
/* 017E8 80A7D608 46049180 */  add.s   $f6, $f18, $f4             
/* 017EC 80A7D60C E6060008 */  swc1    $f6, 0x0008($s0)           ## 00000008
/* 017F0 80A7D610 C5480028 */  lwc1    $f8, 0x0028($t2)           ## 00000028
/* 017F4 80A7D614 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 017F8 80A7D618 E608000C */  swc1    $f8, 0x000C($s0)           ## 0000000C
/* 017FC 80A7D61C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01800 80A7D620 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 01804 80A7D624 C7A2003C */  lwc1    $f2, 0x003C($sp)           
/* 01808 80A7D628 8E0B0320 */  lw      $t3, 0x0320($s0)           ## 00000320
/* 0180C 80A7D62C 460A0401 */  sub.s   $f16, $f0, $f10            
/* 01810 80A7D630 C564002C */  lwc1    $f4, 0x002C($t3)           ## 0000002C
/* 01814 80A7D634 46028482 */  mul.s   $f18, $f16, $f2            
/* 01818 80A7D638 46049180 */  add.s   $f6, $f18, $f4             
/* 0181C 80A7D63C E6060010 */  swc1    $f6, 0x0010($s0)           ## 00000010
.L80A7D640:
/* 01820 80A7D640 3C0280A8 */  lui     $v0, %hi(D_80A7DEB0)       ## $v0 = 80A80000
/* 01824 80A7D644 2442DEB0 */  addiu   $v0, $v0, %lo(D_80A7DEB0)  ## $v0 = 80A7DEB0
/* 01828 80A7D648 3C0180A8 */  lui     $at, %hi(D_80A7E078)       ## $at = 80A80000
/* 0182C 80A7D64C C428E078 */  lwc1    $f8, %lo(D_80A7E078)($at)  
/* 01830 80A7D650 C44A0000 */  lwc1    $f10, 0x0000($v0)          ## 80A7DEB0
/* 01834 80A7D654 460A403C */  c.lt.s  $f8, $f10                  
/* 01838 80A7D658 00000000 */  nop
/* 0183C 80A7D65C 4500000B */  bc1f    .L80A7D68C                 
/* 01840 80A7D660 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 01844 80A7D664 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 01848 80A7D668 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 0184C 80A7D66C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01850 80A7D670 A6020328 */  sh      $v0, 0x0328($s0)           ## 00000328
/* 01854 80A7D674 3C0180A8 */  lui     $at, %hi(D_80A7E07C)       ## $at = 80A80000
/* 01858 80A7D678 C422E07C */  lwc1    $f2, %lo(D_80A7E07C)($at)  
/* 0185C 80A7D67C 46020402 */  mul.s   $f16, $f0, $f2             
/* 01860 80A7D680 46028480 */  add.s   $f18, $f16, $f2            
/* 01864 80A7D684 10000048 */  beq     $zero, $zero, .L80A7D7A8   
/* 01868 80A7D688 E6120324 */  swc1    $f18, 0x0324($s0)          ## 00000324
.L80A7D68C:
/* 0186C 80A7D68C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01870 80A7D690 00000000 */  nop
/* 01874 80A7D694 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01878 80A7D698 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 0187C 80A7D69C 3C0180A8 */  lui     $at, %hi(D_80A7E080)       ## $at = 80A80000
/* 01880 80A7D6A0 C424E080 */  lwc1    $f4, %lo(D_80A7E080)($at)  
/* 01884 80A7D6A4 260C0024 */  addiu   $t4, $s0, 0x0024           ## $t4 = 00000024
/* 01888 80A7D6A8 4604003C */  c.lt.s  $f0, $f4                   
/* 0188C 80A7D6AC 00000000 */  nop
/* 01890 80A7D6B0 4500003D */  bc1f    .L80A7D7A8                 
/* 01894 80A7D6B4 00000000 */  nop
/* 01898 80A7D6B8 AFAC002C */  sw      $t4, 0x002C($sp)           
/* 0189C 80A7D6BC C6060324 */  lwc1    $f6, 0x0324($s0)           ## 00000324
/* 018A0 80A7D6C0 3C0180A8 */  lui     $at, %hi(D_80A7E084)       ## $at = 80A80000
/* 018A4 80A7D6C4 4606603C */  c.lt.s  $f12, $f6                  
/* 018A8 80A7D6C8 00000000 */  nop
/* 018AC 80A7D6CC 45000004 */  bc1f    .L80A7D6E0                 
/* 018B0 80A7D6D0 00000000 */  nop
/* 018B4 80A7D6D4 C428E084 */  lwc1    $f8, %lo(D_80A7E084)($at)  
/* 018B8 80A7D6D8 1000000A */  beq     $zero, $zero, .L80A7D704   
/* 018BC 80A7D6DC E6080324 */  swc1    $f8, 0x0324($s0)           ## 00000324
.L80A7D6E0:
/* 018C0 80A7D6E0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 018C4 80A7D6E4 00000000 */  nop
/* 018C8 80A7D6E8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 018CC 80A7D6EC 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 018D0 80A7D6F0 3C0180A8 */  lui     $at, %hi(D_80A7E088)       ## $at = 80A80000
/* 018D4 80A7D6F4 C42AE088 */  lwc1    $f10, %lo(D_80A7E088)($at) 
/* 018D8 80A7D6F8 460A0402 */  mul.s   $f16, $f0, $f10            
/* 018DC 80A7D6FC 460C8480 */  add.s   $f18, $f16, $f12           
/* 018E0 80A7D700 E6120324 */  swc1    $f18, 0x0324($s0)          ## 00000324
.L80A7D704:
/* 018E4 80A7D704 3C0180A8 */  lui     $at, %hi(D_80A7E08C)       ## $at = 80A80000
/* 018E8 80A7D708 C424E08C */  lwc1    $f4, %lo(D_80A7E08C)($at)  
/* 018EC 80A7D70C 3C0180A8 */  lui     $at, %hi(D_80A7DEB0)       ## $at = 80A80000
/* 018F0 80A7D710 C426DEB0 */  lwc1    $f6, %lo(D_80A7DEB0)($at)  
/* 018F4 80A7D714 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 018F8 80A7D718 46062081 */  sub.s   $f2, $f4, $f6              
/* 018FC 80A7D71C 4608103C */  c.lt.s  $f2, $f8                   
/* 01900 80A7D720 00000000 */  nop
/* 01904 80A7D724 45020005 */  bc1fl   .L80A7D73C                 
/* 01908 80A7D728 4602603C */  c.lt.s  $f12, $f2                  
/* 0190C 80A7D72C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01910 80A7D730 10000009 */  beq     $zero, $zero, .L80A7D758   
/* 01914 80A7D734 00000000 */  nop
/* 01918 80A7D738 4602603C */  c.lt.s  $f12, $f2                  
.L80A7D73C:
/* 0191C 80A7D73C 00000000 */  nop
/* 01920 80A7D740 45020004 */  bc1fl   .L80A7D754                 
/* 01924 80A7D744 46001006 */  mov.s   $f0, $f2                   
/* 01928 80A7D748 10000002 */  beq     $zero, $zero, .L80A7D754   
/* 0192C 80A7D74C 46006006 */  mov.s   $f0, $f12                  
/* 01930 80A7D750 46001006 */  mov.s   $f0, $f2                   
.L80A7D754:
/* 01934 80A7D754 46000086 */  mov.s   $f2, $f0                   
.L80A7D758:
/* 01938 80A7D758 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0193C 80A7D75C E7A20034 */  swc1    $f2, 0x0034($sp)           
/* 01940 80A7D760 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01944 80A7D764 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 01948 80A7D768 3C0180A8 */  lui     $at, %hi(D_80A7E090)       ## $at = 80A80000
/* 0194C 80A7D76C C432E090 */  lwc1    $f18, %lo(D_80A7E090)($at) 
/* 01950 80A7D770 460A0401 */  sub.s   $f16, $f0, $f10            
/* 01954 80A7D774 C7A20034 */  lwc1    $f2, 0x0034($sp)           
/* 01958 80A7D778 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0195C 80A7D77C 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 01960 80A7D780 46128102 */  mul.s   $f4, $f16, $f18            
/* 01964 80A7D784 00000000 */  nop
/* 01968 80A7D788 46022182 */  mul.s   $f6, $f4, $f2              
/* 0196C 80A7D78C 4600320D */  trunc.w.s $f8, $f6                   
/* 01970 80A7D790 440E4000 */  mfc1    $t6, $f8                   
/* 01974 80A7D794 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 01978 80A7D798 A7AE0038 */  sh      $t6, 0x0038($sp)           
/* 0197C 80A7D79C 87AF0038 */  lh      $t7, 0x0038($sp)           
/* 01980 80A7D7A0 004FC021 */  addu    $t8, $v0, $t7              
/* 01984 80A7D7A4 A6180328 */  sh      $t8, 0x0328($s0)           ## 00000328
.L80A7D7A8:
/* 01988 80A7D7A8 3C0180A8 */  lui     $at, %hi(D_80A7E094)       ## $at = 80A80000
/* 0198C 80A7D7AC C42CE094 */  lwc1    $f12, %lo(D_80A7E094)($at) 
/* 01990 80A7D7B0 3C0180A8 */  lui     $at, %hi(D_80A7E098)       ## $at = 80A80000
/* 01994 80A7D7B4 C430E098 */  lwc1    $f16, %lo(D_80A7E098)($at) 
/* 01998 80A7D7B8 C60A0050 */  lwc1    $f10, 0x0050($s0)          ## 00000050
/* 0199C 80A7D7BC 46105080 */  add.s   $f2, $f10, $f16            
/* 019A0 80A7D7C0 4602603C */  c.lt.s  $f12, $f2                  
/* 019A4 80A7D7C4 00000000 */  nop
/* 019A8 80A7D7C8 45020004 */  bc1fl   .L80A7D7DC                 
/* 019AC 80A7D7CC 46001006 */  mov.s   $f0, $f2                   
/* 019B0 80A7D7D0 10000002 */  beq     $zero, $zero, .L80A7D7DC   
/* 019B4 80A7D7D4 46006006 */  mov.s   $f0, $f12                  
/* 019B8 80A7D7D8 46001006 */  mov.s   $f0, $f2                   
.L80A7D7DC:
/* 019BC 80A7D7DC 44050000 */  mfc1    $a1, $f0                   
/* 019C0 80A7D7E0 0C00B58B */  jal     Actor_SetScale
              
/* 019C4 80A7D7E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 019C8 80A7D7E8 96190088 */  lhu     $t9, 0x0088($s0)           ## 00000088
/* 019CC 80A7D7EC 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 019D0 80A7D7F0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 019D4 80A7D7F4 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 019D8 80A7D7F8 11000017 */  beq     $t0, $zero, .L80A7D858     
/* 019DC 80A7D7FC 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 019E0 80A7D800 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 019E4 80A7D804 8E050324 */  lw      $a1, 0x0324($s0)           ## 00000324
/* 019E8 80A7D808 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 019EC 80A7D80C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 019F0 80A7D810 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 019F4 80A7D814 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 019F8 80A7D818 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 019FC 80A7D81C E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 01A00 80A7D820 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 01A04 80A7D824 86050328 */  lh      $a1, 0x0328($s0)           ## 00000328
/* 01A08 80A7D828 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01A0C 80A7D82C 240607D0 */  addiu   $a2, $zero, 0x07D0         ## $a2 = 000007D0
/* 01A10 80A7D830 26040030 */  addiu   $a0, $s0, 0x0030           ## $a0 = 00000030
/* 01A14 80A7D834 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01A18 80A7D838 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01A1C 80A7D83C 240607D0 */  addiu   $a2, $zero, 0x07D0         ## $a2 = 000007D0
/* 01A20 80A7D840 AFA20050 */  sw      $v0, 0x0050($sp)           
/* 01A24 80A7D844 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
/* 01A28 80A7D848 860A0030 */  lh      $t2, 0x0030($s0)           ## 00000030
/* 01A2C 80A7D84C A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 01A30 80A7D850 10000021 */  beq     $zero, $zero, .L80A7D8D8   
/* 01A34 80A7D854 A60A00B4 */  sh      $t2, 0x00B4($s0)           ## 000000B4
.L80A7D858:
/* 01A38 80A7D858 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01A3C 80A7D85C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 0000CCCD
/* 01A40 80A7D860 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 01A44 80A7D864 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01A48 80A7D868 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01A4C 80A7D86C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01A50 80A7D870 00000000 */  nop
/* 01A54 80A7D874 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01A58 80A7D878 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 01A5C 80A7D87C 3C0180A8 */  lui     $at, %hi(D_80A7E09C)       ## $at = 80A80000
/* 01A60 80A7D880 C42AE09C */  lwc1    $f10, %lo(D_80A7E09C)($at) 
/* 01A64 80A7D884 46060201 */  sub.s   $f8, $f0, $f6              
/* 01A68 80A7D888 C6120068 */  lwc1    $f18, 0x0068($s0)          ## 00000068
/* 01A6C 80A7D88C 460A4402 */  mul.s   $f16, $f8, $f10            
/* 01A70 80A7D890 46109100 */  add.s   $f4, $f18, $f16            
/* 01A74 80A7D894 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01A78 80A7D898 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 01A7C 80A7D89C 3C0180A8 */  lui     $at, %hi(D_80A7E0A0)       ## $at = 80A80000
/* 01A80 80A7D8A0 C428E0A0 */  lwc1    $f8, %lo(D_80A7E0A0)($at)  
/* 01A84 80A7D8A4 860B0032 */  lh      $t3, 0x0032($s0)           ## 00000032
/* 01A88 80A7D8A8 860C0316 */  lh      $t4, 0x0316($s0)           ## 00000316
/* 01A8C 80A7D8AC 46080282 */  mul.s   $f10, $f0, $f8             
/* 01A90 80A7D8B0 C6060060 */  lwc1    $f6, 0x0060($s0)           ## 00000060
/* 01A94 80A7D8B4 016C6821 */  addu    $t5, $t3, $t4              
/* 01A98 80A7D8B8 860F00B4 */  lh      $t7, 0x00B4($s0)           ## 000000B4
/* 01A9C 80A7D8BC A60D0032 */  sh      $t5, 0x0032($s0)           ## 00000032
/* 01AA0 80A7D8C0 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 01AA4 80A7D8C4 25F8F830 */  addiu   $t8, $t7, 0xF830           ## $t8 = FFFFF830
/* 01AA8 80A7D8C8 460A3480 */  add.s   $f18, $f6, $f10            
/* 01AAC 80A7D8CC A61800B4 */  sh      $t8, 0x00B4($s0)           ## 000000B4
/* 01AB0 80A7D8D0 A60E00B6 */  sh      $t6, 0x00B6($s0)           ## 000000B6
/* 01AB4 80A7D8D4 E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
.L80A7D8D8:
/* 01AB8 80A7D8D8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01ABC 80A7D8DC 00000000 */  nop
/* 01AC0 80A7D8E0 3C0180A8 */  lui     $at, %hi(D_80A7E0A4)       ## $at = 80A80000
/* 01AC4 80A7D8E4 C424E0A4 */  lwc1    $f4, %lo(D_80A7E0A4)($at)  
/* 01AC8 80A7D8E8 C6100068 */  lwc1    $f16, 0x0068($s0)          ## 00000068
/* 01ACC 80A7D8EC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01AD0 80A7D8F0 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 01AD4 80A7D8F4 46048202 */  mul.s   $f8, $f16, $f4             
/* 01AD8 80A7D8F8 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 01ADC 80A7D8FC 3C0180A8 */  lui     $at, %hi(D_80A7E0A8)       ## $at = 80A80000
/* 01AE0 80A7D900 46060282 */  mul.s   $f10, $f0, $f6             
/* 01AE4 80A7D904 46085080 */  add.s   $f2, $f10, $f8             
/* 01AE8 80A7D908 460C103C */  c.lt.s  $f2, $f12                  
/* 01AEC 80A7D90C 00000000 */  nop
/* 01AF0 80A7D910 45000003 */  bc1f    .L80A7D920                 
/* 01AF4 80A7D914 00000000 */  nop
/* 01AF8 80A7D918 1000000A */  beq     $zero, $zero, .L80A7D944   
/* 01AFC 80A7D91C E60C01C8 */  swc1    $f12, 0x01C8($s0)          ## 000001C8
.L80A7D920:
/* 01B00 80A7D920 C42CE0A8 */  lwc1    $f12, %lo(D_80A7E0A8)($at) 
/* 01B04 80A7D924 4602603C */  c.lt.s  $f12, $f2                  
/* 01B08 80A7D928 00000000 */  nop
/* 01B0C 80A7D92C 45020004 */  bc1fl   .L80A7D940                 
/* 01B10 80A7D930 46001006 */  mov.s   $f0, $f2                   
/* 01B14 80A7D934 10000002 */  beq     $zero, $zero, .L80A7D940   
/* 01B18 80A7D938 46006006 */  mov.s   $f0, $f12                  
/* 01B1C 80A7D93C 46001006 */  mov.s   $f0, $f2                   
.L80A7D940:
/* 01B20 80A7D940 E60001C8 */  swc1    $f0, 0x01C8($s0)           ## 000001C8
.L80A7D944:
/* 01B24 80A7D944 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01B28 80A7D948 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 01B2C 80A7D94C 96060314 */  lhu     $a2, 0x0314($s0)           ## 00000314
/* 01B30 80A7D950 30D90040 */  andi    $t9, $a2, 0x0040           ## $t9 = 00000000
/* 01B34 80A7D954 1720000E */  bne     $t9, $zero, .L80A7D990     
/* 01B38 80A7D958 30C80001 */  andi    $t0, $a2, 0x0001           ## $t0 = 00000000
/* 01B3C 80A7D95C 5100000D */  beql    $t0, $zero, .L80A7D994     
/* 01B40 80A7D960 87AD003A */  lh      $t5, 0x003A($sp)           
/* 01B44 80A7D964 96090088 */  lhu     $t1, 0x0088($s0)           ## 00000088
/* 01B48 80A7D968 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B4C 80A7D96C 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 01B50 80A7D970 51400008 */  beql    $t2, $zero, .L80A7D994     
/* 01B54 80A7D974 87AD003A */  lh      $t5, 0x003A($sp)           
/* 01B58 80A7D978 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01B5C 80A7D97C 240539A0 */  addiu   $a1, $zero, 0x39A0         ## $a1 = 000039A0
/* 01B60 80A7D980 960B0314 */  lhu     $t3, 0x0314($s0)           ## 00000314
/* 01B64 80A7D984 356C0040 */  ori     $t4, $t3, 0x0040           ## $t4 = 00000040
/* 01B68 80A7D988 A60C0314 */  sh      $t4, 0x0314($s0)           ## 00000314
/* 01B6C 80A7D98C 3186FFFF */  andi    $a2, $t4, 0xFFFF           ## $a2 = 00000040
.L80A7D990:
/* 01B70 80A7D990 87AD003A */  lh      $t5, 0x003A($sp)           
.L80A7D994:
/* 01B74 80A7D994 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 01B78 80A7D998 30CE0010 */  andi    $t6, $a2, 0x0010           ## $t6 = 00000000
/* 01B7C 80A7D99C 55A7002E */  bnel    $t5, $a3, .L80A7DA58       
/* 01B80 80A7D9A0 30C20001 */  andi    $v0, $a2, 0x0001           ## $v0 = 00000000
/* 01B84 80A7D9A4 11C0002B */  beq     $t6, $zero, .L80A7DA54     
/* 01B88 80A7D9A8 30CF0080 */  andi    $t7, $a2, 0x0080           ## $t7 = 00000000
/* 01B8C 80A7D9AC 55E0002A */  bnel    $t7, $zero, .L80A7DA58     
/* 01B90 80A7D9B0 30C20001 */  andi    $v0, $a2, 0x0001           ## $v0 = 00000000
/* 01B94 80A7D9B4 9202032A */  lbu     $v0, 0x032A($s0)           ## 0000032A
/* 01B98 80A7D9B8 2841000F */  slti    $at, $v0, 0x000F           
/* 01B9C 80A7D9BC 14200023 */  bne     $at, $zero, .L80A7DA4C     
/* 01BA0 80A7D9C0 24580001 */  addiu   $t8, $v0, 0x0001           ## $t8 = 00000001
/* 01BA4 80A7D9C4 8E020320 */  lw      $v0, 0x0320($s0)           ## 00000320
/* 01BA8 80A7D9C8 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 01BAC 80A7D9CC 5040001C */  beql    $v0, $zero, .L80A7DA40     
/* 01BB0 80A7D9D0 34CF0080 */  ori     $t7, $a2, 0x0080           ## $t7 = 000000C0
/* 01BB4 80A7D9D4 8443001C */  lh      $v1, 0x001C($v0)           ## 0000001C
/* 01BB8 80A7D9D8 3C098012 */  lui     $t1, 0x8012                ## $t1 = 80120000
/* 01BBC 80A7D9DC 3C0B8012 */  lui     $t3, 0x8012                ## $t3 = 80120000
/* 01BC0 80A7D9E0 00032203 */  sra     $a0, $v1,  8               
/* 01BC4 80A7D9E4 3084001F */  andi    $a0, $a0, 0x001F           ## $a0 = 00000000
/* 01BC8 80A7D9E8 2484FFFF */  addiu   $a0, $a0, 0xFFFF           ## $a0 = FFFFFFFF
/* 01BCC 80A7D9EC 30850003 */  andi    $a1, $a0, 0x0003           ## $a1 = 00000003
/* 01BD0 80A7D9F0 0004C083 */  sra     $t8, $a0,  2               
/* 01BD4 80A7D9F4 0018C880 */  sll     $t9, $t8,  2               
/* 01BD8 80A7D9F8 00052880 */  sll     $a1, $a1,  2               
/* 01BDC 80A7D9FC 01254821 */  addu    $t1, $t1, $a1              
/* 01BE0 80A7DA00 01194021 */  addu    $t0, $t0, $t9              
/* 01BE4 80A7DA04 8D08F4FC */  lw      $t0, -0x0B04($t0)          ## 8015F4FC
/* 01BE8 80A7DA08 8D29723C */  lw      $t1, 0x723C($t1)           ## 8012723C
/* 01BEC 80A7DA0C 01655821 */  addu    $t3, $t3, $a1              
/* 01BF0 80A7DA10 8D6B724C */  lw      $t3, 0x724C($t3)           ## 8012724C
/* 01BF4 80A7DA14 01095024 */  and     $t2, $t0, $t1              
/* 01BF8 80A7DA18 306D00FF */  andi    $t5, $v1, 0x00FF           ## $t5 = 00000000
/* 01BFC 80A7DA1C 016A6006 */  srlv    $t4, $t2, $t3              
/* 01C00 80A7DA20 018D7024 */  and     $t6, $t4, $t5              
/* 01C04 80A7DA24 55C00006 */  bnel    $t6, $zero, .L80A7DA40     
/* 01C08 80A7DA28 34CF0080 */  ori     $t7, $a2, 0x0080           ## $t7 = 000000C0
/* 01C0C 80A7DA2C 0C01E221 */  jal     func_80078884              
/* 01C10 80A7DA30 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 01C14 80A7DA34 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 01C18 80A7DA38 96060314 */  lhu     $a2, 0x0314($s0)           ## 00000314
/* 01C1C 80A7DA3C 34CF0080 */  ori     $t7, $a2, 0x0080           ## $t7 = 00000080
.L80A7DA40:
/* 01C20 80A7DA40 A60F0314 */  sh      $t7, 0x0314($s0)           ## 00000314
/* 01C24 80A7DA44 10000003 */  beq     $zero, $zero, .L80A7DA54   
/* 01C28 80A7DA48 31E6FFFF */  andi    $a2, $t7, 0xFFFF           ## $a2 = 00000080
.L80A7DA4C:
/* 01C2C 80A7DA4C A218032A */  sb      $t8, 0x032A($s0)           ## 0000032A
/* 01C30 80A7DA50 96060314 */  lhu     $a2, 0x0314($s0)           ## 00000314
.L80A7DA54:
/* 01C34 80A7DA54 30C20001 */  andi    $v0, $a2, 0x0001           ## $v0 = 00000000
.L80A7DA58:
/* 01C38 80A7DA58 10400009 */  beq     $v0, $zero, .L80A7DA80     
/* 01C3C 80A7DA5C 30C90010 */  andi    $t1, $a2, 0x0010           ## $t1 = 00000000
/* 01C40 80A7DA60 96190088 */  lhu     $t9, 0x0088($s0)           ## 00000088
/* 01C44 80A7DA64 33280040 */  andi    $t0, $t9, 0x0040           ## $t0 = 00000000
/* 01C48 80A7DA68 11000005 */  beq     $t0, $zero, .L80A7DA80     
/* 01C4C 80A7DA6C 00000000 */  nop
/* 01C50 80A7DA70 0C29F398 */  jal     func_80A7CE60              
/* 01C54 80A7DA74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C58 80A7DA78 1000005D */  beq     $zero, $zero, .L80A7DBF0   
/* 01C5C 80A7DA7C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7DA80:
/* 01C60 80A7DA80 11200033 */  beq     $t1, $zero, .L80A7DB50     
/* 01C64 80A7DA84 8FA80050 */  lw      $t0, 0x0050($sp)           
/* 01C68 80A7DA88 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 01C6C 80A7DA8C 44818000 */  mtc1    $at, $f16                  ## $f16 = 9.00
/* 01C70 80A7DA90 C7B20040 */  lwc1    $f18, 0x0040($sp)          
/* 01C74 80A7DA94 4610903C */  c.lt.s  $f18, $f16                 
/* 01C78 80A7DA98 00000000 */  nop
/* 01C7C 80A7DA9C 45020006 */  bc1fl   .L80A7DAB8                 
/* 01C80 80A7DAA0 860A031A */  lh      $t2, 0x031A($s0)           ## 0000031A
/* 01C84 80A7DAA4 0C29F2F2 */  jal     func_80A7CBC8              
/* 01C88 80A7DAA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C8C 80A7DAAC 10000050 */  beq     $zero, $zero, .L80A7DBF0   
/* 01C90 80A7DAB0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01C94 80A7DAB4 860A031A */  lh      $t2, 0x031A($s0)           ## 0000031A
.L80A7DAB8:
/* 01C98 80A7DAB8 19400014 */  blez    $t2, .L80A7DB0C            
/* 01C9C 80A7DABC 00000000 */  nop
/* 01CA0 80A7DAC0 8603031C */  lh      $v1, 0x031C($s0)           ## 0000031C
/* 01CA4 80A7DAC4 18600011 */  blez    $v1, .L80A7DB0C            
/* 01CA8 80A7DAC8 00000000 */  nop
/* 01CAC 80A7DACC 10400013 */  beq     $v0, $zero, .L80A7DB1C     
/* 01CB0 80A7DAD0 C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 01CB4 80A7DAD4 960B0088 */  lhu     $t3, 0x0088($s0)           ## 00000088
/* 01CB8 80A7DAD8 3C0D80A8 */  lui     $t5, %hi(D_80A7DEB8)       ## $t5 = 80A80000
/* 01CBC 80A7DADC 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 01CC0 80A7DAE0 5180000F */  beql    $t4, $zero, .L80A7DB20     
/* 01CC4 80A7DAE4 3C014461 */  lui     $at, 0x4461                ## $at = 44610000
/* 01CC8 80A7DAE8 85ADDEB8 */  lh      $t5, %lo(D_80A7DEB8)($t5)  
/* 01CCC 80A7DAEC 87AE003A */  lh      $t6, 0x003A($sp)           
/* 01CD0 80A7DAF0 29A10004 */  slti    $at, $t5, 0x0004           
/* 01CD4 80A7DAF4 5420000A */  bnel    $at, $zero, .L80A7DB20     
/* 01CD8 80A7DAF8 3C014461 */  lui     $at, 0x4461                ## $at = 44610000
/* 01CDC 80A7DAFC 11C70003 */  beq     $t6, $a3, .L80A7DB0C       
/* 01CE0 80A7DB00 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01CE4 80A7DB04 55C10006 */  bnel    $t6, $at, .L80A7DB20       
/* 01CE8 80A7DB08 3C014461 */  lui     $at, 0x4461                ## $at = 44610000
.L80A7DB0C:
/* 01CEC 80A7DB0C 0C29F2F2 */  jal     func_80A7CBC8              
/* 01CF0 80A7DB10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CF4 80A7DB14 10000036 */  beq     $zero, $zero, .L80A7DBF0   
/* 01CF8 80A7DB18 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7DB1C:
/* 01CFC 80A7DB1C 3C014461 */  lui     $at, 0x4461                ## $at = 44610000
.L80A7DB20:
/* 01D00 80A7DB20 44813000 */  mtc1    $at, $f6                   ## $f6 = 900.00
/* 01D04 80A7DB24 246F0001 */  addiu   $t7, $v1, 0x0001           ## $t7 = 00000001
/* 01D08 80A7DB28 34D80020 */  ori     $t8, $a2, 0x0020           ## $t8 = 00000020
/* 01D0C 80A7DB2C 4606203C */  c.lt.s  $f4, $f6                   
/* 01D10 80A7DB30 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 01D14 80A7DB34 45000004 */  bc1f    .L80A7DB48                 
/* 01D18 80A7DB38 00000000 */  nop
/* 01D1C 80A7DB3C A60F031C */  sh      $t7, 0x031C($s0)           ## 0000031C
/* 01D20 80A7DB40 1000002A */  beq     $zero, $zero, .L80A7DBEC   
/* 01D24 80A7DB44 A6180314 */  sh      $t8, 0x0314($s0)           ## 00000314
.L80A7DB48:
/* 01D28 80A7DB48 10000028 */  beq     $zero, $zero, .L80A7DBEC   
/* 01D2C 80A7DB4C A619031A */  sh      $t9, 0x031A($s0)           ## 0000031A
.L80A7DB50:
/* 01D30 80A7DB50 11000005 */  beq     $t0, $zero, .L80A7DB68     
/* 01D34 80A7DB54 87A9003A */  lh      $t1, 0x003A($sp)           
/* 01D38 80A7DB58 0C29F0E8 */  jal     func_80A7C3A0              
/* 01D3C 80A7DB5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D40 80A7DB60 10000023 */  beq     $zero, $zero, .L80A7DBF0   
/* 01D44 80A7DB64 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7DB68:
/* 01D48 80A7DB68 11270003 */  beq     $t1, $a3, .L80A7DB78       
/* 01D4C 80A7DB6C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01D50 80A7DB70 5521001F */  bnel    $t1, $at, .L80A7DBF0       
/* 01D54 80A7DB74 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7DB78:
/* 01D58 80A7DB78 5040001D */  beql    $v0, $zero, .L80A7DBF0     
/* 01D5C 80A7DB7C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01D60 80A7DB80 860A031C */  lh      $t2, 0x031C($s0)           ## 0000031C
/* 01D64 80A7DB84 5D40001A */  bgtzl   $t2, .L80A7DBF0            
/* 01D68 80A7DB88 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01D6C 80A7DB8C 860B031A */  lh      $t3, 0x031A($s0)           ## 0000031A
/* 01D70 80A7DB90 3C0180A8 */  lui     $at, %hi(D_80A7E0AC)       ## $at = 80A80000
/* 01D74 80A7DB94 5D600016 */  bgtzl   $t3, .L80A7DBF0            
/* 01D78 80A7DB98 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01D7C 80A7DB9C C60A0080 */  lwc1    $f10, 0x0080($s0)          ## 00000080
/* 01D80 80A7DBA0 C428E0AC */  lwc1    $f8, %lo(D_80A7E0AC)($at)  
/* 01D84 80A7DBA4 3C0480A8 */  lui     $a0, %hi(D_80A7DF84)       ## $a0 = 80A80000
/* 01D88 80A7DBA8 4608503C */  c.lt.s  $f10, $f8                  
/* 01D8C 80A7DBAC 00000000 */  nop
/* 01D90 80A7DBB0 4502000F */  bc1fl   .L80A7DBF0                 
/* 01D94 80A7DBB4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01D98 80A7DBB8 0C00084C */  jal     osSyncPrintf
              
/* 01D9C 80A7DBBC 2484DF84 */  addiu   $a0, $a0, %lo(D_80A7DF84)  ## $a0 = 80A7DF84
/* 01DA0 80A7DBC0 3C0480A8 */  lui     $a0, %hi(D_80A7DF90)       ## $a0 = 80A80000
/* 01DA4 80A7DBC4 3C0580A8 */  lui     $a1, %hi(D_80A7DFB8)       ## $a1 = 80A80000
/* 01DA8 80A7DBC8 24A5DFB8 */  addiu   $a1, $a1, %lo(D_80A7DFB8)  ## $a1 = 80A7DFB8
/* 01DAC 80A7DBCC 2484DF90 */  addiu   $a0, $a0, %lo(D_80A7DF90)  ## $a0 = 80A7DF90
/* 01DB0 80A7DBD0 0C00084C */  jal     osSyncPrintf
              
/* 01DB4 80A7DBD4 240604AD */  addiu   $a2, $zero, 0x04AD         ## $a2 = 000004AD
/* 01DB8 80A7DBD8 3C0480A8 */  lui     $a0, %hi(D_80A7DFC8)       ## $a0 = 80A80000
/* 01DBC 80A7DBDC 0C00084C */  jal     osSyncPrintf
              
/* 01DC0 80A7DBE0 2484DFC8 */  addiu   $a0, $a0, %lo(D_80A7DFC8)  ## $a0 = 80A7DFC8
/* 01DC4 80A7DBE4 0C00B55C */  jal     Actor_Kill
              
/* 01DC8 80A7DBE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A7DBEC:
/* 01DCC 80A7DBEC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7DBF0:
/* 01DD0 80A7DBF0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01DD4 80A7DBF4 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 01DD8 80A7DBF8 03E00008 */  jr      $ra                        
/* 01DDC 80A7DBFC 00000000 */  nop


