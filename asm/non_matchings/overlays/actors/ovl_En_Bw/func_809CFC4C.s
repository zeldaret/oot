.late_rodata
glabel D_809D1660
    .float 0.7

glabel D_809D1664
    .float 0.001

glabel D_809D1668
 .word 0x3BE56041
glabel D_809D166C
 .word 0x3C54FDF4
glabel D_809D1670
    .float 0.001

glabel D_809D1674
 .word 0x3C54FDF4
glabel D_809D1678
 .word 0x3BE56041
glabel D_809D167C
    .float 0.001

glabel D_809D1680
 .word 0x3BE56041
glabel D_809D1684
 .word 0x3C54FDF4

.text
glabel func_809CFC4C
/* 0156C 809CFC4C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01570 809CFC50 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 01574 809CFC54 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01578 809CFC58 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 0157C 809CFC5C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 01580 809CFC60 24057FFF */  addiu   $a1, $zero, 0x7FFF         ## $a1 = 00007FFF
/* 01584 809CFC64 248400B8 */  addiu   $a0, $a0, 0x00B8           ## $a0 = 000000B8
/* 01588 809CFC68 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0158C 809CFC6C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01590 809CFC70 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01594 809CFC74 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 01598 809CFC78 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0159C 809CFC7C 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 015A0 809CFC80 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 015A4 809CFC84 44050000 */  mfc1    $a1, $f0                   
/* 015A8 809CFC88 26040248 */  addiu   $a0, $s0, 0x0248           ## $a0 = 00000248
/* 015AC 809CFC8C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 015B0 809CFC90 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 015B4 809CFC94 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 015B8 809CFC98 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 015BC 809CFC9C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 015C0 809CFCA0 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 015C4 809CFCA4 8FB8003C */  lw      $t8, 0x003C($sp)           
/* 015C8 809CFCA8 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 015CC 809CFCAC 31CF0003 */  andi    $t7, $t6, 0x0003           ## $t7 = 00000000
/* 015D0 809CFCB0 11E0006D */  beq     $t7, $zero, .L809CFE68     
/* 015D4 809CFCB4 0338C821 */  addu    $t9, $t9, $t8              
/* 015D8 809CFCB8 8F391DE4 */  lw      $t9, 0x1DE4($t9)           ## 00011DE4
/* 015DC 809CFCBC 3328007F */  andi    $t0, $t9, 0x007F           ## $t0 = 00000000
/* 015E0 809CFCC0 5500000B */  bnel    $t0, $zero, .L809CFCF0     
/* 015E4 809CFCC4 C6100258 */  lwc1    $f16, 0x0258($s0)          ## 00000258
/* 015E8 809CFCC8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 015EC 809CFCCC 00000000 */  nop
/* 015F0 809CFCD0 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 015F4 809CFCD4 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.25
/* 015F8 809CFCD8 3C01809D */  lui     $at, %hi(D_809D1660)       ## $at = 809D0000
/* 015FC 809CFCDC C4281660 */  lwc1    $f8, %lo(D_809D1660)($at)  
/* 01600 809CFCE0 46040182 */  mul.s   $f6, $f0, $f4              
/* 01604 809CFCE4 46083280 */  add.s   $f10, $f6, $f8             
/* 01608 809CFCE8 E60A025C */  swc1    $f10, 0x025C($s0)          ## 0000025C
/* 0160C 809CFCEC C6100258 */  lwc1    $f16, 0x0258($s0)          ## 00000258
.L809CFCF0:
/* 01610 809CFCF0 C612025C */  lwc1    $f18, 0x025C($s0)          ## 0000025C
/* 01614 809CFCF4 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01618 809CFCF8 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 0161C 809CFCFC 46128100 */  add.s   $f4, $f16, $f18            
/* 01620 809CFD00 A2090221 */  sb      $t1, 0x0221($s0)           ## 00000221
/* 01624 809CFD04 3C053D99 */  lui     $a1, 0x3D99                ## $a1 = 3D990000
/* 01628 809CFD08 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 0162C 809CFD0C E6040258 */  swc1    $f4, 0x0258($s0)           ## 00000258
/* 01630 809CFD10 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 01634 809CFD14 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3D99999A
/* 01638 809CFD18 26040260 */  addiu   $a0, $s0, 0x0260           ## $a0 = 00000260
/* 0163C 809CFD1C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01640 809CFD20 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01644 809CFD24 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01648 809CFD28 960A0088 */  lhu     $t2, 0x0088($s0)           ## 00000088
/* 0164C 809CFD2C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 01650 809CFD30 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01654 809CFD34 314B0002 */  andi    $t3, $t2, 0x0002           ## $t3 = 00000000
/* 01658 809CFD38 1160000E */  beq     $t3, $zero, .L809CFD74     
/* 0165C 809CFD3C 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 01660 809CFD40 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01664 809CFD44 44814000 */  mtc1    $at, $f8                   ## $f8 = 4.00
/* 01668 809CFD48 240C000B */  addiu   $t4, $zero, 0x000B         ## $t4 = 0000000B
/* 0166C 809CFD4C AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 01670 809CFD50 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 01674 809CFD54 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 01678 809CFD58 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0167C 809CFD5C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 01680 809CFD60 0C00CC98 */  jal     func_80033260              
/* 01684 809CFD64 E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 01688 809CFD68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0168C 809CFD6C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01690 809CFD70 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
.L809CFD74:
/* 01694 809CFD74 86020224 */  lh      $v0, 0x0224($s0)           ## 00000224
/* 01698 809CFD78 10400031 */  beq     $v0, $zero, .L809CFE40     
/* 0169C 809CFD7C 244DFF06 */  addiu   $t5, $v0, 0xFF06           ## $t5 = FFFFFF06
/* 016A0 809CFD80 A60D0224 */  sh      $t5, 0x0224($s0)           ## 00000224
/* 016A4 809CFD84 860E0224 */  lh      $t6, 0x0224($s0)           ## 00000224
/* 016A8 809CFD88 3C01809D */  lui     $at, %hi(D_809D1664)       ## $at = 809D0000
/* 016AC 809CFD8C C4321664 */  lwc1    $f18, %lo(D_809D1664)($at) 
/* 016B0 809CFD90 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 016B4 809CFD94 00000000 */  nop
/* 016B8 809CFD98 46805420 */  cvt.s.w $f16, $f10                 
/* 016BC 809CFD9C 46128302 */  mul.s   $f12, $f16, $f18           
/* 016C0 809CFDA0 0C0329C8 */  jal     func_800CA720              
/* 016C4 809CFDA4 00000000 */  nop
/* 016C8 809CFDA8 3C01809D */  lui     $at, %hi(D_809D1668)       ## $at = 809D0000
/* 016CC 809CFDAC C4241668 */  lwc1    $f4, %lo(D_809D1668)($at)  
/* 016D0 809CFDB0 860F0224 */  lh      $t7, 0x0224($s0)           ## 00000224
/* 016D4 809CFDB4 3C01809D */  lui     $at, %hi(D_809D166C)       ## $at = 809D0000
/* 016D8 809CFDB8 46040182 */  mul.s   $f6, $f0, $f4              
/* 016DC 809CFDBC C428166C */  lwc1    $f8, %lo(D_809D166C)($at)  
/* 016E0 809CFDC0 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 016E4 809CFDC4 3C01809D */  lui     $at, %hi(D_809D1670)       ## $at = 809D0000
/* 016E8 809CFDC8 468084A0 */  cvt.s.w $f18, $f16                 
/* 016EC 809CFDCC 46083280 */  add.s   $f10, $f6, $f8             
/* 016F0 809CFDD0 E60A0050 */  swc1    $f10, 0x0050($s0)          ## 00000050
/* 016F4 809CFDD4 C4241670 */  lwc1    $f4, %lo(D_809D1670)($at)  
/* 016F8 809CFDD8 46049302 */  mul.s   $f12, $f18, $f4            
/* 016FC 809CFDDC 0C0329C8 */  jal     func_800CA720              
/* 01700 809CFDE0 00000000 */  nop
/* 01704 809CFDE4 3C01809D */  lui     $at, %hi(D_809D1674)       ## $at = 809D0000
/* 01708 809CFDE8 C4261674 */  lwc1    $f6, %lo(D_809D1674)($at)  
/* 0170C 809CFDEC 3C01809D */  lui     $at, %hi(D_809D1678)       ## $at = 809D0000
/* 01710 809CFDF0 C4281678 */  lwc1    $f8, %lo(D_809D1678)($at)  
/* 01714 809CFDF4 86180224 */  lh      $t8, 0x0224($s0)           ## 00000224
/* 01718 809CFDF8 3C01809D */  lui     $at, %hi(D_809D167C)       ## $at = 809D0000
/* 0171C 809CFDFC 46080282 */  mul.s   $f10, $f0, $f8             
/* 01720 809CFE00 44989000 */  mtc1    $t8, $f18                  ## $f18 = 0.00
/* 01724 809CFE04 00000000 */  nop
/* 01728 809CFE08 46809120 */  cvt.s.w $f4, $f18                  
/* 0172C 809CFE0C 460A3401 */  sub.s   $f16, $f6, $f10            
/* 01730 809CFE10 E6100054 */  swc1    $f16, 0x0054($s0)          ## 00000054
/* 01734 809CFE14 C428167C */  lwc1    $f8, %lo(D_809D167C)($at)  
/* 01738 809CFE18 46082302 */  mul.s   $f12, $f4, $f8             
/* 0173C 809CFE1C 0C0329C8 */  jal     func_800CA720              
/* 01740 809CFE20 00000000 */  nop
/* 01744 809CFE24 3C01809D */  lui     $at, %hi(D_809D1680)       ## $at = 809D0000
/* 01748 809CFE28 C4261680 */  lwc1    $f6, %lo(D_809D1680)($at)  
/* 0174C 809CFE2C 3C01809D */  lui     $at, %hi(D_809D1684)       ## $at = 809D0000
/* 01750 809CFE30 C4301684 */  lwc1    $f16, %lo(D_809D1684)($at) 
/* 01754 809CFE34 46060282 */  mul.s   $f10, $f0, $f6             
/* 01758 809CFE38 46105480 */  add.s   $f18, $f10, $f16           
/* 0175C 809CFE3C E6120058 */  swc1    $f18, 0x0058($s0)          ## 00000058
.L809CFE40:
/* 01760 809CFE40 86190222 */  lh      $t9, 0x0222($s0)           ## 00000222
/* 01764 809CFE44 2728FFFF */  addiu   $t0, $t9, 0xFFFF           ## $t0 = FFFFFFFF
/* 01768 809CFE48 A6080222 */  sh      $t0, 0x0222($s0)           ## 00000222
/* 0176C 809CFE4C 86090222 */  lh      $t1, 0x0222($s0)           ## 00000222
/* 01770 809CFE50 5520002B */  bnel    $t1, $zero, .L809CFF00     
/* 01774 809CFE54 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01778 809CFE58 0C273FC4 */  jal     func_809CFF10              
/* 0177C 809CFE5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01780 809CFE60 10000027 */  beq     $zero, $zero, .L809CFF00   
/* 01784 809CFE64 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809CFE68:
/* 01788 809CFE68 920A022C */  lbu     $t2, 0x022C($s0)           ## 0000022C
/* 0178C 809CFE6C 920C022D */  lbu     $t4, 0x022D($s0)           ## 0000022D
/* 01790 809CFE70 240F00C8 */  addiu   $t7, $zero, 0x00C8         ## $t7 = 000000C8
/* 01794 809CFE74 254BFFF8 */  addiu   $t3, $t2, 0xFFF8           ## $t3 = FFFFFFF8
/* 01798 809CFE78 316E00FF */  andi    $t6, $t3, 0x00FF           ## $t6 = 000000F8
/* 0179C 809CFE7C 29C100C8 */  slti    $at, $t6, 0x00C8           
/* 017A0 809CFE80 258D0020 */  addiu   $t5, $t4, 0x0020           ## $t5 = 00000020
/* 017A4 809CFE84 A20B022C */  sb      $t3, 0x022C($s0)           ## 0000022C
/* 017A8 809CFE88 10200002 */  beq     $at, $zero, .L809CFE94     
/* 017AC 809CFE8C A20D022D */  sb      $t5, 0x022D($s0)           ## 0000022D
/* 017B0 809CFE90 A20F022C */  sb      $t7, 0x022C($s0)           ## 0000022C
.L809CFE94:
/* 017B4 809CFE94 9218022D */  lbu     $t8, 0x022D($s0)           ## 0000022D
/* 017B8 809CFE98 241900C8 */  addiu   $t9, $zero, 0x00C8         ## $t9 = 000000C8
/* 017BC 809CFE9C 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 017C0 809CFEA0 2B0100C9 */  slti    $at, $t8, 0x00C9           
/* 017C4 809CFEA4 54200003 */  bnel    $at, $zero, .L809CFEB4     
/* 017C8 809CFEA8 9202022E */  lbu     $v0, 0x022E($s0)           ## 0000022E
/* 017CC 809CFEAC A219022D */  sb      $t9, 0x022D($s0)           ## 0000022D
/* 017D0 809CFEB0 9202022E */  lbu     $v0, 0x022E($s0)           ## 0000022E
.L809CFEB4:
/* 017D4 809CFEB4 284100EC */  slti    $at, $v0, 0x00EC           
/* 017D8 809CFEB8 14200003 */  bne     $at, $zero, .L809CFEC8     
/* 017DC 809CFEBC 24490028 */  addiu   $t1, $v0, 0x0028           ## $t1 = 00000028
/* 017E0 809CFEC0 10000002 */  beq     $zero, $zero, .L809CFECC   
/* 017E4 809CFEC4 A208022E */  sb      $t0, 0x022E($s0)           ## 0000022E
.L809CFEC8:
/* 017E8 809CFEC8 A209022E */  sb      $t1, 0x022E($s0)           ## 0000022E
.L809CFECC:
/* 017EC 809CFECC 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 017F0 809CFED0 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 017F4 809CFED4 C60000BC */  lwc1    $f0, 0x00BC($s0)           ## 000000BC
/* 017F8 809CFED8 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 017FC 809CFEDC 4604003C */  c.lt.s  $f0, $f4                   
/* 01800 809CFEE0 00000000 */  nop
/* 01804 809CFEE4 45020006 */  bc1fl   .L809CFF00                 
/* 01808 809CFEE8 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 0180C 809CFEEC 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 01810 809CFEF0 00000000 */  nop
/* 01814 809CFEF4 46080180 */  add.s   $f6, $f0, $f8              
/* 01818 809CFEF8 E60600BC */  swc1    $f6, 0x00BC($s0)           ## 000000BC
/* 0181C 809CFEFC 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809CFF00:
/* 01820 809CFF00 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 01824 809CFF04 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01828 809CFF08 03E00008 */  jr      $ra                        
/* 0182C 809CFF0C 00000000 */  nop
