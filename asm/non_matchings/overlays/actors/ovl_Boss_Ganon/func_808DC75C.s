glabel func_808DC75C
/* 05EEC 808DC75C 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 05EF0 808DC760 AFB30038 */  sw      $s3, 0x0038($sp)
/* 05EF4 808DC764 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 05EF8 808DC768 AFBF003C */  sw      $ra, 0x003C($sp)
/* 05EFC 808DC76C AFB20034 */  sw      $s2, 0x0034($sp)
/* 05F00 808DC770 24840150 */  addiu   $a0, $a0, 0x0150           ## $a0 = 00000150
/* 05F04 808DC774 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 05F08 808DC778 AFB10030 */  sw      $s1, 0x0030($sp)
/* 05F0C 808DC77C AFB0002C */  sw      $s0, 0x002C($sp)
/* 05F10 808DC780 F7B60020 */  sdc1    $f22, 0x0020($sp)
/* 05F14 808DC784 F7B40018 */  sdc1    $f20, 0x0018($sp)
/* 05F18 808DC788 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 05F1C 808DC78C AFA40048 */  sw      $a0, 0x0048($sp)
/* 05F20 808DC790 866301C2 */  lh      $v1, 0x01C2($s3)           ## 000001C2
/* 05F24 808DC794 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 05F28 808DC798 3C0544BB */  lui     $a1, 0x44BB                ## $a1 = 44BB0000
/* 05F2C 808DC79C 14600016 */  bne     $v1, $zero, .L808DC7F8
/* 05F30 808DC7A0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 05F34 808DC7A4 34A58000 */  ori     $a1, $a1, 0x8000           ## $a1 = 44BB8000
/* 05F38 808DC7A8 0C235AFC */  jal     func_808D6BF0
/* 05F3C 808DC7AC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 05F40 808DC7B0 8FA40048 */  lw      $a0, 0x0048($sp)
/* 05F44 808DC7B4 0C0295B2 */  jal     func_800A56C8
/* 05F48 808DC7B8 8E6501CC */  lw      $a1, 0x01CC($s3)           ## 000001CC
/* 05F4C 808DC7BC 10400063 */  beq     $v0, $zero, .L808DC94C
/* 05F50 808DC7C0 3C100601 */  lui     $s0, %hi(D_06008F44)                ## $s0 = 06010000
/* 05F54 808DC7C4 26108F44 */  addiu   $s0, $s0, %lo(D_06008F44)           ## $s0 = 06008F44
/* 05F58 808DC7C8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 05F5C 808DC7CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 06008F44
/* 05F60 808DC7D0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 05F64 808DC7D4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 06008F44
/* 05F68 808DC7D8 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 05F6C 808DC7DC 468021A0 */  cvt.s.w $f6, $f4
/* 05F70 808DC7E0 E66601CC */  swc1    $f6, 0x01CC($s3)           ## 000001CC
/* 05F74 808DC7E4 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 05F78 808DC7E8 8FA40048 */  lw      $a0, 0x0048($sp)
/* 05F7C 808DC7EC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 05F80 808DC7F0 10000056 */  beq     $zero, $zero, .L808DC94C
/* 05F84 808DC7F4 A66E01C2 */  sh      $t6, 0x01C2($s3)           ## 000001C2
.L808DC7F8:
/* 05F88 808DC7F8 14610025 */  bne     $v1, $at, .L808DC890
/* 05F8C 808DC7FC 8FA40048 */  lw      $a0, 0x0048($sp)
/* 05F90 808DC800 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 05F94 808DC804 3C05447A */  lui     $a1, 0x447A                ## $a1 = 447A0000
/* 05F98 808DC808 0C235AFC */  jal     func_808D6BF0
/* 05F9C 808DC80C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 05FA0 808DC810 866F01B6 */  lh      $t7, 0x01B6($s3)           ## 000001B6
/* 05FA4 808DC814 3C100601 */  lui     $s0, %hi(D_06008A88)                ## $s0 = 06010000
/* 05FA8 808DC818 26108A88 */  addiu   $s0, $s0, %lo(D_06008A88)           ## $s0 = 06008A88
/* 05FAC 808DC81C 55E0004C */  bnel    $t7, $zero, .L808DC950
/* 05FB0 808DC820 866401A2 */  lh      $a0, 0x01A2($s3)           ## 000001A2
/* 05FB4 808DC824 0C028800 */  jal     SkelAnime_GetFrameCount

/* 05FB8 808DC828 02002025 */  or      $a0, $s0, $zero            ## $a0 = 06008A88
/* 05FBC 808DC82C 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 05FC0 808DC830 02002825 */  or      $a1, $s0, $zero            ## $a1 = 06008A88
/* 05FC4 808DC834 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 05FC8 808DC838 468042A0 */  cvt.s.w $f10, $f8
/* 05FCC 808DC83C E66A01CC */  swc1    $f10, 0x01CC($s3)          ## 000001CC
/* 05FD0 808DC840 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 05FD4 808DC844 8FA40048 */  lw      $a0, 0x0048($sp)
/* 05FD8 808DC848 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 05FDC 808DC84C A67801C2 */  sh      $t8, 0x01C2($s3)           ## 000001C2
/* 05FE0 808DC850 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 05FE4 808DC854 8FA40048 */  lw      $a0, 0x0048($sp)
/* 05FE8 808DC858 3C014190 */  lui     $at, 0x4190                ## $at = 41900000
/* 05FEC 808DC85C 3C198090 */  lui     $t9, %hi(D_808F93C0)       ## $t9 = 80900000
/* 05FF0 808DC860 8F3993C0 */  lw      $t9, %lo(D_808F93C0)($t9)
/* 05FF4 808DC864 44818000 */  mtc1    $at, $f16                  ## $f16 = 18.00
/* 05FF8 808DC868 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 05FFC 808DC86C 240528C7 */  addiu   $a1, $zero, 0x28C7         ## $a1 = 000028C7
/* 06000 808DC870 0C00BE0A */  jal     Audio_PlayActorSound2

/* 06004 808DC874 E73016C4 */  swc1    $f16, 0x16C4($t9)          ## 809016C4
/* 06008 808DC878 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 0600C 808DC87C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 06010 808DC880 240539CF */  addiu   $a1, $zero, 0x39CF         ## $a1 = 000039CF
/* 06014 808DC884 24080082 */  addiu   $t0, $zero, 0x0082         ## $t0 = 00000082
/* 06018 808DC888 10000030 */  beq     $zero, $zero, .L808DC94C
/* 0601C 808DC88C A66801BA */  sh      $t0, 0x01BA($s3)           ## 000001BA
.L808DC890:
/* 06020 808DC890 0C0295B2 */  jal     func_800A56C8
/* 06024 808DC894 3C0540E0 */  lui     $a1, 0x40E0                ## $a1 = 40E00000
/* 06028 808DC898 10400025 */  beq     $v0, $zero, .L808DC930
/* 0602C 808DC89C 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 06030 808DC8A0 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 06034 808DC8A4 4481B000 */  mtc1    $at, $f22                  ## $f22 = 500.00
/* 06038 808DC8A8 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 0603C 808DC8AC 4481A000 */  mtc1    $at, $f20                  ## $f20 = 25.00
/* 06040 808DC8B0 267101FC */  addiu   $s1, $s3, 0x01FC           ## $s1 = 000001FC
.L808DC8B4:
/* 06044 808DC8B4 0C00CFC8 */  jal     Rand_CenteredFloat

/* 06048 808DC8B8 4600A306 */  mov.s   $f12, $f20
/* 0604C 808DC8BC E7A00050 */  swc1    $f0, 0x0050($sp)
/* 06050 808DC8C0 0C00CFC8 */  jal     Rand_CenteredFloat

/* 06054 808DC8C4 4600A306 */  mov.s   $f12, $f20
/* 06058 808DC8C8 E7A00054 */  swc1    $f0, 0x0054($sp)
/* 0605C 808DC8CC 0C00CFC8 */  jal     Rand_CenteredFloat

/* 06060 808DC8D0 4600A306 */  mov.s   $f12, $f20
/* 06064 808DC8D4 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 06068 808DC8D8 44816000 */  mtc1    $at, $f12                  ## $f12 = 200.00
/* 0606C 808DC8DC 0C00CFBE */  jal     Rand_ZeroFloat

/* 06070 808DC8E0 E7A00058 */  swc1    $f0, 0x0058($sp)
/* 06074 808DC8E4 46160480 */  add.s   $f18, $f0, $f22
/* 06078 808DC8E8 3C07808E */  lui     $a3, %hi(D_808E4C6C)       ## $a3 = 808E0000
/* 0607C 808DC8EC 24090014 */  addiu   $t1, $zero, 0x0014         ## $t1 = 00000014
/* 06080 808DC8F0 AFA90014 */  sw      $t1, 0x0014($sp)
/* 06084 808DC8F4 24E74C6C */  addiu   $a3, $a3, %lo(D_808E4C6C)  ## $a3 = 808E4C6C
/* 06088 808DC8F8 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 0608C 808DC8FC 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 06090 808DC900 02202825 */  or      $a1, $s1, $zero            ## $a1 = 000001FC
/* 06094 808DC904 0C235A6C */  jal     func_808D69B0
/* 06098 808DC908 27A60050 */  addiu   $a2, $sp, 0x0050           ## $a2 = FFFFFFF0
/* 0609C 808DC90C 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 060A0 808DC910 00108400 */  sll     $s0, $s0, 16
/* 060A4 808DC914 00108403 */  sra     $s0, $s0, 16
/* 060A8 808DC918 2A010064 */  slti    $at, $s0, 0x0064
/* 060AC 808DC91C 1420FFE5 */  bne     $at, $zero, .L808DC8B4
/* 060B0 808DC920 00000000 */  nop
/* 060B4 808DC924 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 060B8 808DC928 0C00BE0A */  jal     Audio_PlayActorSound2

/* 060BC 808DC92C 24050806 */  addiu   $a1, $zero, 0x0806         ## $a1 = 00000806
.L808DC930:
/* 060C0 808DC930 8FA40048 */  lw      $a0, 0x0048($sp)
/* 060C4 808DC934 0C0295B2 */  jal     func_800A56C8
/* 060C8 808DC938 8E6501CC */  lw      $a1, 0x01CC($s3)           ## 000001CC
/* 060CC 808DC93C 10400003 */  beq     $v0, $zero, .L808DC94C
/* 060D0 808DC940 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 060D4 808DC944 0C236EBC */  jal     func_808DBAF0
/* 060D8 808DC948 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
.L808DC94C:
/* 060DC 808DC94C 866401A2 */  lh      $a0, 0x01A2($s3)           ## 000001A2
.L808DC950:
/* 060E0 808DC950 00800821 */  addu    $at, $a0, $zero
/* 060E4 808DC954 00042080 */  sll     $a0, $a0,  2
/* 060E8 808DC958 00812023 */  subu    $a0, $a0, $at
/* 060EC 808DC95C 00042100 */  sll     $a0, $a0,  4
/* 060F0 808DC960 00812023 */  subu    $a0, $a0, $at
/* 060F4 808DC964 000420C0 */  sll     $a0, $a0,  3
/* 060F8 808DC968 00812023 */  subu    $a0, $a0, $at
/* 060FC 808DC96C 00042080 */  sll     $a0, $a0,  2
/* 06100 808DC970 00042400 */  sll     $a0, $a0, 16
/* 06104 808DC974 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 06108 808DC978 00042403 */  sra     $a0, $a0, 16
/* 0610C 808DC97C 46000080 */  add.s   $f2, $f0, $f0
/* 06110 808DC980 C6640028 */  lwc1    $f4, 0x0028($s3)           ## 00000028
/* 06114 808DC984 46022180 */  add.s   $f6, $f4, $f2
/* 06118 808DC988 E6620060 */  swc1    $f2, 0x0060($s3)           ## 00000060
/* 0611C 808DC98C E6660028 */  swc1    $f6, 0x0028($s3)           ## 00000028
/* 06120 808DC990 8FBF003C */  lw      $ra, 0x003C($sp)
/* 06124 808DC994 8FB30038 */  lw      $s3, 0x0038($sp)
/* 06128 808DC998 8FB20034 */  lw      $s2, 0x0034($sp)
/* 0612C 808DC99C 8FB10030 */  lw      $s1, 0x0030($sp)
/* 06130 808DC9A0 8FB0002C */  lw      $s0, 0x002C($sp)
/* 06134 808DC9A4 D7B60020 */  ldc1    $f22, 0x0020($sp)
/* 06138 808DC9A8 D7B40018 */  ldc1    $f20, 0x0018($sp)
/* 0613C 808DC9AC 03E00008 */  jr      $ra
/* 06140 808DC9B0 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
