glabel func_80AB14A0
/* 00710 80AB14A0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00714 80AB14A4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00718 80AB14A8 AFA40028 */  sw      $a0, 0x0028($sp)
/* 0071C 80AB14AC AFA5002C */  sw      $a1, 0x002C($sp)
/* 00720 80AB14B0 AFA60030 */  sw      $a2, 0x0030($sp)
/* 00724 80AB14B4 AFA70034 */  sw      $a3, 0x0034($sp)
/* 00728 80AB14B8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0072C 80AB14BC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00730 80AB14C0 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 00734 80AB14C4 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00738 80AB14C8 8FA5002C */  lw      $a1, 0x002C($sp)
/* 0073C 80AB14CC 15C00007 */  bne     $t6, $zero, .L80AB14EC
/* 00740 80AB14D0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00744 80AB14D4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00748 80AB14D8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0074C 80AB14DC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00750 80AB14E0 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 00754 80AB14E4 10000006 */  beq     $zero, $zero, .L80AB1500
/* 00758 80AB14E8 468020A0 */  cvt.s.w $f2, $f4
.L80AB14EC:
/* 0075C 80AB14EC 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 00760 80AB14F0 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00764 80AB14F4 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00768 80AB14F8 44816000 */  mtc1    $at, $f12                  ## $f12 = -1.00
/* 0076C 80AB14FC 46803020 */  cvt.s.w $f0, $f6
.L80AB1500:
/* 00770 80AB1500 93AF0033 */  lbu     $t7, 0x0033($sp)
/* 00774 80AB1504 C7A80034 */  lwc1    $f8, 0x0034($sp)
/* 00778 80AB1508 44066000 */  mfc1    $a2, $f12
/* 0077C 80AB150C 44070000 */  mfc1    $a3, $f0
/* 00780 80AB1510 E7A20010 */  swc1    $f2, 0x0010($sp)
/* 00784 80AB1514 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 00788 80AB1518 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0078C 80AB151C E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00790 80AB1520 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00794 80AB1524 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00798 80AB1528 03E00008 */  jr      $ra
/* 0079C 80AB152C 00000000 */  nop


