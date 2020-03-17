.rdata
glabel D_801405A0
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801405B4
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801405C8
    .asciz "\x1b[31m"
    .balign 4

glabel D_801405D0
    .asciz "Skeleton_Info2_skin2_ct メモリアロケーションエラー\n"
    # EUC-JP: メモリアロケーションエラー | Memory allocation error
    .balign 4

glabel D_80140604
    .asciz "\x1b[m"
    .balign 4

.text
glabel func_800A487C
/* B1BA1C 800A487C 00067900 */  sll   $t7, $a2, 4
/* B1BA20 800A4880 3C088016 */  lui   $t0, %hi(gSegments) # $t0, 0x8016
/* B1BA24 800A4884 000FC702 */  srl   $t8, $t7, 0x1c
/* B1BA28 800A4888 25086FA8 */  addiu $t0, %lo(gSegments) # addiu $t0, $t0, 0x6fa8
/* B1BA2C 800A488C 0018C880 */  sll   $t9, $t8, 2
/* B1BA30 800A4890 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1BA34 800A4894 01195821 */  addu  $t3, $t0, $t9
/* B1BA38 800A4898 8D6C0000 */  lw    $t4, ($t3)
/* B1BA3C 800A489C 3C0900FF */  lui   $t1, (0x00FFFFFF >> 16) # lui $t1, 0xff
/* B1BA40 800A48A0 3529FFFF */  ori   $t1, (0x00FFFFFF & 0xFFFF) # ori $t1, $t1, 0xffff
/* B1BA44 800A48A4 00C96824 */  and   $t5, $a2, $t1
/* B1BA48 800A48A8 3C0A8000 */  lui   $t2, 0x8000
/* B1BA4C 800A48AC 018D7821 */  addu  $t7, $t4, $t5
/* B1BA50 800A48B0 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1BA54 800A48B4 AFB00018 */  sw    $s0, 0x18($sp)
/* B1BA58 800A48B8 AFA40020 */  sw    $a0, 0x20($sp)
/* B1BA5C 800A48BC AFA60028 */  sw    $a2, 0x28($sp)
/* B1BA60 800A48C0 AFA7002C */  sw    $a3, 0x2c($sp)
/* B1BA64 800A48C4 01EA1021 */  addu  $v0, $t7, $t2
/* B1BA68 800A48C8 90580004 */  lbu   $t8, 4($v0)
/* B1BA6C 800A48CC 00A08025 */  move  $s0, $a1
/* B1BA70 800A48D0 24060C30 */  li    $a2, 3120
/* B1BA74 800A48D4 27190001 */  addiu $t9, $t8, 1
/* B1BA78 800A48D8 A0B90000 */  sb    $t9, ($a1)
/* B1BA7C 800A48DC 8C430000 */  lw    $v1, ($v0)
/* B1BA80 800A48E0 90A40000 */  lbu   $a0, ($a1)
/* B1BA84 800A48E4 00035900 */  sll   $t3, $v1, 4
/* B1BA88 800A48E8 000B7702 */  srl   $t6, $t3, 0x1c
/* B1BA8C 800A48EC 000E6080 */  sll   $t4, $t6, 2
/* B1BA90 800A48F0 010C6821 */  addu  $t5, $t0, $t4
/* B1BA94 800A48F4 8DAF0000 */  lw    $t7, ($t5)
/* B1BA98 800A48F8 0069C024 */  and   $t8, $v1, $t1
/* B1BA9C 800A48FC 00800821 */  addu  $at, $a0, $zero
/* B1BAA0 800A4900 01F8C821 */  addu  $t9, $t7, $t8
/* B1BAA4 800A4904 032A5821 */  addu  $t3, $t9, $t2
/* B1BAA8 800A4908 ACAB0004 */  sw    $t3, 4($a1)
/* B1BAAC 800A490C 00042080 */  sll   $a0, $a0, 2
/* B1BAB0 800A4910 00812023 */  subu  $a0, $a0, $at
/* B1BAB4 800A4914 3C058014 */  lui   $a1, %hi(D_801405A0) # $a1, 0x8014
/* B1BAB8 800A4918 24A505A0 */  addiu $a1, %lo(D_801405A0) # addiu $a1, $a1, 0x5a0
/* B1BABC 800A491C 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* B1BAC0 800A4920 00042040 */   sll   $a0, $a0, 1
/* B1BAC4 800A4924 92040000 */  lbu   $a0, ($s0)
/* B1BAC8 800A4928 3C058014 */  lui   $a1, %hi(D_801405B4) # $a1, 0x8014
/* B1BACC 800A492C AE020020 */  sw    $v0, 0x20($s0)
/* B1BAD0 800A4930 00800821 */  addu  $at, $a0, $zero
/* B1BAD4 800A4934 00042080 */  sll   $a0, $a0, 2
/* B1BAD8 800A4938 00812023 */  subu  $a0, $a0, $at
/* B1BADC 800A493C 00042040 */  sll   $a0, $a0, 1
/* B1BAE0 800A4940 24A505B4 */  addiu $a1, %lo(D_801405B4) # addiu $a1, $a1, 0x5b4
/* B1BAE4 800A4944 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* B1BAE8 800A4948 24060C31 */   li    $a2, 3121
/* B1BAEC 800A494C 8E0E0020 */  lw    $t6, 0x20($s0)
/* B1BAF0 800A4950 AE020024 */  sw    $v0, 0x24($s0)
/* B1BAF4 800A4954 3C048014 */  lui   $a0, %hi(D_801405C8) # $a0, 0x8014
/* B1BAF8 800A4958 11C00003 */  beqz  $t6, .L800A4968
/* B1BAFC 800A495C 00000000 */   nop   
/* B1BB00 800A4960 5440000A */  bnezl $v0, .L800A498C
/* B1BB04 800A4964 8FA5002C */   lw    $a1, 0x2c($sp)
.L800A4968:
/* B1BB08 800A4968 0C00084C */  jal   osSyncPrintf
/* B1BB0C 800A496C 248405C8 */   addiu $a0, %lo(D_801405C8) # addiu $a0, $a0, 0x5c8
/* B1BB10 800A4970 3C048014 */  lui   $a0, %hi(D_801405D0) # $a0, 0x8014
/* B1BB14 800A4974 0C00084C */  jal   osSyncPrintf
/* B1BB18 800A4978 248405D0 */   addiu $a0, %lo(D_801405D0) # addiu $a0, $a0, 0x5d0
/* B1BB1C 800A497C 3C048014 */  lui   $a0, %hi(D_80140604) # $a0, 0x8014
/* B1BB20 800A4980 0C00084C */  jal   osSyncPrintf
/* B1BB24 800A4984 24840604 */   addiu $a0, %lo(D_80140604) # addiu $a0, $a0, 0x604
/* B1BB28 800A4988 8FA5002C */  lw    $a1, 0x2c($sp)
.L800A498C:
/* B1BB2C 800A498C 50A00004 */  beql  $a1, $zero, .L800A49A0
/* B1BB30 800A4990 8FBF001C */   lw    $ra, 0x1c($sp)
/* B1BB34 800A4994 0C0294BE */  jal   func_800A52F8
/* B1BB38 800A4998 02002025 */   move  $a0, $s0
/* B1BB3C 800A499C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800A49A0:
/* B1BB40 800A49A0 8FB00018 */  lw    $s0, 0x18($sp)
/* B1BB44 800A49A4 27BD0020 */  addiu $sp, $sp, 0x20
/* B1BB48 800A49A8 03E00008 */  jr    $ra
/* B1BB4C 800A49AC 00000000 */   nop   

