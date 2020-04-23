glabel func_80A1DA9C
/* 0028C 80A1DA9C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00290 80A1DAA0 AFA40030 */  sw      $a0, 0x0030($sp)
/* 00294 80A1DAA4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00298 80A1DAA8 AFA50034 */  sw      $a1, 0x0034($sp)
/* 0029C 80A1DAAC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002A0 80A1DAB0 0C01B0D8 */  jal     Text_GetFaceReaction
/* 002A4 80A1DAB4 2405000B */  addiu   $a1, $zero, 0x000B         ## $a1 = 0000000B
/* 002A8 80A1DAB8 14400009 */  bne     $v0, $zero, .L80A1DAE0
/* 002AC 80A1DABC 3046FFFF */  andi    $a2, $v0, 0xFFFF           ## $a2 = 00000000
/* 002B0 80A1DAC0 3C0E8016 */  lui     $t6, %hi(gSaveContext+0xee0)
/* 002B4 80A1DAC4 95CEF540 */  lhu     $t6, %lo(gSaveContext+0xee0)($t6)
/* 002B8 80A1DAC8 24065032 */  addiu   $a2, $zero, 0x5032         ## $a2 = 00005032
/* 002BC 80A1DACC 31CF0080 */  andi    $t7, $t6, 0x0080           ## $t7 = 00000000
/* 002C0 80A1DAD0 11E00003 */  beq     $t7, $zero, .L80A1DAE0
/* 002C4 80A1DAD4 00000000 */  nop
/* 002C8 80A1DAD8 10000001 */  beq     $zero, $zero, .L80A1DAE0
/* 002CC 80A1DADC 24065033 */  addiu   $a2, $zero, 0x5033         ## $a2 = 00005033
.L80A1DAE0:
/* 002D0 80A1DAE0 3C0780A2 */  lui     $a3, %hi(func_80A1DA04)    ## $a3 = 80A20000
/* 002D4 80A1DAE4 24E7DA04 */  addiu   $a3, $a3, %lo(func_80A1DA04) ## $a3 = 80A1DA04
/* 002D8 80A1DAE8 8FA40030 */  lw      $a0, 0x0030($sp)
/* 002DC 80A1DAEC 8FA50034 */  lw      $a1, 0x0034($sp)
/* 002E0 80A1DAF0 0C287653 */  jal     func_80A1D94C
/* 002E4 80A1DAF4 A7A6002E */  sh      $a2, 0x002E($sp)
/* 002E8 80A1DAF8 10400015 */  beq     $v0, $zero, .L80A1DB50
/* 002EC 80A1DAFC 97A6002E */  lhu     $a2, 0x002E($sp)
/* 002F0 80A1DB00 24015033 */  addiu   $at, $zero, 0x5033         ## $at = 00005033
/* 002F4 80A1DB04 14C10012 */  bne     $a2, $at, .L80A1DB50
/* 002F8 80A1DB08 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 002FC 80A1DB0C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00300 80A1DB10 2484057C */  addiu   $a0, $a0, 0x057C           ## $a0 = 0600057C
/* 00304 80A1DB14 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00308 80A1DB18 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 0030C 80A1DB1C 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 00310 80A1DB20 468021A0 */  cvt.s.w $f6, $f4
/* 00314 80A1DB24 8FA40030 */  lw      $a0, 0x0030($sp)
/* 00318 80A1DB28 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0031C 80A1DB2C 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00320 80A1DB30 AFB80014 */  sw      $t8, 0x0014($sp)
/* 00324 80A1DB34 24A5057C */  addiu   $a1, $a1, 0x057C           ## $a1 = 0600057C
/* 00328 80A1DB38 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0032C 80A1DB3C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00330 80A1DB40 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00334 80A1DB44 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00338 80A1DB48 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0033C 80A1DB4C 24840198 */  addiu   $a0, $a0, 0x0198           ## $a0 = 00000198
.L80A1DB50:
/* 00340 80A1DB50 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00344 80A1DB54 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00348 80A1DB58 03E00008 */  jr      $ra
/* 0034C 80A1DB5C 00000000 */  nop
