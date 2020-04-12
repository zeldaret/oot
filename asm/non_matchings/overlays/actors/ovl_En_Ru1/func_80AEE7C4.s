.late_rodata
glabel D_80AF1C48
    .float 0.01

glabel D_80AF1C4C
    .float 6.8

glabel D_80AF1C50
    .float 1.3

.text
glabel func_80AEE7C4
/* 03BB4 80AEE7C4 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 03BB8 80AEE7C8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 03BBC 80AEE7CC AFB00028 */  sw      $s0, 0x0028($sp)
/* 03BC0 80AEE7D0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03BC4 80AEE7D4 0C00BD68 */  jal     func_8002F5A0
/* 03BC8 80AEE7D8 AFA5007C */  sw      $a1, 0x007C($sp)
/* 03BCC 80AEE7DC 1040004A */  beq     $v0, $zero, .L80AEE908
/* 03BD0 80AEE7E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03BD4 80AEE7E4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 03BD8 80AEE7E8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 03BDC 80AEE7EC 24846B9C */  addiu   $a0, $a0, 0x6B9C           ## $a0 = 06006B9C
/* 03BE0 80AEE7F0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03BE4 80AEE7F4 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 03BE8 80AEE7F8 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 03BEC 80AEE7FC 468021A0 */  cvt.s.w $f6, $f4
/* 03BF0 80AEE800 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 03BF4 80AEE804 24A56B9C */  addiu   $a1, $a1, 0x6B9C           ## $a1 = 06006B9C
/* 03BF8 80AEE808 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 03BFC 80AEE80C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03C00 80AEE810 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 03C04 80AEE814 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 03C08 80AEE818 AFA00014 */  sw      $zero, 0x0014($sp)
/* 03C0C 80AEE81C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 03C10 80AEE820 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 03C14 80AEE824 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03C18 80AEE828 0C2BB5B7 */  jal     func_80AED6DC
/* 03C1C 80AEE82C 8FA5007C */  lw      $a1, 0x007C($sp)
/* 03C20 80AEE830 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 03C24 80AEE834 2442FA90 */  addiu   $v0, $v0, 0xFA90           ## $v0 = 8015FA90
/* 03C28 80AEE838 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 8015FA90
/* 03C2C 80AEE83C 3C0180AF */  lui     $at, %hi(D_80AF1C48)       ## $at = 80AF0000
/* 03C30 80AEE840 C4201C48 */  lwc1    $f0, %lo(D_80AF1C48)($at)
/* 03C34 80AEE844 85CF1486 */  lh      $t7, 0x1486($t6)           ## 00001486
/* 03C38 80AEE848 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 03C3C 80AEE84C 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 03C40 80AEE850 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 03C44 80AEE854 C60A0068 */  lwc1    $f10, 0x0068($s0)          ## 00000068
/* 03C48 80AEE858 3C0180AF */  lui     $at, %hi(D_80AF1C4C)       ## $at = 80AF0000
/* 03C4C 80AEE85C 468084A0 */  cvt.s.w $f18, $f16
/* 03C50 80AEE860 C6100060 */  lwc1    $f16, 0x0060($s0)          ## 00000060
/* 03C54 80AEE864 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03C58 80AEE868 46009102 */  mul.s   $f4, $f18, $f0
/* 03C5C 80AEE86C 46022180 */  add.s   $f6, $f4, $f2
/* 03C60 80AEE870 46065202 */  mul.s   $f8, $f10, $f6
/* 03C64 80AEE874 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 03C68 80AEE878 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015FA90
/* 03C6C 80AEE87C 87191488 */  lh      $t9, 0x1488($t8)           ## 00001488
/* 03C70 80AEE880 44999000 */  mtc1    $t9, $f18                  ## $f18 = 0.00
/* 03C74 80AEE884 00000000 */  nop
/* 03C78 80AEE888 46809120 */  cvt.s.w $f4, $f18
/* 03C7C 80AEE88C 46002282 */  mul.s   $f10, $f4, $f0
/* 03C80 80AEE890 46025180 */  add.s   $f6, $f10, $f2
/* 03C84 80AEE894 46068202 */  mul.s   $f8, $f16, $f6
/* 03C88 80AEE898 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 03C8C 80AEE89C 8C480000 */  lw      $t0, 0x0000($v0)           ## 8015FA90
/* 03C90 80AEE8A0 C4301C4C */  lwc1    $f16, %lo(D_80AF1C4C)($at)
/* 03C94 80AEE8A4 3C0180AF */  lui     $at, %hi(D_80AF1C50)       ## $at = 80AF0000
/* 03C98 80AEE8A8 85091484 */  lh      $t1, 0x1484($t0)           ## 00001484
/* 03C9C 80AEE8AC 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 03CA0 80AEE8B0 00000000 */  nop
/* 03CA4 80AEE8B4 46809120 */  cvt.s.w $f4, $f18
/* 03CA8 80AEE8B8 46002282 */  mul.s   $f10, $f4, $f0
/* 03CAC 80AEE8BC 46105180 */  add.s   $f6, $f10, $f16
/* 03CB0 80AEE8C0 46003207 */  neg.s   $f8, $f6
/* 03CB4 80AEE8C4 E6080070 */  swc1    $f8, 0x0070($s0)           ## 00000070
/* 03CB8 80AEE8C8 8C4A0000 */  lw      $t2, 0x0000($v0)           ## 8015FA90
/* 03CBC 80AEE8CC C4301C50 */  lwc1    $f16, %lo(D_80AF1C50)($at)
/* 03CC0 80AEE8D0 854B1482 */  lh      $t3, 0x1482($t2)           ## 00001482
/* 03CC4 80AEE8D4 448B9000 */  mtc1    $t3, $f18                  ## $f18 = 0.00
/* 03CC8 80AEE8D8 00000000 */  nop
/* 03CCC 80AEE8DC 46809120 */  cvt.s.w $f4, $f18
/* 03CD0 80AEE8E0 46002282 */  mul.s   $f10, $f4, $f0
/* 03CD4 80AEE8E4 46105180 */  add.s   $f6, $f10, $f16
/* 03CD8 80AEE8E8 46003207 */  neg.s   $f8, $f6
/* 03CDC 80AEE8EC 0C2BB55F */  jal     func_80AED57C
/* 03CE0 80AEE8F0 E608006C */  swc1    $f8, 0x006C($s0)           ## 0000006C
/* 03CE4 80AEE8F4 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 03CE8 80AEE8F8 240C001C */  addiu   $t4, $zero, 0x001C         ## $t4 = 0000001C
/* 03CEC 80AEE8FC AE0C0264 */  sw      $t4, 0x0264($s0)           ## 00000264
/* 03CF0 80AEE900 1000006C */  beq     $zero, $zero, .L80AEEAB4
/* 03CF4 80AEE904 E6120370 */  swc1    $f18, 0x0370($s0)          ## 00000370
.L80AEE908:
/* 03CF8 80AEE908 0C2BB9B4 */  jal     func_80AEE6D0
/* 03CFC 80AEE90C 8FA5007C */  lw      $a1, 0x007C($sp)
/* 03D00 80AEE910 10400004 */  beq     $v0, $zero, .L80AEE924
/* 03D04 80AEE914 8FAD007C */  lw      $t5, 0x007C($sp)
/* 03D08 80AEE918 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 03D0C 80AEE91C 10000065 */  beq     $zero, $zero, .L80AEEAB4
/* 03D10 80AEE920 E6040370 */  swc1    $f4, 0x0370($s0)           ## 00000370
.L80AEE924:
/* 03D14 80AEE924 8DA21C44 */  lw      $v0, 0x1C44($t5)           ## 00001C44
/* 03D18 80AEE928 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 03D1C 80AEE92C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 03D20 80AEE930 8C4E0680 */  lw      $t6, 0x0680($v0)           ## 00000680
/* 03D24 80AEE934 000E78C0 */  sll     $t7, $t6,  3
/* 03D28 80AEE938 05E1004C */  bgez    $t7, .L80AEEA6C
/* 03D2C 80AEE93C 00000000 */  nop
/* 03D30 80AEE940 C60A0370 */  lwc1    $f10, 0x0370($s0)          ## 00000370
/* 03D34 80AEE944 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 03D38 80AEE948 8E180264 */  lw      $t8, 0x0264($s0)           ## 00000264
/* 03D3C 80AEE94C 24010020 */  addiu   $at, $zero, 0x0020         ## $at = 00000020
/* 03D40 80AEE950 46105180 */  add.s   $f6, $f10, $f16
/* 03D44 80AEE954 26020370 */  addiu   $v0, $s0, 0x0370           ## $v0 = 00000370
/* 03D48 80AEE958 13010026 */  beq     $t8, $at, .L80AEE9F4
/* 03D4C 80AEE95C E6060370 */  swc1    $f6, 0x0370($s0)           ## 00000370
/* 03D50 80AEE960 26020370 */  addiu   $v0, $s0, 0x0370           ## $v0 = 00000370
/* 03D54 80AEE964 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 03D58 80AEE968 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 03D5C 80AEE96C C4520000 */  lwc1    $f18, 0x0000($v0)          ## 00000370
/* 03D60 80AEE970 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 03D64 80AEE974 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 03D68 80AEE978 4612403C */  c.lt.s  $f8, $f18
/* 03D6C 80AEE97C 00000000 */  nop
/* 03D70 80AEE980 4502004D */  bc1fl   .L80AEEAB8
/* 03D74 80AEE984 8FBF002C */  lw      $ra, 0x002C($sp)
/* 03D78 80AEE988 0C01DF64 */  jal     Math_Rand_S16Offset

/* 03D7C 80AEE98C AFA20034 */  sw      $v0, 0x0034($sp)
/* 03D80 80AEE990 14400014 */  bne     $v0, $zero, .L80AEE9E4
/* 03D84 80AEE994 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 03D88 80AEE998 0C028800 */  jal     SkelAnime_GetFrameCount

/* 03D8C 80AEE99C 24844350 */  addiu   $a0, $a0, 0x4350           ## $a0 = 06004350
/* 03D90 80AEE9A0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03D94 80AEE9A4 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 03D98 80AEE9A8 44818000 */  mtc1    $at, $f16                  ## $f16 = -8.00
/* 03D9C 80AEE9AC 468022A0 */  cvt.s.w $f10, $f4
/* 03DA0 80AEE9B0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 03DA4 80AEE9B4 24A54350 */  addiu   $a1, $a1, 0x4350           ## $a1 = 06004350
/* 03DA8 80AEE9B8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 03DAC 80AEE9BC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03DB0 80AEE9C0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 03DB4 80AEE9C4 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 03DB8 80AEE9C8 AFA00014 */  sw      $zero, 0x0014($sp)
/* 03DBC 80AEE9CC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 03DC0 80AEE9D0 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 03DC4 80AEE9D4 0C2BB577 */  jal     func_80AED5DC
/* 03DC8 80AEE9D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03DCC 80AEE9DC 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 03DD0 80AEE9E0 AE190264 */  sw      $t9, 0x0264($s0)           ## 00000264
.L80AEE9E4:
/* 03DD4 80AEE9E4 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 03DD8 80AEE9E8 8FA80034 */  lw      $t0, 0x0034($sp)
/* 03DDC 80AEE9EC 10000031 */  beq     $zero, $zero, .L80AEEAB4
/* 03DE0 80AEE9F0 E5060000 */  swc1    $f6, 0x0000($t0)           ## 00000000
.L80AEE9F4:
/* 03DE4 80AEE9F4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 03DE8 80AEE9F8 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 03DEC 80AEE9FC C4520000 */  lwc1    $f18, 0x0000($v0)          ## 00000000
/* 03DF0 80AEEA00 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 03DF4 80AEEA04 24846B9C */  addiu   $a0, $a0, 0x6B9C           ## $a0 = 06006B9C
/* 03DF8 80AEEA08 4612403C */  c.lt.s  $f8, $f18
/* 03DFC 80AEEA0C 00000000 */  nop
/* 03E00 80AEEA10 45020029 */  bc1fl   .L80AEEAB8
/* 03E04 80AEEA14 8FBF002C */  lw      $ra, 0x002C($sp)
/* 03E08 80AEEA18 0C028800 */  jal     SkelAnime_GetFrameCount

/* 03E0C 80AEEA1C AFA20034 */  sw      $v0, 0x0034($sp)
/* 03E10 80AEEA20 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03E14 80AEEA24 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 03E18 80AEEA28 44818000 */  mtc1    $at, $f16                  ## $f16 = -8.00
/* 03E1C 80AEEA2C 468022A0 */  cvt.s.w $f10, $f4
/* 03E20 80AEEA30 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 03E24 80AEEA34 24A56B9C */  addiu   $a1, $a1, 0x6B9C           ## $a1 = 06006B9C
/* 03E28 80AEEA38 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 03E2C 80AEEA3C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03E30 80AEEA40 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 03E34 80AEEA44 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 03E38 80AEEA48 AFA00014 */  sw      $zero, 0x0014($sp)
/* 03E3C 80AEEA4C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 03E40 80AEEA50 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 03E44 80AEEA54 2409001F */  addiu   $t1, $zero, 0x001F         ## $t1 = 0000001F
/* 03E48 80AEEA58 AE090264 */  sw      $t1, 0x0264($s0)           ## 00000264
/* 03E4C 80AEEA5C 8FAA0034 */  lw      $t2, 0x0034($sp)
/* 03E50 80AEEA60 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 03E54 80AEEA64 10000013 */  beq     $zero, $zero, .L80AEEAB4
/* 03E58 80AEEA68 E5460000 */  swc1    $f6, 0x0000($t2)           ## 00000000
.L80AEEA6C:
/* 03E5C 80AEEA6C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 03E60 80AEEA70 24846B9C */  addiu   $a0, $a0, 0x6B9C           ## $a0 = 00006B9C
/* 03E64 80AEEA74 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 03E68 80AEEA78 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 03E6C 80AEEA7C 44812000 */  mtc1    $at, $f4                   ## $f4 = -8.00
/* 03E70 80AEEA80 468044A0 */  cvt.s.w $f18, $f8
/* 03E74 80AEEA84 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 03E78 80AEEA88 24A56B9C */  addiu   $a1, $a1, 0x6B9C           ## $a1 = 06006B9C
/* 03E7C 80AEEA8C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 03E80 80AEEA90 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03E84 80AEEA94 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 03E88 80AEEA98 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 03E8C 80AEEA9C AFA00014 */  sw      $zero, 0x0014($sp)
/* 03E90 80AEEAA0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 03E94 80AEEAA4 E7A40018 */  swc1    $f4, 0x0018($sp)
/* 03E98 80AEEAA8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 03E9C 80AEEAAC 00000000 */  nop
/* 03EA0 80AEEAB0 E60A0370 */  swc1    $f10, 0x0370($s0)          ## 00000370
.L80AEEAB4:
/* 03EA4 80AEEAB4 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AEEAB8:
/* 03EA8 80AEEAB8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 03EAC 80AEEABC 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
/* 03EB0 80AEEAC0 03E00008 */  jr      $ra
/* 03EB4 80AEEAC4 00000000 */  nop
