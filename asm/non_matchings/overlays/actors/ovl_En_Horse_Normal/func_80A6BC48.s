glabel func_80A6BC48
/* 009F8 80A6BC48 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 009FC 80A6BC4C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00A00 80A6BC50 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00A04 80A6BC54 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A08 80A6BC58 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00A0C 80A6BC5C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A10 80A6BC60 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 00A14 80A6BC64 AC800150 */  sw      $zero, 0x0150($a0)         ## 00000150
/* 00A18 80A6BC68 A480021C */  sh      $zero, 0x021C($a0)         ## 0000021C
/* 00A1C 80A6BC6C A480021E */  sh      $zero, 0x021E($a0)         ## 0000021E
/* 00A20 80A6BC70 E4800068 */  swc1    $f0, 0x0068($a0)           ## 00000068
/* 00A24 80A6BC74 0C29ACC3 */  jal     func_80A6B30C
/* 00A28 80A6BC78 E4800218 */  swc1    $f0, 0x0218($a0)           ## 00000218
/* 00A2C 80A6BC7C E7A00030 */  swc1    $f0, 0x0030($sp)
/* 00A30 80A6BC80 8E0F0150 */  lw      $t7, 0x0150($s0)           ## 00000150
/* 00A34 80A6BC84 3C0480A7 */  lui     $a0, %hi(D_80A6D370)       ## $a0 = 80A70000
/* 00A38 80A6BC88 000FC080 */  sll     $t8, $t7,  2
/* 00A3C 80A6BC8C 00982021 */  addu    $a0, $a0, $t8
/* 00A40 80A6BC90 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00A44 80A6BC94 8C84D370 */  lw      $a0, %lo(D_80A6D370)($a0)
/* 00A48 80A6BC98 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00A4C 80A6BC9C 8E190150 */  lw      $t9, 0x0150($s0)           ## 00000150
/* 00A50 80A6BCA0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A54 80A6BCA4 468021A0 */  cvt.s.w $f6, $f4
/* 00A58 80A6BCA8 3C0580A7 */  lui     $a1, %hi(D_80A6D370)       ## $a1 = 80A70000
/* 00A5C 80A6BCAC 00194080 */  sll     $t0, $t9,  2
/* 00A60 80A6BCB0 00A82821 */  addu    $a1, $a1, $t0
/* 00A64 80A6BCB4 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 00A68 80A6BCB8 44070000 */  mfc1    $a3, $f0
/* 00A6C 80A6BCBC AFA90014 */  sw      $t1, 0x0014($sp)
/* 00A70 80A6BCC0 8CA5D370 */  lw      $a1, %lo(D_80A6D370)($a1)
/* 00A74 80A6BCC4 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00A78 80A6BCC8 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 00A7C 80A6BCCC 8FA60030 */  lw      $a2, 0x0030($sp)
/* 00A80 80A6BCD0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00A84 80A6BCD4 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00A88 80A6BCD8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00A8C 80A6BCDC 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00A90 80A6BCE0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00A94 80A6BCE4 03E00008 */  jr      $ra
/* 00A98 80A6BCE8 00000000 */  nop
