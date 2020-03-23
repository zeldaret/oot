.rdata
glabel D_80140350
    .asciz "\x1b[31m"
    .balign 4

glabel D_80140358
    .asciz "Si2_draw2_SV():skelがNULLです。NULLを返します。\n"
    # EUC-JP: がNULLです。| Is null. Returns null.
    .balign 4

glabel D_8014038C
    .asciz "\x1b[m"
    .balign 4

glabel D_80140390
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801403A4
    .asciz "../z_skelanime.c"
    .balign 4

.text
glabel func_800A273C
/* B198DC 800A273C 27BDFF98 */  addiu $sp, $sp, -0x68
/* B198E0 800A2740 AFBF002C */  sw    $ra, 0x2c($sp)
/* B198E4 800A2744 AFA40068 */  sw    $a0, 0x68($sp)
/* B198E8 800A2748 AFA5006C */  sw    $a1, 0x6c($sp)
/* B198EC 800A274C AFA60070 */  sw    $a2, 0x70($sp)
/* B198F0 800A2750 8C840000 */  lw    $a0, ($a0)
/* B198F4 800A2754 0C031A73 */  jal   Graph_Alloc
/* B198F8 800A2758 00072980 */   sll   $a1, $a3, 6
/* B198FC 800A275C 8FAF006C */  lw    $t7, 0x6c($sp)
/* B19900 800A2760 8FB80084 */  lw    $t8, 0x84($sp)
/* B19904 800A2764 AFA20040 */  sw    $v0, 0x40($sp)
/* B19908 800A2768 15E0000C */  bnez  $t7, .L800A279C
/* B1990C 800A276C 27190008 */   addiu $t9, $t8, 8
/* B19910 800A2770 3C048014 */  lui   $a0, %hi(D_80140350) # $a0, 0x8014
/* B19914 800A2774 0C00084C */  jal   osSyncPrintf
/* B19918 800A2778 24840350 */   addiu $a0, %lo(D_80140350) # addiu $a0, $a0, 0x350
/* B1991C 800A277C 3C048014 */  lui   $a0, %hi(D_80140358) # $a0, 0x8014
/* B19920 800A2780 0C00084C */  jal   osSyncPrintf
/* B19924 800A2784 24840358 */   addiu $a0, %lo(D_80140358) # addiu $a0, $a0, 0x358
/* B19928 800A2788 3C048014 */  lui   $a0, %hi(D_8014038C) # $a0, 0x8014
/* B1992C 800A278C 0C00084C */  jal   osSyncPrintf
/* B19930 800A2790 2484038C */   addiu $a0, %lo(D_8014038C) # addiu $a0, $a0, 0x38c
/* B19934 800A2794 10000085 */  b     .L800A29AC
/* B19938 800A2798 00001025 */   move  $v0, $zero
.L800A279C:
/* B1993C 800A279C 3C08DB06 */  lui   $t0, (0xDB060034 >> 16) # lui $t0, 0xdb06
/* B19940 800A27A0 35080034 */  ori   $t0, (0xDB060034 & 0xFFFF) # ori $t0, $t0, 0x34
/* B19944 800A27A4 AFB90084 */  sw    $t9, 0x84($sp)
/* B19948 800A27A8 AF080000 */  sw    $t0, ($t8)
/* B1994C 800A27AC 8FA90040 */  lw    $t1, 0x40($sp)
/* B19950 800A27B0 0C034213 */  jal   Matrix_Push
/* B19954 800A27B4 AF090004 */   sw    $t1, 4($t8)
/* B19958 800A27B8 8FAA006C */  lw    $t2, 0x6c($sp)
/* B1995C 800A27BC 3C0F8016 */  lui   $t7, %hi(gSegments)
/* B19960 800A27C0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19964 800A27C4 8D420000 */  lw    $v0, ($t2)
/* B19968 800A27C8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1996C 800A27CC 8FA30070 */  lw    $v1, 0x70($sp)
/* B19970 800A27D0 00026100 */  sll   $t4, $v0, 4
/* B19974 800A27D4 000C6F02 */  srl   $t5, $t4, 0x1c
/* B19978 800A27D8 000D7080 */  sll   $t6, $t5, 2
/* B1997C 800A27DC 01EE7821 */  addu  $t7, $t7, $t6
/* B19980 800A27E0 8DEF6FA8 */  lw    $t7, %lo(gSegments)($t7)
/* B19984 800A27E4 00415824 */  and   $t3, $v0, $at
/* B19988 800A27E8 3C018000 */  lui   $at, 0x8000
/* B1998C 800A27EC 016FC021 */  addu  $t8, $t3, $t7
/* B19990 800A27F0 0301C821 */  addu  $t9, $t8, $at
/* B19994 800A27F4 AFB90064 */  sw    $t9, 0x64($sp)
/* B19998 800A27F8 84680000 */  lh    $t0, ($v1)
/* B1999C 800A27FC 27AC0044 */  addiu $t4, $sp, 0x44
/* B199A0 800A2800 27B90044 */  addiu $t9, $sp, 0x44
/* B199A4 800A2804 44882000 */  mtc1  $t0, $f4
/* B199A8 800A2808 24050001 */  li    $a1, 1
/* B199AC 800A280C 27A6005C */  addiu $a2, $sp, 0x5c
/* B199B0 800A2810 468021A0 */  cvt.s.w $f6, $f4
/* B199B4 800A2814 27A7004C */  addiu $a3, $sp, 0x4c
/* B199B8 800A2818 E7A6004C */  swc1  $f6, 0x4c($sp)
/* B199BC 800A281C 84690002 */  lh    $t1, 2($v1)
/* B199C0 800A2820 44894000 */  mtc1  $t1, $f8
/* B199C4 800A2824 27A90084 */  addiu $t1, $sp, 0x84
/* B199C8 800A2828 468042A0 */  cvt.s.w $f10, $f8
/* B199CC 800A282C E7AA0050 */  swc1  $f10, 0x50($sp)
/* B199D0 800A2830 846A0004 */  lh    $t2, 4($v1)
/* B199D4 800A2834 448A8000 */  mtc1  $t2, $f16
/* B199D8 800A2838 00000000 */  nop
/* B199DC 800A283C 468084A0 */  cvt.s.w $f18, $f16
/* B199E0 800A2840 E7B20054 */  swc1  $f18, 0x54($sp)
/* B199E4 800A2844 886E0006 */  lwl   $t6, 6($v1)
/* B199E8 800A2848 986E0009 */  lwr   $t6, 9($v1)
/* B199EC 800A284C AD8E0000 */  sw    $t6, ($t4)
/* B199F0 800A2850 946E000A */  lhu   $t6, 0xa($v1)
/* B199F4 800A2854 A58E0004 */  sh    $t6, 4($t4)
/* B199F8 800A2858 8FAB0064 */  lw    $t3, 0x64($sp)
/* B199FC 800A285C 8FB80078 */  lw    $t8, 0x78($sp)
/* B19A00 800A2860 8FA40068 */  lw    $a0, 0x68($sp)
/* B19A04 800A2864 8D6F0008 */  lw    $t7, 8($t3)
/* B19A08 800A2868 AFAF0058 */  sw    $t7, 0x58($sp)
/* B19A0C 800A286C 13000007 */  beqz  $t8, .L800A288C
/* B19A10 800A2870 AFAF005C */   sw    $t7, 0x5c($sp)
/* B19A14 800A2874 8FA80080 */  lw    $t0, 0x80($sp)
/* B19A18 800A2878 AFB90010 */  sw    $t9, 0x10($sp)
/* B19A1C 800A287C AFA90018 */  sw    $t1, 0x18($sp)
/* B19A20 800A2880 0300F809 */  jalr  $t8
/* B19A24 800A2884 AFA80014 */  sw    $t0, 0x14($sp)
/* B19A28 800A2888 14400027 */  bnez  $v0, .L800A2928
.L800A288C:
/* B19A2C 800A288C 27A4004C */   addiu $a0, $sp, 0x4c
/* B19A30 800A2890 0C0344D0 */  jal   Matrix_TranslateThenRotateZYX
/* B19A34 800A2894 27A50044 */   addiu $a1, $sp, 0x44
/* B19A38 800A2898 8FAA005C */  lw    $t2, 0x5c($sp)
/* B19A3C 800A289C 8FA40040 */  lw    $a0, 0x40($sp)
/* B19A40 800A28A0 3C058014 */  lui   $a1, %hi(D_80140390) # $a1, 0x8014
/* B19A44 800A28A4 11400017 */  beqz  $t2, .L800A2904
/* B19A48 800A28A8 8FAC0058 */   lw    $t4, 0x58($sp)
/* B19A4C 800A28AC 24A50390 */  addiu $a1, %lo(D_80140390) # addiu $a1, $a1, 0x390
/* B19A50 800A28B0 0C034695 */  jal   Matrix_ToMtx
/* B19A54 800A28B4 240606AE */   li    $a2, 1710
/* B19A58 800A28B8 8FAC0084 */  lw    $t4, 0x84($sp)
/* B19A5C 800A28BC 3C0EDA38 */  lui   $t6, (0xDA380003 >> 16) # lui $t6, 0xda38
/* B19A60 800A28C0 35CE0003 */  ori   $t6, (0xDA380003 & 0xFFFF) # ori $t6, $t6, 3
/* B19A64 800A28C4 258D0008 */  addiu $t5, $t4, 8
/* B19A68 800A28C8 AFAD0084 */  sw    $t5, 0x84($sp)
/* B19A6C 800A28CC AD8E0000 */  sw    $t6, ($t4)
/* B19A70 800A28D0 8FAB0040 */  lw    $t3, 0x40($sp)
/* B19A74 800A28D4 3C08DE00 */  lui   $t0, 0xde00
/* B19A78 800A28D8 AD8B0004 */  sw    $t3, 4($t4)
/* B19A7C 800A28DC 8FAF0084 */  lw    $t7, 0x84($sp)
/* B19A80 800A28E0 25F90008 */  addiu $t9, $t7, 8
/* B19A84 800A28E4 AFB90084 */  sw    $t9, 0x84($sp)
/* B19A88 800A28E8 ADE80000 */  sw    $t0, ($t7)
/* B19A8C 800A28EC 8FA9005C */  lw    $t1, 0x5c($sp)
/* B19A90 800A28F0 ADE90004 */  sw    $t1, 4($t7)
/* B19A94 800A28F4 8FB80040 */  lw    $t8, 0x40($sp)
/* B19A98 800A28F8 270A0040 */  addiu $t2, $t8, 0x40
/* B19A9C 800A28FC 1000000A */  b     .L800A2928
/* B19AA0 800A2900 AFAA0040 */   sw    $t2, 0x40($sp)
.L800A2904:
/* B19AA4 800A2904 11800008 */  beqz  $t4, .L800A2928
/* B19AA8 800A2908 8FA40040 */   lw    $a0, 0x40($sp)
/* B19AAC 800A290C 3C058014 */  lui   $a1, %hi(D_801403A4) # $a1, 0x8014
/* B19AB0 800A2910 24A503A4 */  addiu $a1, %lo(D_801403A4) # addiu $a1, $a1, 0x3a4
/* B19AB4 800A2914 0C034695 */  jal   Matrix_ToMtx
/* B19AB8 800A2918 240606B5 */   li    $a2, 1717
/* B19ABC 800A291C 8FAD0040 */  lw    $t5, 0x40($sp)
/* B19AC0 800A2920 25AE0040 */  addiu $t6, $t5, 0x40
/* B19AC4 800A2924 AFAE0040 */  sw    $t6, 0x40($sp)
.L800A2928:
/* B19AC8 800A2928 8FA2007C */  lw    $v0, 0x7c($sp)
/* B19ACC 800A292C 8FA40068 */  lw    $a0, 0x68($sp)
/* B19AD0 800A2930 24050001 */  li    $a1, 1
/* B19AD4 800A2934 10400008 */  beqz  $v0, .L800A2958
/* B19AD8 800A2938 27A60058 */   addiu $a2, $sp, 0x58
/* B19ADC 800A293C 8FAB0080 */  lw    $t3, 0x80($sp)
/* B19AE0 800A2940 27AF0084 */  addiu $t7, $sp, 0x84
/* B19AE4 800A2944 AFAF0014 */  sw    $t7, 0x14($sp)
/* B19AE8 800A2948 27A70044 */  addiu $a3, $sp, 0x44
/* B19AEC 800A294C 0040F809 */  jalr  $v0
/* B19AF0 800A2950 AFAB0010 */  sw    $t3, 0x10($sp)
/* B19AF4 800A2954 8FA2007C */  lw    $v0, 0x7c($sp)
.L800A2958:
/* B19AF8 800A2958 8FB90064 */  lw    $t9, 0x64($sp)
/* B19AFC 800A295C 240100FF */  li    $at, 255
/* B19B00 800A2960 8FA40068 */  lw    $a0, 0x68($sp)
/* B19B04 800A2964 93250006 */  lbu   $a1, 6($t9)
/* B19B08 800A2968 8FA6006C */  lw    $a2, 0x6c($sp)
/* B19B0C 800A296C 8FA70070 */  lw    $a3, 0x70($sp)
/* B19B10 800A2970 10A1000B */  beq   $a1, $at, .L800A29A0
/* B19B14 800A2974 8FA80078 */   lw    $t0, 0x78($sp)
/* B19B18 800A2978 8FA90080 */  lw    $t1, 0x80($sp)
/* B19B1C 800A297C 8FAA0084 */  lw    $t2, 0x84($sp)
/* B19B20 800A2980 27B80040 */  addiu $t8, $sp, 0x40
/* B19B24 800A2984 AFB8001C */  sw    $t8, 0x1c($sp)
/* B19B28 800A2988 AFA80010 */  sw    $t0, 0x10($sp)
/* B19B2C 800A298C AFA20014 */  sw    $v0, 0x14($sp)
/* B19B30 800A2990 AFA90018 */  sw    $t1, 0x18($sp)
/* B19B34 800A2994 0C028928 */  jal   func_800A24A0
/* B19B38 800A2998 AFAA0020 */   sw    $t2, 0x20($sp)
/* B19B3C 800A299C AFA20084 */  sw    $v0, 0x84($sp)
.L800A29A0:
/* B19B40 800A29A0 0C034221 */  jal   Matrix_Pull
/* B19B44 800A29A4 00000000 */   nop
/* B19B48 800A29A8 8FA20084 */  lw    $v0, 0x84($sp)
.L800A29AC:
/* B19B4C 800A29AC 8FBF002C */  lw    $ra, 0x2c($sp)
/* B19B50 800A29B0 27BD0068 */  addiu $sp, $sp, 0x68
/* B19B54 800A29B4 03E00008 */  jr    $ra
/* B19B58 800A29B8 00000000 */   nop

