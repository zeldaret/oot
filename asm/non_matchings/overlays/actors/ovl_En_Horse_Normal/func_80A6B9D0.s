glabel func_80A6B9D0
/* 00780 80A6B9D0 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00784 80A6B9D4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00788 80A6B9D8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0078C 80A6B9DC 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 00790 80A6B9E0 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 00794 80A6B9E4 01C57021 */  addu    $t6, $t6, $a1
/* 00798 80A6B9E8 8DCE1E08 */  lw      $t6, 0x1E08($t6)           ## 00011E08
/* 0079C 80A6B9EC 31F8000F */  andi    $t8, $t7, 0x000F           ## $t8 = 00000000
/* 007A0 80A6B9F0 0018C8C0 */  sll     $t9, $t8,  3
/* 007A4 80A6B9F4 01D93021 */  addu    $a2, $t6, $t9
/* 007A8 80A6B9F8 8CC30004 */  lw      $v1, 0x0004($a2)           ## 00000004
/* 007AC 80A6B9FC 3C0B8016 */  lui     $t3, 0x8016                ## $t3 = 80160000
/* 007B0 80A6BA00 8C8D0324 */  lw      $t5, 0x0324($a0)           ## 00000324
/* 007B4 80A6BA04 00034100 */  sll     $t0, $v1,  4
/* 007B8 80A6BA08 00084F02 */  srl     $t1, $t0, 28
/* 007BC 80A6BA0C 00095080 */  sll     $t2, $t1,  2
/* 007C0 80A6BA10 016A5821 */  addu    $t3, $t3, $t2
/* 007C4 80A6BA14 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 007C8 80A6BA18 8D6B6FA8 */  lw      $t3, 0x6FA8($t3)           ## 80166FA8
/* 007CC 80A6BA1C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 007D0 80A6BA20 00616024 */  and     $t4, $v1, $at
/* 007D4 80A6BA24 000D7880 */  sll     $t7, $t5,  2
/* 007D8 80A6BA28 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 007DC 80A6BA2C 01ED7823 */  subu    $t7, $t7, $t5
/* 007E0 80A6BA30 016C1021 */  addu    $v0, $t3, $t4
/* 007E4 80A6BA34 00411021 */  addu    $v0, $v0, $at
/* 007E8 80A6BA38 000F7840 */  sll     $t7, $t7,  1
/* 007EC 80A6BA3C 004F1021 */  addu    $v0, $v0, $t7
/* 007F0 80A6BA40 84580000 */  lh      $t8, 0x0000($v0)           ## 00000000
/* 007F4 80A6BA44 844E0004 */  lh      $t6, 0x0004($v0)           ## 00000004
/* 007F8 80A6BA48 C4880024 */  lwc1    $f8, 0x0024($a0)           ## 00000024
/* 007FC 80A6BA4C 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 00800 80A6BA50 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 00804 80A6BA54 C492002C */  lwc1    $f18, 0x002C($a0)          ## 0000002C
/* 00808 80A6BA58 468021A0 */  cvt.s.w $f6, $f4
/* 0080C 80A6BA5C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00810 80A6BA60 AFA6004C */  sw      $a2, 0x004C($sp)
/* 00814 80A6BA64 46805420 */  cvt.s.w $f16, $f10
/* 00818 80A6BA68 46083301 */  sub.s   $f12, $f6, $f8
/* 0081C 80A6BA6C 46128381 */  sub.s   $f14, $f16, $f18
/* 00820 80A6BA70 E7AC0044 */  swc1    $f12, 0x0044($sp)
/* 00824 80A6BA74 0C03F494 */  jal     Math_atan2f
/* 00828 80A6BA78 E7AE0040 */  swc1    $f14, 0x0040($sp)
/* 0082C 80A6BA7C 3C0180A7 */  lui     $at, %hi(D_80A6D5C8)       ## $at = 80A70000
/* 00830 80A6BA80 C424D5C8 */  lwc1    $f4, %lo(D_80A6D5C8)($at)
/* 00834 80A6BA84 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00838 80A6BA88 AFA80010 */  sw      $t0, 0x0010($sp)
/* 0083C 80A6BA8C 46040182 */  mul.s   $f6, $f0, $f4
/* 00840 80A6BA90 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00844 80A6BA94 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00848 80A6BA98 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 0084C 80A6BA9C 4600320D */  trunc.w.s $f8, $f6
/* 00850 80A6BAA0 44054000 */  mfc1    $a1, $f8
/* 00854 80A6BAA4 00000000 */  nop
/* 00858 80A6BAA8 00052C00 */  sll     $a1, $a1, 16
/* 0085C 80A6BAAC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 00860 80A6BAB0 00052C03 */  sra     $a1, $a1, 16
/* 00864 80A6BAB4 C7AC0044 */  lwc1    $f12, 0x0044($sp)
/* 00868 80A6BAB8 C7AE0040 */  lwc1    $f14, 0x0040($sp)
/* 0086C 80A6BABC 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 00870 80A6BAC0 460C6282 */  mul.s   $f10, $f12, $f12
/* 00874 80A6BAC4 44812000 */  mtc1    $at, $f4                   ## $f4 = 600.00
/* 00878 80A6BAC8 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
/* 0087C 80A6BACC 460E7402 */  mul.s   $f16, $f14, $f14
/* 00880 80A6BAD0 A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 00884 80A6BAD4 46105480 */  add.s   $f18, $f10, $f16
/* 00888 80A6BAD8 4604903C */  c.lt.s  $f18, $f4
/* 0088C 80A6BADC 00000000 */  nop
/* 00890 80A6BAE0 4500000A */  bc1f    .L80A6BB0C
/* 00894 80A6BAE4 00000000 */  nop
/* 00898 80A6BAE8 8E0A0324 */  lw      $t2, 0x0324($s0)           ## 00000324
/* 0089C 80A6BAEC 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 008A0 80A6BAF0 AE0B0324 */  sw      $t3, 0x0324($s0)           ## 00000324
/* 008A4 80A6BAF4 8FAD004C */  lw      $t5, 0x004C($sp)
/* 008A8 80A6BAF8 91AF0000 */  lbu     $t7, 0x0000($t5)           ## 00000000
/* 008AC 80A6BAFC 016F082A */  slt     $at, $t3, $t7
/* 008B0 80A6BB00 14200002 */  bne     $at, $zero, .L80A6BB0C
/* 008B4 80A6BB04 00000000 */  nop
/* 008B8 80A6BB08 AE000324 */  sw      $zero, 0x0324($s0)         ## 00000324
.L80A6BB0C:
/* 008BC 80A6BB0C 0C29ACC3 */  jal     func_80A6B30C
/* 008C0 80A6BB10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008C4 80A6BB14 E60001BC */  swc1    $f0, 0x01BC($s0)           ## 000001BC
/* 008C8 80A6BB18 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 008CC 80A6BB1C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 008D0 80A6BB20 AFA40030 */  sw      $a0, 0x0030($sp)
/* 008D4 80A6BB24 5040001D */  beql    $v0, $zero, .L80A6BB9C
/* 008D8 80A6BB28 8FBF002C */  lw      $ra, 0x002C($sp)
/* 008DC 80A6BB2C 0C29ACC3 */  jal     func_80A6B30C
/* 008E0 80A6BB30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008E4 80A6BB34 E7A00038 */  swc1    $f0, 0x0038($sp)
/* 008E8 80A6BB38 8E180150 */  lw      $t8, 0x0150($s0)           ## 00000150
/* 008EC 80A6BB3C 3C0480A7 */  lui     $a0, %hi(D_80A6D370)       ## $a0 = 80A70000
/* 008F0 80A6BB40 00187080 */  sll     $t6, $t8,  2
/* 008F4 80A6BB44 008E2021 */  addu    $a0, $a0, $t6
/* 008F8 80A6BB48 0C028800 */  jal     SkelAnime_GetFrameCount

/* 008FC 80A6BB4C 8C84D370 */  lw      $a0, %lo(D_80A6D370)($a0)
/* 00900 80A6BB50 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 00904 80A6BB54 8E190150 */  lw      $t9, 0x0150($s0)           ## 00000150
/* 00908 80A6BB58 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0090C 80A6BB5C 46803220 */  cvt.s.w $f8, $f6
/* 00910 80A6BB60 3C0580A7 */  lui     $a1, %hi(D_80A6D370)       ## $a1 = 80A70000
/* 00914 80A6BB64 00194080 */  sll     $t0, $t9,  2
/* 00918 80A6BB68 00A82821 */  addu    $a1, $a1, $t0
/* 0091C 80A6BB6C 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 00920 80A6BB70 44070000 */  mfc1    $a3, $f0
/* 00924 80A6BB74 AFA90014 */  sw      $t1, 0x0014($sp)
/* 00928 80A6BB78 8CA5D370 */  lw      $a1, %lo(D_80A6D370)($a1)
/* 0092C 80A6BB7C E7A80010 */  swc1    $f8, 0x0010($sp)
/* 00930 80A6BB80 8FA40030 */  lw      $a0, 0x0030($sp)
/* 00934 80A6BB84 8FA60038 */  lw      $a2, 0x0038($sp)
/* 00938 80A6BB88 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0093C 80A6BB8C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00940 80A6BB90 0C29AF3B */  jal     func_80A6BCEC
/* 00944 80A6BB94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00948 80A6BB98 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A6BB9C:
/* 0094C 80A6BB9C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00950 80A6BBA0 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00954 80A6BBA4 03E00008 */  jr      $ra
/* 00958 80A6BBA8 00000000 */  nop


