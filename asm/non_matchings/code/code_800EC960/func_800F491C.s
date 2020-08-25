glabel func_800F491C
/* B6BABC 800F491C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B6BAC0 800F4920 3C0E8017 */  lui   $t6, %hi(D_8016B8B4) # $t6, 0x8017
/* B6BAC4 800F4924 91CEB8B4 */  lbu   $t6, %lo(D_8016B8B4)($t6)
/* B6BAC8 800F4928 AFB50028 */  sw    $s5, 0x28($sp)
/* B6BACC 800F492C 308600FF */  andi  $a2, $a0, 0xff
/* B6BAD0 800F4930 AFBF002C */  sw    $ra, 0x2c($sp)
/* B6BAD4 800F4934 AFB40024 */  sw    $s4, 0x24($sp)
/* B6BAD8 800F4938 AFB30020 */  sw    $s3, 0x20($sp)
/* B6BADC 800F493C AFB2001C */  sw    $s2, 0x1c($sp)
/* B6BAE0 800F4940 AFB10018 */  sw    $s1, 0x18($sp)
/* B6BAE4 800F4944 AFB00014 */  sw    $s0, 0x14($sp)
/* B6BAE8 800F4948 AFA40030 */  sw    $a0, 0x30($sp)
/* B6BAEC 800F494C 10CE0037 */  beq   $a2, $t6, .L800F4A2C
/* B6BAF0 800F4950 00C0A825 */   move  $s5, $a2
/* B6BAF4 800F4954 00002025 */  move  $a0, $zero
/* B6BAF8 800F4958 00002825 */  move  $a1, $zero
/* B6BAFC 800F495C 24070002 */  li    $a3, 2
/* B6BB00 800F4960 0C03E890 */  jal   func_800FA240
/* B6BB04 800F4964 A3A60033 */   sb    $a2, 0x33($sp)
/* B6BB08 800F4968 2AA10040 */  slti  $at, $s5, 0x40
/* B6BB0C 800F496C 10200003 */  beqz  $at, .L800F497C
/* B6BB10 800F4970 26A2FFC0 */   addiu $v0, $s5, -0x40
/* B6BB14 800F4974 10000005 */  b     .L800F498C
/* B6BB18 800F4978 24020010 */   li    $v0, 16
.L800F497C:
/* B6BB1C 800F497C 00021083 */  sra   $v0, $v0, 2
/* B6BB20 800F4980 24420001 */  addiu $v0, $v0, 1
/* B6BB24 800F4984 00021100 */  sll   $v0, $v0, 4
/* B6BB28 800F4988 304200FF */  andi  $v0, $v0, 0xff
.L800F498C:
/* B6BB2C 800F498C 3C018004 */  lui   $at, (0x80040F00 >> 16) # lui $at, 0x8004
/* B6BB30 800F4990 34210F00 */  ori   $at, (0x80040F00 & 0xFFFF) # ori $at, $at, 0xf00
/* B6BB34 800F4994 0C03E803 */  jal   Audio_SetBGM
/* B6BB38 800F4998 00412025 */   or    $a0, $v0, $at
/* B6BB3C 800F499C 3C128017 */  lui   $s2, %hi(gAudioContext) # $s2, 0x8017
/* B6BB40 800F49A0 3C118017 */  lui   $s1, %hi(gAudioContext+0x5AB0) # $s1, 0x8017
/* B6BB44 800F49A4 26314C30 */  addiu $s1, %lo(gAudioContext+0x5AB0) # addiu $s1, $s1, 0x4c30
/* B6BB48 800F49A8 2652F180 */  addiu $s2, %lo(gAudioContext) # addiu $s2, $s2, -0xe80
/* B6BB4C 800F49AC 00008025 */  move  $s0, $zero
/* B6BB50 800F49B0 3C140500 */  lui   $s4, 0x500
/* B6BB54 800F49B4 241300FF */  li    $s3, 255
/* B6BB58 800F49B8 00107880 */  sll   $t7, $s0, 2
.L800F49BC:
/* B6BB5C 800F49BC 024FC021 */  addu  $t8, $s2, $t7
/* B6BB60 800F49C0 8F023568 */  lw    $v0, 0x3568($t8)
/* B6BB64 800F49C4 52220012 */  beql  $s1, $v0, .L800F4A10
/* B6BB68 800F49C8 26100001 */   addiu $s0, $s0, 1
/* B6BB6C 800F49CC 804300C9 */  lb    $v1, 0xc9($v0)
/* B6BB70 800F49D0 320900FF */  andi  $t1, $s0, 0xff
/* B6BB74 800F49D4 00095200 */  sll   $t2, $t1, 8
/* B6BB78 800F49D8 307900FF */  andi  $t9, $v1, 0xff
/* B6BB7C 800F49DC 1279000B */  beq   $s3, $t9, .L800F4A0C
/* B6BB80 800F49E0 00751023 */   subu  $v0, $v1, $s5
/* B6BB84 800F49E4 2442007F */  addiu $v0, $v0, 0x7f
/* B6BB88 800F49E8 3042FFFF */  andi  $v0, $v0, 0xffff
/* B6BB8C 800F49EC 28410080 */  slti  $at, $v0, 0x80
/* B6BB90 800F49F0 14200002 */  bnez  $at, .L800F49FC
/* B6BB94 800F49F4 01542025 */   or    $a0, $t2, $s4
/* B6BB98 800F49F8 2402007F */  li    $v0, 127
.L800F49FC:
/* B6BB9C 800F49FC 00402825 */  move  $a1, $v0
/* B6BBA0 800F4A00 00052E00 */  sll   $a1, $a1, 0x18
/* B6BBA4 800F4A04 0C0396C8 */  jal   func_800E5B20
/* B6BBA8 800F4A08 00052E03 */   sra   $a1, $a1, 0x18
.L800F4A0C:
/* B6BBAC 800F4A0C 26100001 */  addiu $s0, $s0, 1
.L800F4A10:
/* B6BBB0 800F4A10 321000FF */  andi  $s0, $s0, 0xff
/* B6BBB4 800F4A14 2A010010 */  slti  $at, $s0, 0x10
/* B6BBB8 800F4A18 5420FFE8 */  bnezl $at, .L800F49BC
/* B6BBBC 800F4A1C 00107880 */   sll   $t7, $s0, 2
/* B6BBC0 800F4A20 93AB0033 */  lbu   $t3, 0x33($sp)
/* B6BBC4 800F4A24 3C018017 */  lui   $at, %hi(D_8016B8B4) # $at, 0x8017
/* B6BBC8 800F4A28 A02BB8B4 */  sb    $t3, %lo(D_8016B8B4)($at)
.L800F4A2C:
/* B6BBCC 800F4A2C 8FBF002C */  lw    $ra, 0x2c($sp)
/* B6BBD0 800F4A30 8FB00014 */  lw    $s0, 0x14($sp)
/* B6BBD4 800F4A34 8FB10018 */  lw    $s1, 0x18($sp)
/* B6BBD8 800F4A38 8FB2001C */  lw    $s2, 0x1c($sp)
/* B6BBDC 800F4A3C 8FB30020 */  lw    $s3, 0x20($sp)
/* B6BBE0 800F4A40 8FB40024 */  lw    $s4, 0x24($sp)
/* B6BBE4 800F4A44 8FB50028 */  lw    $s5, 0x28($sp)
/* B6BBE8 800F4A48 27BD0030 */  addiu $sp, $sp, 0x30
/* B6BBEC 800F4A4C 03E00008 */  jr    $ra
/* B6BBF0 800F4A50 2402FFFF */   li    $v0, -1

