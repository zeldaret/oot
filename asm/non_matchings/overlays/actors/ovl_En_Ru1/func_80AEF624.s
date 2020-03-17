glabel func_80AEF624
/* 04A14 80AEF624 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 04A18 80AEF628 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 04A1C 80AEF62C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04A20 80AEF630 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 04A24 80AEF634 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 04A28 80AEF638 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 04A2C 80AEF63C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04A30 80AEF640 0C2BABF8 */  jal     func_80AEAFE0              
/* 04A34 80AEF644 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 04A38 80AEF648 10400032 */  beq     $v0, $zero, .L80AEF714     
/* 04A3C 80AEF64C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 04A40 80AEF650 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 04A44 80AEF654 248463F4 */  addiu   $a0, $a0, 0x63F4           ## $a0 = 060063F4
/* 04A48 80AEF658 8FAE0034 */  lw      $t6, 0x0034($sp)           
/* 04A4C 80AEF65C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04A50 80AEF660 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 04A54 80AEF664 8DC81D98 */  lw      $t0, 0x1D98($t6)           ## 00001D98
/* 04A58 80AEF668 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 04A5C 80AEF66C 44070000 */  mfc1    $a3, $f0                   
/* 04A60 80AEF670 8D0F000C */  lw      $t7, 0x000C($t0)           ## 0000000C
/* 04A64 80AEF674 24A563F4 */  addiu   $a1, $a1, 0x63F4           ## $a1 = 060063F4
/* 04A68 80AEF678 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 04A6C 80AEF67C 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 04A70 80AEF680 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04A74 80AEF684 468021A0 */  cvt.s.w $f6, $f4                   
/* 04A78 80AEF688 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 04A7C 80AEF68C E6060024 */  swc1    $f6, 0x0024($s0)           ## 00000024
/* 04A80 80AEF690 8D180010 */  lw      $t8, 0x0010($t0)           ## 00000010
/* 04A84 80AEF694 468021A0 */  cvt.s.w $f6, $f4                   
/* 04A88 80AEF698 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 04A8C 80AEF69C 00000000 */  nop
/* 04A90 80AEF6A0 468042A0 */  cvt.s.w $f10, $f8                  
/* 04A94 80AEF6A4 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 04A98 80AEF6A8 8D190014 */  lw      $t9, 0x0014($t0)           ## 00000014
/* 04A9C 80AEF6AC 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 04AA0 80AEF6B0 00000000 */  nop
/* 04AA4 80AEF6B4 468084A0 */  cvt.s.w $f18, $f16                 
/* 04AA8 80AEF6B8 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 04AAC 80AEF6BC 85030006 */  lh      $v1, 0x0006($t0)           ## 00000006
/* 04AB0 80AEF6C0 A60300B4 */  sh      $v1, 0x00B4($s0)           ## 000000B4
/* 04AB4 80AEF6C4 A6030030 */  sh      $v1, 0x0030($s0)           ## 00000030
/* 04AB8 80AEF6C8 85030008 */  lh      $v1, 0x0008($t0)           ## 00000008
/* 04ABC 80AEF6CC A60300B6 */  sh      $v1, 0x00B6($s0)           ## 000000B6
/* 04AC0 80AEF6D0 A6030032 */  sh      $v1, 0x0032($s0)           ## 00000032
/* 04AC4 80AEF6D4 8503000A */  lh      $v1, 0x000A($t0)           ## 0000000A
/* 04AC8 80AEF6D8 A60300B8 */  sh      $v1, 0x00B8($s0)           ## 000000B8
/* 04ACC 80AEF6DC A6030034 */  sh      $v1, 0x0034($s0)           ## 00000034
/* 04AD0 80AEF6E0 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 04AD4 80AEF6E4 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 04AD8 80AEF6E8 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 04ADC 80AEF6EC E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 04AE0 80AEF6F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04AE4 80AEF6F4 0C2BACE9 */  jal     func_80AEB3A4              
/* 04AE8 80AEF6F8 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 04AEC 80AEF6FC 240A0025 */  addiu   $t2, $zero, 0x0025         ## $t2 = 00000025
/* 04AF0 80AEF700 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 04AF4 80AEF704 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 04AF8 80AEF708 AE0A0264 */  sw      $t2, 0x0264($s0)           ## 00000264
/* 04AFC 80AEF70C AE0B0268 */  sw      $t3, 0x0268($s0)           ## 00000268
/* 04B00 80AEF710 A20C00C8 */  sb      $t4, 0x00C8($s0)           ## 000000C8
.L80AEF714:
/* 04B04 80AEF714 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 04B08 80AEF718 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 04B0C 80AEF71C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 04B10 80AEF720 03E00008 */  jr      $ra                        
/* 04B14 80AEF724 00000000 */  nop


