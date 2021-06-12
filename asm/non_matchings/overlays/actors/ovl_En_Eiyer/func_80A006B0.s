glabel func_80A006B0
/* 00710 80A006B0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00714 80A006B4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00718 80A006B8 AFB00020 */  sw      $s0, 0x0020($sp)
/* 0071C 80A006BC 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 00720 80A006C0 A48E0194 */  sh      $t6, 0x0194($a0)           ## 00000194
/* 00724 80A006C4 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 00728 80A006C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0072C 80A006CC AFAF0010 */  sw      $t7, 0x0010($sp)
/* 00730 80A006D0 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00734 80A006D4 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 00738 80A006D8 0C00D09B */  jal     Actor_SetColorFilter
/* 0073C 80A006DC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00740 80A006E0 8E1802A8 */  lw      $t8, 0x02A8($s0)           ## 000002A8
/* 00744 80A006E4 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
/* 00748 80A006E8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0074C 80A006EC 13010009 */  beq     $t8, $at, .L80A00714
/* 00750 80A006F0 3C050600 */  lui     $a1, %hi(gStingerHitAnim)                ## $a1 = 06000000
/* 00754 80A006F4 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00758 80A006F8 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 0075C 80A006FC 24A50FC0 */  addiu   $a1, $a1, %lo(gStingerHitAnim)           ## $a1 = 06000FC0
/* 00760 80A00700 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 00764 80A00704 0C0294D3 */  jal     Animation_MorphToLoop
/* 00768 80A00708 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 0076C 80A0070C 10000007 */  beq     $zero, $zero, .L80A0072C
/* 00770 80A00710 92080298 */  lbu     $t0, 0x0298($s0)           ## 00000298
.L80A00714:
/* 00774 80A00714 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00778 80A00718 44814000 */  mtc1    $at, $f8                   ## $f8 = 6.00
/* 0077C 80A0071C C6060068 */  lwc1    $f6, 0x0068($s0)           ## 00000068
/* 00780 80A00720 46083281 */  sub.s   $f10, $f6, $f8
/* 00784 80A00724 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 00788 80A00728 92080298 */  lbu     $t0, 0x0298($s0)           ## 00000298
.L80A0072C:
/* 0078C 80A0072C 920A0299 */  lbu     $t2, 0x0299($s0)           ## 00000299
/* 00790 80A00730 3C19FFCF */  lui     $t9, 0xFFCF                ## $t9 = FFCF0000
/* 00794 80A00734 3C0C80A0 */  lui     $t4, %hi(func_80A01240)    ## $t4 = 80A00000
/* 00798 80A00738 3739FFFF */  ori     $t9, $t9, 0xFFFF           ## $t9 = FFCFFFFF
/* 0079C 80A0073C 258C1240 */  addiu   $t4, $t4, %lo(func_80A01240) ## $t4 = 80A01240
/* 007A0 80A00740 3109FFFE */  andi    $t1, $t0, 0xFFFE           ## $t1 = 00000000
/* 007A4 80A00744 314BFFFE */  andi    $t3, $t2, 0xFFFE           ## $t3 = 00000000
/* 007A8 80A00748 AE1902A8 */  sw      $t9, 0x02A8($s0)           ## 000002A8
/* 007AC 80A0074C A2090298 */  sb      $t1, 0x0298($s0)           ## 00000298
/* 007B0 80A00750 A20B0299 */  sb      $t3, 0x0299($s0)           ## 00000299
/* 007B4 80A00754 AE0C0190 */  sw      $t4, 0x0190($s0)           ## 00000190
/* 007B8 80A00758 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 007BC 80A0075C 8FB00020 */  lw      $s0, 0x0020($sp)
/* 007C0 80A00760 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 007C4 80A00764 03E00008 */  jr      $ra
/* 007C8 80A00768 00000000 */  nop
