glabel func_80AACC04
/* 00304 80AACC04 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00308 80AACC08 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0030C 80AACC0C AFB00028 */  sw      $s0, 0x0028($sp)
/* 00310 80AACC10 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00314 80AACC14 94820282 */  lhu     $v0, 0x0282($a0)           ## 00000282
/* 00318 80AACC18 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0031C 80AACC1C 240F0010 */  addiu   $t7, $zero, 0x0010         ## $t7 = 00000010
/* 00320 80AACC20 18400004 */  blez    $v0, .L80AACC34
/* 00324 80AACC24 3C1880AB */  lui     $t8, %hi(func_80AACBAC)    ## $t8 = 80AB0000
/* 00328 80AACC28 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 0032C 80AACC2C 10000017 */  beq     $zero, $zero, .L80AACC8C
/* 00330 80AACC30 A48E0282 */  sh      $t6, 0x0282($a0)           ## 00000282
.L80AACC34:
/* 00334 80AACC34 2718CBAC */  addiu   $t8, $t8, %lo(func_80AACBAC) ## $t8 = 80AACBAC
/* 00338 80AACC38 3C040600 */  lui     $a0, %hi(D_06000D88)                ## $a0 = 06000000
/* 0033C 80AACC3C A60F0282 */  sh      $t7, 0x0282($s0)           ## 00000282
/* 00340 80AACC40 AE180284 */  sw      $t8, 0x0284($s0)           ## 00000284
/* 00344 80AACC44 0C028800 */  jal     Animation_GetLastFrame

/* 00348 80AACC48 24840D88 */  addiu   $a0, $a0, %lo(D_06000D88)           ## $a0 = 06000D88
/* 0034C 80AACC4C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00350 80AACC50 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00354 80AACC54 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 00358 80AACC58 468021A0 */  cvt.s.w $f6, $f4
/* 0035C 80AACC5C 3C050600 */  lui     $a1, %hi(D_06000D88)                ## $a1 = 06000000
/* 00360 80AACC60 24A50D88 */  addiu   $a1, $a1, %lo(D_06000D88)           ## $a1 = 06000D88
/* 00364 80AACC64 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 00368 80AACC68 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0036C 80AACC6C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00370 80AACC70 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00374 80AACC74 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00378 80AACC78 0C029468 */  jal     Animation_Change

/* 0037C 80AACC7C E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00380 80AACC80 9619027E */  lhu     $t9, 0x027E($s0)           ## 0000027E
/* 00384 80AACC84 3328FFFD */  andi    $t0, $t9, 0xFFFD           ## $t0 = 00000000
/* 00388 80AACC88 A608027E */  sh      $t0, 0x027E($s0)           ## 0000027E
.L80AACC8C:
/* 0038C 80AACC8C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00390 80AACC90 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00394 80AACC94 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00398 80AACC98 03E00008 */  jr      $ra
/* 0039C 80AACC9C 00000000 */  nop
