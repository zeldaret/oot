.late_rodata
glabel D_80A171DC
    .float 1.2

glabel D_80A171E0
    .float 0.2

.text
glabel func_80A16670
/* 013F0 80A16670 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 013F4 80A16674 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 013F8 80A16678 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 013FC 80A1667C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01400 80A16680 01C57021 */  addu    $t6, $t6, $a1              
/* 01404 80A16684 8DCE1DE4 */  lw      $t6, 0x1DE4($t6)           ## 00011DE4
/* 01408 80A16688 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 0140C 80A1668C 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 01410 80A16690 AFAE0050 */  sw      $t6, 0x0050($sp)           
/* 01414 80A16694 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 01418 80A16698 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0141C 80A1669C 4606203C */  c.lt.s  $f4, $f6                   
/* 01420 80A166A0 00000000 */  nop
/* 01424 80A166A4 4502000C */  bc1fl   .L80A166D8                 
/* 01428 80A166A8 86180248 */  lh      $t8, 0x0248($s0)           ## 00000248
/* 0142C 80A166AC 848F0248 */  lh      $t7, 0x0248($a0)           ## 00000248
/* 01430 80A166B0 3C0280A1 */  lui     $v0, %hi(D_80A17080)       ## $v0 = 80A10000
/* 01434 80A166B4 29E1000C */  slti    $at, $t7, 0x000C           
/* 01438 80A166B8 10200004 */  beq     $at, $zero, .L80A166CC     
/* 0143C 80A166BC 00000000 */  nop
/* 01440 80A166C0 3C0280A1 */  lui     $v0, %hi(D_80A1708C)       ## $v0 = 80A10000
/* 01444 80A166C4 1000000C */  beq     $zero, $zero, .L80A166F8   
/* 01448 80A166C8 2442708C */  addiu   $v0, $v0, %lo(D_80A1708C)  ## $v0 = 80A1708C
.L80A166CC:
/* 0144C 80A166CC 1000000A */  beq     $zero, $zero, .L80A166F8   
/* 01450 80A166D0 24427080 */  addiu   $v0, $v0, %lo(D_80A17080)  ## $v0 = 80A1E10C
/* 01454 80A166D4 86180248 */  lh      $t8, 0x0248($s0)           ## 00000248
.L80A166D8:
/* 01458 80A166D8 3C0280A1 */  lui     $v0, %hi(D_80A17080)       ## $v0 = 80A10000
/* 0145C 80A166DC 24427080 */  addiu   $v0, $v0, %lo(D_80A17080)  ## $v0 = 80A17080
/* 01460 80A166E0 2B010004 */  slti    $at, $t8, 0x0004           
/* 01464 80A166E4 10200004 */  beq     $at, $zero, .L80A166F8     
/* 01468 80A166E8 00000000 */  nop
/* 0146C 80A166EC 3C0280A1 */  lui     $v0, %hi(D_80A1708C)       ## $v0 = 80A10000
/* 01470 80A166F0 10000001 */  beq     $zero, $zero, .L80A166F8   
/* 01474 80A166F4 2442708C */  addiu   $v0, $v0, %lo(D_80A1708C)  ## $v0 = 80A1708C
.L80A166F8:
/* 01478 80A166F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0147C 80A166FC 0C285574 */  jal     func_80A155D0              
/* 01480 80A16700 AFA2004C */  sw      $v0, 0x004C($sp)           
/* 01484 80A16704 8FA2004C */  lw      $v0, 0x004C($sp)           
/* 01488 80A16708 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0148C 80A1670C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 01490 80A16710 8C450000 */  lw      $a1, 0x0000($v0)           ## 00000000
/* 01494 80A16714 8C460004 */  lw      $a2, 0x0004($v0)           ## 00000004
/* 01498 80A16718 8C470008 */  lw      $a3, 0x0008($v0)           ## 00000008
/* 0149C 80A1671C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 014A0 80A16720 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 014A4 80A16724 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 014A8 80A16728 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 014AC 80A1672C 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 014B0 80A16730 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 014B4 80A16734 AFA4002C */  sw      $a0, 0x002C($sp)           
/* 014B8 80A16738 0C2854A0 */  jal     func_80A15280              
/* 014BC 80A1673C E7AA0044 */  swc1    $f10, 0x0044($sp)          
/* 014C0 80A16740 3C014361 */  lui     $at, 0x4361                ## $at = 43610000
/* 014C4 80A16744 44818000 */  mtc1    $at, $f16                  ## $f16 = 225.00
/* 014C8 80A16748 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 014CC 80A1674C 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 014D0 80A16750 4600803C */  c.lt.s  $f16, $f0                  
/* 014D4 80A16754 00000000 */  nop
/* 014D8 80A16758 4502000E */  bc1fl   .L80A16794                 
/* 014DC 80A1675C 86190248 */  lh      $t9, 0x0248($s0)           ## 00000248
/* 014E0 80A16760 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 014E4 80A16764 00000000 */  nop
/* 014E8 80A16768 00022C00 */  sll     $a1, $v0, 16               
/* 014EC 80A1676C 00052C03 */  sra     $a1, $a1, 16               
/* 014F0 80A16770 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 014F4 80A16774 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 014F8 80A16778 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 014FC 80A1677C 14400013 */  bne     $v0, $zero, .L80A167CC     
/* 01500 80A16780 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01504 80A16784 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 01508 80A16788 10000010 */  beq     $zero, $zero, .L80A167CC   
/* 0150C 80A1678C E7B20044 */  swc1    $f18, 0x0044($sp)          
/* 01510 80A16790 86190248 */  lh      $t9, 0x0248($s0)           ## 00000248
.L80A16794:
/* 01514 80A16794 8FA50050 */  lw      $a1, 0x0050($sp)           
/* 01518 80A16798 24060064 */  addiu   $a2, $zero, 0x0064         ## $a2 = 00000064
/* 0151C 80A1679C 2B210004 */  slti    $at, $t9, 0x0004           
/* 01520 80A167A0 1020000A */  beq     $at, $zero, .L80A167CC     
/* 01524 80A167A4 000529C0 */  sll     $a1, $a1,  7               
/* 01528 80A167A8 00052C00 */  sll     $a1, $a1, 16               
/* 0152C 80A167AC 00052C03 */  sra     $a1, $a1, 16               
/* 01530 80A167B0 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01534 80A167B4 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 01538 80A167B8 14400004 */  bne     $v0, $zero, .L80A167CC     
/* 0153C 80A167BC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01540 80A167C0 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 01544 80A167C4 00000000 */  nop
/* 01548 80A167C8 E7A40044 */  swc1    $f4, 0x0044($sp)           
.L80A167CC:
/* 0154C 80A167CC 86080032 */  lh      $t0, 0x0032($s0)           ## 00000032
/* 01550 80A167D0 3C0180A1 */  lui     $at, %hi(D_80A171DC)       ## $at = 80A10000
/* 01554 80A167D4 C6060068 */  lwc1    $f6, 0x0068($s0)           ## 00000068
/* 01558 80A167D8 A60800B6 */  sh      $t0, 0x00B6($s0)           ## 000000B6
/* 0155C 80A167DC C42871DC */  lwc1    $f8, %lo(D_80A171DC)($at)  
/* 01560 80A167E0 3C0180A1 */  lui     $at, %hi(D_80A171E0)       ## $at = 80A10000
/* 01564 80A167E4 C43071E0 */  lwc1    $f16, %lo(D_80A171E0)($at) 
/* 01568 80A167E8 46083282 */  mul.s   $f10, $f6, $f8             
/* 0156C 80A167EC C7A40044 */  lwc1    $f4, 0x0044($sp)           
/* 01570 80A167F0 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 01574 80A167F4 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.50
/* 01578 80A167F8 3C013FE0 */  lui     $at, 0x3FE0                ## $at = 3FE00000
/* 0157C 80A167FC 46105480 */  add.s   $f18, $f10, $f16           
/* 01580 80A16800 46049080 */  add.s   $f2, $f18, $f4             
/* 01584 80A16804 4606103C */  c.lt.s  $f2, $f6                   
/* 01588 80A16808 00000000 */  nop
/* 0158C 80A1680C 45020009 */  bc1fl   .L80A16834                 
/* 01590 80A16810 44816800 */  mtc1    $at, $f13                  ## $f13 = 1.75
/* 01594 80A16814 3C013FF8 */  lui     $at, 0x3FF8                ## $at = 3FF80000
/* 01598 80A16818 44814800 */  mtc1    $at, $f9                   ## $f9 = 1.94
/* 0159C 80A1681C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 015A0 80A16820 00000000 */  nop
/* 015A4 80A16824 462042A0 */  cvt.s.d $f10, $f8                  
/* 015A8 80A16828 1000000D */  beq     $zero, $zero, .L80A16860   
/* 015AC 80A1682C E60A01C8 */  swc1    $f10, 0x01C8($s0)          ## 000001C8
/* 015B0 80A16830 44816800 */  mtc1    $at, $f13                  ## $f13 = 1.94
.L80A16834:
/* 015B4 80A16834 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 015B8 80A16838 46001021 */  cvt.d.s $f0, $f2                   
/* 015BC 80A1683C 4620603C */  c.lt.d  $f12, $f0                  
/* 015C0 80A16840 00000000 */  nop
/* 015C4 80A16844 45020004 */  bc1fl   .L80A16858                 
/* 015C8 80A16848 46200086 */  mov.d   $f2, $f0                   
/* 015CC 80A1684C 10000002 */  beq     $zero, $zero, .L80A16858   
/* 015D0 80A16850 46206086 */  mov.d   $f2, $f12                  
/* 015D4 80A16854 46200086 */  mov.d   $f2, $f0                   
.L80A16858:
/* 015D8 80A16858 46201420 */  cvt.s.d $f16, $f2                  
/* 015DC 80A1685C E61001C8 */  swc1    $f16, 0x01C8($s0)          ## 000001C8
.L80A16860:
/* 015E0 80A16860 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 015E4 80A16864 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 015E8 80A16868 86090248 */  lh      $t1, 0x0248($s0)           ## 00000248
/* 015EC 80A1686C 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 015F0 80A16870 5D200005 */  bgtzl   $t1, .L80A16888            
/* 015F4 80A16874 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 015F8 80A16878 0C01DF64 */  jal     Rand_S16Offset
              
/* 015FC 80A1687C 24050050 */  addiu   $a1, $zero, 0x0050         ## $a1 = 00000050
/* 01600 80A16880 A6020248 */  sh      $v0, 0x0248($s0)           ## 00000248
/* 01604 80A16884 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A16888:
/* 01608 80A16888 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0160C 80A1688C 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 01610 80A16890 03E00008 */  jr      $ra                        
/* 01614 80A16894 00000000 */  nop
