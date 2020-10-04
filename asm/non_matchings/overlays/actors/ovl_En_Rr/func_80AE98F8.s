.rdata
glabel D_80AEA808
    .asciz "\x1b[32m「%s」が出た！！\x1b[m\n"
    .balign 4

.late_rodata
glabel D_80AEA918
    .float 0.003
glabel jtbl_80AEA91C
.word L80AE9B4C
.word L80AE9AD4
.word L80AE9AEC
.word L80AE9B04
.word L80AE9B1C
.word L80AE9B34

.text
glabel func_80AE98F8
/* 014B8 80AE98F8 27BDFF50 */  addiu   $sp, $sp, 0xFF50           ## $sp = FFFFFF50
/* 014BC 80AE98FC AFBF005C */  sw      $ra, 0x005C($sp)           
/* 014C0 80AE9900 AFB20058 */  sw      $s2, 0x0058($sp)           
/* 014C4 80AE9904 AFB10054 */  sw      $s1, 0x0054($sp)           
/* 014C8 80AE9908 AFB00050 */  sw      $s0, 0x0050($sp)           
/* 014CC 80AE990C F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 014D0 80AE9910 848201E8 */  lh      $v0, 0x01E8($a0)           ## 000001E8
/* 014D4 80AE9914 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 014D8 80AE9918 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 014DC 80AE991C 28410028 */  slti    $at, $v0, 0x0028           
/* 014E0 80AE9920 10200030 */  beq     $at, $zero, .L80AE99E4     
/* 014E4 80AE9924 27B1009C */  addiu   $s1, $sp, 0x009C           ## $s1 = FFFFFFEC
/* 014E8 80AE9928 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 014EC 80AE992C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 1.00
/* 014F0 80AE9930 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 014F4 80AE9934 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 014F8 80AE9938 24910228 */  addiu   $s1, $a0, 0x0228           ## $s1 = 00000228
.L80AE993C:
/* 014FC 80AE993C 864E01E8 */  lh      $t6, 0x01E8($s2)           ## 000001E8
/* 01500 80AE9940 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 01504 80AE9944 44814000 */  mtc1    $at, $f8                   ## $f8 = 25.00
/* 01508 80AE9948 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 0150C 80AE994C 260F003B */  addiu   $t7, $s0, 0x003B           ## $t7 = 0000003B
/* 01510 80AE9950 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 01514 80AE9954 468021A0 */  cvt.s.w $f6, $f4                   
/* 01518 80AE9958 4406A000 */  mfc1    $a2, $f20                  
/* 0151C 80AE995C AFA3006C */  sw      $v1, 0x006C($sp)           
/* 01520 80AE9960 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000228
/* 01524 80AE9964 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 01528 80AE9968 468084A0 */  cvt.s.w $f18, $f16                 
/* 0152C 80AE996C 46083282 */  mul.s   $f10, $f6, $f8             
/* 01530 80AE9970 460A9101 */  sub.s   $f4, $f18, $f10            
/* 01534 80AE9974 44052000 */  mfc1    $a1, $f4                   
/* 01538 80AE9978 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0153C 80AE997C 00000000 */  nop
/* 01540 80AE9980 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 01544 80AE9984 03101023 */  subu    $v0, $t8, $s0              
/* 01548 80AE9988 00420019 */  multu   $v0, $v0                   
/* 0154C 80AE998C 864801E8 */  lh      $t0, 0x01E8($s2)           ## 000001E8
/* 01550 80AE9990 3C0180AF */  lui     $at, %hi(D_80AEA918)       ## $at = 80AF0000
/* 01554 80AE9994 C424A918 */  lwc1    $f4, %lo(D_80AEA918)($at)  
/* 01558 80AE9998 44888000 */  mtc1    $t0, $f16                  ## $f16 = 0.00
/* 0155C 80AE999C 8FA3006C */  lw      $v1, 0x006C($sp)           
/* 01560 80AE99A0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01564 80AE99A4 468084A0 */  cvt.s.w $f18, $f16                 
/* 01568 80AE99A8 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 0156C 80AE99AC 26310040 */  addiu   $s1, $s1, 0x0040           ## $s1 = 00000268
/* 01570 80AE99B0 0000C812 */  mflo    $t9                        
/* 01574 80AE99B4 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 01578 80AE99B8 24630040 */  addiu   $v1, $v1, 0x0040           ## $v1 = 00000040
/* 0157C 80AE99BC 46803220 */  cvt.s.w $f8, $f6                   
/* 01580 80AE99C0 46124282 */  mul.s   $f10, $f8, $f18            
/* 01584 80AE99C4 00000000 */  nop
/* 01588 80AE99C8 46045182 */  mul.s   $f6, $f10, $f4             
/* 0158C 80AE99CC 46143000 */  add.s   $f0, $f6, $f20             
/* 01590 80AE99D0 E4600200 */  swc1    $f0, 0x0200($v1)           ## 00000240
/* 01594 80AE99D4 1601FFD9 */  bne     $s0, $at, .L80AE993C       
/* 01598 80AE99D8 E46001F8 */  swc1    $f0, 0x01F8($v1)           ## 00000238
/* 0159C 80AE99DC 100000A4 */  beq     $zero, $zero, .L80AE9C70   
/* 015A0 80AE99E0 8FBF005C */  lw      $ra, 0x005C($sp)           
.L80AE99E4:
/* 015A4 80AE99E4 2841005F */  slti    $at, $v0, 0x005F           
/* 015A8 80AE99E8 14200061 */  bne     $at, $zero, .L80AE9B70     
/* 015AC 80AE99EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 015B0 80AE99F0 C6500024 */  lwc1    $f16, 0x0024($s2)          ## 00000024
/* 015B4 80AE99F4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 015B8 80AE99F8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000268
/* 015BC 80AE99FC E7B0009C */  swc1    $f16, 0x009C($sp)          
/* 015C0 80AE9A00 C6480028 */  lwc1    $f8, 0x0028($s2)           ## 00000028
/* 015C4 80AE9A04 E7A800A0 */  swc1    $f8, 0x00A0($sp)           
/* 015C8 80AE9A08 C652002C */  lwc1    $f18, 0x002C($s2)          ## 0000002C
/* 015CC 80AE9A0C E7B200A4 */  swc1    $f18, 0x00A4($sp)          
/* 015D0 80AE9A10 92420372 */  lbu     $v0, 0x0372($s2)           ## 00000372
/* 015D4 80AE9A14 10410005 */  beq     $v0, $at, .L80AE9A2C       
/* 015D8 80AE9A18 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 015DC 80AE9A1C 10410007 */  beq     $v0, $at, .L80AE9A3C       
/* 015E0 80AE9A20 27B1009C */  addiu   $s1, $sp, 0x009C           ## $s1 = FFFFFFEC
/* 015E4 80AE9A24 10000009 */  beq     $zero, $zero, .L80AE9A4C   
/* 015E8 80AE9A28 27B1009C */  addiu   $s1, $sp, 0x009C           ## $s1 = FFFFFFEC
.L80AE9A2C:
/* 015EC 80AE9A2C 0C007D52 */  jal     Item_DropCollectible
              
/* 015F0 80AE9A30 24060015 */  addiu   $a2, $zero, 0x0015         ## $a2 = 00000015
/* 015F4 80AE9A34 10000006 */  beq     $zero, $zero, .L80AE9A50   
/* 015F8 80AE9A38 92420373 */  lbu     $v0, 0x0373($s2)           ## 00000373
.L80AE9A3C:
/* 015FC 80AE9A3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 01600 80AE9A40 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFEC
/* 01604 80AE9A44 0C007D52 */  jal     Item_DropCollectible
              
/* 01608 80AE9A48 24060016 */  addiu   $a2, $zero, 0x0016         ## $a2 = 00000016
.L80AE9A4C:
/* 0160C 80AE9A4C 92420373 */  lbu     $v0, 0x0373($s2)           ## 00000373
.L80AE9A50:
/* 01610 80AE9A50 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01614 80AE9A54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 01618 80AE9A58 10410006 */  beq     $v0, $at, .L80AE9A74       
/* 0161C 80AE9A5C 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFEC
/* 01620 80AE9A60 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01624 80AE9A64 10410007 */  beq     $v0, $at, .L80AE9A84       
/* 01628 80AE9A68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 0162C 80AE9A6C 10000009 */  beq     $zero, $zero, .L80AE9A94   
/* 01630 80AE9A70 92490374 */  lbu     $t1, 0x0374($s2)           ## 00000374
.L80AE9A74:
/* 01634 80AE9A74 0C007D52 */  jal     Item_DropCollectible
              
/* 01638 80AE9A78 24060018 */  addiu   $a2, $zero, 0x0018         ## $a2 = 00000018
/* 0163C 80AE9A7C 10000005 */  beq     $zero, $zero, .L80AE9A94   
/* 01640 80AE9A80 92490374 */  lbu     $t1, 0x0374($s2)           ## 00000374
.L80AE9A84:
/* 01644 80AE9A84 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFEC
/* 01648 80AE9A88 0C007D52 */  jal     Item_DropCollectible
              
/* 0164C 80AE9A8C 24060017 */  addiu   $a2, $zero, 0x0017         ## $a2 = 00000017
/* 01650 80AE9A90 92490374 */  lbu     $t1, 0x0374($s2)           ## 00000374
.L80AE9A94:
/* 01654 80AE9A94 3C0580AF */  lui     $a1, %hi(D_80AEA640)       ## $a1 = 80AF0000
/* 01658 80AE9A98 3C0480AF */  lui     $a0, %hi(D_80AEA808)       ## $a0 = 80AF0000
/* 0165C 80AE9A9C 00095080 */  sll     $t2, $t1,  2               
/* 01660 80AE9AA0 00AA2821 */  addu    $a1, $a1, $t2              
/* 01664 80AE9AA4 8CA5A640 */  lw      $a1, %lo(D_80AEA640)($a1)  
/* 01668 80AE9AA8 0C00084C */  jal     osSyncPrintf
              
/* 0166C 80AE9AAC 2484A808 */  addiu   $a0, $a0, %lo(D_80AEA808)  ## $a0 = 80AEA808
/* 01670 80AE9AB0 924B0374 */  lbu     $t3, 0x0374($s2)           ## 00000374
/* 01674 80AE9AB4 2D610006 */  sltiu   $at, $t3, 0x0006           
/* 01678 80AE9AB8 10200024 */  beq     $at, $zero, .L80AE9B4C     
/* 0167C 80AE9ABC 000B5880 */  sll     $t3, $t3,  2               
/* 01680 80AE9AC0 3C0180AF */  lui     $at, %hi(jtbl_80AEA91C)       ## $at = 80AF0000
/* 01684 80AE9AC4 002B0821 */  addu    $at, $at, $t3              
/* 01688 80AE9AC8 8C2BA91C */  lw      $t3, %lo(jtbl_80AEA91C)($at)  
/* 0168C 80AE9ACC 01600008 */  jr      $t3                        
/* 01690 80AE9AD0 00000000 */  nop
glabel L80AE9AD4
/* 01694 80AE9AD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 01698 80AE9AD8 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFEC
/* 0169C 80AE9ADC 0C007D52 */  jal     Item_DropCollectible
              
/* 016A0 80AE9AE0 2406000F */  addiu   $a2, $zero, 0x000F         ## $a2 = 0000000F
/* 016A4 80AE9AE4 1000001E */  beq     $zero, $zero, .L80AE9B60   
/* 016A8 80AE9AE8 00000000 */  nop
glabel L80AE9AEC
/* 016AC 80AE9AEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 016B0 80AE9AF0 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFEC
/* 016B4 80AE9AF4 0C007D52 */  jal     Item_DropCollectible
              
/* 016B8 80AE9AF8 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 016BC 80AE9AFC 10000018 */  beq     $zero, $zero, .L80AE9B60   
/* 016C0 80AE9B00 00000000 */  nop
glabel L80AE9B04
/* 016C4 80AE9B04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 016C8 80AE9B08 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFEC
/* 016CC 80AE9B0C 0C007D52 */  jal     Item_DropCollectible
              
/* 016D0 80AE9B10 24060012 */  addiu   $a2, $zero, 0x0012         ## $a2 = 00000012
/* 016D4 80AE9B14 10000012 */  beq     $zero, $zero, .L80AE9B60   
/* 016D8 80AE9B18 00000000 */  nop
glabel L80AE9B1C
/* 016DC 80AE9B1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 016E0 80AE9B20 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFEC
/* 016E4 80AE9B24 0C007D52 */  jal     Item_DropCollectible
              
/* 016E8 80AE9B28 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 016EC 80AE9B2C 1000000C */  beq     $zero, $zero, .L80AE9B60   
/* 016F0 80AE9B30 00000000 */  nop
glabel L80AE9B34
/* 016F4 80AE9B34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 016F8 80AE9B38 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFEC
/* 016FC 80AE9B3C 0C007D52 */  jal     Item_DropCollectible
              
/* 01700 80AE9B40 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01704 80AE9B44 10000006 */  beq     $zero, $zero, .L80AE9B60   
/* 01708 80AE9B48 00000000 */  nop
glabel L80AE9B4C
.L80AE9B4C:
/* 0170C 80AE9B4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 01710 80AE9B50 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01714 80AE9B54 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFEC
/* 01718 80AE9B58 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 0171C 80AE9B5C 240700C0 */  addiu   $a3, $zero, 0x00C0         ## $a3 = 000000C0
.L80AE9B60:
/* 01720 80AE9B60 0C00B55C */  jal     Actor_Kill
              
/* 01724 80AE9B64 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01728 80AE9B68 10000041 */  beq     $zero, $zero, .L80AE9C70   
/* 0172C 80AE9B6C 8FBF005C */  lw      $ra, 0x005C($sp)           
.L80AE9B70:
/* 01730 80AE9B70 24010058 */  addiu   $at, $zero, 0x0058         ## $at = 00000058
/* 01734 80AE9B74 1441002C */  bne     $v0, $at, .L80AE9C28       
/* 01738 80AE9B78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 0173C 80AE9B7C C64A0024 */  lwc1    $f10, 0x0024($s2)          ## 00000024
/* 01740 80AE9B80 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01744 80AE9B84 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 01748 80AE9B88 E7AA0090 */  swc1    $f10, 0x0090($sp)          
/* 0174C 80AE9B8C C6440028 */  lwc1    $f4, 0x0028($s2)           ## 00000028
/* 01750 80AE9B90 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01754 80AE9B94 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 01758 80AE9B98 46062400 */  add.s   $f16, $f4, $f6             
/* 0175C 80AE9B9C 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 01760 80AE9BA0 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 01764 80AE9BA4 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 01768 80AE9BA8 E7B00094 */  swc1    $f16, 0x0094($sp)          
/* 0176C 80AE9BAC C648002C */  lwc1    $f8, 0x002C($s2)           ## 0000002C
/* 01770 80AE9BB0 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01774 80AE9BB4 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 01778 80AE9BB8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0177C 80AE9BBC 24090009 */  addiu   $t1, $zero, 0x0009         ## $t1 = 00000009
/* 01780 80AE9BC0 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 01784 80AE9BC4 AFAA003C */  sw      $t2, 0x003C($sp)           
/* 01788 80AE9BC8 AFA90038 */  sw      $t1, 0x0038($sp)           
/* 0178C 80AE9BCC AFA80034 */  sw      $t0, 0x0034($sp)           
/* 01790 80AE9BD0 AFB90028 */  sw      $t9, 0x0028($sp)           
/* 01794 80AE9BD4 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 01798 80AE9BD8 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 0179C 80AE9BDC AFA0002C */  sw      $zero, 0x002C($sp)         
/* 017A0 80AE9BE0 AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 017A4 80AE9BE4 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 017A8 80AE9BE8 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 017AC 80AE9BEC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 017B0 80AE9BF0 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 017B4 80AE9BF4 27A50090 */  addiu   $a1, $sp, 0x0090           ## $a1 = FFFFFFE0
/* 017B8 80AE9BF8 27A60084 */  addiu   $a2, $sp, 0x0084           ## $a2 = FFFFFFD4
/* 017BC 80AE9BFC 27A70078 */  addiu   $a3, $sp, 0x0078           ## $a3 = FFFFFFC8
/* 017C0 80AE9C00 E7A00084 */  swc1    $f0, 0x0084($sp)           
/* 017C4 80AE9C04 E7A00088 */  swc1    $f0, 0x0088($sp)           
/* 017C8 80AE9C08 E7A0008C */  swc1    $f0, 0x008C($sp)           
/* 017CC 80AE9C0C E7A00078 */  swc1    $f0, 0x0078($sp)           
/* 017D0 80AE9C10 E7A0007C */  swc1    $f0, 0x007C($sp)           
/* 017D4 80AE9C14 E7A00080 */  swc1    $f0, 0x0080($sp)           
/* 017D8 80AE9C18 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 017DC 80AE9C1C E7A80098 */  swc1    $f8, 0x0098($sp)           
/* 017E0 80AE9C20 10000013 */  beq     $zero, $zero, .L80AE9C70   
/* 017E4 80AE9C24 8FBF005C */  lw      $ra, 0x005C($sp)           
.L80AE9C28:
/* 017E8 80AE9C28 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 017EC 80AE9C2C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 1.00
/* 017F0 80AE9C30 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 017F4 80AE9C34 26440050 */  addiu   $a0, $s2, 0x0050           ## $a0 = 00000050
/* 017F8 80AE9C38 4406A000 */  mfc1    $a2, $f20                  
/* 017FC 80AE9C3C 44050000 */  mfc1    $a1, $f0                   
/* 01800 80AE9C40 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01804 80AE9C44 8E470368 */  lw      $a3, 0x0368($s2)           ## 00000368
/* 01808 80AE9C48 3C053A83 */  lui     $a1, 0x3A83                ## $a1 = 3A830000
/* 0180C 80AE9C4C 4406A000 */  mfc1    $a2, $f20                  
/* 01810 80AE9C50 3C073727 */  lui     $a3, 0x3727                ## $a3 = 37270000
/* 01814 80AE9C54 34E7C5AC */  ori     $a3, $a3, 0xC5AC           ## $a3 = 3727C5AC
/* 01818 80AE9C58 34A5126F */  ori     $a1, $a1, 0x126F           ## $a1 = 3A83126F
/* 0181C 80AE9C5C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01820 80AE9C60 26440368 */  addiu   $a0, $s2, 0x0368           ## $a0 = 00000368
/* 01824 80AE9C64 C6520050 */  lwc1    $f18, 0x0050($s2)          ## 00000050
/* 01828 80AE9C68 E6520058 */  swc1    $f18, 0x0058($s2)          ## 00000058
/* 0182C 80AE9C6C 8FBF005C */  lw      $ra, 0x005C($sp)           
.L80AE9C70:
/* 01830 80AE9C70 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 01834 80AE9C74 8FB00050 */  lw      $s0, 0x0050($sp)           
/* 01838 80AE9C78 8FB10054 */  lw      $s1, 0x0054($sp)           
/* 0183C 80AE9C7C 8FB20058 */  lw      $s2, 0x0058($sp)           
/* 01840 80AE9C80 03E00008 */  jr      $ra                        
/* 01844 80AE9C84 27BD00B0 */  addiu   $sp, $sp, 0x00B0           ## $sp = 00000000
