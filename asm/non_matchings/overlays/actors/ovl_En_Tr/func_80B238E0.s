glabel func_80B238E0
/* 00BF0 80B238E0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00BF4 80B238E4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00BF8 80B238E8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00BFC 80B238EC AFA50034 */  sw      $a1, 0x0034($sp)
/* 00C00 80B238F0 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00C04 80B238F4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C08 80B238F8 3C0480B2 */  lui     $a0, %hi(D_80B24378)       ## $a0 = 80B20000
/* 00C0C 80B238FC 000E7880 */  sll     $t7, $t6,  2
/* 00C10 80B23900 008F2021 */  addu    $a0, $a0, $t7
/* 00C14 80B23904 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00C18 80B23908 8C844378 */  lw      $a0, %lo(D_80B24378)($a0)
/* 00C1C 80B2390C 8FA30034 */  lw      $v1, 0x0034($sp)
/* 00C20 80B23910 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00C24 80B23914 90781D6C */  lbu     $t8, 0x1D6C($v1)           ## 00001D6C
/* 00C28 80B23918 46802020 */  cvt.s.w $f0, $f4
/* 00C2C 80B2391C 5300001E */  beql    $t8, $zero, .L80B23998
/* 00C30 80B23920 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00C34 80B23924 861902D8 */  lh      $t9, 0x02D8($s0)           ## 000002D8
/* 00C38 80B23928 00194080 */  sll     $t0, $t9,  2
/* 00C3C 80B2392C 00684821 */  addu    $t1, $v1, $t0
/* 00C40 80B23930 8D221D8C */  lw      $v0, 0x1D8C($t1)           ## 00001D8C
/* 00C44 80B23934 50400018 */  beql    $v0, $zero, .L80B23998
/* 00C48 80B23938 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00C4C 80B2393C 944A0000 */  lhu     $t2, 0x0000($v0)           ## 00000000
/* 00C50 80B23940 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00C54 80B23944 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00C58 80B23948 15410012 */  bne     $t2, $at, .L80B23994
/* 00C5C 80B2394C 3C0580B2 */  lui     $a1, %hi(D_80B24378)       ## $a1 = 80B20000
/* 00C60 80B23950 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 00C64 80B23954 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00C68 80B23958 44813000 */  mtc1    $at, $f6                   ## $f6 = -10.00
/* 00C6C 80B2395C 000B6080 */  sll     $t4, $t3,  2
/* 00C70 80B23960 00AC2821 */  addu    $a1, $a1, $t4
/* 00C74 80B23964 8CA54378 */  lw      $a1, %lo(D_80B24378)($a1)
/* 00C78 80B23968 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00C7C 80B2396C E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00C80 80B23970 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00C84 80B23974 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00C88 80B23978 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00C8C 80B2397C E7A60018 */  swc1    $f6, 0x0018($sp)
/* 00C90 80B23980 3C0580B2 */  lui     $a1, %hi(func_80B22F28)    ## $a1 = 80B20000
/* 00C94 80B23984 AE0002E4 */  sw      $zero, 0x02E4($s0)         ## 000002E4
/* 00C98 80B23988 24A52F28 */  addiu   $a1, $a1, %lo(func_80B22F28) ## $a1 = 80B22F28
/* 00C9C 80B2398C 0C2C8B3C */  jal     func_80B22CF0
/* 00CA0 80B23990 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B23994:
/* 00CA4 80B23994 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B23998:
/* 00CA8 80B23998 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00CAC 80B2399C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00CB0 80B239A0 03E00008 */  jr      $ra
/* 00CB4 80B239A4 00000000 */  nop
