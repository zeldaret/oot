glabel func_809F6AC4
/* 00704 809F6AC4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00708 809F6AC8 AFA40028 */  sw      $a0, 0x0028($sp)
/* 0070C 809F6ACC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00710 809F6AD0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00714 809F6AD4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00718 809F6AD8 248405F0 */  addiu   $a0, $a0, 0x05F0           ## $a0 = 060005F0
/* 0071C 809F6ADC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00720 809F6AE0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00724 809F6AE4 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00728 809F6AE8 468021A0 */  cvt.s.w $f6, $f4
/* 0072C 809F6AEC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00730 809F6AF0 44070000 */  mfc1    $a3, $f0
/* 00734 809F6AF4 24A505F0 */  addiu   $a1, $a1, 0x05F0           ## $a1 = 060005F0
/* 00738 809F6AF8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0073C 809F6AFC AFA00014 */  sw      $zero, 0x0014($sp)
/* 00740 809F6B00 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00744 809F6B04 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00748 809F6B08 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0074C 809F6B0C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00750 809F6B10 8FA20028 */  lw      $v0, 0x0028($sp)
/* 00754 809F6B14 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00758 809F6B18 3C01809F */  lui     $at, %hi(D_809F7F7C)       ## $at = 809F0000
/* 0075C 809F6B1C E4480060 */  swc1    $f8, 0x0060($v0)           ## 00000060
/* 00760 809F6B20 C42A7F7C */  lwc1    $f10, %lo(D_809F7F7C)($at)
/* 00764 809F6B24 E44A006C */  swc1    $f10, 0x006C($v0)          ## 0000006C
/* 00768 809F6B28 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 0076C 809F6B2C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00770 809F6B30 03E00008 */  jr      $ra
/* 00774 809F6B34 00000000 */  nop


