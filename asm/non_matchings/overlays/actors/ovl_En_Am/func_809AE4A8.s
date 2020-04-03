glabel func_809AE4A8
/* 00588 809AE4A8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0058C 809AE4AC AFB00028 */  sw      $s0, 0x0028($sp)
/* 00590 809AE4B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00594 809AE4B4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00598 809AE4B8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0059C 809AE4BC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 005A0 809AE4C0 2484033C */  addiu   $a0, $a0, 0x033C           ## $a0 = 0600033C
/* 005A4 809AE4C4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 005A8 809AE4C8 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 005AC 809AE4CC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 005B0 809AE4D0 46802020 */  cvt.s.w $f0, $f4
/* 005B4 809AE4D4 44061000 */  mfc1    $a2, $f2
/* 005B8 809AE4D8 24A5033C */  addiu   $a1, $a1, 0x033C           ## $a1 = 0600033C
/* 005BC 809AE4DC 26040164 */  addiu   $a0, $s0, 0x0164           ## $a0 = 00000164
/* 005C0 809AE4E0 AFA00014 */  sw      $zero, 0x0014($sp)
/* 005C4 809AE4E4 E7A20018 */  swc1    $f2, 0x0018($sp)
/* 005C8 809AE4E8 44070000 */  mfc1    $a3, $f0
/* 005CC 809AE4EC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 005D0 809AE4F0 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 005D4 809AE4F4 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 005D8 809AE4F8 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 005DC 809AE4FC 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 005E0 809AE500 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 005E4 809AE504 3C05809B */  lui     $a1, %hi(func_809AF30C)    ## $a1 = 809B0000
/* 005E8 809AE508 01C17824 */  and     $t7, $t6, $at
/* 005EC 809AE50C AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 005F0 809AE510 AE1801A8 */  sw      $t8, 0x01A8($s0)           ## 000001A8
/* 005F4 809AE514 24A5F30C */  addiu   $a1, $a1, %lo(func_809AF30C) ## $a1 = 809AF30C
/* 005F8 809AE518 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005FC 809AE51C 0C26B7C8 */  jal     func_809ADF20
/* 00600 809AE520 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 00604 809AE524 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00608 809AE528 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0060C 809AE52C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00610 809AE530 03E00008 */  jr      $ra
/* 00614 809AE534 00000000 */  nop


