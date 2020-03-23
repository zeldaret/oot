.rdata
glabel D_80140104
    .asciz "\x1b[31m"
    .balign 4

glabel D_8014010C
    .asciz "Si2_draw():skelがNULLです。\n"
    # EUC-JP: がNULLです。| Is null
    .balign 4

glabel D_8014012C
    .asciz "\x1b[m"
    .balign 4

glabel D_80140130
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140144
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140158
    .asciz "../z_skelanime.c"
    .balign 4

.text
glabel SkelAnime_Draw
/* B18768 800A15C8 27BDFF98 */  addiu $sp, $sp, -0x68
/* B1876C 800A15CC AFBF0024 */  sw    $ra, 0x24($sp)
/* B18770 800A15D0 AFA40068 */  sw    $a0, 0x68($sp)
/* B18774 800A15D4 AFA5006C */  sw    $a1, 0x6c($sp)
/* B18778 800A15D8 AFA60070 */  sw    $a2, 0x70($sp)
/* B1877C 800A15DC 14A0000C */  bnez  $a1, .L800A1610
/* B18780 800A15E0 AFA70074 */   sw    $a3, 0x74($sp)
/* B18784 800A15E4 3C048014 */  lui   $a0, %hi(D_80140104) # $a0, 0x8014
/* B18788 800A15E8 0C00084C */  jal   osSyncPrintf
/* B1878C 800A15EC 24840104 */   addiu $a0, %lo(D_80140104) # addiu $a0, $a0, 0x104
/* B18790 800A15F0 3C048014 */  lui   $a0, %hi(D_8014010C) # $a0, 0x8014
/* B18794 800A15F4 0C00084C */  jal   osSyncPrintf
/* B18798 800A15F8 2484010C */   addiu $a0, %lo(D_8014010C) # addiu $a0, $a0, 0x10c
/* B1879C 800A15FC 3C048014 */  lui   $a0, %hi(D_8014012C) # $a0, 0x8014
/* B187A0 800A1600 0C00084C */  jal   osSyncPrintf
/* B187A4 800A1604 2484012C */   addiu $a0, %lo(D_8014012C) # addiu $a0, $a0, 0x12c
/* B187A8 800A1608 1000007D */  b     .L800A1800
/* B187AC 800A160C 8FBF0024 */   lw    $ra, 0x24($sp)
.L800A1610:
/* B187B0 800A1610 8FAF0068 */  lw    $t7, 0x68($sp)
/* B187B4 800A1614 3C068014 */  lui   $a2, %hi(D_80140130) # $a2, 0x8014
/* B187B8 800A1618 24C60130 */  addiu $a2, %lo(D_80140130) # addiu $a2, $a2, 0x130
/* B187BC 800A161C 8DE50000 */  lw    $a1, ($t7)
/* B187C0 800A1620 27A40034 */  addiu $a0, $sp, 0x34
/* B187C4 800A1624 2407047C */  li    $a3, 1148
/* B187C8 800A1628 0C031AB1 */  jal   func_800C6AC4
/* B187CC 800A162C AFA50044 */   sw    $a1, 0x44($sp)
/* B187D0 800A1630 0C034213 */  jal   Matrix_Push
/* B187D4 800A1634 00000000 */   nop
/* B187D8 800A1638 8FB8006C */  lw    $t8, 0x6c($sp)
/* B187DC 800A163C 3C0B8016 */  lui   $t3, %hi(gSegments)
/* B187E0 800A1640 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B187E4 800A1644 8F020000 */  lw    $v0, ($t8)
/* B187E8 800A1648 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B187EC 800A164C 8FA30070 */  lw    $v1, 0x70($sp)
/* B187F0 800A1650 00024100 */  sll   $t0, $v0, 4
/* B187F4 800A1654 00084F02 */  srl   $t1, $t0, 0x1c
/* B187F8 800A1658 00095080 */  sll   $t2, $t1, 2
/* B187FC 800A165C 016A5821 */  addu  $t3, $t3, $t2
/* B18800 800A1660 8D6B6FA8 */  lw    $t3, %lo(gSegments)($t3)
/* B18804 800A1664 0041C824 */  and   $t9, $v0, $at
/* B18808 800A1668 3C018000 */  lui   $at, 0x8000
/* B1880C 800A166C 032B6021 */  addu  $t4, $t9, $t3
/* B18810 800A1670 01816821 */  addu  $t5, $t4, $at
/* B18814 800A1674 AFAD0064 */  sw    $t5, 0x64($sp)
/* B18818 800A1678 846E0000 */  lh    $t6, ($v1)
/* B1881C 800A167C 27A80048 */  addiu $t0, $sp, 0x48
/* B18820 800A1680 27AD0048 */  addiu $t5, $sp, 0x48
/* B18824 800A1684 448E2000 */  mtc1  $t6, $f4
/* B18828 800A1688 24050001 */  li    $a1, 1
/* B1882C 800A168C 27A6005C */  addiu $a2, $sp, 0x5c
/* B18830 800A1690 468021A0 */  cvt.s.w $f6, $f4
/* B18834 800A1694 27A70050 */  addiu $a3, $sp, 0x50
/* B18838 800A1698 E7A60050 */  swc1  $f6, 0x50($sp)
/* B1883C 800A169C 846F0002 */  lh    $t7, 2($v1)
/* B18840 800A16A0 448F4000 */  mtc1  $t7, $f8
/* B18844 800A16A4 00000000 */  nop
/* B18848 800A16A8 468042A0 */  cvt.s.w $f10, $f8
/* B1884C 800A16AC E7AA0054 */  swc1  $f10, 0x54($sp)
/* B18850 800A16B0 84780004 */  lh    $t8, 4($v1)
/* B18854 800A16B4 44988000 */  mtc1  $t8, $f16
/* B18858 800A16B8 00000000 */  nop
/* B1885C 800A16BC 468084A0 */  cvt.s.w $f18, $f16
/* B18860 800A16C0 E7B20058 */  swc1  $f18, 0x58($sp)
/* B18864 800A16C4 886A0006 */  lwl   $t2, 6($v1)
/* B18868 800A16C8 986A0009 */  lwr   $t2, 9($v1)
/* B1886C 800A16CC AD0A0000 */  sw    $t2, ($t0)
/* B18870 800A16D0 946A000A */  lhu   $t2, 0xa($v1)
/* B18874 800A16D4 A50A0004 */  sh    $t2, 4($t0)
/* B18878 800A16D8 8FB90064 */  lw    $t9, 0x64($sp)
/* B1887C 800A16DC 8FAC0074 */  lw    $t4, 0x74($sp)
/* B18880 800A16E0 8FA40068 */  lw    $a0, 0x68($sp)
/* B18884 800A16E4 8F2B0008 */  lw    $t3, 8($t9)
/* B18888 800A16E8 11800006 */  beqz  $t4, .L800A1704
/* B1888C 800A16EC AFAB005C */   sw    $t3, 0x5c($sp)
/* B18890 800A16F0 8FAE007C */  lw    $t6, 0x7c($sp)
/* B18894 800A16F4 AFAD0010 */  sw    $t5, 0x10($sp)
/* B18898 800A16F8 0180F809 */  jalr  $t4
/* B1889C 800A16FC AFAE0014 */  sw    $t6, 0x14($sp)
/* B188A0 800A1700 1440001E */  bnez  $v0, .L800A177C
.L800A1704:
/* B188A4 800A1704 27A40050 */   addiu $a0, $sp, 0x50
/* B188A8 800A1708 0C0344D0 */  jal   Matrix_TranslateThenRotateZYX
/* B188AC 800A170C 27A50048 */   addiu $a1, $sp, 0x48
/* B188B0 800A1710 8FAF005C */  lw    $t7, 0x5c($sp)
/* B188B4 800A1714 8FA70044 */  lw    $a3, 0x44($sp)
/* B188B8 800A1718 3C08DA38 */  lui   $t0, (0xDA380003 >> 16) # lui $t0, 0xda38
/* B188BC 800A171C 51E00018 */  beql  $t7, $zero, .L800A1780
/* B188C0 800A1720 8FA20078 */   lw    $v0, 0x78($sp)
/* B188C4 800A1724 8CE202C0 */  lw    $v0, 0x2c0($a3)
/* B188C8 800A1728 35080003 */  ori   $t0, (0xDA380003 & 0xFFFF) # ori $t0, $t0, 3
/* B188CC 800A172C 3C058014 */  lui   $a1, %hi(D_80140144) # $a1, 0x8014
/* B188D0 800A1730 24580008 */  addiu $t8, $v0, 8
/* B188D4 800A1734 ACF802C0 */  sw    $t8, 0x2c0($a3)
/* B188D8 800A1738 AC480000 */  sw    $t0, ($v0)
/* B188DC 800A173C 8FA90068 */  lw    $t1, 0x68($sp)
/* B188E0 800A1740 24A50144 */  addiu $a1, %lo(D_80140144) # addiu $a1, $a1, 0x144
/* B188E4 800A1744 24060498 */  li    $a2, 1176
/* B188E8 800A1748 8D240000 */  lw    $a0, ($t1)
/* B188EC 800A174C 0C0346A2 */  jal   Matrix_NewMtx
/* B188F0 800A1750 AFA20030 */   sw    $v0, 0x30($sp)
/* B188F4 800A1754 8FA30030 */  lw    $v1, 0x30($sp)
/* B188F8 800A1758 3C0BDE00 */  lui   $t3, 0xde00
/* B188FC 800A175C AC620004 */  sw    $v0, 4($v1)
/* B18900 800A1760 8FAA0044 */  lw    $t2, 0x44($sp)
/* B18904 800A1764 8D4202C0 */  lw    $v0, 0x2c0($t2)
/* B18908 800A1768 24590008 */  addiu $t9, $v0, 8
/* B1890C 800A176C AD5902C0 */  sw    $t9, 0x2c0($t2)
/* B18910 800A1770 AC4B0000 */  sw    $t3, ($v0)
/* B18914 800A1774 8FAD005C */  lw    $t5, 0x5c($sp)
/* B18918 800A1778 AC4D0004 */  sw    $t5, 4($v0)
.L800A177C:
/* B1891C 800A177C 8FA20078 */  lw    $v0, 0x78($sp)
.L800A1780:
/* B18920 800A1780 8FA40068 */  lw    $a0, 0x68($sp)
/* B18924 800A1784 24050001 */  li    $a1, 1
/* B18928 800A1788 10400006 */  beqz  $v0, .L800A17A4
/* B1892C 800A178C 27A6005C */   addiu $a2, $sp, 0x5c
/* B18930 800A1790 8FAE007C */  lw    $t6, 0x7c($sp)
/* B18934 800A1794 27A70048 */  addiu $a3, $sp, 0x48
/* B18938 800A1798 0040F809 */  jalr  $v0
/* B1893C 800A179C AFAE0010 */  sw    $t6, 0x10($sp)
/* B18940 800A17A0 8FA20078 */  lw    $v0, 0x78($sp)
.L800A17A4:
/* B18944 800A17A4 8FAC0064 */  lw    $t4, 0x64($sp)
/* B18948 800A17A8 240100FF */  li    $at, 255
/* B1894C 800A17AC 8FA40068 */  lw    $a0, 0x68($sp)
/* B18950 800A17B0 91850006 */  lbu   $a1, 6($t4)
/* B18954 800A17B4 8FA6006C */  lw    $a2, 0x6c($sp)
/* B18958 800A17B8 8FA70070 */  lw    $a3, 0x70($sp)
/* B1895C 800A17BC 10A10006 */  beq   $a1, $at, .L800A17D8
/* B18960 800A17C0 8FAF0074 */   lw    $t7, 0x74($sp)
/* B18964 800A17C4 8FB8007C */  lw    $t8, 0x7c($sp)
/* B18968 800A17C8 AFAF0010 */  sw    $t7, 0x10($sp)
/* B1896C 800A17CC AFA20014 */  sw    $v0, 0x14($sp)
/* B18970 800A17D0 0C0284D1 */  jal   func_800A1344
/* B18974 800A17D4 AFB80018 */   sw    $t8, 0x18($sp)
.L800A17D8:
/* B18978 800A17D8 0C034221 */  jal   Matrix_Pull
/* B1897C 800A17DC 00000000 */   nop
/* B18980 800A17E0 8FA80068 */  lw    $t0, 0x68($sp)
/* B18984 800A17E4 3C068014 */  lui   $a2, %hi(D_80140158) # $a2, 0x8014
/* B18988 800A17E8 24C60158 */  addiu $a2, %lo(D_80140158) # addiu $a2, $a2, 0x158
/* B1898C 800A17EC 27A40034 */  addiu $a0, $sp, 0x34
/* B18990 800A17F0 240704A6 */  li    $a3, 1190
/* B18994 800A17F4 0C031AD5 */  jal   func_800C6B54
/* B18998 800A17F8 8D050000 */   lw    $a1, ($t0)
/* B1899C 800A17FC 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A1800:
/* B189A0 800A1800 27BD0068 */  addiu $sp, $sp, 0x68
/* B189A4 800A1804 03E00008 */  jr    $ra
/* B189A8 800A1808 00000000 */   nop

