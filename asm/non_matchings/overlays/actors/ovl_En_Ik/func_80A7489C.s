glabel func_80A7489C
/* 0058C 80A7489C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00590 80A748A0 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00594 80A748A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00598 80A748A8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0059C 80A748AC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 005A0 80A748B0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 005A4 80A748B4 2484DD50 */  addiu   $a0, $a0, 0xDD50           ## $a0 = 0600DD50
/* 005A8 80A748B8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 005AC 80A748BC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 005B0 80A748C0 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 005B4 80A748C4 468021A0 */  cvt.s.w $f6, $f4
/* 005B8 80A748C8 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 005BC 80A748CC 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 005C0 80A748D0 35CF0005 */  ori     $t7, $t6, 0x0005           ## $t7 = 00000005
/* 005C4 80A748D4 44814000 */  mtc1    $at, $f8                   ## $f8 = 4.00
/* 005C8 80A748D8 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 005CC 80A748DC A21802F8 */  sb      $t8, 0x02F8($s0)           ## 000002F8
/* 005D0 80A748E0 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 005D4 80A748E4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 005D8 80A748E8 44060000 */  mfc1    $a2, $f0
/* 005DC 80A748EC 44070000 */  mfc1    $a3, $f0
/* 005E0 80A748F0 24A5DD50 */  addiu   $a1, $a1, 0xDD50           ## $a1 = 0600DD50
/* 005E4 80A748F4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 005E8 80A748F8 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 005EC 80A748FC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 005F0 80A74900 0C029468 */  jal     SkelAnime_ChangeAnim

/* 005F4 80A74904 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 005F8 80A74908 3C0580A7 */  lui     $a1, %hi(func_80A7492C)    ## $a1 = 80A70000
/* 005FC 80A7490C 24A5492C */  addiu   $a1, $a1, %lo(func_80A7492C) ## $a1 = 80A7492C
/* 00600 80A74910 0C29D0E4 */  jal     EnIk_SetupAction
/* 00604 80A74914 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00608 80A74918 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0060C 80A7491C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00610 80A74920 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00614 80A74924 03E00008 */  jr      $ra
/* 00618 80A74928 00000000 */  nop
