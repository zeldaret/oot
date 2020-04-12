glabel func_80AD98F4
/* 00964 80AD98F4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00968 80AD98F8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0096C 80AD98FC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00970 80AD9900 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00974 80AD9904 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00978 80AD9908 AFA50034 */  sw      $a1, 0x0034($sp)
/* 0097C 80AD990C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00980 80AD9910 2484119C */  addiu   $a0, $a0, 0x119C           ## $a0 = 0600119C
/* 00984 80AD9914 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00988 80AD9918 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 0098C 80AD991C 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 00990 80AD9920 468021A0 */  cvt.s.w $f6, $f4
/* 00994 80AD9924 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00998 80AD9928 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 0099C 80AD992C AFAE0014 */  sw      $t6, 0x0014($sp)
/* 009A0 80AD9930 24A5119C */  addiu   $a1, $a1, 0x119C           ## $a1 = 0600119C
/* 009A4 80AD9934 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 009A8 80AD9938 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 009AC 80AD993C 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 009B0 80AD9940 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 009B4 80AD9944 0C029468 */  jal     SkelAnime_ChangeAnim

/* 009B8 80AD9948 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 009BC 80AD994C 920F0194 */  lbu     $t7, 0x0194($s0)           ## 00000194
/* 009C0 80AD9950 3C0142DC */  lui     $at, 0x42DC                ## $at = 42DC0000
/* 009C4 80AD9954 55E0000C */  bnel    $t7, $zero, .L80AD9988
/* 009C8 80AD9958 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 009CC 80AD995C 44815000 */  mtc1    $at, $f10                  ## $f10 = 110.00
/* 009D0 80AD9960 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009D4 80AD9964 E60A0294 */  swc1    $f10, 0x0294($s0)          ## 00000294
/* 009D8 80AD9968 0C2B65F2 */  jal     func_80AD97C8
/* 009DC 80AD996C 8FA50034 */  lw      $a1, 0x0034($sp)
/* 009E0 80AD9970 3C1880AE */  lui     $t8, %hi(EnPoSisters_Draw)    ## $t8 = 80AE0000
/* 009E4 80AD9974 2718D044 */  addiu   $t8, $t8, %lo(EnPoSisters_Draw) ## $t8 = 80ADD044
/* 009E8 80AD9978 A2000231 */  sb      $zero, 0x0231($s0)         ## 00000231
/* 009EC 80AD997C 10000003 */  beq     $zero, $zero, .L80AD998C
/* 009F0 80AD9980 AE180134 */  sw      $t8, 0x0134($s0)           ## 00000134
/* 009F4 80AD9984 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
.L80AD9988:
/* 009F8 80AD9988 A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
.L80AD998C:
/* 009FC 80AD998C 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00A00 80AD9990 2408000F */  addiu   $t0, $zero, 0x000F         ## $t0 = 0000000F
/* 00A04 80AD9994 A608019A */  sh      $t0, 0x019A($s0)           ## 0000019A
/* 00A08 80AD9998 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A0C 80AD999C 24053873 */  addiu   $a1, $zero, 0x3873         ## $a1 = 00003873
/* 00A10 80AD99A0 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00A14 80AD99A4 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 00A18 80AD99A8 92090199 */  lbu     $t1, 0x0199($s0)           ## 00000199
/* 00A1C 80AD99AC 3C0B80AE */  lui     $t3, %hi(func_80ADAE6C)    ## $t3 = 80AE0000
/* 00A20 80AD99B0 256BAE6C */  addiu   $t3, $t3, %lo(func_80ADAE6C) ## $t3 = 80ADAE6C
/* 00A24 80AD99B4 312AFFFE */  andi    $t2, $t1, 0xFFFE           ## $t2 = 00000000
/* 00A28 80AD99B8 A20A0199 */  sb      $t2, 0x0199($s0)           ## 00000199
/* 00A2C 80AD99BC AE0B0190 */  sw      $t3, 0x0190($s0)           ## 00000190
/* 00A30 80AD99C0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00A34 80AD99C4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00A38 80AD99C8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00A3C 80AD99CC 03E00008 */  jr      $ra
/* 00A40 80AD99D0 00000000 */  nop


