glabel func_80A6E9AC
/* 0060C 80A6E9AC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00610 80A6E9B0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00614 80A6E9B4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00618 80A6E9B8 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 0061C 80A6E9BC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00620 80A6E9C0 AFA5003C */  sw      $a1, 0x003C($sp)
/* 00624 80A6E9C4 0C00BC65 */  jal     func_8002F194
/* 00628 80A6E9C8 AFAE0034 */  sw      $t6, 0x0034($sp)
/* 0062C 80A6E9CC 1040002B */  beq     $v0, $zero, .L80A6EA7C
/* 00630 80A6E9D0 8FA5003C */  lw      $a1, 0x003C($sp)
/* 00634 80A6E9D4 0C00BCDA */  jal     func_8002F368
/* 00638 80A6E9D8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0063C 80A6E9DC 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00640 80A6E9E0 1441001E */  bne     $v0, $at, .L80A6EA5C
/* 00644 80A6E9E4 240810B1 */  addiu   $t0, $zero, 0x10B1         ## $t0 = 000010B1
/* 00648 80A6E9E8 8FB80034 */  lw      $t8, 0x0034($sp)
/* 0064C 80A6E9EC 240F10B2 */  addiu   $t7, $zero, 0x10B2         ## $t7 = 000010B2
/* 00650 80A6E9F0 3C0580A7 */  lui     $a1, %hi(func_80A6E8CC)    ## $a1 = 80A70000
/* 00654 80A6E9F4 24A5E8CC */  addiu   $a1, $a1, %lo(func_80A6E8CC) ## $a1 = 80A6E8CC
/* 00658 80A6E9F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0065C 80A6E9FC 0C29B8E8 */  jal     func_80A6E3A0
/* 00660 80A6EA00 A70F010E */  sh      $t7, 0x010E($t8)           ## 0000010E
/* 00664 80A6EA04 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00668 80A6EA08 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0066C 80A6EA0C 24840304 */  addiu   $a0, $a0, 0x0304           ## $a0 = 06000304
/* 00670 80A6EA10 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00674 80A6EA14 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00678 80A6EA18 44814000 */  mtc1    $at, $f8                   ## $f8 = 8.00
/* 0067C 80A6EA1C 468021A0 */  cvt.s.w $f6, $f4
/* 00680 80A6EA20 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00684 80A6EA24 24A50304 */  addiu   $a1, $a1, 0x0304           ## $a1 = 06000304
/* 00688 80A6EA28 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 0068C 80A6EA2C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00690 80A6EA30 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00694 80A6EA34 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00698 80A6EA38 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0069C 80A6EA3C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 006A0 80A6EA40 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 006A4 80A6EA44 24190028 */  addiu   $t9, $zero, 0x0028         ## $t9 = 00000028
/* 006A8 80A6EA48 A61902AA */  sh      $t9, 0x02AA($s0)           ## 000002AA
/* 006AC 80A6EA4C 0C01E221 */  jal     func_80078884
/* 006B0 80A6EA50 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 006B4 80A6EA54 10000022 */  beq     $zero, $zero, .L80A6EAE0
/* 006B8 80A6EA58 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A6EA5C:
/* 006BC 80A6EA5C 8FA90034 */  lw      $t1, 0x0034($sp)
/* 006C0 80A6EA60 3C0580A7 */  lui     $a1, %hi(func_80A6E6D8)    ## $a1 = 80A70000
/* 006C4 80A6EA64 24A5E6D8 */  addiu   $a1, $a1, %lo(func_80A6E6D8) ## $a1 = 80A6E6D8
/* 006C8 80A6EA68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006CC 80A6EA6C 0C29B8E8 */  jal     func_80A6E3A0
/* 006D0 80A6EA70 A528010E */  sh      $t0, 0x010E($t1)           ## 0000010E
/* 006D4 80A6EA74 1000001A */  beq     $zero, $zero, .L80A6EAE0
/* 006D8 80A6EA78 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A6EA7C:
/* 006DC 80A6EA7C 860A008A */  lh      $t2, 0x008A($s0)           ## 0000008A
/* 006E0 80A6EA80 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
/* 006E4 80A6EA84 240C10B1 */  addiu   $t4, $zero, 0x10B1         ## $t4 = 000010B1
/* 006E8 80A6EA88 A60C010E */  sh      $t4, 0x010E($s0)           ## 0000010E
/* 006EC 80A6EA8C 014B1023 */  subu    $v0, $t2, $t3
/* 006F0 80A6EA90 00021400 */  sll     $v0, $v0, 16
/* 006F4 80A6EA94 00021403 */  sra     $v0, $v0, 16
/* 006F8 80A6EA98 04400003 */  bltz    $v0, .L80A6EAA8
/* 006FC 80A6EA9C 00021823 */  subu    $v1, $zero, $v0
/* 00700 80A6EAA0 10000001 */  beq     $zero, $zero, .L80A6EAA8
/* 00704 80A6EAA4 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80A6EAA8:
/* 00708 80A6EAA8 28612151 */  slti    $at, $v1, 0x2151
/* 0070C 80A6EAAC 1020000B */  beq     $at, $zero, .L80A6EADC
/* 00710 80A6EAB0 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00714 80A6EAB4 44810000 */  mtc1    $at, $f0                   ## $f0 = 100.00
/* 00718 80A6EAB8 C60A0090 */  lwc1    $f10, 0x0090($s0)          ## 00000090
/* 0071C 80A6EABC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00720 80A6EAC0 4600503C */  c.lt.s  $f10, $f0
/* 00724 80A6EAC4 00000000 */  nop
/* 00728 80A6EAC8 45020005 */  bc1fl   .L80A6EAE0
/* 0072C 80A6EACC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00730 80A6EAD0 44060000 */  mfc1    $a2, $f0
/* 00734 80A6EAD4 0C00BCA6 */  jal     func_8002F298
/* 00738 80A6EAD8 24070007 */  addiu   $a3, $zero, 0x0007         ## $a3 = 00000007
.L80A6EADC:
/* 0073C 80A6EADC 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A6EAE0:
/* 00740 80A6EAE0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00744 80A6EAE4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00748 80A6EAE8 03E00008 */  jr      $ra
/* 0074C 80A6EAEC 00000000 */  nop


