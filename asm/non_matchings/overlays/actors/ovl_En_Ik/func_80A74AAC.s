.late_rodata
glabel D_80A789E0
    .float 0.9

.text
glabel func_80A74AAC
/* 0079C 80A74AAC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 007A0 80A74AB0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 007A4 80A74AB4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 007A8 80A74AB8 908F02FB */  lbu     $t7, 0x02FB($a0)           ## 000002FB
/* 007AC 80A74ABC 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 007B0 80A74AC0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007B4 80A74AC4 15E00015 */  bne     $t7, $zero, .L80A74B1C
/* 007B8 80A74AC8 A08E02F8 */  sb      $t6, 0x02F8($a0)           ## 000002F8
/* 007BC 80A74ACC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 007C0 80A74AD0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 007C4 80A74AD4 2484ED24 */  addiu   $a0, $a0, 0xED24           ## $a0 = 0600ED24
/* 007C8 80A74AD8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 007CC 80A74ADC 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 007D0 80A74AE0 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 007D4 80A74AE4 468021A0 */  cvt.s.w $f6, $f4
/* 007D8 80A74AE8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 007DC 80A74AEC 24A5ED24 */  addiu   $a1, $a1, 0xED24           ## $a1 = 0600ED24
/* 007E0 80A74AF0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 007E4 80A74AF4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 007E8 80A74AF8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 007EC 80A74AFC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 007F0 80A74B00 AFA00014 */  sw      $zero, 0x0014($sp)
/* 007F4 80A74B04 0C029468 */  jal     SkelAnime_ChangeAnim

/* 007F8 80A74B08 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 007FC 80A74B0C 3C0180A8 */  lui     $at, %hi(D_80A789E0)       ## $at = 80A80000
/* 00800 80A74B10 C42A89E0 */  lwc1    $f10, %lo(D_80A789E0)($at)
/* 00804 80A74B14 10000018 */  beq     $zero, $zero, .L80A74B78
/* 00808 80A74B18 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
.L80A74B1C:
/* 0080C 80A74B1C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00810 80A74B20 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00814 80A74B24 24846734 */  addiu   $a0, $a0, 0x6734           ## $a0 = 06006734
/* 00818 80A74B28 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 0081C 80A74B2C 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00820 80A74B30 44812000 */  mtc1    $at, $f4                   ## $f4 = -4.00
/* 00824 80A74B34 468084A0 */  cvt.s.w $f18, $f16
/* 00828 80A74B38 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0082C 80A74B3C 24A56734 */  addiu   $a1, $a1, 0x6734           ## $a1 = 06006734
/* 00830 80A74B40 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00834 80A74B44 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00838 80A74B48 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0083C 80A74B4C E7B20010 */  swc1    $f18, 0x0010($sp)
/* 00840 80A74B50 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00844 80A74B54 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00848 80A74B58 E7A40018 */  swc1    $f4, 0x0018($sp)
/* 0084C 80A74B5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00850 80A74B60 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00854 80A74B64 240539BF */  addiu   $a1, $zero, 0x39BF         ## $a1 = 000039BF
/* 00858 80A74B68 3C014020 */  lui     $at, 0x4020                ## $at = 40200000
/* 0085C 80A74B6C 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.50
/* 00860 80A74B70 00000000 */  nop
/* 00864 80A74B74 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L80A74B78:
/* 00868 80A74B78 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 0086C 80A74B7C 3C0580A7 */  lui     $a1, %hi(func_80A74BA4)    ## $a1 = 80A70000
/* 00870 80A74B80 24A54BA4 */  addiu   $a1, $a1, %lo(func_80A74BA4) ## $a1 = 80A74BA4
/* 00874 80A74B84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00878 80A74B88 0C29D0E4 */  jal     func_80A74390
/* 0087C 80A74B8C A6180032 */  sh      $t8, 0x0032($s0)           ## 00000032
/* 00880 80A74B90 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00884 80A74B94 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00888 80A74B98 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0088C 80A74B9C 03E00008 */  jr      $ra
/* 00890 80A74BA0 00000000 */  nop
