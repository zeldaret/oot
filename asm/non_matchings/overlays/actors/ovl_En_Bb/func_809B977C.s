.late_rodata
glabel D_809BBC98
    .float -0.699999988079071

.text
glabel func_809B977C
/* 0149C 809B977C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 014A0 809B9780 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 014A4 809B9784 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 014A8 809B9788 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 014AC 809B978C 848F007E */  lh      $t7, 0x007E($a0)           ## 0000007E
/* 014B0 809B9790 848E0032 */  lh      $t6, 0x0032($a0)           ## 00000032
/* 014B4 809B9794 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 014B8 809B9798 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 014BC 809B979C 01CF1823 */  subu    $v1, $t6, $t7              
/* 014C0 809B97A0 00031C00 */  sll     $v1, $v1, 16               
/* 014C4 809B97A4 00031C03 */  sra     $v1, $v1, 16               
/* 014C8 809B97A8 0C02927F */  jal     Animation_Update
              
/* 014CC 809B97AC A7A3003E */  sh      $v1, 0x003E($sp)           
/* 014D0 809B97B0 96040088 */  lhu     $a0, 0x0088($s0)           ## 00000088
/* 014D4 809B97B4 87A3003E */  lh      $v1, 0x003E($sp)           
/* 014D8 809B97B8 30980008 */  andi    $t8, $a0, 0x0008           ## $t8 = 00000000
/* 014DC 809B97BC 53000014 */  beql    $t8, $zero, .L809B9810     
/* 014E0 809B97C0 308C0003 */  andi    $t4, $a0, 0x0003           ## $t4 = 00000000
/* 014E4 809B97C4 04600003 */  bltz    $v1, .L809B97D4            
/* 014E8 809B97C8 00031023 */  subu    $v0, $zero, $v1            
/* 014EC 809B97CC 10000001 */  beq     $zero, $zero, .L809B97D4   
/* 014F0 809B97D0 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L809B97D4:
/* 014F4 809B97D4 28414001 */  slti    $at, $v0, 0x4001           
/* 014F8 809B97D8 5420000A */  bnel    $at, $zero, .L809B9804     
/* 014FC 809B97DC 308BFFF7 */  andi    $t3, $a0, 0xFFF7           ## $t3 = 00000000
/* 01500 809B97E0 8602007E */  lh      $v0, 0x007E($s0)           ## 0000007E
/* 01504 809B97E4 86080032 */  lh      $t0, 0x0032($s0)           ## 00000032
/* 01508 809B97E8 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 0150C 809B97EC 0042C821 */  addu    $t9, $v0, $v0              
/* 01510 809B97F0 03284823 */  subu    $t1, $t9, $t0              
/* 01514 809B97F4 01215021 */  addu    $t2, $t1, $at              
/* 01518 809B97F8 A60A0032 */  sh      $t2, 0x0032($s0)           ## 00000032
/* 0151C 809B97FC 96040088 */  lhu     $a0, 0x0088($s0)           ## 00000088
/* 01520 809B9800 308BFFF7 */  andi    $t3, $a0, 0xFFF7           ## $t3 = 00000000
.L809B9804:
/* 01524 809B9804 A60B0088 */  sh      $t3, 0x0088($s0)           ## 00000088
/* 01528 809B9808 3164FFFF */  andi    $a0, $t3, 0xFFFF           ## $a0 = 00000000
/* 0152C 809B980C 308C0003 */  andi    $t4, $a0, 0x0003           ## $t4 = 00000000
.L809B9810:
/* 01530 809B9810 5180004E */  beql    $t4, $zero, .L809B994C     
/* 01534 809B9814 C6120164 */  lwc1    $f18, 0x0164($s0)          ## 00000164
/* 01538 809B9818 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 0153C 809B981C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01540 809B9820 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01544 809B9824 15A1001D */  bne     $t5, $at, .L809B989C       
/* 01548 809B9828 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 0154C 809B982C 8E050078 */  lw      $a1, 0x0078($s0)           ## 00000078
/* 01550 809B9830 0C010753 */  jal     func_80041D4C              
/* 01554 809B9834 9206007D */  lbu     $a2, 0x007D($s0)           ## 0000007D
/* 01558 809B9838 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
/* 0155C 809B983C 10430005 */  beq     $v0, $v1, .L809B9854       
/* 01560 809B9840 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01564 809B9844 10410003 */  beq     $v0, $at, .L809B9854       
/* 01568 809B9848 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 0156C 809B984C 54410014 */  bnel    $v0, $at, .L809B98A0       
/* 01570 809B9850 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809B9854:
/* 01574 809B9854 860F0268 */  lh      $t7, 0x0268($s0)           ## 00000268
/* 01578 809B9858 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 0157C 809B985C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01580 809B9860 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 01584 809B9864 24090007 */  addiu   $t1, $zero, 0x0007         ## $t1 = 00000007
/* 01588 809B9868 3C05809C */  lui     $a1, %hi(func_809B9B64)    ## $a1 = 809C0000
/* 0158C 809B986C 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 01590 809B9870 03214024 */  and     $t0, $t9, $at              
/* 01594 809B9874 AE03025C */  sw      $v1, 0x025C($s0)           ## 0000025C
/* 01598 809B9878 AE0E0260 */  sw      $t6, 0x0260($s0)           ## 00000260
/* 0159C 809B987C A6180268 */  sh      $t8, 0x0268($s0)           ## 00000268
/* 015A0 809B9880 AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
/* 015A4 809B9884 AE090250 */  sw      $t1, 0x0250($s0)           ## 00000250
/* 015A8 809B9888 24A59B64 */  addiu   $a1, $a1, %lo(func_809B9B64) ## $a1 = 809B9B64
/* 015AC 809B988C 0C26E0B8 */  jal     func_809B82E0              
/* 015B0 809B9890 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015B4 809B9894 1000006B */  beq     $zero, $zero, .L809B9A44   
/* 015B8 809B9898 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809B989C:
/* 015BC 809B989C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809B98A0:
/* 015C0 809B98A0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 015C4 809B98A4 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
/* 015C8 809B98A8 3C01C160 */  lui     $at, 0xC160                ## $at = C1600000
/* 015CC 809B98AC 44812000 */  mtc1    $at, $f4                   ## $f4 = -14.00
/* 015D0 809B98B0 C6000060 */  lwc1    $f0, 0x0060($s0)           ## 00000060
/* 015D4 809B98B4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 015D8 809B98B8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 015DC 809B98BC 4604003C */  c.lt.s  $f0, $f4                   
/* 015E0 809B98C0 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 015E4 809B98C4 3C0740E0 */  lui     $a3, 0x40E0                ## $a3 = 40E00000
/* 015E8 809B98C8 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 015EC 809B98CC 45020007 */  bc1fl   .L809B98EC                 
/* 015F0 809B98D0 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 015F4 809B98D4 3C01809C */  lui     $at, %hi(D_809BBC98)       ## $at = 809C0000
/* 015F8 809B98D8 C426BC98 */  lwc1    $f6, %lo(D_809BBC98)($at)  
/* 015FC 809B98DC 46060202 */  mul.s   $f8, $f0, $f6              
/* 01600 809B98E0 10000004 */  beq     $zero, $zero, .L809B98F4   
/* 01604 809B98E4 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 01608 809B98E8 44815000 */  mtc1    $at, $f10                  ## $f10 = -0.00
.L809B98EC:
/* 0160C 809B98EC 00000000 */  nop
/* 01610 809B98F0 E60A0060 */  swc1    $f10, 0x0060($s0)          ## 00000060
.L809B98F4:
/* 01614 809B98F4 960A0088 */  lhu     $t2, 0x0088($s0)           ## 00000088
/* 01618 809B98F8 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0161C 809B98FC 44818000 */  mtc1    $at, $f16                  ## $f16 = 2.00
/* 01620 809B9900 314BFFFE */  andi    $t3, $t2, 0xFFFE           ## $t3 = 00000000
/* 01624 809B9904 A60B0088 */  sh      $t3, 0x0088($s0)           ## 00000088
/* 01628 809B9908 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0162C 809B990C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01630 809B9910 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 01634 809B9914 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 01638 809B9918 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0163C 809B991C 0C00CC98 */  jal     func_80033260              
/* 01640 809B9920 E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 01644 809B9924 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 01648 809B9928 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0164C 809B992C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 01650 809B9930 00052823 */  subu    $a1, $zero, $a1            
/* 01654 809B9934 00052C00 */  sll     $a1, $a1, 16               
/* 01658 809B9938 00052C03 */  sra     $a1, $a1, 16               
/* 0165C 809B993C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01660 809B9940 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01664 809B9944 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 01668 809B9948 C6120164 */  lwc1    $f18, 0x0164($s0)          ## 00000164
.L809B994C:
/* 0166C 809B994C 860D0032 */  lh      $t5, 0x0032($s0)           ## 00000032
/* 01670 809B9950 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01674 809B9954 4600910D */  trunc.w.s $f4, $f18                  
/* 01678 809B9958 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0167C 809B995C A60D00B6 */  sh      $t5, 0x00B6($s0)           ## 000000B6
/* 01680 809B9960 440F2000 */  mfc1    $t7, $f4                   
/* 01684 809B9964 00000000 */  nop
/* 01688 809B9968 55E10004 */  bnel    $t7, $at, .L809B997C       
/* 0168C 809B996C 8E020260 */  lw      $v0, 0x0260($s0)           ## 00000260
/* 01690 809B9970 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01694 809B9974 240538C8 */  addiu   $a1, $zero, 0x38C8         ## $a1 = 000038C8
/* 01698 809B9978 8E020260 */  lw      $v0, 0x0260($s0)           ## 00000260
.L809B997C:
/* 0169C 809B997C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016A0 809B9980 1440002E */  bne     $v0, $zero, .L809B9A3C     
/* 016A4 809B9984 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 016A8 809B9988 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 016AC 809B998C 240538CC */  addiu   $a1, $zero, 0x38CC         ## $a1 = 000038CC
/* 016B0 809B9990 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 016B4 809B9994 2401FFFD */  addiu   $at, $zero, 0xFFFD         ## $at = FFFFFFFD
/* 016B8 809B9998 1041001C */  beq     $v0, $at, .L809B9A0C       
/* 016BC 809B999C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 016C0 809B99A0 1041000A */  beq     $v0, $at, .L809B99CC       
/* 016C4 809B99A4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 016C8 809B99A8 54410026 */  bnel    $v0, $at, .L809B9A44       
/* 016CC 809B99AC 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 016D0 809B99B0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 016D4 809B99B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016D8 809B99B8 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 016DC 809B99BC 0C26E38D */  jal     func_809B8E34              
/* 016E0 809B99C0 E600006C */  swc1    $f0, 0x006C($s0)           ## 0000006C
/* 016E4 809B99C4 1000001F */  beq     $zero, $zero, .L809B9A44   
/* 016E8 809B99C8 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809B99CC:
/* 016EC 809B99CC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 016F0 809B99D0 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 016F4 809B99D4 C6080060 */  lwc1    $f8, 0x0060($s0)           ## 00000060
/* 016F8 809B99D8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 016FC 809B99DC 46083032 */  c.eq.s  $f6, $f8                   
/* 01700 809B99E0 00000000 */  nop
/* 01704 809B99E4 45020017 */  bc1fl   .L809B9A44                 
/* 01708 809B99E8 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 0170C 809B99EC 0C26E695 */  jal     func_809B9A54              
/* 01710 809B99F0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01714 809B99F4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01718 809B99F8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0171C 809B99FC 0C26E0DF */  jal     func_809B837C              
/* 01720 809B9A00 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01724 809B9A04 1000000F */  beq     $zero, $zero, .L809B9A44   
/* 01728 809B9A08 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809B9A0C:
/* 0172C 809B9A0C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01730 809B9A10 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01734 809B9A14 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 01738 809B9A18 E600006C */  swc1    $f0, 0x006C($s0)           ## 0000006C
/* 0173C 809B9A1C 0C26E80A */  jal     func_809BA028              
/* 01740 809B9A20 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01744 809B9A24 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 01748 809B9A28 44818000 */  mtc1    $at, $f16                  ## $f16 = 60.00
/* 0174C 809B9A2C C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 01750 809B9A30 46105481 */  sub.s   $f18, $f10, $f16           
/* 01754 809B9A34 10000002 */  beq     $zero, $zero, .L809B9A40   
/* 01758 809B9A38 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
.L809B9A3C:
/* 0175C 809B9A3C AE180260 */  sw      $t8, 0x0260($s0)           ## 00000260
.L809B9A40:
/* 01760 809B9A40 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809B9A44:
/* 01764 809B9A44 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 01768 809B9A48 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0176C 809B9A4C 03E00008 */  jr      $ra                        
/* 01770 809B9A50 00000000 */  nop
