glabel func_80AD14A0
/* 02000 80AD14A0 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 02004 80AD14A4 AFBF006C */  sw      $ra, 0x006C($sp)           
/* 02008 80AD14A8 AFB40068 */  sw      $s4, 0x0068($sp)           
/* 0200C 80AD14AC AFB30064 */  sw      $s3, 0x0064($sp)           
/* 02010 80AD14B0 AFB20060 */  sw      $s2, 0x0060($sp)           
/* 02014 80AD14B4 AFB1005C */  sw      $s1, 0x005C($sp)           
/* 02018 80AD14B8 AFB00058 */  sw      $s0, 0x0058($sp)           
/* 0201C 80AD14BC F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 02020 80AD14C0 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 02024 80AD14C4 848E02F2 */  lh      $t6, 0x02F2($a0)           ## 000002F2
/* 02028 80AD14C8 848F02F0 */  lh      $t7, 0x02F0($a0)           ## 000002F0
/* 0202C 80AD14CC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 02030 80AD14D0 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 02034 80AD14D4 01CFC021 */  addu    $t8, $t6, $t7              
/* 02038 80AD14D8 A49802F2 */  sh      $t8, 0x02F2($a0)           ## 000002F2
/* 0203C 80AD14DC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02040 80AD14E0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02044 80AD14E4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 02048 80AD14E8 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 0204C 80AD14EC C6240068 */  lwc1    $f4, 0x0068($s1)           ## 00000068
/* 02050 80AD14F0 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 02054 80AD14F4 46062200 */  add.s   $f8, $f4, $f6              
/* 02058 80AD14F8 E6280068 */  swc1    $f8, 0x0068($s1)           ## 00000068
/* 0205C 80AD14FC C6300068 */  lwc1    $f16, 0x0068($s1)          ## 00000068
/* 02060 80AD1500 46105032 */  c.eq.s  $f10, $f16                 
/* 02064 80AD1504 00000000 */  nop
/* 02068 80AD1508 45020050 */  bc1fl   .L80AD164C                 
/* 0206C 80AD150C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02070 80AD1510 8639001C */  lh      $t9, 0x001C($s1)           ## 0000001C
/* 02074 80AD1514 3C0880AD */  lui     $t0, %hi(D_80AD2838)       ## $t0 = 80AD0000
/* 02078 80AD1518 27B20084 */  addiu   $s2, $sp, 0x0084           ## $s2 = FFFFFFF4
/* 0207C 80AD151C 1B20003E */  blez    $t9, .L80AD1618            
/* 02080 80AD1520 25082838 */  addiu   $t0, $t0, %lo(D_80AD2838)  ## $t0 = 80AD2838
/* 02084 80AD1524 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 80AD2838
/* 02088 80AD1528 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0208C 80AD152C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 10.00
/* 02090 80AD1530 AE4A0000 */  sw      $t2, 0x0000($s2)           ## FFFFFFF4
/* 02094 80AD1534 8D090004 */  lw      $t1, 0x0004($t0)           ## 80AD283C
/* 02098 80AD1538 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0209C 80AD153C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 020A0 80AD1540 AE490004 */  sw      $t1, 0x0004($s2)           ## FFFFFFF8
/* 020A4 80AD1544 8D0A0008 */  lw      $t2, 0x0008($t0)           ## 80AD2840
/* 020A8 80AD1548 24100004 */  addiu   $s0, $zero, 0x0004         ## $s0 = 00000004
/* 020AC 80AD154C 27B30074 */  addiu   $s3, $sp, 0x0074           ## $s3 = FFFFFFE4
/* 020B0 80AD1550 AE4A0008 */  sw      $t2, 0x0008($s2)           ## FFFFFFFC
.L80AD1554:
/* 020B4 80AD1554 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 020B8 80AD1558 4600A306 */  mov.s   $f12, $f20                 
/* 020BC 80AD155C C6320024 */  lwc1    $f18, 0x0024($s1)          ## 00000024
/* 020C0 80AD1560 4600B306 */  mov.s   $f12, $f22                 
/* 020C4 80AD1564 46120100 */  add.s   $f4, $f0, $f18             
/* 020C8 80AD1568 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 020CC 80AD156C E7A40074 */  swc1    $f4, 0x0074($sp)           
/* 020D0 80AD1570 C6260028 */  lwc1    $f6, 0x0028($s1)           ## 00000028
/* 020D4 80AD1574 4600A306 */  mov.s   $f12, $f20                 
/* 020D8 80AD1578 46060200 */  add.s   $f8, $f0, $f6              
/* 020DC 80AD157C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 020E0 80AD1580 E7A80078 */  swc1    $f8, 0x0078($sp)           
/* 020E4 80AD1584 C62A002C */  lwc1    $f10, 0x002C($s1)          ## 0000002C
/* 020E8 80AD1588 240B0028 */  addiu   $t3, $zero, 0x0028         ## $t3 = 00000028
/* 020EC 80AD158C 240C0007 */  addiu   $t4, $zero, 0x0007         ## $t4 = 00000007
/* 020F0 80AD1590 460A0400 */  add.s   $f16, $f0, $f10            
/* 020F4 80AD1594 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 020F8 80AD1598 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 020FC 80AD159C 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 02100 80AD15A0 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 02104 80AD15A4 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 02108 80AD15A8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0210C 80AD15AC 24090009 */  addiu   $t1, $zero, 0x0009         ## $t1 = 00000009
/* 02110 80AD15B0 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 02114 80AD15B4 E7B0007C */  swc1    $f16, 0x007C($sp)          
/* 02118 80AD15B8 AFAA003C */  sw      $t2, 0x003C($sp)           
/* 0211C 80AD15BC AFA90038 */  sw      $t1, 0x0038($sp)           
/* 02120 80AD15C0 AFA80034 */  sw      $t0, 0x0034($sp)           
/* 02124 80AD15C4 AFB90028 */  sw      $t9, 0x0028($sp)           
/* 02128 80AD15C8 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 0212C 80AD15CC AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 02130 80AD15D0 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 02134 80AD15D4 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 02138 80AD15D8 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 0213C 80AD15DC AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 02140 80AD15E0 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 02144 80AD15E4 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 02148 80AD15E8 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 0214C 80AD15EC 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFE4
/* 02150 80AD15F0 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFF4
/* 02154 80AD15F4 0C00A9AE */  jal     func_8002A6B8              
/* 02158 80AD15F8 02403825 */  or      $a3, $s2, $zero            ## $a3 = FFFFFFF4
/* 0215C 80AD15FC 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000003
/* 02160 80AD1600 0601FFD4 */  bgez    $s0, .L80AD1554            
/* 02164 80AD1604 00000000 */  nop
/* 02168 80AD1608 0C00B55C */  jal     Actor_Kill
              
/* 0216C 80AD160C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02170 80AD1610 1000000E */  beq     $zero, $zero, .L80AD164C   
/* 02174 80AD1614 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80AD1618:
/* 02178 80AD1618 0C2B4156 */  jal     func_80AD0558              
/* 0217C 80AD161C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02180 80AD1620 862B001C */  lh      $t3, 0x001C($s1)           ## 0000001C
/* 02184 80AD1624 05630009 */  bgezl   $t3, .L80AD164C            
/* 02188 80AD1628 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0218C 80AD162C 862C02FA */  lh      $t4, 0x02FA($s1)           ## 000002FA
/* 02190 80AD1630 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 02194 80AD1634 51800004 */  beql    $t4, $zero, .L80AD1648     
/* 02198 80AD1638 A62D02FA */  sh      $t5, 0x02FA($s1)           ## 000002FA
/* 0219C 80AD163C 10000002 */  beq     $zero, $zero, .L80AD1648   
/* 021A0 80AD1640 A62002FA */  sh      $zero, 0x02FA($s1)         ## 000002FA
/* 021A4 80AD1644 A62D02FA */  sh      $t5, 0x02FA($s1)           ## 000002FA
.L80AD1648:
/* 021A8 80AD1648 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80AD164C:
/* 021AC 80AD164C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 021B0 80AD1650 24053155 */  addiu   $a1, $zero, 0x3155         ## $a1 = 00003155
/* 021B4 80AD1654 8FBF006C */  lw      $ra, 0x006C($sp)           
/* 021B8 80AD1658 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 021BC 80AD165C D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 021C0 80AD1660 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 021C4 80AD1664 8FB1005C */  lw      $s1, 0x005C($sp)           
/* 021C8 80AD1668 8FB20060 */  lw      $s2, 0x0060($sp)           
/* 021CC 80AD166C 8FB30064 */  lw      $s3, 0x0064($sp)           
/* 021D0 80AD1670 8FB40068 */  lw      $s4, 0x0068($sp)           
/* 021D4 80AD1674 03E00008 */  jr      $ra                        
/* 021D8 80AD1678 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000


