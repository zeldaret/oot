glabel func_809AF558
/* 01638 809AF558 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0163C 809AF55C AFB00028 */  sw      $s0, 0x0028($sp)
/* 01640 809AF560 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01644 809AF564 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01648 809AF568 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0164C 809AF56C AFA50034 */  sw      $a1, 0x0034($sp)
/* 01650 809AF570 0C028800 */  jal     SkelAnime_GetLastFrame

/* 01654 809AF574 24845B3C */  addiu   $a0, $a0, 0x5B3C           ## $a0 = 06005B3C
/* 01658 809AF578 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0165C 809AF57C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01660 809AF580 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01664 809AF584 468021A0 */  cvt.s.w $f6, $f4
/* 01668 809AF588 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 0166C 809AF58C 44070000 */  mfc1    $a3, $f0
/* 01670 809AF590 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 01674 809AF594 24A55B3C */  addiu   $a1, $a1, 0x5B3C           ## $a1 = 06005B3C
/* 01678 809AF598 26040164 */  addiu   $a0, $s0, 0x0164           ## $a0 = 00000164
/* 0167C 809AF59C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01680 809AF5A0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01684 809AF5A4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01688 809AF5A8 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 0168C 809AF5AC 860F008A */  lh      $t7, 0x008A($s0)           ## 0000008A
/* 01690 809AF5B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01694 809AF5B4 3C06C0C0 */  lui     $a2, 0xC0C0                ## $a2 = C0C00000
/* 01698 809AF5B8 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 0169C 809AF5BC 86070032 */  lh      $a3, 0x0032($s0)           ## 00000032
/* 016A0 809AF5C0 0C26B7CA */  jal     func_809ADF28
/* 016A4 809AF5C4 8FA50034 */  lw      $a1, 0x0034($sp)
/* 016A8 809AF5C8 10400005 */  beq     $v0, $zero, .L809AF5E0
/* 016AC 809AF5CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016B0 809AF5D0 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 016B4 809AF5D4 44814000 */  mtc1    $at, $f8                   ## $f8 = -6.00
/* 016B8 809AF5D8 00000000 */  nop
/* 016BC 809AF5DC E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
.L809AF5E0:
/* 016C0 809AF5E0 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 016C4 809AF5E4 AFB80010 */  sw      $t8, 0x0010($sp)
/* 016C8 809AF5E8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 016CC 809AF5EC 24060078 */  addiu   $a2, $zero, 0x0078         ## $a2 = 00000078
/* 016D0 809AF5F0 0C00D09B */  jal     func_8003426C
/* 016D4 809AF5F4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 016D8 809AF5F8 92190267 */  lbu     $t9, 0x0267($s0)           ## 00000267
/* 016DC 809AF5FC 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 016E0 809AF600 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 016E4 809AF604 17210003 */  bne     $t9, $at, .L809AF614
/* 016E8 809AF608 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016EC 809AF60C 24080030 */  addiu   $t0, $zero, 0x0030         ## $t0 = 00000030
/* 016F0 809AF610 A608025E */  sh      $t0, 0x025E($s0)           ## 0000025E
.L809AF614:
/* 016F4 809AF614 AE0901A8 */  sw      $t1, 0x01A8($s0)           ## 000001A8
/* 016F8 809AF618 0C00BE0A */  jal     Audio_PlayActorSound2

/* 016FC 809AF61C 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 01700 809AF620 3C05809B */  lui     $a1, %hi(func_809AF644)    ## $a1 = 809B0000
/* 01704 809AF624 24A5F644 */  addiu   $a1, $a1, %lo(func_809AF644) ## $a1 = 809AF644
/* 01708 809AF628 0C26B7C8 */  jal     func_809ADF20
/* 0170C 809AF62C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01710 809AF630 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01714 809AF634 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01718 809AF638 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0171C 809AF63C 03E00008 */  jr      $ra
/* 01720 809AF640 00000000 */  nop
