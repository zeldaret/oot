glabel EnHorseNormal_Update
/* 01758 80A6C9A8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0175C 80A6C9AC AFB0001C */  sw      $s0, 0x001C($sp)           
/* 01760 80A6C9B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01764 80A6C9B4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01768 80A6C9B8 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 0176C 80A6C9BC 8E0E014C */  lw      $t6, 0x014C($s0)           ## 0000014C
/* 01770 80A6C9C0 3C1980A7 */  lui     $t9, %hi(D_80A6D534)       ## $t9 = 80A70000
/* 01774 80A6C9C4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01778 80A6C9C8 000E7880 */  sll     $t7, $t6,  2               
/* 0177C 80A6C9CC 032FC821 */  addu    $t9, $t9, $t7              
/* 01780 80A6C9D0 8F39D534 */  lw      $t9, %lo(D_80A6D534)($t9)  
/* 01784 80A6C9D4 0320F809 */  jalr    $ra, $t9                   
/* 01788 80A6C9D8 00000000 */  nop
/* 0178C 80A6C9DC 0C00B638 */  jal     Actor_MoveForward
              
/* 01790 80A6C9E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01794 80A6C9E4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01798 80A6C9E8 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 0179C 80A6C9EC 2418001D */  addiu   $t8, $zero, 0x001D         ## $t8 = 0000001D
/* 017A0 80A6C9F0 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 017A4 80A6C9F4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 017A8 80A6C9F8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 017AC 80A6C9FC 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 017B0 80A6CA00 3C07420C */  lui     $a3, 0x420C                ## $a3 = 420C0000
/* 017B4 80A6CA04 0C00B92D */  jal     func_8002E4B4              
/* 017B8 80A6CA08 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 017BC 80A6CA0C 862800A4 */  lh      $t0, 0x00A4($s1)           ## 000000A4
/* 017C0 80A6CA10 24010063 */  addiu   $at, $zero, 0x0063         ## $at = 00000063
/* 017C4 80A6CA14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017C8 80A6CA18 15010009 */  bne     $t0, $at, .L80A6CA40       
/* 017CC 80A6CA1C 26060228 */  addiu   $a2, $s0, 0x0228           ## $a2 = 00000228
/* 017D0 80A6CA20 3C01C516 */  lui     $at, 0xC516                ## $at = C5160000
/* 017D4 80A6CA24 44810000 */  mtc1    $at, $f0                   ## $f0 = -2400.00
/* 017D8 80A6CA28 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 017DC 80A6CA2C 4600303C */  c.lt.s  $f6, $f0                   
/* 017E0 80A6CA30 00000000 */  nop
/* 017E4 80A6CA34 45020003 */  bc1fl   .L80A6CA44                 
/* 017E8 80A6CA38 8E090028 */  lw      $t1, 0x0028($s0)           ## 00000028
/* 017EC 80A6CA3C E600002C */  swc1    $f0, 0x002C($s0)           ## 0000002C
.L80A6CA40:
/* 017F0 80A6CA40 8E090028 */  lw      $t1, 0x0028($s0)           ## 00000028
.L80A6CA44:
/* 017F4 80A6CA44 8E0B00E8 */  lw      $t3, 0x00E8($s0)           ## 000000E8
/* 017F8 80A6CA48 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 017FC 80A6CA4C 44815000 */  mtc1    $at, $f10                  ## $f10 = 70.00
/* 01800 80A6CA50 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 01804 80A6CA54 AE09003C */  sw      $t1, 0x003C($s0)           ## 0000003C
/* 01808 80A6CA58 AE0B0208 */  sw      $t3, 0x0208($s0)           ## 00000208
/* 0180C 80A6CA5C 8E0A0024 */  lw      $t2, 0x0024($s0)           ## 00000024
/* 01810 80A6CA60 C608003C */  lwc1    $f8, 0x003C($s0)           ## 0000003C
/* 01814 80A6CA64 8E0C00E4 */  lw      $t4, 0x00E4($s0)           ## 000000E4
/* 01818 80A6CA68 C6120208 */  lwc1    $f18, 0x0208($s0)          ## 00000208
/* 0181C 80A6CA6C 44812000 */  mtc1    $at, $f4                   ## $f4 = 120.00
/* 01820 80A6CA70 460A4400 */  add.s   $f16, $f8, $f10            
/* 01824 80A6CA74 AE0A0038 */  sw      $t2, 0x0038($s0)           ## 00000038
/* 01828 80A6CA78 AE0C0204 */  sw      $t4, 0x0204($s0)           ## 00000204
/* 0182C 80A6CA7C 46049180 */  add.s   $f6, $f18, $f4             
/* 01830 80A6CA80 8E0A002C */  lw      $t2, 0x002C($s0)           ## 0000002C
/* 01834 80A6CA84 8E0C00EC */  lw      $t4, 0x00EC($s0)           ## 000000EC
/* 01838 80A6CA88 E610003C */  swc1    $f16, 0x003C($s0)          ## 0000003C
/* 0183C 80A6CA8C E6060208 */  swc1    $f6, 0x0208($s0)           ## 00000208
/* 01840 80A6CA90 AE0A0040 */  sw      $t2, 0x0040($s0)           ## 00000040
/* 01844 80A6CA94 AE0C020C */  sw      $t4, 0x020C($s0)           ## 0000020C
/* 01848 80A6CA98 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 0184C 80A6CA9C 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 01850 80A6CAA0 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000228
/* 01854 80A6CAA4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01858 80A6CAA8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0185C 80A6CAAC 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 01860 80A6CAB0 02212821 */  addu    $a1, $s1, $at              
/* 01864 80A6CAB4 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01868 80A6CAB8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0186C 80A6CABC 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01870 80A6CAC0 C60A0068 */  lwc1    $f10, 0x0068($s0)          ## 00000068
/* 01874 80A6CAC4 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 01878 80A6CAC8 240E00FE */  addiu   $t6, $zero, 0x00FE         ## $t6 = 000000FE
/* 0187C 80A6CACC 460A4032 */  c.eq.s  $f8, $f10                  
/* 01880 80A6CAD0 00000000 */  nop
/* 01884 80A6CAD4 45020004 */  bc1fl   .L80A6CAE8                 
/* 01888 80A6CAD8 A20E00AE */  sb      $t6, 0x00AE($s0)           ## 000000AE
/* 0188C 80A6CADC 10000002 */  beq     $zero, $zero, .L80A6CAE8   
/* 01890 80A6CAE0 A20D00AE */  sb      $t5, 0x00AE($s0)           ## 000000AE
/* 01894 80A6CAE4 A20E00AE */  sb      $t6, 0x00AE($s0)           ## 000000AE
.L80A6CAE8:
/* 01898 80A6CAE8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0189C 80A6CAEC 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 018A0 80A6CAF0 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 018A4 80A6CAF4 03E00008 */  jr      $ra                        
/* 018A8 80A6CAF8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
