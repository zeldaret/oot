glabel func_80AA77D0
/* 01780 80AA77D0 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 01784 80AA77D4 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 01788 80AA77D8 AFB00030 */  sw      $s0, 0x0030($sp)
/* 0178C 80AA77DC AFA5004C */  sw      $a1, 0x004C($sp)
/* 01790 80AA77E0 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 01794 80AA77E4 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 01798 80AA77E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0179C 80AA77EC 01CF1023 */  subu    $v0, $t6, $t7
/* 017A0 80AA77F0 00021400 */  sll     $v0, $v0, 16
/* 017A4 80AA77F4 00021403 */  sra     $v0, $v0, 16
/* 017A8 80AA77F8 04430005 */  bgezl   $v0, .L80AA7810
/* 017AC 80AA77FC C60401A4 */  lwc1    $f4, 0x01A4($s0)           ## 000001A4
/* 017B0 80AA7800 00021023 */  subu    $v0, $zero, $v0
/* 017B4 80AA7804 00021400 */  sll     $v0, $v0, 16
/* 017B8 80AA7808 00021403 */  sra     $v0, $v0, 16
/* 017BC 80AA780C C60401A4 */  lwc1    $f4, 0x01A4($s0)           ## 000001A4
.L80AA7810:
/* 017C0 80AA7810 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 017C4 80AA7814 AFA4003C */  sw      $a0, 0x003C($sp)
/* 017C8 80AA7818 4600218D */  trunc.w.s $f6, $f4
/* 017CC 80AA781C A7A20042 */  sh      $v0, 0x0042($sp)
/* 017D0 80AA7820 44193000 */  mfc1    $t9, $f6
/* 017D4 80AA7824 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 017D8 80AA7828 AFB90044 */  sw      $t9, 0x0044($sp)
/* 017DC 80AA782C 10400007 */  beq     $v0, $zero, .L80AA784C
/* 017E0 80AA7830 8FA4003C */  lw      $a0, 0x003C($sp)
/* 017E4 80AA7834 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 017E8 80AA7838 0C0294BE */  jal     SkelAnime_ChangeAnimationDefault
/* 017EC 80AA783C 24A52F10 */  addiu   $a1, $a1, 0x2F10           ## $a1 = 06002F10
/* 017F0 80AA7840 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017F4 80AA7844 0C00BE0A */  jal     Audio_PlayActorSound2

/* 017F8 80AA7848 240538BA */  addiu   $a1, $zero, 0x38BA         ## $a1 = 000038BA
.L80AA784C:
/* 017FC 80AA784C 8602032E */  lh      $v0, 0x032E($s0)           ## 0000032E
/* 01800 80AA7850 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01804 80AA7854 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 01808 80AA7858 1040000B */  beq     $v0, $zero, .L80AA7888
/* 0180C 80AA785C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01810 80AA7860 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 01814 80AA7864 A608032E */  sh      $t0, 0x032E($s0)           ## 0000032E
/* 01818 80AA7868 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 0181C 80AA786C AFA00010 */  sw      $zero, 0x0010($sp)
/* 01820 80AA7870 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 01824 80AA7874 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01828 80AA7878 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 0182C 80AA787C 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 01830 80AA7880 10000022 */  beq     $zero, $zero, .L80AA790C
/* 01834 80AA7884 87AF0042 */  lh      $t7, 0x0042($sp)
.L80AA7888:
/* 01838 80AA7888 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.00
/* 0183C 80AA788C A6090334 */  sh      $t1, 0x0334($s0)           ## 00000334
/* 01840 80AA7890 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01844 80AA7894 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 01848 80AA7898 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 0184C 80AA789C 240A0003 */  addiu   $t2, $zero, 0x0003         ## $t2 = 00000003
/* 01850 80AA78A0 240B0064 */  addiu   $t3, $zero, 0x0064         ## $t3 = 00000064
/* 01854 80AA78A4 240C000F */  addiu   $t4, $zero, 0x000F         ## $t4 = 0000000F
/* 01858 80AA78A8 AFAC001C */  sw      $t4, 0x001C($sp)
/* 0185C 80AA78AC AFAB0018 */  sw      $t3, 0x0018($sp)
/* 01860 80AA78B0 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 01864 80AA78B4 AFA00020 */  sw      $zero, 0x0020($sp)
/* 01868 80AA78B8 8FA4004C */  lw      $a0, 0x004C($sp)
/* 0186C 80AA78BC 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 01870 80AA78C0 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 01874 80AA78C4 0C00CC98 */  jal     func_80033260
/* 01878 80AA78C8 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 0187C 80AA78CC C61001A4 */  lwc1    $f16, 0x01A4($s0)          ## 000001A4
/* 01880 80AA78D0 8FAE0044 */  lw      $t6, 0x0044($sp)
/* 01884 80AA78D4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01888 80AA78D8 4600848D */  trunc.w.s $f18, $f16
/* 0188C 80AA78DC 44029000 */  mfc1    $v0, $f18
/* 01890 80AA78E0 00000000 */  nop
/* 01894 80AA78E4 51C20009 */  beql    $t6, $v0, .L80AA790C
/* 01898 80AA78E8 87AF0042 */  lh      $t7, 0x0042($sp)
/* 0189C 80AA78EC 10410004 */  beq     $v0, $at, .L80AA7900
/* 018A0 80AA78F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018A4 80AA78F4 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 018A8 80AA78F8 54410004 */  bnel    $v0, $at, .L80AA790C
/* 018AC 80AA78FC 87AF0042 */  lh      $t7, 0x0042($sp)
.L80AA7900:
/* 018B0 80AA7900 0C00BE0A */  jal     Audio_PlayActorSound2

/* 018B4 80AA7904 240538BF */  addiu   $a1, $zero, 0x38BF         ## $a1 = 000038BF
/* 018B8 80AA7908 87AF0042 */  lh      $t7, 0x0042($sp)
.L80AA790C:
/* 018BC 80AA790C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018C0 80AA7910 29E11389 */  slti    $at, $t7, 0x1389
/* 018C4 80AA7914 54200004 */  bnel    $at, $zero, .L80AA7928
/* 018C8 80AA7918 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 018CC 80AA791C 0C2A9B30 */  jal     func_80AA6CC0
/* 018D0 80AA7920 A6000334 */  sh      $zero, 0x0334($s0)         ## 00000334
/* 018D4 80AA7924 8FBF0034 */  lw      $ra, 0x0034($sp)
.L80AA7928:
/* 018D8 80AA7928 8FB00030 */  lw      $s0, 0x0030($sp)
/* 018DC 80AA792C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 018E0 80AA7930 03E00008 */  jr      $ra
/* 018E4 80AA7934 00000000 */  nop


