.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80104810
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
/* B7B9F0 80104850 3C1E8017 */  lui   $fp, %hi(_osCont_numControllers) # $fp, 0x8017
/* B7B9F4 80104854 3C138017 */  lui   $s3, %hi(pifMempakBuf) # $s3, 0x8017
/* B7B9F8 80104858 26735960 */  addiu $s3, %lo(pifMempakBuf) # addiu $s3, $s3, 0x5960
/* B7B9FC 8010485C 27DE5811 */  addiu $fp, %lo(_osCont_numControllers) # addiu $fp, $fp, 0x5811
/* B7BA00 80104860 00008025 */  move  $s0, $zero
/* B7BA04 80104864 27B70054 */  addiu $s7, $sp, 0x54
/* B7BA08 80104868 27B60067 */  addiu $s6, $sp, 0x67
/* B7BA0C 8010486C 27B40068 */  addiu $s4, $sp, 0x68
.L80104870:
/* B7BA10 80104870 0C041267 */  jal   func_8010499C
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
/* B7BA58 801048B8 0C041294 */  jal   func_80104A50
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

glabel func_8010499C
/* B7BB3C 8010499C 27BDFFF0 */  addiu $sp, $sp, -0x10
/* B7BB40 801049A0 3C058017 */  lui   $a1, %hi(pifMempakBuf)
/* B7BB44 801049A4 3C018017 */  lui   $at, %hi(_osCont_lastPollType) # $at, 0x8017
/* B7BB48 801049A8 24A25960 */  addiu $v0, $a1, %lo(pifMempakBuf)
/* B7BB4C 801049AC AFA40010 */  sw    $a0, 0x10($sp)
/* B7BB50 801049B0 A0245810 */  sb    $a0, %lo(_osCont_lastPollType)($at)
/* B7BB54 801049B4 240F0001 */  li    $t7, 1
/* B7BB58 801049B8 AC4F003C */  sw    $t7, 0x3c($v0)
/* B7BB5C 801049BC 3C068017 */  lui   $a2, %hi(_osCont_numControllers) # $a2, 0x8017
/* B7BB60 801049C0 24C65811 */  addiu $a2, %lo(_osCont_numControllers) # addiu $a2, $a2, 0x5811
/* B7BB64 801049C4 90CD0000 */  lbu   $t5, ($a2)
/* B7BB68 801049C8 241800FF */  li    $t8, 255
/* B7BB6C 801049CC 24190001 */  li    $t9, 1
/* B7BB70 801049D0 24080003 */  li    $t0, 3
/* B7BB74 801049D4 240900FF */  li    $t1, 255
/* B7BB78 801049D8 240A00FF */  li    $t2, 255
/* B7BB7C 801049DC 240B00FF */  li    $t3, 255
/* B7BB80 801049E0 240C00FF */  li    $t4, 255
/* B7BB84 801049E4 A3B80004 */  sb    $t8, 4($sp)
/* B7BB88 801049E8 A3B90005 */  sb    $t9, 5($sp)
/* B7BB8C 801049EC A3A80006 */  sb    $t0, 6($sp)
/* B7BB90 801049F0 A3A40007 */  sb    $a0, 7($sp)
/* B7BB94 801049F4 A3A90008 */  sb    $t1, 8($sp)
/* B7BB98 801049F8 A3AA0009 */  sb    $t2, 9($sp)
/* B7BB9C 801049FC A3AB000A */  sb    $t3, 0xa($sp)
/* B7BBA0 80104A00 A3AC000B */  sb    $t4, 0xb($sp)
/* B7BBA4 80104A04 19A0000E */  blez  $t5, .L80104A40
/* B7BBA8 80104A08 00001825 */   move  $v1, $zero
/* B7BBAC 80104A0C 27A40004 */  addiu $a0, $sp, 4
/* B7BBB0 80104A10 8C810000 */  lw    $at, ($a0)
.L80104A14:
/* B7BBB4 80104A14 24630001 */  addiu $v1, $v1, 1
/* B7BBB8 80104A18 24420008 */  addiu $v0, $v0, 8
/* B7BBBC 80104A1C A841FFF8 */  swl   $at, -8($v0)
/* B7BBC0 80104A20 B841FFFB */  swr   $at, -5($v0)
/* B7BBC4 80104A24 8C8F0004 */  lw    $t7, 4($a0)
/* B7BBC8 80104A28 A84FFFFC */  swl   $t7, -4($v0)
/* B7BBCC 80104A2C B84FFFFF */  swr   $t7, -1($v0)
/* B7BBD0 80104A30 90D80000 */  lbu   $t8, ($a2)
/* B7BBD4 80104A34 0078082A */  slt   $at, $v1, $t8
/* B7BBD8 80104A38 5420FFF6 */  bnezl $at, .L80104A14
/* B7BBDC 80104A3C 8C810000 */   lw    $at, ($a0)
.L80104A40:
/* B7BBE0 80104A40 241900FE */  li    $t9, 254
/* B7BBE4 80104A44 A0590000 */  sb    $t9, ($v0)
/* B7BBE8 80104A48 03E00008 */  jr    $ra
/* B7BBEC 80104A4C 27BD0010 */   addiu $sp, $sp, 0x10

glabel func_80104A50
/* B7BBF0 80104A50 3C078017 */  lui   $a3, %hi(_osCont_numControllers) # $a3, 0x8017
/* B7BBF4 80104A54 24E75811 */  addiu $a3, %lo(_osCont_numControllers) # addiu $a3, $a3, 0x5811
/* B7BBF8 80104A58 90EE0000 */  lbu   $t6, ($a3)
/* B7BBFC 80104A5C 3C038017 */  lui   $v1, %hi(pifMempakBuf) # $v1, 0x8017
/* B7BC00 80104A60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B7BC04 80104A64 00001025 */  move  $v0, $zero
/* B7BC08 80104A68 24635960 */  addiu $v1, %lo(pifMempakBuf) # addiu $v1, $v1, 0x5960
/* B7BC0C 80104A6C 19C00020 */  blez  $t6, .L80104AF0
/* B7BC10 80104A70 00003025 */   move  $a2, $zero
/* B7BC14 80104A74 27A8000C */  addiu $t0, $sp, 0xc
.L80104A78:
/* B7BC18 80104A78 88610000 */  lwl   $at, ($v1)
/* B7BC1C 80104A7C 98610003 */  lwr   $at, 3($v1)
/* B7BC20 80104A80 AD010000 */  sw    $at, ($t0)
/* B7BC24 80104A84 88780004 */  lwl   $t8, 4($v1)
/* B7BC28 80104A88 98780007 */  lwr   $t8, 7($v1)
/* B7BC2C 80104A8C AD180004 */  sw    $t8, 4($t0)
/* B7BC30 80104A90 93B9000E */  lbu   $t9, 0xe($sp)
/* B7BC34 80104A94 332900C0 */  andi  $t1, $t9, 0xc0
/* B7BC38 80104A98 00095103 */  sra   $t2, $t1, 4
/* B7BC3C 80104A9C 314B00FF */  andi  $t3, $t2, 0xff
/* B7BC40 80104AA0 1560000D */  bnez  $t3, .L80104AD8
/* B7BC44 80104AA4 A0AA0003 */   sb    $t2, 3($a1)
/* B7BC48 80104AA8 93AC0011 */  lbu   $t4, 0x11($sp)
/* B7BC4C 80104AAC 93AE0010 */  lbu   $t6, 0x10($sp)
/* B7BC50 80104AB0 24190001 */  li    $t9, 1
/* B7BC54 80104AB4 000C6A00 */  sll   $t5, $t4, 8
/* B7BC58 80104AB8 01AE7825 */  or    $t7, $t5, $t6
/* B7BC5C 80104ABC A4AF0000 */  sh    $t7, ($a1)
/* B7BC60 80104AC0 93B80012 */  lbu   $t8, 0x12($sp)
/* B7BC64 80104AC4 00D94804 */  sllv  $t1, $t9, $a2
/* B7BC68 80104AC8 00491025 */  or    $v0, $v0, $t1
/* B7BC6C 80104ACC 304A00FF */  andi  $t2, $v0, 0xff
/* B7BC70 80104AD0 01401025 */  move  $v0, $t2
/* B7BC74 80104AD4 A0B80002 */  sb    $t8, 2($a1)
.L80104AD8:
/* B7BC78 80104AD8 90EB0000 */  lbu   $t3, ($a3)
/* B7BC7C 80104ADC 24C60001 */  addiu $a2, $a2, 1
/* B7BC80 80104AE0 24630008 */  addiu $v1, $v1, 8
/* B7BC84 80104AE4 00CB082A */  slt   $at, $a2, $t3
/* B7BC88 80104AE8 1420FFE3 */  bnez  $at, .L80104A78
/* B7BC8C 80104AEC 24A50004 */   addiu $a1, $a1, 4
.L80104AF0:
/* B7BC90 80104AF0 A0820000 */  sb    $v0, ($a0)
/* B7BC94 80104AF4 03E00008 */  jr    $ra
/* B7BC98 80104AF8 27BD0018 */   addiu $sp, $sp, 0x18
