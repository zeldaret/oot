.late_rodata
glabel D_8094AF0C
    .float 0.1

.text
glabel func_8093C2C4
/* 035F4 8093C2C4 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 035F8 8093C2C8 AFB00030 */  sw      $s0, 0x0030($sp)
/* 035FC 8093C2CC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03600 8093C2D0 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 03604 8093C2D4 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 03608 8093C2D8 AFA5006C */  sw      $a1, 0x006C($sp)
/* 0360C 8093C2DC 0C02927F */  jal     SkelAnime_Update

/* 03610 8093C2E0 AFA4003C */  sw      $a0, 0x003C($sp)
/* 03614 8093C2E4 860E0150 */  lh      $t6, 0x0150($s0)           ## 00000150
/* 03618 8093C2E8 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 0361C 8093C2EC 31CF0003 */  andi    $t7, $t6, 0x0003           ## $t7 = 00000000
/* 03620 8093C2F0 55E00032 */  bnel    $t7, $zero, .L8093C3BC
/* 03624 8093C2F4 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 03628 8093C2F8 44816000 */  mtc1    $at, $f12                  ## $f12 = 80.00
/* 0362C 8093C2FC 0C00CFC8 */  jal     Rand_CenteredFloat

/* 03630 8093C300 00000000 */  nop
/* 03634 8093C304 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 03638 8093C308 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 0363C 8093C30C 44816000 */  mtc1    $at, $f12                  ## $f12 = 80.00
/* 03640 8093C310 46040180 */  add.s   $f6, $f0, $f4
/* 03644 8093C314 0C00CFC8 */  jal     Rand_CenteredFloat

/* 03648 8093C318 E7A6005C */  swc1    $f6, 0x005C($sp)
/* 0364C 8093C31C C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 03650 8093C320 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 03654 8093C324 44816000 */  mtc1    $at, $f12                  ## $f12 = 80.00
/* 03658 8093C328 46080280 */  add.s   $f10, $f0, $f8
/* 0365C 8093C32C 0C00CFC8 */  jal     Rand_CenteredFloat

/* 03660 8093C330 E7AA0060 */  swc1    $f10, 0x0060($sp)
/* 03664 8093C334 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 03668 8093C338 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 0366C 8093C33C 3C018095 */  lui     $at, %hi(D_8094AF0C)       ## $at = 80950000
/* 03670 8093C340 46100480 */  add.s   $f18, $f0, $f16
/* 03674 8093C344 C424AF0C */  lwc1    $f4, %lo(D_8094AF0C)($at)
/* 03678 8093C348 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0367C 8093C34C 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 03680 8093C350 E7B20064 */  swc1    $f18, 0x0064($sp)
/* 03684 8093C354 E7A20050 */  swc1    $f2, 0x0050($sp)
/* 03688 8093C358 E7A20054 */  swc1    $f2, 0x0054($sp)
/* 0368C 8093C35C E7A20058 */  swc1    $f2, 0x0058($sp)
/* 03690 8093C360 E7A20044 */  swc1    $f2, 0x0044($sp)
/* 03694 8093C364 E7A2004C */  swc1    $f2, 0x004C($sp)
/* 03698 8093C368 0C00CFBE */  jal     Rand_ZeroFloat

/* 0369C 8093C36C E7A40048 */  swc1    $f4, 0x0048($sp)
/* 036A0 8093C370 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 036A4 8093C374 44813000 */  mtc1    $at, $f6                   ## $f6 = 15.00
/* 036A8 8093C378 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 036AC 8093C37C 27B80044 */  addiu   $t8, $sp, 0x0044           ## $t8 = FFFFFFDC
/* 036B0 8093C380 46060200 */  add.s   $f8, $f0, $f6
/* 036B4 8093C384 24A50002 */  addiu   $a1, $a1, 0x0002           ## $a1 = 00000002
/* 036B8 8093C388 00052C00 */  sll     $a1, $a1, 16
/* 036BC 8093C38C 24190096 */  addiu   $t9, $zero, 0x0096         ## $t9 = 00000096
/* 036C0 8093C390 AFB90020 */  sw      $t9, 0x0020($sp)
/* 036C4 8093C394 00052C03 */  sra     $a1, $a1, 16
/* 036C8 8093C398 E7A80014 */  swc1    $f8, 0x0014($sp)
/* 036CC 8093C39C AFB80010 */  sw      $t8, 0x0010($sp)
/* 036D0 8093C3A0 AFA0001C */  sw      $zero, 0x001C($sp)
/* 036D4 8093C3A4 AFA00018 */  sw      $zero, 0x0018($sp)
/* 036D8 8093C3A8 8FA4006C */  lw      $a0, 0x006C($sp)
/* 036DC 8093C3AC 27A6005C */  addiu   $a2, $sp, 0x005C           ## $a2 = FFFFFFF4
/* 036E0 8093C3B0 0C24E371 */  jal     func_80938DC4
/* 036E4 8093C3B4 27A70050 */  addiu   $a3, $sp, 0x0050           ## $a3 = FFFFFFE8
/* 036E8 8093C3B8 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
.L8093C3BC:
/* 036EC 8093C3BC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 036F0 8093C3C0 260401D4 */  addiu   $a0, $s0, 0x01D4           ## $a0 = 000001D4
/* 036F4 8093C3C4 15010019 */  bne     $t0, $at, .L8093C42C
/* 036F8 8093C3C8 3C05437F */  lui     $a1, 0x437F                ## $a1 = 437F0000
/* 036FC 8093C3CC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03700 8093C3D0 0C01E107 */  jal     Math_ApproachF

/* 03704 8093C3D4 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 03708 8093C3D8 260401D8 */  addiu   $a0, $s0, 0x01D8           ## $a0 = 000001D8
/* 0370C 8093C3DC 3C05437F */  lui     $a1, 0x437F                ## $a1 = 437F0000
/* 03710 8093C3E0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03714 8093C3E4 0C01E107 */  jal     Math_ApproachF

/* 03718 8093C3E8 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 0371C 8093C3EC 260401DC */  addiu   $a0, $s0, 0x01DC           ## $a0 = 000001DC
/* 03720 8093C3F0 3C05437F */  lui     $a1, 0x437F                ## $a1 = 437F0000
/* 03724 8093C3F4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03728 8093C3F8 0C01E107 */  jal     Math_ApproachF

/* 0372C 8093C3FC 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 03730 8093C400 260401E0 */  addiu   $a0, $s0, 0x01E0           ## $a0 = 000001E0
/* 03734 8093C404 3C054461 */  lui     $a1, 0x4461                ## $a1 = 44610000
/* 03738 8093C408 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0373C 8093C40C 0C01E107 */  jal     Math_ApproachF

/* 03740 8093C410 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 03744 8093C414 3C054489 */  lui     $a1, 0x4489                ## $a1 = 44890000
/* 03748 8093C418 34A56000 */  ori     $a1, $a1, 0x6000           ## $a1 = 44896000
/* 0374C 8093C41C 260401E4 */  addiu   $a0, $s0, 0x01E4           ## $a0 = 000001E4
/* 03750 8093C420 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03754 8093C424 0C01E107 */  jal     Math_ApproachF

/* 03758 8093C428 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
.L8093C42C:
/* 0375C 8093C42C 86040150 */  lh      $a0, 0x0150($s0)           ## 00000150
/* 03760 8093C430 00800821 */  addu    $at, $a0, $zero
/* 03764 8093C434 00042080 */  sll     $a0, $a0,  2
/* 03768 8093C438 00812023 */  subu    $a0, $a0, $at
/* 0376C 8093C43C 00042100 */  sll     $a0, $a0,  4
/* 03770 8093C440 00812023 */  subu    $a0, $a0, $at
/* 03774 8093C444 000420C0 */  sll     $a0, $a0,  3
/* 03778 8093C448 00812023 */  subu    $a0, $a0, $at
/* 0377C 8093C44C 00042080 */  sll     $a0, $a0,  2
/* 03780 8093C450 00042400 */  sll     $a0, $a0, 16
/* 03784 8093C454 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 03788 8093C458 00042403 */  sra     $a0, $a0, 16
/* 0378C 8093C45C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 03790 8093C460 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 03794 8093C464 3C0143AF */  lui     $at, 0x43AF                ## $at = 43AF0000
/* 03798 8093C468 44819000 */  mtc1    $at, $f18                  ## $f18 = 350.00
/* 0379C 8093C46C 460A0402 */  mul.s   $f16, $f0, $f10
/* 037A0 8093C470 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 037A4 8093C474 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 037A8 8093C478 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 037AC 8093C47C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 037B0 8093C480 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 037B4 8093C484 8E070068 */  lw      $a3, 0x0068($s0)           ## 00000068
/* 037B8 8093C488 46128100 */  add.s   $f4, $f16, $f18
/* 037BC 8093C48C 46062200 */  add.s   $f8, $f4, $f6
/* 037C0 8093C490 44054000 */  mfc1    $a1, $f8
/* 037C4 8093C494 0C01E107 */  jal     Math_ApproachF

/* 037C8 8093C498 00000000 */  nop
/* 037CC 8093C49C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 037D0 8093C4A0 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 037D4 8093C4A4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 037D8 8093C4A8 0C01E107 */  jal     Math_ApproachF

/* 037DC 8093C4AC 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 037E0 8093C4B0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 037E4 8093C4B4 44810000 */  mtc1    $at, $f0                   ## $f0 = 50.00
/* 037E8 8093C4B8 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 037EC 8093C4BC 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 037F0 8093C4C0 44819000 */  mtc1    $at, $f18                  ## $f18 = 100.00
/* 037F4 8093C4C4 46005401 */  sub.s   $f16, $f10, $f0
/* 037F8 8093C4C8 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 037FC 8093C4CC 44060000 */  mfc1    $a2, $f0
/* 03800 8093C4D0 44070000 */  mfc1    $a3, $f0
/* 03804 8093C4D4 E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
/* 03808 8093C4D8 AFA90014 */  sw      $t1, 0x0014($sp)
/* 0380C 8093C4DC 8FA4006C */  lw      $a0, 0x006C($sp)
/* 03810 8093C4E0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03814 8093C4E4 0C00B92D */  jal     Actor_UpdateBgCheckInfo
/* 03818 8093C4E8 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 0381C 8093C4EC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 03820 8093C4F0 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 03824 8093C4F4 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 03828 8093C4F8 960A0088 */  lhu     $t2, 0x0088($s0)           ## 00000088
/* 0382C 8093C4FC 3C050600 */  lui     $a1, %hi(D_06006530)                ## $a1 = 06000000
/* 03830 8093C500 46062200 */  add.s   $f8, $f4, $f6
/* 03834 8093C504 314B0001 */  andi    $t3, $t2, 0x0001           ## $t3 = 00000000
/* 03838 8093C508 24A56530 */  addiu   $a1, $a1, %lo(D_06006530)           ## $a1 = 06006530
/* 0383C 8093C50C 11600004 */  beq     $t3, $zero, .L8093C520
/* 03840 8093C510 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 03844 8093C514 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 03848 8093C518 00000000 */  nop
/* 0384C 8093C51C E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
.L8093C520:
/* 03850 8093C520 86030178 */  lh      $v1, 0x0178($s0)           ## 00000178
/* 03854 8093C524 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 03858 8093C528 8FA4003C */  lw      $a0, 0x003C($sp)
/* 0385C 8093C52C 1461000A */  bne     $v1, $at, .L8093C558
/* 03860 8093C530 00000000 */  nop
/* 03864 8093C534 0C029490 */  jal     Animation_MorphToPlayOnce
/* 03868 8093C538 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 0386C 8093C53C 3C040600 */  lui     $a0, %hi(D_06006530)                ## $a0 = 06000000
/* 03870 8093C540 0C028800 */  jal     Animation_GetLastFrame

/* 03874 8093C544 24846530 */  addiu   $a0, $a0, %lo(D_06006530)           ## $a0 = 06006530
/* 03878 8093C548 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 0387C 8093C54C 86030178 */  lh      $v1, 0x0178($s0)           ## 00000178
/* 03880 8093C550 468084A0 */  cvt.s.w $f18, $f16
/* 03884 8093C554 E61201A4 */  swc1    $f18, 0x01A4($s0)          ## 000001A4
.L8093C558:
/* 03888 8093C558 14600007 */  bne     $v1, $zero, .L8093C578
/* 0388C 8093C55C 8FA4003C */  lw      $a0, 0x003C($sp)
/* 03890 8093C560 0C0295B2 */  jal     Animation_OnFrame
/* 03894 8093C564 8E0501A4 */  lw      $a1, 0x01A4($s0)           ## 000001A4
/* 03898 8093C568 10400003 */  beq     $v0, $zero, .L8093C578
/* 0389C 8093C56C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 038A0 8093C570 0C24E82A */  jal     func_8093A0A8
/* 038A4 8093C574 8FA5006C */  lw      $a1, 0x006C($sp)
.L8093C578:
/* 038A8 8093C578 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 038AC 8093C57C 8FB00030 */  lw      $s0, 0x0030($sp)
/* 038B0 8093C580 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 038B4 8093C584 03E00008 */  jr      $ra
/* 038B8 8093C588 00000000 */  nop
