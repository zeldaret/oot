glabel func_80A312E4
/* 00974 80A312E4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00978 80A312E8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0097C 80A312EC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00980 80A312F0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00984 80A312F4 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00988 80A312F8 0C042F6F */  jal     func_8010BDBC
/* 0098C 80A312FC 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00990 80A31300 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00994 80A31304 54410022 */  bnel    $v0, $at, .L80A31390
/* 00998 80A31308 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0099C 80A3130C 0C041AF2 */  jal     func_80106BC8
/* 009A0 80A31310 8FA40034 */  lw      $a0, 0x0034($sp)
/* 009A4 80A31314 1040001D */  beq     $v0, $zero, .L80A3138C
/* 009A8 80A31318 3C0E80A3 */  lui     $t6, %hi(func_80A31234)    ## $t6 = 80A30000
/* 009AC 80A3131C 25CE1234 */  addiu   $t6, $t6, %lo(func_80A31234) ## $t6 = 80A31234
/* 009B0 80A31320 3C040601 */  lui     $a0, %hi(D_0600A048)                ## $a0 = 06010000
/* 009B4 80A31324 AE0E02B4 */  sw      $t6, 0x02B4($s0)           ## 000002B4
/* 009B8 80A31328 0C028800 */  jal     SkelAnime_GetFrameCount

/* 009BC 80A3132C 2484A048 */  addiu   $a0, $a0, %lo(D_0600A048)           ## $a0 = 0600A048
/* 009C0 80A31330 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 009C4 80A31334 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 009C8 80A31338 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 009CC 80A3133C 468021A0 */  cvt.s.w $f6, $f4
/* 009D0 80A31340 3C050601 */  lui     $a1, %hi(D_0600A048)                ## $a1 = 06010000
/* 009D4 80A31344 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 009D8 80A31348 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 009DC 80A3134C 24A5A048 */  addiu   $a1, $a1, %lo(D_0600A048)           ## $a1 = 0600A048
/* 009E0 80A31350 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 009E4 80A31354 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 009E8 80A31358 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 009EC 80A3135C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 009F0 80A31360 0C029468 */  jal     SkelAnime_ChangeAnim

/* 009F4 80A31364 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 009F8 80A31368 960802AC */  lhu     $t0, 0x02AC($s0)           ## 000002AC
/* 009FC 80A3136C 3C180601 */  lui     $t8, %hi(D_0600A048)                ## $t8 = 06010000
/* 00A00 80A31370 3C1980A3 */  lui     $t9, %hi(func_80A323EC)    ## $t9 = 80A30000
/* 00A04 80A31374 2718A048 */  addiu   $t8, $t8, %lo(D_0600A048)           ## $t8 = 0600A048
/* 00A08 80A31378 273923EC */  addiu   $t9, $t9, %lo(func_80A323EC) ## $t9 = 80A323EC
/* 00A0C 80A3137C 3109FFFB */  andi    $t1, $t0, 0xFFFB           ## $t1 = 00000000
/* 00A10 80A31380 AE1802B0 */  sw      $t8, 0x02B0($s0)           ## 000002B0
/* 00A14 80A31384 AE1902B8 */  sw      $t9, 0x02B8($s0)           ## 000002B8
/* 00A18 80A31388 A60902AC */  sh      $t1, 0x02AC($s0)           ## 000002AC
.L80A3138C:
/* 00A1C 80A3138C 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A31390:
/* 00A20 80A31390 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00A24 80A31394 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00A28 80A31398 03E00008 */  jr      $ra
/* 00A2C 80A3139C 00000000 */  nop
