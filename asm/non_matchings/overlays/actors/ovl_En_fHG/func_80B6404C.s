.rdata
glabel D_80B65294
    .asciz "STANDBY !!\n"
    .balign 4

glabel D_80B652A0
    .asciz "XP2  = %f\n"
    .balign 4

glabel D_80B652AC
    .asciz "ZP2  = %f\n"
    .balign 4

glabel D_80B652B8
    .asciz "arg_data ------------------------------------>%d\n"
    .balign 4

.text
glabel func_80B6404C
/* 0168C 80B6404C 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 01690 80B64050 AFB00038 */  sw      $s0, 0x0038($sp)
/* 01694 80B64054 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01698 80B64058 AFBF003C */  sw      $ra, 0x003C($sp)
/* 0169C 80B6405C 3C0480B6 */  lui     $a0, %hi(D_80B65294)       ## $a0 = 80B60000
/* 016A0 80B64060 AFA5004C */  sw      $a1, 0x004C($sp)
/* 016A4 80B64064 0C00084C */  jal     osSyncPrintf

/* 016A8 80B64068 24845294 */  addiu   $a0, $a0, %lo(D_80B65294)  ## $a0 = 80B65294
/* 016AC 80B6406C C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 016B0 80B64070 3C0480B6 */  lui     $a0, %hi(D_80B652A0)       ## $a0 = 80B60000
/* 016B4 80B64074 248452A0 */  addiu   $a0, $a0, %lo(D_80B652A0)  ## $a0 = 80B652A0
/* 016B8 80B64078 460021A1 */  cvt.d.s $f6, $f4
/* 016BC 80B6407C 44073000 */  mfc1    $a3, $f6
/* 016C0 80B64080 44063800 */  mfc1    $a2, $f7
/* 016C4 80B64084 0C00084C */  jal     osSyncPrintf

/* 016C8 80B64088 00000000 */  nop
/* 016CC 80B6408C C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 016D0 80B64090 3C0480B6 */  lui     $a0, %hi(D_80B652AC)       ## $a0 = 80B60000
/* 016D4 80B64094 248452AC */  addiu   $a0, $a0, %lo(D_80B652AC)  ## $a0 = 80B652AC
/* 016D8 80B64098 460042A1 */  cvt.d.s $f10, $f8
/* 016DC 80B6409C 44075000 */  mfc1    $a3, $f10
/* 016E0 80B640A0 44065800 */  mfc1    $a2, $f11
/* 016E4 80B640A4 0C00084C */  jal     osSyncPrintf

/* 016E8 80B640A8 00000000 */  nop
/* 016EC 80B640AC 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 016F0 80B640B0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 016F4 80B640B4 15C10013 */  bne     $t6, $at, .L80B64104
/* 016F8 80B640B8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 016FC 80B640BC 44819000 */  mtc1    $at, $f18                  ## $f18 = 100.00
/* 01700 80B640C0 C6100050 */  lwc1    $f16, 0x0050($s0)          ## 00000050
/* 01704 80B640C4 C60400E4 */  lwc1    $f4, 0x00E4($s0)           ## 000000E4
/* 01708 80B640C8 C60800E8 */  lwc1    $f8, 0x00E8($s0)           ## 000000E8
/* 0170C 80B640CC 46128002 */  mul.s   $f0, $f16, $f18
/* 01710 80B640D0 C61000EC */  lwc1    $f16, 0x00EC($s0)          ## 000000EC
/* 01714 80B640D4 860F01C0 */  lh      $t7, 0x01C0($s0)           ## 000001C0
/* 01718 80B640D8 26040180 */  addiu   $a0, $s0, 0x0180           ## $a0 = 00000180
/* 0171C 80B640DC 31F80007 */  andi    $t8, $t7, 0x0007           ## $t8 = 00000000
/* 01720 80B640E0 46002183 */  div.s   $f6, $f4, $f0
/* 01724 80B640E4 46004283 */  div.s   $f10, $f8, $f0
/* 01728 80B640E8 E6060180 */  swc1    $f6, 0x0180($s0)           ## 00000180
/* 0172C 80B640EC 46008483 */  div.s   $f18, $f16, $f0
/* 01730 80B640F0 E60A0184 */  swc1    $f10, 0x0184($s0)          ## 00000184
/* 01734 80B640F4 17000003 */  bne     $t8, $zero, .L80B64104
/* 01738 80B640F8 E6120188 */  swc1    $f18, 0x0188($s0)          ## 00000188
/* 0173C 80B640FC 0C01E245 */  jal     func_80078914
/* 01740 80B64100 24052804 */  addiu   $a1, $zero, 0x2804         ## $a1 = 00002804
.L80B64104:
/* 01744 80B64104 26040250 */  addiu   $a0, $s0, 0x0250           ## $a0 = 00000250
/* 01748 80B64108 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 0174C 80B6410C AFA40044 */  sw      $a0, 0x0044($sp)
/* 01750 80B64110 3C053C3C */  lui     $a1, 0x3C3C                ## $a1 = 3C3C0000
/* 01754 80B64114 34A56A7E */  ori     $a1, $a1, 0x6A7E           ## $a1 = 3C3C6A7E
/* 01758 80B64118 26040050 */  addiu   $a0, $s0, 0x0050           ## $a0 = 00000050
/* 0175C 80B6411C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01760 80B64120 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01764 80B64124 8E0701A4 */  lw      $a3, 0x01A4($s0)           ## 000001A4
/* 01768 80B64128 3C053951 */  lui     $a1, 0x3951                ## $a1 = 39510000
/* 0176C 80B6412C 3C0735C9 */  lui     $a3, 0x35C9                ## $a3 = 35C90000
/* 01770 80B64130 34E7539C */  ori     $a3, $a3, 0x539C           ## $a3 = 35C9539C
/* 01774 80B64134 34A5B717 */  ori     $a1, $a1, 0xB717           ## $a1 = 3951B717
/* 01778 80B64138 260401A4 */  addiu   $a0, $s0, 0x01A4           ## $a0 = 000001A4
/* 0177C 80B6413C 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01780 80B64140 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01784 80B64144 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01788 80B64148 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 0178C 80B6414C 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 01790 80B64150 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 01794 80B64154 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01798 80B64158 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 0179C 80B6415C 861901D4 */  lh      $t9, 0x01D4($s0)           ## 000001D4
/* 017A0 80B64160 C6040050 */  lwc1    $f4, 0x0050($s0)           ## 00000050
/* 017A4 80B64164 3C0480B6 */  lui     $a0, %hi(D_80B652B8)       ## $a0 = 80B60000
/* 017A8 80B64168 17200033 */  bne     $t9, $zero, .L80B64238
/* 017AC 80B6416C E6040054 */  swc1    $f4, 0x0054($s0)           ## 00000054
/* 017B0 80B64170 248452B8 */  addiu   $a0, $a0, %lo(D_80B652B8)  ## $a0 = 80B652B8
/* 017B4 80B64174 0C00084C */  jal     osSyncPrintf

/* 017B8 80B64178 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 017BC 80B6417C 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 017C0 80B64180 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 017C4 80B64184 3C0C80B6 */  lui     $t4, %hi(func_80B6424C)    ## $t4 = 80B60000
/* 017C8 80B64188 1101000E */  beq     $t0, $at, .L80B641C4
/* 017CC 80B6418C 258C424C */  addiu   $t4, $t4, %lo(func_80B6424C) ## $t4 = 80B6424C
/* 017D0 80B64190 3C0A80B6 */  lui     $t2, %hi(func_80B64AA8)    ## $t2 = 80B60000
/* 017D4 80B64194 2409008C */  addiu   $t1, $zero, 0x008C         ## $t1 = 0000008C
/* 017D8 80B64198 254A4AA8 */  addiu   $t2, $t2, %lo(func_80B64AA8) ## $t2 = 80B64AA8
/* 017DC 80B6419C A60901D4 */  sh      $t1, 0x01D4($s0)           ## 000001D4
/* 017E0 80B641A0 AE0A01FC */  sw      $t2, 0x01FC($s0)           ## 000001FC
/* 017E4 80B641A4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 017E8 80B641A8 24A5B4C8 */  addiu   $a1, $a1, 0xB4C8           ## $a1 = 0600B4C8
/* 017EC 80B641AC 8FA40044 */  lw      $a0, 0x0044($sp)
/* 017F0 80B641B0 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 017F4 80B641B4 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 017F8 80B641B8 240B8000 */  addiu   $t3, $zero, 0x8000         ## $t3 = FFFF8000
/* 017FC 80B641BC 1000001E */  beq     $zero, $zero, .L80B64238
/* 01800 80B641C0 A60B01C6 */  sh      $t3, 0x01C6($s0)           ## 000001C6
.L80B641C4:
/* 01804 80B641C4 AE0C01FC */  sw      $t4, 0x01FC($s0)           ## 000001FC
/* 01808 80B641C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0180C 80B641CC 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01810 80B641D0 2405283D */  addiu   $a1, $zero, 0x283D         ## $a1 = 0000283D
/* 01814 80B641D4 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 01818 80B641D8 8FA6004C */  lw      $a2, 0x004C($sp)
/* 0181C 80B641DC 240D0028 */  addiu   $t5, $zero, 0x0028         ## $t5 = 00000028
/* 01820 80B641E0 A60D01D4 */  sh      $t5, 0x01D4($s0)           ## 000001D4
/* 01824 80B641E4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01828 80B641E8 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0182C 80B641EC C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 01830 80B641F0 44815000 */  mtc1    $at, $f10                  ## $f10 = 50.00
/* 01834 80B641F4 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 01838 80B641F8 24180027 */  addiu   $t8, $zero, 0x0027         ## $t8 = 00000027
/* 0183C 80B641FC 460A4400 */  add.s   $f16, $f8, $f10
/* 01840 80B64200 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01844 80B64204 2407006D */  addiu   $a3, $zero, 0x006D         ## $a3 = 0000006D
/* 01848 80B64208 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 0184C 80B6420C E7B00014 */  swc1    $f16, 0x0014($sp)
/* 01850 80B64210 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 01854 80B64214 AFA0001C */  sw      $zero, 0x001C($sp)
/* 01858 80B64218 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 0185C 80B6421C 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 01860 80B64220 AFB80028 */  sw      $t8, 0x0028($sp)
/* 01864 80B64224 AFA00024 */  sw      $zero, 0x0024($sp)
/* 01868 80B64228 01C17821 */  addu    $t7, $t6, $at
/* 0186C 80B6422C 0C00C916 */  jal     Actor_SpawnAsChild

/* 01870 80B64230 AFAF0020 */  sw      $t7, 0x0020($sp)
/* 01874 80B64234 A200014F */  sb      $zero, 0x014F($s0)         ## 0000014F
.L80B64238:
/* 01878 80B64238 8FBF003C */  lw      $ra, 0x003C($sp)
/* 0187C 80B6423C 8FB00038 */  lw      $s0, 0x0038($sp)
/* 01880 80B64240 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 01884 80B64244 03E00008 */  jr      $ra
/* 01888 80B64248 00000000 */  nop
