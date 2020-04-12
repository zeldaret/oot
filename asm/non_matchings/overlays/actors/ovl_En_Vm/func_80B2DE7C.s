glabel func_80B2DE7C
/* 00A1C 80B2DE7C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00A20 80B2DE80 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00A24 80B2DE84 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A28 80B2DE88 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00A2C 80B2DE8C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00A30 80B2DE90 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00A34 80B2DE94 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 06000068
/* 00A38 80B2DE98 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00A3C 80B2DE9C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A40 80B2DEA0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00A44 80B2DEA4 46802120 */  cvt.s.w $f4, $f4
/* 00A48 80B2DEA8 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00A4C 80B2DEAC AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00A50 80B2DEB0 24A50068 */  addiu   $a1, $a1, 0x0068           ## $a1 = 06000068
/* 00A54 80B2DEB4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00A58 80B2DEB8 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 00A5C 80B2DEBC 44072000 */  mfc1    $a3, $f4
/* 00A60 80B2DEC0 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00A64 80B2DEC4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00A68 80B2DEC8 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00A6C 80B2DECC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A70 80B2DED0 A6000260 */  sh      $zero, 0x0260($s0)         ## 00000260
/* 00A74 80B2DED4 86180260 */  lh      $t8, 0x0260($s0)           ## 00000260
/* 00A78 80B2DED8 240F0021 */  addiu   $t7, $zero, 0x0021         ## $t7 = 00000021
/* 00A7C 80B2DEDC 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 00A80 80B2DEE0 AE0F0220 */  sw      $t7, 0x0220($s0)           ## 00000220
/* 00A84 80B2DEE4 AE19021C */  sw      $t9, 0x021C($s0)           ## 0000021C
/* 00A88 80B2DEE8 3C0180B3 */  lui     $at, %hi(D_80B2EC18)       ## $at = 80B30000
/* 00A8C 80B2DEEC E6000250 */  swc1    $f0, 0x0250($s0)           ## 00000250
/* 00A90 80B2DEF0 E600024C */  swc1    $f0, 0x024C($s0)           ## 0000024C
/* 00A94 80B2DEF4 A618025E */  sh      $t8, 0x025E($s0)           ## 0000025E
/* 00A98 80B2DEF8 C426EC18 */  lwc1    $f6, %lo(D_80B2EC18)($at)
/* 00A9C 80B2DEFC 3C0180B3 */  lui     $at, %hi(D_80B2EC1C)       ## $at = 80B30000
/* 00AA0 80B2DF00 C60A0054 */  lwc1    $f10, 0x0054($s0)          ## 00000054
/* 00AA4 80B2DF04 E60600BC */  swc1    $f6, 0x00BC($s0)           ## 000000BC
/* 00AA8 80B2DF08 C428EC1C */  lwc1    $f8, %lo(D_80B2EC1C)($at)
/* 00AAC 80B2DF0C C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 00AB0 80B2DF10 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00AB4 80B2DF14 460A4402 */  mul.s   $f16, $f8, $f10
/* 00AB8 80B2DF18 44813000 */  mtc1    $at, $f6                   ## $f6 = 8.00
/* 00ABC 80B2DF1C 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 00AC0 80B2DF20 44814000 */  mtc1    $at, $f8                   ## $f8 = -0.50
/* 00AC4 80B2DF24 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
/* 00AC8 80B2DF28 E608006C */  swc1    $f8, 0x006C($s0)           ## 0000006C
/* 00ACC 80B2DF2C 46109100 */  add.s   $f4, $f18, $f16
/* 00AD0 80B2DF30 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00AD4 80B2DF34 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 00AD8 80B2DF38 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00ADC 80B2DF3C 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 00AE0 80B2DF40 3C0180B3 */  lui     $at, %hi(D_80B2EC20)       ## $at = 80B30000
/* 00AE4 80B2DF44 460A0480 */  add.s   $f18, $f0, $f10
/* 00AE8 80B2DF48 E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
/* 00AEC 80B2DF4C 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 00AF0 80B2DF50 C42CEC20 */  lwc1    $f12, %lo(D_80B2EC20)($at)
/* 00AF4 80B2DF54 4600040D */  trunc.w.s $f16, $f0
/* 00AF8 80B2DF58 3C0580B3 */  lui     $a1, %hi(func_80B2DF84)    ## $a1 = 80B30000
/* 00AFC 80B2DF5C 24A5DF84 */  addiu   $a1, $a1, %lo(func_80B2DF84) ## $a1 = 80B2DF84
/* 00B00 80B2DF60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B04 80B2DF64 44098000 */  mfc1    $t1, $f16
/* 00B08 80B2DF68 0C2CB518 */  jal     func_80B2D460
/* 00B0C 80B2DF6C A6090032 */  sh      $t1, 0x0032($s0)           ## 00000032
/* 00B10 80B2DF70 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00B14 80B2DF74 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00B18 80B2DF78 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00B1C 80B2DF7C 03E00008 */  jr      $ra
/* 00B20 80B2DF80 00000000 */  nop


