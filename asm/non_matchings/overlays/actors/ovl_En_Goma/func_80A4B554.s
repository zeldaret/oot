.late_rodata
glabel D_80A4B984
    .float 0.001

.text
glabel func_80A4B554
/* 02694 80A4B554 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 02698 80A4B558 3C0F80A5 */  lui     $t7, %hi(D_80A4B860)       ## $t7 = 80A50000
/* 0269C 80A4B55C AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 026A0 80A4B560 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 026A4 80A4B564 AFA50074 */  sw      $a1, 0x0074($sp)           
/* 026A8 80A4B568 25EFB860 */  addiu   $t7, $t7, %lo(D_80A4B860)  ## $t7 = 80A4B860
/* 026AC 80A4B56C 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A4B860
/* 026B0 80A4B570 27AE0064 */  addiu   $t6, $sp, 0x0064           ## $t6 = FFFFFFF4
/* 026B4 80A4B574 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A4B864
/* 026B8 80A4B578 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 026BC 80A4B57C 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A4B868
/* 026C0 80A4B580 3C0980A5 */  lui     $t1, %hi(D_80A4B86C)       ## $t1 = 80A50000
/* 026C4 80A4B584 2529B86C */  addiu   $t1, $t1, %lo(D_80A4B86C)  ## $t1 = 80A4B86C
/* 026C8 80A4B588 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 026CC 80A4B58C ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 026D0 80A4B590 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80A4B86C
/* 026D4 80A4B594 27A80058 */  addiu   $t0, $sp, 0x0058           ## $t0 = FFFFFFE8
/* 026D8 80A4B598 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80A4B870
/* 026DC 80A4B59C AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE8
/* 026E0 80A4B5A0 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80A4B874
/* 026E4 80A4B5A4 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFEC
/* 026E8 80A4B5A8 3C0C80A5 */  lui     $t4, %hi(D_80A4B878)       ## $t4 = 80A50000
/* 026EC 80A4B5AC AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFF0
/* 026F0 80A4B5B0 3C0D80A5 */  lui     $t5, %hi(D_80A4B87C)       ## $t5 = 80A50000
/* 026F4 80A4B5B4 8D8CB878 */  lw      $t4, %lo(D_80A4B878)($t4)  
/* 026F8 80A4B5B8 8DADB87C */  lw      $t5, %lo(D_80A4B87C)($t5)  
/* 026FC 80A4B5BC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 02700 80A4B5C0 44810000 */  mtc1    $at, $f0                   ## $f0 = 50.00
/* 02704 80A4B5C4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02708 80A4B5C8 AFAC0054 */  sw      $t4, 0x0054($sp)           
/* 0270C 80A4B5CC AFAD0050 */  sw      $t5, 0x0050($sp)           
/* 02710 80A4B5D0 C4840028 */  lwc1    $f4, 0x0028($a0)           ## 00000028
/* 02714 80A4B5D4 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 02718 80A4B5D8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0271C 80A4B5DC 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 02720 80A4B5E0 46062201 */  sub.s   $f8, $f4, $f6              
/* 02724 80A4B5E4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02728 80A4B5E8 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 0272C 80A4B5EC 44060000 */  mfc1    $a2, $f0                   
/* 02730 80A4B5F0 E4880028 */  swc1    $f8, 0x0028($a0)           ## 00000028
/* 02734 80A4B5F4 44070000 */  mfc1    $a3, $f0                   
/* 02738 80A4B5F8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 0273C 80A4B5FC 8FA40074 */  lw      $a0, 0x0074($sp)           
/* 02740 80A4B600 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02744 80A4B604 0C00B92D */  jal     Actor_UpdateBgCheckInfo              
/* 02748 80A4B608 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 0274C 80A4B60C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02750 80A4B610 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 02754 80A4B614 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 02758 80A4B618 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 0275C 80A4B61C 26040054 */  addiu   $a0, $s0, 0x0054           ## $a0 = 00000054
/* 02760 80A4B620 46128100 */  add.s   $f4, $f16, $f18            
/* 02764 80A4B624 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 02768 80A4B628 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0276C 80A4B62C 13000005 */  beq     $t8, $zero, .L80A4B644     
/* 02770 80A4B630 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 02774 80A4B634 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 02778 80A4B638 860202CC */  lh      $v0, 0x02CC($s0)           ## 000002CC
/* 0277C 80A4B63C 10000009 */  beq     $zero, $zero, .L80A4B664   
/* 02780 80A4B640 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
.L80A4B644:
/* 02784 80A4B644 860202CC */  lh      $v0, 0x02CC($s0)           ## 000002CC
/* 02788 80A4B648 284100FA */  slti    $at, $v0, 0x00FA           
/* 0278C 80A4B64C 50200006 */  beql    $at, $zero, .L80A4B668     
/* 02790 80A4B650 240100FA */  addiu   $at, $zero, 0x00FA         ## $at = 000000FA
/* 02794 80A4B654 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 02798 80A4B658 860202CC */  lh      $v0, 0x02CC($s0)           ## 000002CC
/* 0279C 80A4B65C 272807D0 */  addiu   $t0, $t9, 0x07D0           ## $t0 = 000007D0
/* 027A0 80A4B660 A60800B6 */  sh      $t0, 0x00B6($s0)           ## 000000B6
.L80A4B664:
/* 027A4 80A4B664 240100FA */  addiu   $at, $zero, 0x00FA         ## $at = 000000FA
.L80A4B668:
/* 027A8 80A4B668 14410005 */  bne     $v0, $at, .L80A4B680       
/* 027AC 80A4B66C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 027B0 80A4B670 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 027B4 80A4B674 44814000 */  mtc1    $at, $f8                   ## $f8 = -1.00
/* 027B8 80A4B678 860202CC */  lh      $v0, 0x02CC($s0)           ## 000002CC
/* 027BC 80A4B67C E608006C */  swc1    $f8, 0x006C($s0)           ## 0000006C
.L80A4B680:
/* 027C0 80A4B680 28410079 */  slti    $at, $v0, 0x0079           
/* 027C4 80A4B684 10200011 */  beq     $at, $zero, .L80A4B6CC     
/* 027C8 80A4B688 3C073A44 */  lui     $a3, 0x3A44                ## $a3 = 3A440000
/* 027CC 80A4B68C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 027D0 80A4B690 34E79BA6 */  ori     $a3, $a3, 0x9BA6           ## $a3 = 3A449BA6
/* 027D4 80A4B694 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 027D8 80A4B698 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 027DC 80A4B69C 3C0180A5 */  lui     $at, %hi(D_80A4B984)       ## $at = 80A50000
/* 027E0 80A4B6A0 C430B984 */  lwc1    $f16, %lo(D_80A4B984)($at) 
/* 027E4 80A4B6A4 4610003E */  c.le.s  $f0, $f16                  
/* 027E8 80A4B6A8 00000000 */  nop
/* 027EC 80A4B6AC 45020004 */  bc1fl   .L80A4B6C0                 
/* 027F0 80A4B6B0 C6000054 */  lwc1    $f0, 0x0054($s0)           ## 00000054
/* 027F4 80A4B6B4 0C00B55C */  jal     Actor_Kill
              
/* 027F8 80A4B6B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 027FC 80A4B6BC C6000054 */  lwc1    $f0, 0x0054($s0)           ## 00000054
.L80A4B6C0:
/* 02800 80A4B6C0 860202CC */  lh      $v0, 0x02CC($s0)           ## 000002CC
/* 02804 80A4B6C4 E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 02808 80A4B6C8 E6000050 */  swc1    $f0, 0x0050($s0)           ## 00000050
.L80A4B6CC:
/* 0280C 80A4B6CC 30490007 */  andi    $t1, $v0, 0x0007           ## $t1 = 00000000
/* 02810 80A4B6D0 55200025 */  bnel    $t1, $zero, .L80A4B768     
/* 02814 80A4B6D4 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 02818 80A4B6D8 10400022 */  beq     $v0, $zero, .L80A4B764     
/* 0281C 80A4B6DC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02820 80A4B6E0 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 02824 80A4B6E4 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 02828 80A4B6E8 00000000 */  nop
/* 0282C 80A4B6EC C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 02830 80A4B6F0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02834 80A4B6F4 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 02838 80A4B6F8 46120100 */  add.s   $f4, $f0, $f18             
/* 0283C 80A4B6FC 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 02840 80A4B700 E7A40044 */  swc1    $f4, 0x0044($sp)           
/* 02844 80A4B704 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 02848 80A4B708 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0284C 80A4B70C 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 02850 80A4B710 46060200 */  add.s   $f8, $f0, $f6              
/* 02854 80A4B714 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 02858 80A4B718 E7A80048 */  swc1    $f8, 0x0048($sp)           
/* 0285C 80A4B71C C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 02860 80A4B720 27AA0054 */  addiu   $t2, $sp, 0x0054           ## $t2 = FFFFFFE4
/* 02864 80A4B724 27AB0050 */  addiu   $t3, $sp, 0x0050           ## $t3 = FFFFFFE0
/* 02868 80A4B728 460A0400 */  add.s   $f16, $f0, $f10            
/* 0286C 80A4B72C 240C01F4 */  addiu   $t4, $zero, 0x01F4         ## $t4 = 000001F4
/* 02870 80A4B730 240D000A */  addiu   $t5, $zero, 0x000A         ## $t5 = 0000000A
/* 02874 80A4B734 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 02878 80A4B738 E7B0004C */  swc1    $f16, 0x004C($sp)          
/* 0287C 80A4B73C AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 02880 80A4B740 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 02884 80A4B744 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 02888 80A4B748 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 0288C 80A4B74C AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 02890 80A4B750 8FA40074 */  lw      $a0, 0x0074($sp)           
/* 02894 80A4B754 27A50044 */  addiu   $a1, $sp, 0x0044           ## $a1 = FFFFFFD4
/* 02898 80A4B758 27A60064 */  addiu   $a2, $sp, 0x0064           ## $a2 = FFFFFFF4
/* 0289C 80A4B75C 0C00A0DB */  jal     func_8002836C              
/* 028A0 80A4B760 27A70058 */  addiu   $a3, $sp, 0x0058           ## $a3 = FFFFFFE8
.L80A4B764:
/* 028A4 80A4B764 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80A4B768:
/* 028A8 80A4B768 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 028AC 80A4B76C 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 028B0 80A4B770 03E00008 */  jr      $ra                        
/* 028B4 80A4B774 00000000 */  nop
/* 028B8 80A4B778 00000000 */  nop
/* 028BC 80A4B77C 00000000 */  nop
