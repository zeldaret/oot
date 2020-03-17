.rdata
glabel D_801403B8
    .asciz "../z_skelanime.c"
    .balign 4

.text
glabel func_800A336C
/* B1A50C 800A336C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B1A510 800A3370 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A514 800A3374 AFBF002C */  sw    $ra, 0x2c($sp)
/* B1A518 800A3378 AFA40040 */  sw    $a0, 0x40($sp)
/* B1A51C 800A337C AFA50044 */  sw    $a1, 0x44($sp)
/* B1A520 800A3380 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A524 800A3384 AFA60048 */  sw    $a2, 0x48($sp)
/* B1A528 800A3388 AFA7004C */  sw    $a3, 0x4c($sp)
/* B1A52C 800A338C 00812021 */  addu  $a0, $a0, $at
/* B1A530 800A3390 0C028CCD */  jal   func_800A3334
/* B1A534 800A3394 00002825 */   move  $a1, $zero
/* B1A538 800A3398 10400033 */  beqz  $v0, .L800A3468
/* B1A53C 800A339C 8FA70044 */   lw    $a3, 0x44($sp)
/* B1A540 800A33A0 00077100 */  sll   $t6, $a3, 4
/* B1A544 800A33A4 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1A548 800A33A8 000FC080 */  sll   $t8, $t7, 2
/* B1A54C 800A33AC 3C198016 */  lui   $t9, %hi(gSegments)
/* B1A550 800A33B0 0338C821 */  addu  $t9, $t9, $t8
/* B1A554 800A33B4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1A558 800A33B8 8F396FA8 */  lw    $t9, %lo(gSegments)($t9)
/* B1A55C 800A33BC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1A560 800A33C0 00E14024 */  and   $t0, $a3, $at
/* B1A564 800A33C4 3C018000 */  lui   $at, 0x8000
/* B1A568 800A33C8 03284821 */  addu  $t1, $t9, $t0
/* B1A56C 800A33CC 01215021 */  addu  $t2, $t1, $at
/* B1A570 800A33D0 24440024 */  addiu $a0, $v0, 0x24
/* B1A574 800A33D4 AFAA0038 */  sw    $t2, 0x38($sp)
/* B1A578 800A33D8 AFA40030 */  sw    $a0, 0x30($sp)
/* B1A57C 800A33DC 2445003C */  addiu $a1, $v0, 0x3c
/* B1A580 800A33E0 24060001 */  li    $a2, 1
/* B1A584 800A33E4 0C001874 */  jal   osCreateMesgQueue
/* B1A588 800A33E8 AFA2003C */   sw    $v0, 0x3c($sp)
/* B1A58C 800A33EC 8FA7004C */  lw    $a3, 0x4c($sp)
/* B1A590 800A33F0 8FB90048 */  lw    $t9, 0x48($sp)
/* B1A594 800A33F4 8FAB0038 */  lw    $t3, 0x38($sp)
/* B1A598 800A33F8 00E00821 */  addu  $at, $a3, $zero
/* B1A59C 800A33FC 00073880 */  sll   $a3, $a3, 2
/* B1A5A0 800A3400 00E13823 */  subu  $a3, $a3, $at
/* B1A5A4 800A3404 00073840 */  sll   $a3, $a3, 1
/* B1A5A8 800A3408 24E70002 */  addiu $a3, $a3, 2
/* B1A5AC 800A340C 00F90019 */  multu $a3, $t9
/* B1A5B0 800A3410 8D6C0004 */  lw    $t4, 4($t3)
/* B1A5B4 800A3414 3C0D004E */  lui   $t5, %hi(_link_animetionSegmentRomStart) # $t5, 0x4e
/* B1A5B8 800A3418 25AD5C00 */  addiu $t5, %lo(_link_animetionSegmentRomStart) # addiu $t5, $t5, 0x5c00
/* B1A5BC 800A341C 3C0F0700 */  lui   $t7, 0x700
/* B1A5C0 800A3420 8FA3003C */  lw    $v1, 0x3c($sp)
/* B1A5C4 800A3424 8FA90030 */  lw    $t1, 0x30($sp)
/* B1A5C8 800A3428 25EF0000 */  addiu $t7, $t7, 0
/* B1A5CC 800A342C 3C0A8014 */  lui   $t2, %hi(D_801403B8) # $t2, 0x8014
/* B1A5D0 800A3430 018D7021 */  addu  $t6, $t4, $t5
/* B1A5D4 800A3434 01CFC023 */  subu  $t8, $t6, $t7
/* B1A5D8 800A3438 254A03B8 */  addiu $t2, %lo(D_801403B8) # addiu $t2, $t2, 0x3b8
/* B1A5DC 800A343C 240B07D4 */  li    $t3, 2004
/* B1A5E0 800A3440 00004012 */  mflo  $t0
/* B1A5E4 800A3444 03083021 */  addu  $a2, $t8, $t0
/* B1A5E8 800A3448 AFAB0020 */  sw    $t3, 0x20($sp)
/* B1A5EC 800A344C AFAA001C */  sw    $t2, 0x1c($sp)
/* B1A5F0 800A3450 AFA00018 */  sw    $zero, 0x18($sp)
/* B1A5F4 800A3454 AFA00010 */  sw    $zero, 0x10($sp)
/* B1A5F8 800A3458 8FA50050 */  lw    $a1, 0x50($sp)
/* B1A5FC 800A345C 24640004 */  addiu $a0, $v1, 4
/* B1A600 800A3460 0C000697 */  jal   DmaMgr_SendRequest2
/* B1A604 800A3464 AFA90014 */   sw    $t1, 0x14($sp)
.L800A3468:
/* B1A608 800A3468 8FBF002C */  lw    $ra, 0x2c($sp)
/* B1A60C 800A346C 27BD0040 */  addiu $sp, $sp, 0x40
/* B1A610 800A3470 03E00008 */  jr    $ra
/* B1A614 800A3474 00000000 */   nop   

