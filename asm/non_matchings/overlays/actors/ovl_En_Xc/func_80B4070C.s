glabel func_80B4070C
/* 0452C 80B4070C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 04530 80B40710 AFB00028 */  sw      $s0, 0x0028($sp)
/* 04534 80B40714 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04538 80B40718 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0453C 80B4071C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 04540 80B40720 AFA50044 */  sw      $a1, 0x0044($sp)
/* 04544 80B40724 0C028800 */  jal     SkelAnime_GetLastFrame

/* 04548 80B40728 24844828 */  addiu   $a0, $a0, 0x4828           ## $a0 = 06004828
/* 0454C 80B4072C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 04550 80B40730 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04554 80B40734 468021A0 */  cvt.s.w $f6, $f4
/* 04558 80B40738 0C2CF277 */  jal     func_80B3C9DC
/* 0455C 80B4073C E7A60030 */  swc1    $f6, 0x0030($sp)
/* 04560 80B40740 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04564 80B40744 8FA50044 */  lw      $a1, 0x0044($sp)
/* 04568 80B40748 0C2CF162 */  jal     func_80B3C588
/* 0456C 80B4074C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 04570 80B40750 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04574 80B40754 C7A80030 */  lwc1    $f8, 0x0030($sp)
/* 04578 80B40758 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0457C 80B4075C 44070000 */  mfc1    $a3, $f0
/* 04580 80B40760 24A54828 */  addiu   $a1, $a1, 0x4828           ## $a1 = 06004828
/* 04584 80B40764 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 04588 80B40768 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0458C 80B4076C AFA00014 */  sw      $zero, 0x0014($sp)
/* 04590 80B40770 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 04594 80B40774 0C029468 */  jal     SkelAnime_ChangeAnim

/* 04598 80B40778 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 0459C 80B4077C 240E003A */  addiu   $t6, $zero, 0x003A         ## $t6 = 0000003A
/* 045A0 80B40780 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 045A4 80B40784 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 045A8 80B40788 AE0E0260 */  sw      $t6, 0x0260($s0)           ## 00000260
/* 045AC 80B4078C AE0F0264 */  sw      $t7, 0x0264($s0)           ## 00000264
/* 045B0 80B40790 A21800C8 */  sb      $t8, 0x00C8($s0)           ## 000000C8
/* 045B4 80B40794 8FBF002C */  lw      $ra, 0x002C($sp)
/* 045B8 80B40798 8FB00028 */  lw      $s0, 0x0028($sp)
/* 045BC 80B4079C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 045C0 80B407A0 03E00008 */  jr      $ra
/* 045C4 80B407A4 00000000 */  nop
