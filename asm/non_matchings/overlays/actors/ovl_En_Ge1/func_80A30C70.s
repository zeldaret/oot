glabel func_80A30C70
/* 00300 80A30C70 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00304 80A30C74 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00308 80A30C78 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0030C 80A30C7C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00310 80A30C80 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00314 80A30C84 AFA60038 */  sw      $a2, 0x0038($sp)
/* 00318 80A30C88 0C00BC65 */  jal     func_8002F194
/* 0031C 80A30C8C AFA7003C */  sw      $a3, 0x003C($sp)
/* 00320 80A30C90 1040001D */  beq     $v0, $zero, .L80A30D08
/* 00324 80A30C94 C7A0003C */  lwc1    $f0, 0x003C($sp)
/* 00328 80A30C98 961802AC */  lhu     $t8, 0x02AC($s0)           ## 000002AC
/* 0032C 80A30C9C 8FAE0040 */  lw      $t6, 0x0040($sp)
/* 00330 80A30CA0 3C040600 */  lui     $a0, %hi(D_06000228)                ## $a0 = 06000000
/* 00334 80A30CA4 3C0F80A3 */  lui     $t7, %hi(func_80A323EC)    ## $t7 = 80A30000
/* 00338 80A30CA8 24840228 */  addiu   $a0, $a0, %lo(D_06000228)           ## $a0 = 06000228
/* 0033C 80A30CAC 25EF23EC */  addiu   $t7, $t7, %lo(func_80A323EC) ## $t7 = 80A323EC
/* 00340 80A30CB0 3319FFFB */  andi    $t9, $t8, 0xFFFB           ## $t9 = 00000000
/* 00344 80A30CB4 AE0F02B8 */  sw      $t7, 0x02B8($s0)           ## 000002B8
/* 00348 80A30CB8 A61902AC */  sh      $t9, 0x02AC($s0)           ## 000002AC
/* 0034C 80A30CBC AE0402B0 */  sw      $a0, 0x02B0($s0)           ## 000002B0
/* 00350 80A30CC0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00354 80A30CC4 AE0E02B4 */  sw      $t6, 0x02B4($s0)           ## 000002B4
/* 00358 80A30CC8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0035C 80A30CCC 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 00360 80A30CD0 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 00364 80A30CD4 468021A0 */  cvt.s.w $f6, $f4
/* 00368 80A30CD8 3C050600 */  lui     $a1, %hi(D_06000228)                ## $a1 = 06000000
/* 0036C 80A30CDC 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 00370 80A30CE0 AFA80014 */  sw      $t0, 0x0014($sp)
/* 00374 80A30CE4 24A50228 */  addiu   $a1, $a1, %lo(D_06000228)           ## $a1 = 06000228
/* 00378 80A30CE8 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 0037C 80A30CEC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00380 80A30CF0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00384 80A30CF4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00388 80A30CF8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0038C 80A30CFC E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00390 80A30D00 1000000C */  beq     $zero, $zero, .L80A30D34
/* 00394 80A30D04 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A30D08:
/* 00398 80A30D08 C60A0090 */  lwc1    $f10, 0x0090($s0)          ## 00000090
/* 0039C 80A30D0C 97A9003A */  lhu     $t1, 0x003A($sp)
/* 003A0 80A30D10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003A4 80A30D14 4600503C */  c.lt.s  $f10, $f0
/* 003A8 80A30D18 A609010E */  sh      $t1, 0x010E($s0)           ## 0000010E
/* 003AC 80A30D1C 45020005 */  bc1fl   .L80A30D34
/* 003B0 80A30D20 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 003B4 80A30D24 44060000 */  mfc1    $a2, $f0
/* 003B8 80A30D28 0C00BCB3 */  jal     func_8002F2CC
/* 003BC 80A30D2C 8FA50034 */  lw      $a1, 0x0034($sp)
/* 003C0 80A30D30 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A30D34:
/* 003C4 80A30D34 8FBF002C */  lw      $ra, 0x002C($sp)
/* 003C8 80A30D38 8FB00028 */  lw      $s0, 0x0028($sp)
/* 003CC 80A30D3C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 003D0 80A30D40 03E00008 */  jr      $ra
/* 003D4 80A30D44 00000000 */  nop
