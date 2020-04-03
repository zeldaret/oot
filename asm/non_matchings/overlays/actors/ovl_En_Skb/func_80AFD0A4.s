glabel func_80AFD0A4
/* 00704 80AFD0A4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00708 80AFD0A8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0070C 80AFD0AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00710 80AFD0B0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00714 80AFD0B4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00718 80AFD0B8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0071C 80AFD0BC 248447E0 */  addiu   $a0, $a0, 0x47E0           ## $a0 = 060047E0
/* 00720 80AFD0C0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00724 80AFD0C4 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00728 80AFD0C8 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 0072C 80AFD0CC 468021A0 */  cvt.s.w $f6, $f4
/* 00730 80AFD0D0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00734 80AFD0D4 3C063F75 */  lui     $a2, 0x3F75                ## $a2 = 3F750000
/* 00738 80AFD0D8 34C6C290 */  ori     $a2, $a2, 0xC290           ## $a2 = 3F75C290
/* 0073C 80AFD0DC 24A547E0 */  addiu   $a1, $a1, 0x47E0           ## $a1 = 060047E0
/* 00740 80AFD0E0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00744 80AFD0E4 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00748 80AFD0E8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0074C 80AFD0EC AFA00014 */  sw      $zero, 0x0014($sp)
/* 00750 80AFD0F0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00754 80AFD0F4 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00758 80AFD0F8 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 0075C 80AFD0FC 44818000 */  mtc1    $at, $f16                  ## $f16 = 160.00
/* 00760 80AFD100 C60A0054 */  lwc1    $f10, 0x0054($s0)          ## 00000054
/* 00764 80AFD104 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 00768 80AFD108 3C0580B0 */  lui     $a1, %hi(func_80AFD13C)    ## $a1 = 80B00000
/* 0076C 80AFD10C 46105482 */  mul.s   $f18, $f10, $f16
/* 00770 80AFD110 A20E0280 */  sb      $t6, 0x0280($s0)           ## 00000280
/* 00774 80AFD114 A6000288 */  sh      $zero, 0x0288($s0)         ## 00000288
/* 00778 80AFD118 24A5D13C */  addiu   $a1, $a1, %lo(func_80AFD13C) ## $a1 = 80AFD13C
/* 0077C 80AFD11C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00780 80AFD120 0C2BF268 */  jal     func_80AFC9A0
/* 00784 80AFD124 E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
/* 00788 80AFD128 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0078C 80AFD12C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00790 80AFD130 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00794 80AFD134 03E00008 */  jr      $ra
/* 00798 80AFD138 00000000 */  nop


