glabel func_80AE3B18
/* 01718 80AE3B18 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0171C 80AE3B1C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01720 80AE3B20 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01724 80AE3B24 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01728 80AE3B28 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 0172C 80AE3B2C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01730 80AE3B30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01734 80AE3B34 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 01738 80AE3B38 C4800068 */  lwc1    $f0, 0x0068($a0)           ## 00000068
/* 0173C 80AE3B3C 3C0180AE */  lui     $at, %hi(D_80AE49B8)       ## $at = 80AE0000
/* 01740 80AE3B40 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01744 80AE3B44 4604003C */  c.lt.s  $f0, $f4                   
/* 01748 80AE3B48 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0174C 80AE3B4C 45020005 */  bc1fl   .L80AE3B64                 
/* 01750 80AE3B50 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
/* 01754 80AE3B54 C42649B8 */  lwc1    $f6, %lo(D_80AE49B8)($at)  
/* 01758 80AE3B58 46060200 */  add.s   $f8, $f0, $f6              
/* 0175C 80AE3B5C E4880068 */  swc1    $f8, 0x0068($a0)           ## 00000068
/* 01760 80AE3B60 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
.L80AE3B64:
/* 01764 80AE3B64 2604030E */  addiu   $a0, $s0, 0x030E           ## $a0 = 0000030E
/* 01768 80AE3B68 2407012C */  addiu   $a3, $zero, 0x012C         ## $a3 = 0000012C
/* 0176C 80AE3B6C A6180032 */  sh      $t8, 0x0032($s0)           ## 00000032
/* 01770 80AE3B70 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01774 80AE3B74 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01778 80AE3B78 26040310 */  addiu   $a0, $s0, 0x0310           ## $a0 = 00000310
/* 0177C 80AE3B7C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01780 80AE3B80 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01784 80AE3B84 2407012C */  addiu   $a3, $zero, 0x012C         ## $a3 = 0000012C
/* 01788 80AE3B88 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0178C 80AE3B8C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01790 80AE3B90 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01794 80AE3B94 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 01798 80AE3B98 5040001D */  beql    $v0, $zero, .L80AE3C10     
/* 0179C 80AE3B9C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 017A0 80AE3BA0 8E080118 */  lw      $t0, 0x0118($s0)           ## 00000118
/* 017A4 80AE3BA4 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 017A8 80AE3BA8 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 017AC 80AE3BAC 11000005 */  beq     $t0, $zero, .L80AE3BC4     
/* 017B0 80AE3BB0 A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 017B4 80AE3BB4 0C2B8C77 */  jal     func_80AE31DC              
/* 017B8 80AE3BB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017BC 80AE3BBC 10000012 */  beq     $zero, $zero, .L80AE3C08   
/* 017C0 80AE3BC0 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
.L80AE3BC4:
/* 017C4 80AE3BC4 0C00B6DB */  jal     func_8002DB6C              
/* 017C8 80AE3BC8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 017CC 80AE3BCC 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 017D0 80AE3BD0 44815000 */  mtc1    $at, $f10                  ## $f10 = 150.00
/* 017D4 80AE3BD4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 017D8 80AE3BD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017DC 80AE3BDC 4600503E */  c.le.s  $f10, $f0                  
/* 017E0 80AE3BE0 00000000 */  nop
/* 017E4 80AE3BE4 45000005 */  bc1f    .L80AE3BFC                 
/* 017E8 80AE3BE8 00000000 */  nop
/* 017EC 80AE3BEC 0C2B8BD4 */  jal     func_80AE2F50              
/* 017F0 80AE3BF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017F4 80AE3BF4 10000004 */  beq     $zero, $zero, .L80AE3C08   
/* 017F8 80AE3BF8 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
.L80AE3BFC:
/* 017FC 80AE3BFC 0C2B8AE4 */  jal     func_80AE2B90              
/* 01800 80AE3C00 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01804 80AE3C04 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
.L80AE3C08:
/* 01808 80AE3C08 A209031D */  sb      $t1, 0x031D($s0)           ## 0000031D
/* 0180C 80AE3C0C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE3C10:
/* 01810 80AE3C10 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01814 80AE3C14 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01818 80AE3C18 03E00008 */  jr      $ra                        
/* 0181C 80AE3C1C 00000000 */  nop


