.rdata
glabel D_8015435C
    .asciz "\x1b[32m"
    .balign 4

glabel D_80154364
    .asciz "ocarina_check_bit[%d]=%x\n"
    .balign 4

glabel D_80154380
    .asciz "ocarina_bit = %x\n"
    .balign 4

glabel D_80154394
    .asciz "\x1b[m"
    .balign 4

glabel D_80154398
    # [31m☆☆☆☆☆ Ocarina Number＝%d(%d) ☆☆☆☆☆
    .asciz "\x1b[31m☆☆☆☆☆ オカリナ番号＝%d(%d) ☆☆☆☆☆\n\x1b[m"
    .balign 4

glabel D_801543CC
    .asciz "ocarina_set 000000000000000000  = %d\n"
    .balign 4

glabel D_801543F4
    .asciz "222222222\n"
    .balign 4

glabel D_80154400
    .asciz "333333333\n"
    .balign 4

glabel D_8015440C
    # Ocarina Mode = %d (%x)
    .asciz "オカリナモード = %d  (%x)\n"
    .balign 4

glabel D_80154428
    # Music Performance Start
    .asciz "演奏開始\n"
    .balign 4

glabel D_80154434
    # ?????Recording Playback / Recording Playback / Recording Playback / Recording Playback ->
    .asciz "?????録音再生 録音再生 録音再生 録音再生  -> "
    .balign 4

.text
glabel func_8010B820
/* B829C0 8010B820 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B829C4 8010B824 AFA40058 */  sw    $a0, 0x58($sp)
/* B829C8 8010B828 AFBF002C */  sw    $ra, 0x2c($sp)
/* B829CC 8010B82C 3C048015 */  lui   $a0, %hi(D_8015435C) # $a0, 0x8015
/* B829D0 8010B830 AFB20028 */  sw    $s2, 0x28($sp)
/* B829D4 8010B834 AFB10024 */  sw    $s1, 0x24($sp)
/* B829D8 8010B838 AFB00020 */  sw    $s0, 0x20($sp)
/* B829DC 8010B83C AFA5005C */  sw    $a1, 0x5c($sp)
/* B829E0 8010B840 0C00084C */  jal   osSyncPrintf
/* B829E4 8010B844 2484435C */   addiu $a0, %lo(D_8015435C) # addiu $a0, $a0, 0x435c
/* B829E8 8010B848 3005FFFF */  andi  $a1, $zero, 0xffff
/* B829EC 8010B84C 00058400 */  sll   $s0, $a1, 0x10
/* B829F0 8010B850 3C028015 */  lui   $v0, %hi(D_8014B31C) # $v0, 0x8015
/* B829F4 8010B854 00108403 */  sra   $s0, $s0, 0x10
/* B829F8 8010B858 2442B31C */  addiu $v0, %lo(D_8014B31C) # addiu $v0, $v0, -0x4ce4
/* B829FC 8010B85C 2A01000C */  slti  $at, $s0, 0xc
/* B82A00 8010B860 1020001F */  beqz  $at, .L8010B8E0
/* B82A04 8010B864 A4400000 */   sh    $zero, ($v0)
/* B82A08 8010B868 00107080 */  sll   $t6, $s0, 2
.L8010B86C:
/* B82A0C 8010B86C 3C0F8012 */  lui   $t7, %hi(gBitFlags+0x18)
/* B82A10 8010B870 01EE7821 */  addu  $t7, $t7, $t6
/* B82A14 8010B874 3C188016 */  lui   $t8, %hi(gSaveContext+0xa4) # $t8, 0x8016
/* B82A18 8010B878 8F18E704 */  lw    $t8, %lo(gSaveContext+0xa4)($t8)
/* B82A1C 8010B87C 8DEF7138 */  lw    $t7, %lo(gBitFlags+0x18)($t7)
/* B82A20 8010B880 3C048015 */  lui   $a0, %hi(D_80154364) # $a0, 0x8015
/* B82A24 8010B884 24844364 */  addiu $a0, %lo(D_80154364) # addiu $a0, $a0, 0x4364
/* B82A28 8010B888 01F8C824 */  and   $t9, $t7, $t8
/* B82A2C 8010B88C 1320000D */  beqz  $t9, .L8010B8C4
/* B82A30 8010B890 02002825 */   move  $a1, $s0
/* B82A34 8010B894 3C098015 */  lui   $t1, %hi(D_80153C58) # $t1, 0x8015
/* B82A38 8010B898 25293C58 */  addiu $t1, %lo(D_80153C58) # addiu $t1, $t1, 0x3c58
/* B82A3C 8010B89C 00104040 */  sll   $t0, $s0, 1
/* B82A40 8010B8A0 01098821 */  addu  $s1, $t0, $t1
/* B82A44 8010B8A4 0C00084C */  jal   osSyncPrintf
/* B82A48 8010B8A8 96260000 */   lhu   $a2, ($s1)
/* B82A4C 8010B8AC 3C028015 */  lui   $v0, %hi(D_8014B31C) # $v0, 0x8015
/* B82A50 8010B8B0 2442B31C */  addiu $v0, %lo(D_8014B31C) # addiu $v0, $v0, -0x4ce4
/* B82A54 8010B8B4 944A0000 */  lhu   $t2, ($v0)
/* B82A58 8010B8B8 962B0000 */  lhu   $t3, ($s1)
/* B82A5C 8010B8BC 014B6025 */  or    $t4, $t2, $t3
/* B82A60 8010B8C0 A44C0000 */  sh    $t4, ($v0)
.L8010B8C4:
/* B82A64 8010B8C4 26100001 */  addiu $s0, $s0, 1
/* B82A68 8010B8C8 00108400 */  sll   $s0, $s0, 0x10
/* B82A6C 8010B8CC 00108403 */  sra   $s0, $s0, 0x10
/* B82A70 8010B8D0 2A01000C */  slti  $at, $s0, 0xc
/* B82A74 8010B8D4 5420FFE5 */  bnezl $at, .L8010B86C
/* B82A78 8010B8D8 00107080 */   sll   $t6, $s0, 2
/* B82A7C 8010B8DC 94450000 */  lhu   $a1, ($v0)
.L8010B8E0:
/* B82A80 8010B8E0 3C0D8016 */  lui   $t5, %hi(gSaveContext+0x12c5) # $t5, 0x8016
/* B82A84 8010B8E4 91ADF925 */  lbu   $t5, %lo(gSaveContext+0x12c5)($t5)
/* B82A88 8010B8E8 3C048015 */  lui   $a0, %hi(D_80154380) # $a0, 0x8015
/* B82A8C 8010B8EC 11A00003 */  beqz  $t5, .L8010B8FC
/* B82A90 8010B8F0 34AE1000 */   ori   $t6, $a1, 0x1000
/* B82A94 8010B8F4 A44E0000 */  sh    $t6, ($v0)
/* B82A98 8010B8F8 31C5FFFF */  andi  $a1, $t6, 0xffff
.L8010B8FC:
/* B82A9C 8010B8FC 0C00084C */  jal   osSyncPrintf
/* B82AA0 8010B900 24844380 */   addiu $a0, %lo(D_80154380) # addiu $a0, $a0, 0x4380
/* B82AA4 8010B904 3C048015 */  lui   $a0, %hi(D_80154394) # $a0, 0x8015
/* B82AA8 8010B908 0C00084C */  jal   osSyncPrintf
/* B82AAC 8010B90C 24844394 */   addiu $a0, %lo(D_80154394) # addiu $a0, $a0, 0x4394
/* B82AB0 8010B910 3C0F8012 */  lui   $t7, %hi(gBitFlags+0x3c) # $t7, 0x8012
/* B82AB4 8010B914 3C188016 */  lui   $t8, %hi(gSaveContext+0xa4) # $t8, 0x8016
/* B82AB8 8010B918 8F18E704 */  lw    $t8, %lo(gSaveContext+0xa4)($t8)
/* B82ABC 8010B91C 8DEF715C */  lw    $t7, %lo(gBitFlags+0x3c)($t7)
/* B82AC0 8010B920 3C018015 */  lui   $at, %hi(D_8014B314) # $at, 0x8015
/* B82AC4 8010B924 01F8C824 */  and   $t9, $t7, $t8
/* B82AC8 8010B928 0C03B8F2 */  jal   func_800EE3C8
/* B82ACC 8010B92C A439B314 */   sh    $t9, %lo(D_8014B314)($at)
/* B82AD0 8010B930 8FB20058 */  lw    $s2, 0x58($sp)
/* B82AD4 8010B934 3C048015 */  lui   $a0, %hi(D_8014B2F8) # $a0, 0x8015
/* B82AD8 8010B938 2484B2F8 */  addiu $a0, %lo(D_8014B2F8) # addiu $a0, $a0, -0x4d08
/* B82ADC 8010B93C 265220D8 */  addiu $s2, $s2, 0x20d8
/* B82AE0 8010B940 26417FFF */  addiu $at, $s2, 0x7fff
/* B82AE4 8010B944 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B82AE8 8010B948 A4800000 */  sh    $zero, ($a0)
/* B82AEC 8010B94C 34018000 */  li    $at, 32768
/* B82AF0 8010B950 02411821 */  addu  $v1, $s2, $at
/* B82AF4 8010B954 8C6962B8 */  lw    $t1, 0x62b8($v1)
/* B82AF8 8010B958 84880000 */  lh    $t0, ($a0)
/* B82AFC 8010B95C 3C018015 */  lui   $at, %hi(D_8014B2FC) # $at, 0x8015
/* B82B00 8010B960 A1280002 */  sb    $t0, 2($t1)
/* B82B04 8010B964 A420B2FC */  sh    $zero, %lo(D_8014B2FC)($at)
/* B82B08 8010B968 0C041A6C */  jal   func_801069B0
/* B82B0C 8010B96C AFA30030 */   sw    $v1, 0x30($sp)
/* B82B10 8010B970 240A00FF */  li    $t2, 255
/* B82B14 8010B974 26417FFF */  addiu $at, $s2, 0x7fff
/* B82B18 8010B978 A02A6411 */  sb    $t2, 0x6411($at)
/* B82B1C 8010B97C 8FAB0030 */  lw    $t3, 0x30($sp)
/* B82B20 8010B980 3C048015 */  lui   $a0, %hi(D_80154398) # $a0, 0x8015
/* B82B24 8010B984 24844398 */  addiu $a0, %lo(D_80154398) # addiu $a0, $a0, 0x4398
/* B82B28 8010B988 91626410 */  lbu   $v0, 0x6410($t3)
/* B82B2C 8010B98C 24060002 */  li    $a2, 2
/* B82B30 8010B990 A42263F3 */  sh    $v0, 0x63f3($at)
/* B82B34 8010B994 97B1005E */  lhu   $s1, 0x5e($sp)
/* B82B38 8010B998 3C018015 */  lui   $at, %hi(D_8014B310) # $at, 0x8015
/* B82B3C 8010B99C A422B310 */  sh    $v0, %lo(D_8014B310)($at)
/* B82B40 8010B9A0 0C00084C */  jal   osSyncPrintf
/* B82B44 8010B9A4 02202825 */   move  $a1, $s1
/* B82B48 8010B9A8 2A210893 */  slti  $at, $s1, 0x893
/* B82B4C 8010B9AC 14200006 */  bnez  $at, .L8010B9C8
/* B82B50 8010B9B0 A7A0004A */   sh    $zero, 0x4a($sp)
/* B82B54 8010B9B4 8FA40058 */  lw    $a0, 0x58($sp)
/* B82B58 8010B9B8 0C042C30 */  jal   func_8010B0C0
/* B82B5C 8010B9BC 97A5005E */   lhu   $a1, 0x5e($sp)
/* B82B60 8010B9C0 10000047 */  b     .L8010BAE0
/* B82B64 8010B9C4 2630086E */   addiu $s0, $s1, 0x86e
.L8010B9C8:
/* B82B68 8010B9C8 2401002E */  li    $at, 46
/* B82B6C 8010B9CC 16210008 */  bne   $s1, $at, .L8010B9F0
/* B82B70 8010B9D0 97AC005E */   lhu   $t4, 0x5e($sp)
/* B82B74 8010B9D4 26417FFF */  addiu $at, $s2, 0x7fff
/* B82B78 8010B9D8 A42C63F1 */  sh    $t4, 0x63f1($at)
/* B82B7C 8010B9DC 8FA40058 */  lw    $a0, 0x58($sp)
/* B82B80 8010B9E0 0C042C30 */  jal   func_8010B0C0
/* B82B84 8010B9E4 2405086D */   li    $a1, 2157
/* B82B88 8010B9E8 1000003D */  b     .L8010BAE0
/* B82B8C 8010B9EC 2630086E */   addiu $s0, $s1, 0x86e
.L8010B9F0:
/* B82B90 8010B9F0 24010001 */  li    $at, 1
/* B82B94 8010B9F4 12210004 */  beq   $s1, $at, .L8010BA08
/* B82B98 8010B9F8 3C048015 */   lui   $a0, %hi(D_801543CC) # $a0, 0x8015
/* B82B9C 8010B9FC 2A210022 */  slti  $at, $s1, 0x22
/* B82BA0 8010BA00 14200022 */  bnez  $at, .L8010BA8C
/* B82BA4 8010BA04 97AF005E */   lhu   $t7, 0x5e($sp)
.L8010BA08:
/* B82BA8 8010BA08 248443CC */  addiu $a0, %lo(D_801543CC) # addiu $a0, $a0, 0x43cc
/* B82BAC 8010BA0C 0C00084C */  jal   osSyncPrintf
/* B82BB0 8010BA10 02202825 */   move  $a1, $s1
/* B82BB4 8010BA14 97AD005E */  lhu   $t5, 0x5e($sp)
/* B82BB8 8010BA18 26417FFF */  addiu $at, $s2, 0x7fff
/* B82BBC 8010BA1C A42D63F1 */  sh    $t5, 0x63f1($at)
/* B82BC0 8010BA20 2A210022 */  slti  $at, $s1, 0x22
/* B82BC4 8010BA24 1420000D */  bnez  $at, .L8010BA5C
/* B82BC8 8010BA28 2A210028 */   slti  $at, $s1, 0x28
/* B82BCC 8010BA2C 1020000B */  beqz  $at, .L8010BA5C
/* B82BD0 8010BA30 3C078013 */   lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B82BD4 8010BA34 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B82BD8 8010BA38 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B82BDC 8010BA3C 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B82BE0 8010BA40 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B82BE4 8010BA44 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B82BE8 8010BA48 AFAE0014 */  sw    $t6, 0x14($sp)
/* B82BEC 8010BA4C AFA70010 */  sw    $a3, 0x10($sp)
/* B82BF0 8010BA50 24044807 */  li    $a0, 18439
/* B82BF4 8010BA54 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B82BF8 8010BA58 24060004 */   li    $a2, 4
.L8010BA5C:
/* B82BFC 8010BA5C 2401002D */  li    $at, 45
/* B82C00 8010BA60 16210006 */  bne   $s1, $at, .L8010BA7C
/* B82C04 8010BA64 8FA40058 */   lw    $a0, 0x58($sp)
/* B82C08 8010BA68 8FA40058 */  lw    $a0, 0x58($sp)
/* B82C0C 8010BA6C 0C042C30 */  jal   func_8010B0C0
/* B82C10 8010BA70 2405086F */   li    $a1, 2159
/* B82C14 8010BA74 1000001A */  b     .L8010BAE0
/* B82C18 8010BA78 2630086E */   addiu $s0, $s1, 0x86e
.L8010BA7C:
/* B82C1C 8010BA7C 0C042C30 */  jal   func_8010B0C0
/* B82C20 8010BA80 2405086E */   li    $a1, 2158
/* B82C24 8010BA84 10000016 */  b     .L8010BAE0
/* B82C28 8010BA88 2630086E */   addiu $s0, $s1, 0x86e
.L8010BA8C:
/* B82C2C 8010BA8C 26417FFF */  addiu $at, $s2, 0x7fff
/* B82C30 8010BA90 A42F63F1 */  sh    $t7, 0x63f1($at)
/* B82C34 8010BA94 24180001 */  li    $t8, 1
/* B82C38 8010BA98 2A21000F */  slti  $at, $s1, 0xf
/* B82C3C 8010BA9C 14200009 */  bnez  $at, .L8010BAC4
/* B82C40 8010BAA0 A7B8004A */   sh    $t8, 0x4a($sp)
/* B82C44 8010BAA4 3C048015 */  lui   $a0, %hi(D_801543F4) # $a0, 0x8015
/* B82C48 8010BAA8 0C00084C */  jal   osSyncPrintf
/* B82C4C 8010BAAC 248443F4 */   addiu $a0, %lo(D_801543F4) # addiu $a0, $a0, 0x43f4
/* B82C50 8010BAB0 8FA40058 */  lw    $a0, 0x58($sp)
/* B82C54 8010BAB4 0C042C30 */  jal   func_8010B0C0
/* B82C58 8010BAB8 2405086D */   li    $a1, 2157
/* B82C5C 8010BABC 10000008 */  b     .L8010BAE0
/* B82C60 8010BAC0 2630086E */   addiu $s0, $s1, 0x86e
.L8010BAC4:
/* B82C64 8010BAC4 3C048015 */  lui   $a0, %hi(D_80154400) # $a0, 0x8015
/* B82C68 8010BAC8 0C00084C */  jal   osSyncPrintf
/* B82C6C 8010BACC 24844400 */   addiu $a0, %lo(D_80154400) # addiu $a0, $a0, 0x4400
/* B82C70 8010BAD0 2630086E */  addiu $s0, $s1, 0x86e
/* B82C74 8010BAD4 3205FFFF */  andi  $a1, $s0, 0xffff
/* B82C78 8010BAD8 0C042C30 */  jal   func_8010B0C0
/* B82C7C 8010BADC 8FA40058 */   lw    $a0, 0x58($sp)
.L8010BAE0:
/* B82C80 8010BAE0 26417FFF */  addiu $at, $s2, 0x7fff
/* B82C84 8010BAE4 AC206409 */  sw    $zero, 0x6409($at)
/* B82C88 8010BAE8 8FB90030 */  lw    $t9, 0x30($sp)
/* B82C8C 8010BAEC 3C048015 */  lui   $a0, %hi(D_8015440C) # $a0, 0x8015
/* B82C90 8010BAF0 2484440C */  addiu $a0, %lo(D_8015440C) # addiu $a0, $a0, 0x440c
/* B82C94 8010BAF4 02003025 */  move  $a2, $s0
/* B82C98 8010BAF8 0C00084C */  jal   osSyncPrintf
/* B82C9C 8010BAFC 972563F0 */   lhu   $a1, 0x63f0($t9)
/* B82CA0 8010BB00 26417FFF */  addiu $at, $s2, 0x7fff
/* B82CA4 8010BB04 A42063E9 */  sh    $zero, 0x63e9($at)
/* B82CA8 8010BB08 8FA80058 */  lw    $t0, 0x58($sp)
/* B82CAC 8010BB0C 3C010001 */  lui   $at, 1
/* B82CB0 8010BB10 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B82CB4 8010BB14 00280821 */  addu  $at, $at, $t0
/* B82CB8 8010BB18 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B82CBC 8010BB1C A42004C6 */  sh    $zero, 0x4c6($at)
/* B82CC0 8010BB20 8C4A0000 */  lw    $t2, ($v0)
/* B82CC4 8010BB24 24090022 */  li    $t1, 34
/* B82CC8 8010BB28 240B008E */  li    $t3, 142
/* B82CCC 8010BB2C A5490F14 */  sh    $t1, 0xf14($t2)
/* B82CD0 8010BB30 8C4C0000 */  lw    $t4, ($v0)
/* B82CD4 8010BB34 24030200 */  li    $v1, 512
/* B82CD8 8010BB38 240F0100 */  li    $t7, 256
/* B82CDC 8010BB3C A58B0F16 */  sh    $t3, 0xf16($t4)
/* B82CE0 8010BB40 8C4D0000 */  lw    $t5, ($v0)
/* B82CE4 8010BB44 24190040 */  li    $t9, 64
/* B82CE8 8010BB48 26417FFF */  addiu $at, $s2, 0x7fff
/* B82CEC 8010BB4C A5A304B4 */  sh    $v1, 0x4b4($t5)
/* B82CF0 8010BB50 8C4E0000 */  lw    $t6, ($v0)
/* B82CF4 8010BB54 240B0004 */  li    $t3, 4
/* B82CF8 8010BB58 240C0002 */  li    $t4, 2
/* B82CFC 8010BB5C A5C304B6 */  sh    $v1, 0x4b6($t6)
/* B82D00 8010BB60 8C580000 */  lw    $t8, ($v0)
/* B82D04 8010BB64 240D0005 */  li    $t5, 5
/* B82D08 8010BB68 24050012 */  li    $a1, 18
/* B82D0C 8010BB6C A70F04C0 */  sh    $t7, 0x4c0($t8)
/* B82D10 8010BB70 8C480000 */  lw    $t0, ($v0)
/* B82D14 8010BB74 A51904C2 */  sh    $t9, 0x4c2($t0)
/* B82D18 8010BB78 A02063E8 */  sb    $zero, 0x63e8($at)
/* B82D1C 8010BB7C 8C490000 */  lw    $t1, ($v0)
/* B82D20 8010BB80 26417FFF */  addiu $at, $s2, 0x7fff
/* B82D24 8010BB84 852A04AC */  lh    $t2, 0x4ac($t1)
/* B82D28 8010BB88 51400005 */  beql  $t2, $zero, .L8010BBA0
/* B82D2C 8010BB8C A02C63E8 */   sb    $t4, 0x63e8($at)
/* B82D30 8010BB90 26417FFF */  addiu $at, $s2, 0x7fff
/* B82D34 8010BB94 10000003 */  b     .L8010BBA4
/* B82D38 8010BB98 A02B6305 */   sb    $t3, 0x6305($at)
/* B82D3C 8010BB9C A02C63E8 */  sb    $t4, 0x63e8($at)
.L8010BBA0:
/* B82D40 8010BBA0 A02D6305 */  sb    $t5, 0x6305($at)
.L8010BBA4:
/* B82D44 8010BBA4 8FAE0030 */  lw    $t6, 0x30($sp)
/* B82D48 8010BBA8 26417FFF */  addiu $at, $s2, 0x7fff
/* B82D4C 8010BBAC 85CF6404 */  lh    $t7, 0x6404($t6)
/* B82D50 8010BBB0 A42F6407 */  sh    $t7, 0x6407($at)
/* B82D54 8010BBB4 87B8004A */  lh    $t8, 0x4a($sp)
/* B82D58 8010BBB8 1700000B */  bnez  $t8, .L8010BBE8
/* B82D5C 8010BBBC 00000000 */   nop   
/* B82D60 8010BBC0 0C021C23 */  jal   Interface_LoadActionLabelB
/* B82D64 8010BBC4 8FA40058 */   lw    $a0, 0x58($sp)
/* B82D68 8010BBC8 3C198016 */  lui   $t9, %hi(gSaveContext+0x13ea) # $t9, 0x8016
/* B82D6C 8010BBCC 9739FA4A */  lhu   $t9, %lo(gSaveContext+0x13ea)($t9)
/* B82D70 8010BBD0 2404000A */  li    $a0, 10
/* B82D74 8010BBD4 0C020978 */  jal   Interface_ChangeAlpha
/* B82D78 8010BBD8 A7B9004A */   sh    $t9, 0x4a($sp)
/* B82D7C 8010BBDC 87A8004A */  lh    $t0, 0x4a($sp)
/* B82D80 8010BBE0 3C018016 */  lui   $at, %hi(gSaveContext+0x13ea) # $at, 0x8016
/* B82D84 8010BBE4 A428FA4A */  sh    $t0, %lo(gSaveContext+0x13ea)($at)
.L8010BBE8:
/* B82D88 8010BBE8 3C048015 */  lui   $a0, %hi(D_80154428) # $a0, 0x8015
/* B82D8C 8010BBEC 0C00084C */  jal   osSyncPrintf
/* B82D90 8010BBF0 24844428 */   addiu $a0, %lo(D_80154428) # addiu $a0, $a0, 0x4428
/* B82D94 8010BBF4 24010001 */  li    $at, 1
/* B82D98 8010BBF8 12210003 */  beq   $s1, $at, .L8010BC08
/* B82D9C 8010BBFC 24090009 */   li    $t1, 9
/* B82DA0 8010BC00 24010030 */  li    $at, 48
/* B82DA4 8010BC04 16210005 */  bne   $s1, $at, .L8010BC1C
.L8010BC08:
/* B82DA8 8010BC08 26417FFF */   addiu $at, $s2, 0x7fff
/* B82DAC 8010BC0C 240A0063 */  li    $t2, 99
/* B82DB0 8010BC10 A0296305 */  sb    $t1, 0x6305($at)
/* B82DB4 8010BC14 10000039 */  b     .L8010BCFC
/* B82DB8 8010BC18 A02A62FE */   sb    $t2, 0x62fe($at)
.L8010BC1C:
/* B82DBC 8010BC1C 2401002F */  li    $at, 47
/* B82DC0 8010BC20 16210006 */  bne   $s1, $at, .L8010BC3C
/* B82DC4 8010BC24 240B0031 */   li    $t3, 49
/* B82DC8 8010BC28 26417FFF */  addiu $at, $s2, 0x7fff
/* B82DCC 8010BC2C 240C0002 */  li    $t4, 2
/* B82DD0 8010BC30 A02B6305 */  sb    $t3, 0x6305($at)
/* B82DD4 8010BC34 10000031 */  b     .L8010BCFC
/* B82DD8 8010BC38 A02C62FE */   sb    $t4, 0x62fe($at)
.L8010BC3C:
/* B82DDC 8010BC3C 2401002E */  li    $at, 46
/* B82DE0 8010BC40 5621000A */  bnel  $s1, $at, .L8010BC6C
/* B82DE4 8010BC44 2401002B */   li    $at, 43
/* B82DE8 8010BC48 0C020978 */  jal   Interface_ChangeAlpha
/* B82DEC 8010BC4C 24040001 */   li    $a0, 1
/* B82DF0 8010BC50 0C0426CF */  jal   func_80109B3C
/* B82DF4 8010BC54 8FA40058 */   lw    $a0, 0x58($sp)
/* B82DF8 8010BC58 240D0029 */  li    $t5, 41
/* B82DFC 8010BC5C 26417FFF */  addiu $at, $s2, 0x7fff
/* B82E00 8010BC60 10000026 */  b     .L8010BCFC
/* B82E04 8010BC64 A02D6305 */   sb    $t5, 0x6305($at)
/* B82E08 8010BC68 2401002B */  li    $at, 43
.L8010BC6C:
/* B82E0C 8010BC6C 16210023 */  bne   $s1, $at, .L8010BCFC
/* B82E10 8010BC70 3C048015 */   lui   $a0, %hi(D_80154434) # $a0, 0x8015
/* B82E14 8010BC74 0C00084C */  jal   osSyncPrintf
/* B82E18 8010BC78 24844434 */   addiu $a0, %lo(D_80154434) # addiu $a0, $a0, 0x4434
/* B82E1C 8010BC7C 0C03B616 */  jal   func_800ED858
/* B82E20 8010BC80 24040001 */   li    $a0, 1
/* B82E24 8010BC84 0C03B616 */  jal   func_800ED858
/* B82E28 8010BC88 24040001 */   li    $a0, 1
/* B82E2C 8010BC8C 0C03B8FE */  jal   func_800EE3F8
/* B82E30 8010BC90 00000000 */   nop   
/* B82E34 8010BC94 3C048015 */  lui   $a0, %hi(D_8014B2FC) # $a0, 0x8015
/* B82E38 8010BC98 26417FFF */  addiu $at, $s2, 0x7fff
/* B82E3C 8010BC9C AC2262B9 */  sw    $v0, 0x62b9($at)
/* B82E40 8010BCA0 2484B2FC */  addiu $a0, %lo(D_8014B2FC) # addiu $a0, $a0, -0x4d04
/* B82E44 8010BCA4 A4800000 */  sh    $zero, ($a0)
/* B82E48 8010BCA8 848E0000 */  lh    $t6, ($a0)
/* B82E4C 8010BCAC 3C038015 */  lui   $v1, %hi(D_8014B2F8) # $v1, 0x8015
/* B82E50 8010BCB0 8FB80030 */  lw    $t8, 0x30($sp)
/* B82E54 8010BCB4 2463B2F8 */  addiu $v1, %lo(D_8014B2F8) # addiu $v1, $v1, -0x4d08
/* B82E58 8010BCB8 A46E0000 */  sh    $t6, ($v1)
/* B82E5C 8010BCBC 846F0000 */  lh    $t7, ($v1)
/* B82E60 8010BCC0 8F1962B8 */  lw    $t9, 0x62b8($t8)
/* B82E64 8010BCC4 0C041A6C */  jal   func_801069B0
/* B82E68 8010BCC8 A32F0002 */   sb    $t7, 2($t9)
/* B82E6C 8010BCCC 24080003 */  li    $t0, 3
/* B82E70 8010BCD0 26417FFF */  addiu $at, $s2, 0x7fff
/* B82E74 8010BCD4 24090023 */  li    $t1, 35
/* B82E78 8010BCD8 A02863E8 */  sb    $t0, 0x63e8($at)
/* B82E7C 8010BCDC A0296305 */  sb    $t1, 0x6305($at)
/* B82E80 8010BCE0 2404000F */  li    $a0, 15
/* B82E84 8010BCE4 0C03B64F */  jal   func_800ED93C
/* B82E88 8010BCE8 24050001 */   li    $a1, 1
/* B82E8C 8010BCEC 3C018016 */  lui   $at, %hi(gSaveContext+0x13ea) # $at, 0x8016
/* B82E90 8010BCF0 A420FA4A */  sh    $zero, %lo(gSaveContext+0x13ea)($at)
/* B82E94 8010BCF4 0C020978 */  jal   Interface_ChangeAlpha
/* B82E98 8010BCF8 24040001 */   li    $a0, 1
.L8010BCFC:
/* B82E9C 8010BCFC 8FB10058 */  lw    $s1, 0x58($sp)
/* B82EA0 8010BD00 00008025 */  move  $s0, $zero
/* B82EA4 8010BD04 00001025 */  move  $v0, $zero
/* B82EA8 8010BD08 26312200 */  addiu $s1, $s1, 0x2200
/* B82EAC 8010BD0C 02202025 */  move  $a0, $s1
.L8010BD10:
/* B82EB0 8010BD10 34058140 */  li    $a1, 33088
/* B82EB4 8010BD14 3206FFFF */  andi  $a2, $s0, 0xffff
/* B82EB8 8010BD18 0C01BB94 */  jal   func_8006EE50
/* B82EBC 8010BD1C A7A2004E */   sh    $v0, 0x4e($sp)
/* B82EC0 8010BD20 87A2004E */  lh    $v0, 0x4e($sp)
/* B82EC4 8010BD24 26100080 */  addiu $s0, $s0, 0x80
/* B82EC8 8010BD28 24420001 */  addiu $v0, $v0, 1
/* B82ECC 8010BD2C 00021400 */  sll   $v0, $v0, 0x10
/* B82ED0 8010BD30 00021403 */  sra   $v0, $v0, 0x10
/* B82ED4 8010BD34 28410030 */  slti  $at, $v0, 0x30
/* B82ED8 8010BD38 5420FFF5 */  bnezl $at, .L8010BD10
/* B82EDC 8010BD3C 02202025 */   move  $a0, $s1
/* B82EE0 8010BD40 8FBF002C */  lw    $ra, 0x2c($sp)
/* B82EE4 8010BD44 8FB00020 */  lw    $s0, 0x20($sp)
/* B82EE8 8010BD48 8FB10024 */  lw    $s1, 0x24($sp)
/* B82EEC 8010BD4C 8FB20028 */  lw    $s2, 0x28($sp)
/* B82EF0 8010BD50 03E00008 */  jr    $ra
/* B82EF4 8010BD54 27BD0058 */   addiu $sp, $sp, 0x58

