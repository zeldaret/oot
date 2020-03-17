glabel func_80ACE5C8
/* 007F8 80ACE5C8 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 007FC 80ACE5CC AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00800 80ACE5D0 AFB10030 */  sw      $s1, 0x0030($sp)           
/* 00804 80ACE5D4 AFB0002C */  sw      $s0, 0x002C($sp)           
/* 00808 80ACE5D8 848E014E */  lh      $t6, 0x014E($a0)           ## 0000014E
/* 0080C 80ACE5DC 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00810 80ACE5E0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00814 80ACE5E4 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 00818 80ACE5E8 A48F014E */  sh      $t7, 0x014E($a0)           ## 0000014E
/* 0081C 80ACE5EC 8498014E */  lh      $t8, 0x014E($a0)           ## 0000014E
/* 00820 80ACE5F0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00824 80ACE5F4 27B90050 */  addiu   $t9, $sp, 0x0050           ## $t9 = FFFFFFF0
/* 00828 80ACE5F8 17000005 */  bne     $t8, $zero, .L80ACE610     
/* 0082C 80ACE5FC 3C0880AD */  lui     $t0, %hi(D_80ACF1D4)       ## $t0 = 80AD0000
/* 00830 80ACE600 0C00B55C */  jal     Actor_Kill
              
/* 00834 80ACE604 00000000 */  nop
/* 00838 80ACE608 10000073 */  beq     $zero, $zero, .L80ACE7D8   
/* 0083C 80ACE60C 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80ACE610:
/* 00840 80ACE610 2508F1D4 */  addiu   $t0, $t0, %lo(D_80ACF1D4)  ## $t0 = FFFFF1D4
/* 00844 80ACE614 8D0A0000 */  lw      $t2, 0x0000($t0)           ## FFFFF1D4
/* 00848 80ACE618 8D090004 */  lw      $t1, 0x0004($t0)           ## FFFFF1D8
/* 0084C 80ACE61C 3C0C80AD */  lui     $t4, %hi(D_80ACF1E0)       ## $t4 = 80AD0000
/* 00850 80ACE620 AF2A0000 */  sw      $t2, 0x0000($t9)           ## 00000000
/* 00854 80ACE624 8D0A0008 */  lw      $t2, 0x0008($t0)           ## FFFFF1DC
/* 00858 80ACE628 258CF1E0 */  addiu   $t4, $t4, %lo(D_80ACF1E0)  ## $t4 = 80ACF1E0
/* 0085C 80ACE62C AF290004 */  sw      $t1, 0x0004($t9)           ## 00000004
/* 00860 80ACE630 AF2A0008 */  sw      $t2, 0x0008($t9)           ## 00000008
/* 00864 80ACE634 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 80ACF1E0
/* 00868 80ACE638 27AB0044 */  addiu   $t3, $sp, 0x0044           ## $t3 = FFFFFFE4
/* 0086C 80ACE63C 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 80ACF1E4
/* 00870 80ACE640 AD6E0000 */  sw      $t6, 0x0000($t3)           ## FFFFFFE4
/* 00874 80ACE644 8D8E0008 */  lw      $t6, 0x0008($t4)           ## 80ACF1E8
/* 00878 80ACE648 AD6D0004 */  sw      $t5, 0x0004($t3)           ## FFFFFFE8
/* 0087C 80ACE64C 3C014044 */  lui     $at, 0x4044                ## $at = 40440000
/* 00880 80ACE650 AD6E0008 */  sw      $t6, 0x0008($t3)           ## FFFFFFEC
/* 00884 80ACE654 C604008C */  lwc1    $f4, 0x008C($s0)           ## 0000008C
/* 00888 80ACE658 44813800 */  mtc1    $at, $f7                   ## $f7 = 3.06
/* 0088C 80ACE65C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00890 80ACE660 46002021 */  cvt.d.s $f0, $f4                   
/* 00894 80ACE664 46200004 */  sqrt.d  $f0, $f0                   
/* 00898 80ACE668 4626003E */  c.le.d  $f0, $f6                   
/* 0089C 80ACE66C 00000000 */  nop
/* 008A0 80ACE670 4502002C */  bc1fl   .L80ACE724                 
/* 008A4 80ACE674 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 008A8 80ACE678 80620A78 */  lb      $v0, 0x0A78($v1)           ## 00000A78
/* 008AC 80ACE67C 1C40000F */  bgtz    $v0, .L80ACE6BC            
/* 008B0 80ACE680 A3A20043 */  sb      $v0, 0x0043($sp)           
/* 008B4 80ACE684 2841FFD9 */  slti    $at, $v0, 0xFFD9           
/* 008B8 80ACE688 10200003 */  beq     $at, $zero, .L80ACE698     
/* 008BC 80ACE68C 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 008C0 80ACE690 1000000A */  beq     $zero, $zero, .L80ACE6BC   
/* 008C4 80ACE694 A0600A78 */  sb      $zero, 0x0A78($v1)         ## 00000A78
.L80ACE698:
/* 008C8 80ACE698 A0600A78 */  sb      $zero, 0x0A78($v1)         ## 00000A78
/* 008CC 80ACE69C AFA3005C */  sw      $v1, 0x005C($sp)           
/* 008D0 80ACE6A0 0331C821 */  addu    $t9, $t9, $s1              
/* 008D4 80ACE6A4 8F391D58 */  lw      $t9, 0x1D58($t9)           ## 00011D58
/* 008D8 80ACE6A8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 008DC 80ACE6AC 2405FFF8 */  addiu   $a1, $zero, 0xFFF8         ## $a1 = FFFFFFF8
/* 008E0 80ACE6B0 0320F809 */  jalr    $ra, $t9                   
/* 008E4 80ACE6B4 00000000 */  nop
/* 008E8 80ACE6B8 8FA3005C */  lw      $v1, 0x005C($sp)           
.L80ACE6BC:
/* 008EC 80ACE6BC 8E050118 */  lw      $a1, 0x0118($s0)           ## 00000118
/* 008F0 80ACE6C0 3C0180AD */  lui     $at, %hi(D_80ACF2E4)       ## $at = 80AD0000
/* 008F4 80ACE6C4 C428F2E4 */  lwc1    $f8, %lo(D_80ACF2E4)($at)  
/* 008F8 80ACE6C8 C4AA0090 */  lwc1    $f10, 0x0090($a1)          ## 00000090
/* 008FC 80ACE6CC 3C0180AD */  lui     $at, %hi(D_80ACF2E8)       ## $at = 80AD0000
/* 00900 80ACE6D0 C432F2E8 */  lwc1    $f18, %lo(D_80ACF2E8)($at) 
/* 00904 80ACE6D4 460A4401 */  sub.s   $f16, $f8, $f10            
/* 00908 80ACE6D8 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 0090C 80ACE6DC 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 00910 80ACE6E0 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00914 80ACE6E4 46128102 */  mul.s   $f4, $f16, $f18            
/* 00918 80ACE6E8 44815000 */  mtc1    $at, $f10                  ## $f10 = 8.00
/* 0091C 80ACE6EC 84A70032 */  lh      $a3, 0x0032($a1)           ## 00000032
/* 00920 80ACE6F0 AFA3005C */  sw      $v1, 0x005C($sp)           
/* 00924 80ACE6F4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00928 80ACE6F8 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 0092C 80ACE6FC 46062200 */  add.s   $f8, $f4, $f6              
/* 00930 80ACE700 44064000 */  mfc1    $a2, $f8                   
/* 00934 80ACE704 0C00BDC7 */  jal     func_8002F71C              
/* 00938 80ACE708 00000000 */  nop
/* 0093C 80ACE70C 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 00940 80ACE710 93AF0043 */  lbu     $t7, 0x0043($sp)           
/* 00944 80ACE714 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00948 80ACE718 A06F0A78 */  sb      $t7, 0x0A78($v1)           ## 00000A78
/* 0094C 80ACE71C A618014E */  sh      $t8, 0x014E($s0)           ## 0000014E
/* 00950 80ACE720 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
.L80ACE724:
/* 00954 80ACE724 2408012C */  addiu   $t0, $zero, 0x012C         ## $t0 = 0000012C
/* 00958 80ACE728 24090096 */  addiu   $t1, $zero, 0x0096         ## $t1 = 00000096
/* 0095C 80ACE72C 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00960 80ACE730 AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 00964 80ACE734 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00968 80ACE738 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 0096C 80ACE73C AFA50038 */  sw      $a1, 0x0038($sp)           
/* 00970 80ACE740 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00974 80ACE744 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00978 80ACE748 0C00CD20 */  jal     func_80033480              
/* 0097C 80ACE74C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00980 80ACE750 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 00984 80ACE754 44816000 */  mtc1    $at, $f12                  ## $f12 = 16.00
/* 00988 80ACE758 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0098C 80ACE75C 00000000 */  nop
/* 00990 80ACE760 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00994 80ACE764 E7A00050 */  swc1    $f0, 0x0050($sp)           
/* 00998 80ACE768 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0099C 80ACE76C 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 009A0 80ACE770 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 009A4 80ACE774 44812000 */  mtc1    $at, $f4                   ## $f4 = 12.00
/* 009A8 80ACE778 46100482 */  mul.s   $f18, $f0, $f16            
/* 009AC 80ACE77C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 009B0 80ACE780 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 009B4 80ACE784 240B0014 */  addiu   $t3, $zero, 0x0014         ## $t3 = 00000014
/* 009B8 80ACE788 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 009BC 80ACE78C 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 009C0 80ACE790 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 009C4 80ACE794 46049180 */  add.s   $f6, $f18, $f4             
/* 009C8 80ACE798 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 009CC 80ACE79C AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 009D0 80ACE7A0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 009D4 80ACE7A4 46083282 */  mul.s   $f10, $f6, $f8             
/* 009D8 80ACE7A8 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 009DC 80ACE7AC 27A60050 */  addiu   $a2, $sp, 0x0050           ## $a2 = FFFFFFF0
/* 009E0 80ACE7B0 27A70044 */  addiu   $a3, $sp, 0x0044           ## $a3 = FFFFFFE4
/* 009E4 80ACE7B4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 009E8 80ACE7B8 4600540D */  trunc.w.s $f16, $f10                 
/* 009EC 80ACE7BC 440D8000 */  mfc1    $t5, $f16                  
/* 009F0 80ACE7C0 0C00A5C9 */  jal     func_80029724              
/* 009F4 80ACE7C4 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 009F8 80ACE7C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009FC 80ACE7CC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A00 80ACE7D0 240530E0 */  addiu   $a1, $zero, 0x30E0         ## $a1 = 000030E0
/* 00A04 80ACE7D4 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80ACE7D8:
/* 00A08 80ACE7D8 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 00A0C 80ACE7DC 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 00A10 80ACE7E0 03E00008 */  jr      $ra                        
/* 00A14 80ACE7E4 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000


