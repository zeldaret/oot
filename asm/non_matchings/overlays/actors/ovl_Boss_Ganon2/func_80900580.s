glabel func_80900580
/* 03640 80900580 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03644 80900584 AFBF001C */  sw      $ra, 0x001C($sp)
/* 03648 80900588 AFB00018 */  sw      $s0, 0x0018($sp)
/* 0364C 8090058C AFA50024 */  sw      $a1, 0x0024($sp)
/* 03650 80900590 908E0311 */  lbu     $t6, 0x0311($a0)           ## 00000311
/* 03654 80900594 3C050601 */  lui     $a1, %hi(D_0600CAF8)                ## $a1 = 06010000
/* 03658 80900598 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0365C 8090059C 15C00014 */  bne     $t6, $zero, .L809005F0
/* 03660 809005A0 24A5CAF8 */  addiu   $a1, $a1, %lo(D_0600CAF8)           ## $a1 = 0600CAF8
/* 03664 809005A4 3C050601 */  lui     $a1, %hi(D_0600ADD0)                ## $a1 = 06010000
/* 03668 809005A8 24A5ADD0 */  addiu   $a1, $a1, %lo(D_0600ADD0)           ## $a1 = 0600ADD0
/* 0366C 809005AC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03670 809005B0 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 03674 809005B4 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 03678 809005B8 3C040601 */  lui     $a0, %hi(D_0600ADD0)                ## $a0 = 06010000
/* 0367C 809005BC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 03680 809005C0 2484ADD0 */  addiu   $a0, $a0, %lo(D_0600ADD0)           ## $a0 = 0600ADD0
/* 03684 809005C4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03688 809005C8 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 0368C 809005CC 44813000 */  mtc1    $at, $f6                   ## $f6 = 15.00
/* 03690 809005D0 46802020 */  cvt.s.w $f0, $f4
/* 03694 809005D4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 03698 809005D8 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 0369C 809005DC 46060201 */  sub.s   $f8, $f0, $f6
/* 036A0 809005E0 E6000194 */  swc1    $f0, 0x0194($s0)           ## 00000194
/* 036A4 809005E4 460A4401 */  sub.s   $f16, $f8, $f10
/* 036A8 809005E8 10000011 */  beq     $zero, $zero, .L80900630
/* 036AC 809005EC E6100198 */  swc1    $f16, 0x0198($s0)          ## 00000198
.L809005F0:
/* 036B0 809005F0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 036B4 809005F4 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 036B8 809005F8 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 036BC 809005FC 3C040601 */  lui     $a0, %hi(D_0600CAF8)                ## $a0 = 06010000
/* 036C0 80900600 0C028800 */  jal     SkelAnime_GetFrameCount

/* 036C4 80900604 2484CAF8 */  addiu   $a0, $a0, %lo(D_0600CAF8)           ## $a0 = 0600CAF8
/* 036C8 80900608 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 036CC 8090060C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 036D0 80900610 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 036D4 80900614 46809020 */  cvt.s.w $f0, $f18
/* 036D8 80900618 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 036DC 8090061C 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 036E0 80900620 46040181 */  sub.s   $f6, $f0, $f4
/* 036E4 80900624 E6000194 */  swc1    $f0, 0x0194($s0)           ## 00000194
/* 036E8 80900628 46083281 */  sub.s   $f10, $f6, $f8
/* 036EC 8090062C E60A0198 */  swc1    $f10, 0x0198($s0)          ## 00000198
.L80900630:
/* 036F0 80900630 3C0F8090 */  lui     $t7, %hi(func_80900650)    ## $t7 = 80900000
/* 036F4 80900634 25EF0650 */  addiu   $t7, $t7, %lo(func_80900650) ## $t7 = 80900650
/* 036F8 80900638 AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
/* 036FC 8090063C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 03700 80900640 8FB00018 */  lw      $s0, 0x0018($sp)
/* 03704 80900644 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03708 80900648 03E00008 */  jr      $ra
/* 0370C 8090064C 00000000 */  nop
