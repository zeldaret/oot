glabel osPfsIsPlug
/* B7B9B0 80104810 27BDFF90 */  addiu $sp, $sp, -0x70
/* B7B9B4 80104814 AFBF003C */  sw    $ra, 0x3c($sp)
/* B7B9B8 80104818 AFB5002C */  sw    $s5, 0x2c($sp)
/* B7B9BC 8010481C AFB20020 */  sw    $s2, 0x20($sp)
/* B7B9C0 80104820 AFB1001C */  sw    $s1, 0x1c($sp)
/* B7B9C4 80104824 00809025 */  move  $s2, $a0
/* B7B9C8 80104828 AFBE0038 */  sw    $fp, 0x38($sp)
/* B7B9CC 8010482C AFB70034 */  sw    $s7, 0x34($sp)
/* B7B9D0 80104830 AFB60030 */  sw    $s6, 0x30($sp)
/* B7B9D4 80104834 AFB40028 */  sw    $s4, 0x28($sp)
/* B7B9D8 80104838 AFB30024 */  sw    $s3, 0x24($sp)
/* B7B9DC 8010483C AFB00018 */  sw    $s0, 0x18($sp)
/* B7B9E0 80104840 AFA50074 */  sw    $a1, 0x74($sp)
/* B7B9E4 80104844 0000A825 */  move  $s5, $zero
/* B7B9E8 80104848 0C0402E8 */  jal   __osSiGetAccess
/* B7B9EC 8010484C 24110003 */   li    $s1, 3
/* B7B9F0 80104850 3C1E8017 */  lui   $fp, %hi(__osMaxControllers) # $fp, 0x8017
/* B7B9F4 80104854 3C138017 */  lui   $s3, %hi(pifMempakBuf) # $s3, 0x8017
/* B7B9F8 80104858 26735960 */  addiu $s3, %lo(pifMempakBuf) # addiu $s3, $s3, 0x5960
/* B7B9FC 8010485C 27DE5811 */  addiu $fp, %lo(__osMaxControllers) # addiu $fp, $fp, 0x5811
/* B7BA00 80104860 00008025 */  move  $s0, $zero
/* B7BA04 80104864 27B70054 */  addiu $s7, $sp, 0x54
/* B7BA08 80104868 27B60067 */  addiu $s6, $sp, 0x67
/* B7BA0C 8010486C 27B40068 */  addiu $s4, $sp, 0x68
.L80104870:
/* B7BA10 80104870 0C041267 */  jal   __osPfsRequestData
/* B7BA14 80104874 00002025 */   move  $a0, $zero
/* B7BA18 80104878 24040001 */  li    $a0, 1
/* B7BA1C 8010487C 0C0404FC */  jal   __osSiRawStartDma /*(s32 dir, void *addr)*/
/* B7BA20 80104880 02602825 */   move  $a1, $s3
/* B7BA24 80104884 02402025 */  move  $a0, $s2
/* B7BA28 80104888 02802825 */  move  $a1, $s4
/* B7BA2C 8010488C 0C000CA0 */  jal   osRecvMesg
/* B7BA30 80104890 24060001 */   li    $a2, 1
/* B7BA34 80104894 00002025 */  move  $a0, $zero
/* B7BA38 80104898 0C0404FC */  jal   __osSiRawStartDma /*(s32 dir, void *addr)*/
/* B7BA3C 8010489C 02602825 */   move  $a1, $s3
/* B7BA40 801048A0 AFA2006C */  sw    $v0, 0x6c($sp)
/* B7BA44 801048A4 02402025 */  move  $a0, $s2
/* B7BA48 801048A8 02802825 */  move  $a1, $s4
/* B7BA4C 801048AC 0C000CA0 */  jal   osRecvMesg
/* B7BA50 801048B0 24060001 */   li    $a2, 1
/* B7BA54 801048B4 02C02025 */  move  $a0, $s6
/* B7BA58 801048B8 0C041294 */  jal   __osPfsGetInitData
/* B7BA5C 801048BC 02E02825 */   move  $a1, $s7
/* B7BA60 801048C0 93C30000 */  lbu   $v1, ($fp)
/* B7BA64 801048C4 27A20054 */  addiu $v0, $sp, 0x54
/* B7BA68 801048C8 5860000C */  blezl $v1, .L801048FC
/* B7BA6C 801048CC 02031026 */   xor   $v0, $s0, $v1
.L801048D0:
/* B7BA70 801048D0 904E0002 */  lbu   $t6, 2($v0)
/* B7BA74 801048D4 31CF0004 */  andi  $t7, $t6, 4
/* B7BA78 801048D8 55E00004 */  bnezl $t7, .L801048EC
/* B7BA7C 801048DC 26100001 */   addiu $s0, $s0, 1
/* B7BA80 801048E0 10000005 */  b     .L801048F8
/* B7BA84 801048E4 2631FFFF */   addiu $s1, $s1, -1
/* B7BA88 801048E8 26100001 */  addiu $s0, $s0, 1
.L801048EC:
/* B7BA8C 801048EC 0203082A */  slt   $at, $s0, $v1
/* B7BA90 801048F0 1420FFF7 */  bnez  $at, .L801048D0
/* B7BA94 801048F4 24420004 */   addiu $v0, $v0, 4
.L801048F8:
/* B7BA98 801048F8 02031026 */  xor   $v0, $s0, $v1
.L801048FC:
/* B7BA9C 801048FC 14400002 */  bnez  $v0, .L80104908
/* B7BAA0 80104900 00008025 */   move  $s0, $zero
/* B7BAA4 80104904 00008825 */  move  $s1, $zero
.L80104908:
/* B7BAA8 80104908 1E20FFD9 */  bgtz  $s1, .L80104870
/* B7BAAC 8010490C 00000000 */   nop   
/* B7BAB0 80104910 18600011 */  blez  $v1, .L80104958
/* B7BAB4 80104914 27A20054 */   addiu $v0, $sp, 0x54
.L80104918:
/* B7BAB8 80104918 90580003 */  lbu   $t8, 3($v0)
/* B7BABC 8010491C 5700000B */  bnezl $t8, .L8010494C
/* B7BAC0 80104920 26100001 */   addiu $s0, $s0, 1
/* B7BAC4 80104924 90590002 */  lbu   $t9, 2($v0)
/* B7BAC8 80104928 24090001 */  li    $t1, 1
/* B7BACC 8010492C 02095004 */  sllv  $t2, $t1, $s0
/* B7BAD0 80104930 33280001 */  andi  $t0, $t9, 1
/* B7BAD4 80104934 51000005 */  beql  $t0, $zero, .L8010494C
/* B7BAD8 80104938 26100001 */   addiu $s0, $s0, 1
/* B7BADC 8010493C 02AAA825 */  or    $s5, $s5, $t2
/* B7BAE0 80104940 32AB00FF */  andi  $t3, $s5, 0xff
/* B7BAE4 80104944 0160A825 */  move  $s5, $t3
/* B7BAE8 80104948 26100001 */  addiu $s0, $s0, 1
.L8010494C:
/* B7BAEC 8010494C 0203082A */  slt   $at, $s0, $v1
/* B7BAF0 80104950 1420FFF1 */  bnez  $at, .L80104918
/* B7BAF4 80104954 24420004 */   addiu $v0, $v0, 4
.L80104958:
/* B7BAF8 80104958 0C0402F9 */  jal   __osSiRelAccess
/* B7BAFC 8010495C 00000000 */   nop   
/* B7BB00 80104960 8FAC0074 */  lw    $t4, 0x74($sp)
/* B7BB04 80104964 A1950000 */  sb    $s5, ($t4)
/* B7BB08 80104968 8FBF003C */  lw    $ra, 0x3c($sp)
/* B7BB0C 8010496C 8FBE0038 */  lw    $fp, 0x38($sp)
/* B7BB10 80104970 8FB70034 */  lw    $s7, 0x34($sp)
/* B7BB14 80104974 8FB60030 */  lw    $s6, 0x30($sp)
/* B7BB18 80104978 8FB5002C */  lw    $s5, 0x2c($sp)
/* B7BB1C 8010497C 8FB40028 */  lw    $s4, 0x28($sp)
/* B7BB20 80104980 8FB30024 */  lw    $s3, 0x24($sp)
/* B7BB24 80104984 8FB20020 */  lw    $s2, 0x20($sp)
/* B7BB28 80104988 8FB1001C */  lw    $s1, 0x1c($sp)
/* B7BB2C 8010498C 8FB00018 */  lw    $s0, 0x18($sp)
/* B7BB30 80104990 8FA2006C */  lw    $v0, 0x6c($sp)
/* B7BB34 80104994 03E00008 */  jr    $ra
/* B7BB38 80104998 27BD0070 */   addiu $sp, $sp, 0x70

