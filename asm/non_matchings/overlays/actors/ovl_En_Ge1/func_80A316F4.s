glabel func_80A316F4
/* 00D84 80A316F4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00D88 80A316F8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00D8C 80A316FC AFB00028 */  sw      $s0, 0x0028($sp)
/* 00D90 80A31700 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00D94 80A31704 948E02AC */  lhu     $t6, 0x02AC($a0)           ## 000002AC
/* 00D98 80A31708 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D9C 80A3170C 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00DA0 80A31710 A48F02AC */  sh      $t7, 0x02AC($a0)           ## 000002AC
/* 00DA4 80A31714 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00DA8 80A31718 0C042F6F */  jal     func_8010BDBC
/* 00DAC 80A3171C 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00DB0 80A31720 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00DB4 80A31724 54410022 */  bnel    $v0, $at, .L80A317B0
/* 00DB8 80A31728 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00DBC 80A3172C 0C041AF2 */  jal     func_80106BC8
/* 00DC0 80A31730 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00DC4 80A31734 1040001D */  beq     $v0, $zero, .L80A317AC
/* 00DC8 80A31738 3C1880A3 */  lui     $t8, %hi(func_80A31644)    ## $t8 = 80A30000
/* 00DCC 80A3173C 27181644 */  addiu   $t8, $t8, %lo(func_80A31644) ## $t8 = 80A31644
/* 00DD0 80A31740 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00DD4 80A31744 AE1802B4 */  sw      $t8, 0x02B4($s0)           ## 000002B4
/* 00DD8 80A31748 0C028800 */  jal     Animation_LastFrame

/* 00DDC 80A3174C 2484A048 */  addiu   $a0, $a0, 0xA048           ## $a0 = 0600A048
/* 00DE0 80A31750 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00DE4 80A31754 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 00DE8 80A31758 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 00DEC 80A3175C 468021A0 */  cvt.s.w $f6, $f4
/* 00DF0 80A31760 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00DF4 80A31764 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 00DF8 80A31768 AFB90014 */  sw      $t9, 0x0014($sp)
/* 00DFC 80A3176C 24A5A048 */  addiu   $a1, $a1, 0xA048           ## $a1 = 0600A048
/* 00E00 80A31770 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 00E04 80A31774 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00E08 80A31778 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00E0C 80A3177C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00E10 80A31780 0C029468 */  jal     Animation_Change

/* 00E14 80A31784 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00E18 80A31788 960A02AC */  lhu     $t2, 0x02AC($s0)           ## 000002AC
/* 00E1C 80A3178C 3C080601 */  lui     $t0, 0x0601                ## $t0 = 06010000
/* 00E20 80A31790 3C0980A3 */  lui     $t1, %hi(func_80A323EC)    ## $t1 = 80A30000
/* 00E24 80A31794 2508A048 */  addiu   $t0, $t0, 0xA048           ## $t0 = 0600A048
/* 00E28 80A31798 252923EC */  addiu   $t1, $t1, %lo(func_80A323EC) ## $t1 = 80A323EC
/* 00E2C 80A3179C 314BFFFB */  andi    $t3, $t2, 0xFFFB           ## $t3 = 00000000
/* 00E30 80A317A0 AE0802B0 */  sw      $t0, 0x02B0($s0)           ## 000002B0
/* 00E34 80A317A4 AE0902B8 */  sw      $t1, 0x02B8($s0)           ## 000002B8
/* 00E38 80A317A8 A60B02AC */  sh      $t3, 0x02AC($s0)           ## 000002AC
.L80A317AC:
/* 00E3C 80A317AC 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A317B0:
/* 00E40 80A317B0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00E44 80A317B4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00E48 80A317B8 03E00008 */  jr      $ra
/* 00E4C 80A317BC 00000000 */  nop
