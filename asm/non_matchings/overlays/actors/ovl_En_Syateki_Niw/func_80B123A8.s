.late_rodata
glabel D_80B137D8
 .word 0xC61C4000
glabel D_80B137DC
    .float 6000.0

glabel D_80B137E0
    .float 10000.0

.text
glabel func_80B123A8
/* 00AB8 80B123A8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00ABC 80B123AC AFB00028 */  sw      $s0, 0x0028($sp)
/* 00AC0 80B123B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AC4 80B123B4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00AC8 80B123B8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00ACC 80B123BC AFA50034 */  sw      $a1, 0x0034($sp)
/* 00AD0 80B123C0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00AD4 80B123C4 248400E8 */  addiu   $a0, $a0, 0x00E8           ## $a0 = 060000E8
/* 00AD8 80B123C8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00ADC 80B123CC 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00AE0 80B123D0 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 00AE4 80B123D4 468021A0 */  cvt.s.w $f6, $f4
/* 00AE8 80B123D8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00AEC 80B123DC 24A500E8 */  addiu   $a1, $a1, 0x00E8           ## $a1 = 060000E8
/* 00AF0 80B123E0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00AF4 80B123E4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00AF8 80B123E8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00AFC 80B123EC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00B00 80B123F0 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00B04 80B123F4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00B08 80B123F8 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00B0C 80B123FC 3C0180B1 */  lui     $at, %hi(D_80B137D8)       ## $at = 80B10000
/* 00B10 80B12400 C42037D8 */  lwc1    $f0, %lo(D_80B137D8)($at)
/* 00B14 80B12404 3C0180B1 */  lui     $at, %hi(D_80B137DC)       ## $at = 80B10000
/* 00B18 80B12408 C42237DC */  lwc1    $f2, %lo(D_80B137DC)($at)
/* 00B1C 80B1240C 3C0180B1 */  lui     $at, %hi(D_80B137E0)       ## $at = 80B10000
/* 00B20 80B12410 E6000288 */  swc1    $f0, 0x0288($s0)           ## 00000288
/* 00B24 80B12414 E602027C */  swc1    $f2, 0x027C($s0)           ## 0000027C
/* 00B28 80B12418 E60202B8 */  swc1    $f2, 0x02B8($s0)           ## 000002B8
/* 00B2C 80B1241C C42A37E0 */  lwc1    $f10, %lo(D_80B137E0)($at)
/* 00B30 80B12420 3C0E80B1 */  lui     $t6, %hi(func_80B12460)    ## $t6 = 80B10000
/* 00B34 80B12424 25CE2460 */  addiu   $t6, $t6, %lo(func_80B12460) ## $t6 = 80B12460
/* 00B38 80B12428 AE0E0250 */  sw      $t6, 0x0250($s0)           ## 00000250
/* 00B3C 80B1242C E60002B0 */  swc1    $f0, 0x02B0($s0)           ## 000002B0
/* 00B40 80B12430 E6000268 */  swc1    $f0, 0x0268($s0)           ## 00000268
/* 00B44 80B12434 E60002A8 */  swc1    $f0, 0x02A8($s0)           ## 000002A8
/* 00B48 80B12438 E60002A4 */  swc1    $f0, 0x02A4($s0)           ## 000002A4
/* 00B4C 80B1243C E600026C */  swc1    $f0, 0x026C($s0)           ## 0000026C
/* 00B50 80B12440 E60202AC */  swc1    $f2, 0x02AC($s0)           ## 000002AC
/* 00B54 80B12444 E6020284 */  swc1    $f2, 0x0284($s0)           ## 00000284
/* 00B58 80B12448 E60A02B4 */  swc1    $f10, 0x02B4($s0)          ## 000002B4
/* 00B5C 80B1244C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00B60 80B12450 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00B64 80B12454 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00B68 80B12458 03E00008 */  jr      $ra
/* 00B6C 80B1245C 00000000 */  nop
