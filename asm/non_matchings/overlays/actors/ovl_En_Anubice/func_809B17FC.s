glabel func_809B17FC
/* 006DC 809B17FC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 006E0 809B1800 AFB00028 */  sw      $s0, 0x0028($sp)
/* 006E4 809B1804 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 006E8 809B1808 AFBF002C */  sw      $ra, 0x002C($sp)
/* 006EC 809B180C 3C040600 */  lui     $a0, %hi(gAnubiceAttackingAnim)                ## $a0 = 06000000
/* 006F0 809B1810 AFA50034 */  sw      $a1, 0x0034($sp)
/* 006F4 809B1814 0C028800 */  jal     Animation_GetLastFrame

/* 006F8 809B1818 2484078C */  addiu   $a0, $a0, %lo(gAnubiceAttackingAnim)           ## $a0 = 0600078C
/* 006FC 809B181C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00700 809B1820 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00704 809B1824 44813000 */  mtc1    $at, $f6                   ## $f6 = -10.00
/* 00708 809B1828 46802020 */  cvt.s.w $f0, $f4
/* 0070C 809B182C 3C050600 */  lui     $a1, %hi(gAnubiceAttackingAnim)                ## $a1 = 06000000
/* 00710 809B1830 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00714 809B1834 24A5078C */  addiu   $a1, $a1, %lo(gAnubiceAttackingAnim)           ## $a1 = 0600078C
/* 00718 809B1838 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0071C 809B183C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00720 809B1840 E600026C */  swc1    $f0, 0x026C($s0)           ## 0000026C
/* 00724 809B1844 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00728 809B1848 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 0072C 809B184C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00730 809B1850 0C029468 */  jal     Animation_Change

/* 00734 809B1854 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 00738 809B1858 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0073C 809B185C 3C0F809B */  lui     $t7, %hi(func_809B1884)    ## $t7 = 809B0000
/* 00740 809B1860 25EF1884 */  addiu   $t7, $t7, %lo(func_809B1884) ## $t7 = 809B1884
/* 00744 809B1864 AE0F0250 */  sw      $t7, 0x0250($s0)           ## 00000250
/* 00748 809B1868 E6000064 */  swc1    $f0, 0x0064($s0)           ## 00000064
/* 0074C 809B186C E600005C */  swc1    $f0, 0x005C($s0)           ## 0000005C
/* 00750 809B1870 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00754 809B1874 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00758 809B1878 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0075C 809B187C 03E00008 */  jr      $ra
/* 00760 809B1880 00000000 */  nop
