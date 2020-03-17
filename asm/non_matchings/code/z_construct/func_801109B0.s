.rdata
glabel D_80154D50
    .asciz "常駐ＰＡＲＡＭＥＴＥＲセグメント=%x\n"
    .balign 4

glabel D_80154D78
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154D8C
    .asciz "parameter->parameterSegment=%x\n"
    .balign 4

glabel D_80154DAC
    .asciz "parameter->parameterSegment != NULL"
    .balign 4

glabel D_80154DD0
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154DE4
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154DF8
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154E0C
    .asciz "ＤＯアクション テクスチャ初期=%x\n"
    .balign 4

glabel D_80154E30
    .asciz "parameter->do_actionSegment=%x\n"
    .balign 4

glabel D_80154E50
    .asciz "parameter->do_actionSegment != NULL"
    .balign 4

glabel D_80154E74
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154E88
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154E9C
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154EB0
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154EC4
    .asciz "アイコンアイテム テクスチャ初期=%x\n"
    .balign 4

glabel D_80154EE8
    .asciz "parameter->icon_itemSegment=%x\n"
    .balign 4

glabel D_80154F08
    .asciz "parameter->icon_itemSegment != NULL"
    .balign 4

glabel D_80154F2C
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154F40
    .asciz "Register_Item[%x, %x, %x, %x]\n"
    .balign 4

glabel D_80154F60
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154F74
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154F88
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154F9C
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154FB0
    .asciz "../z_construct.c"
    .balign 4

glabel D_80154FC4
    .asciz "ＥＶＥＮＴ＝%d\n"
    .balign 4

glabel D_80154FD4
    .asciz "restart_flag=%d\n"
    .balign 4

glabel D_80154FE8
    .asciz "タイマー停止！！！！！！！！！！！！！！！！！！！！！  = %d\n"
    .balign 4

glabel D_80155028
    .asciz "ＰＡＲＡＭＥＴＥＲ領域＝%x\n" 
    .balign 4

.text
glabel func_801109B0
/* B87B50 801109B0 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B87B54 801109B4 AFB10020 */  sw    $s1, 0x20($sp)
/* B87B58 801109B8 3C118016 */  lui   $s1, %hi(gSaveContext) # $s1, 0x8016
/* B87B5C 801109BC 2631E660 */  addiu $s1, %lo(gSaveContext) # addiu $s1, $s1, -0x19a0
/* B87B60 801109C0 AFB0001C */  sw    $s0, 0x1c($sp)
/* B87B64 801109C4 3C010001 */  li    $at, 0x00010000 # 0.000000
/* B87B68 801109C8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B87B6C 801109CC 00803025 */  move  $a2, $a0
/* B87B70 801109D0 A6201422 */  sh    $zero, 0x1422($s1)
/* B87B74 801109D4 A62013EA */  sh    $zero, 0x13ea($s1)
/* B87B78 801109D8 A62013E8 */  sh    $zero, 0x13e8($s1)
/* B87B7C 801109DC 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* B87B80 801109E0 00818021 */  addu  $s0, $a0, $at
/* B87B84 801109E4 8CC50000 */  lw    $a1, ($a2)
/* B87B88 801109E8 AFA60058 */  sw    $a2, 0x58($sp)
/* B87B8C 801109EC 0C02A89E */  jal   func_800AA278
/* B87B90 801109F0 02002025 */   move  $a0, $s0
/* B87B94 801109F4 A60001FC */  sh    $zero, 0x1fc($s0)
/* B87B98 801109F8 920201FD */  lbu   $v0, 0x1fd($s0)
/* B87B9C 801109FC 44802000 */  mtc1  $zero, $f4
/* B87BA0 80110A00 00002825 */  move  $a1, $zero
/* B87BA4 80110A04 240F0010 */  li    $t7, 16
/* B87BA8 80110A08 A60501EE */  sh    $a1, 0x1ee($s0)
/* B87BAC 80110A0C A60501EC */  sh    $a1, 0x1ec($s0)
/* B87BB0 80110A10 A60001F0 */  sh    $zero, 0x1f0($s0)
/* B87BB4 80110A14 A600022E */  sh    $zero, 0x22e($s0)
/* B87BB8 80110A18 A60F0230 */  sh    $t7, 0x230($s0)
/* B87BBC 80110A1C 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* B87BC0 80110A20 A2020261 */  sb    $v0, 0x261($s0)
/* B87BC4 80110A24 A60201FA */  sh    $v0, 0x1fa($s0)
/* B87BC8 80110A28 E60401F4 */  swc1  $f4, 0x1f4($s0)
/* B87BCC 80110A2C 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* B87BD0 80110A30 3C0601AF */  lui   $a2, %hi(_parameter_staticSegmentRomStart) # $a2, 0x1af
/* B87BD4 80110A34 3C0901AF */  lui   $t1, %hi(_parameter_staticSegmentRomEnd) # $t1, 0x1af
/* B87BD8 80110A38 87190B52 */  lh    $t9, 0xb52($t8)
/* B87BDC 80110A3C A6000252 */  sh    $zero, 0x252($s0)
/* B87BE0 80110A40 86030252 */  lh    $v1, 0x252($s0)
/* B87BE4 80110A44 2529FB00 */  addiu $t1, %lo(_parameter_staticSegmentRomEnd) # addiu $t1, $t1, -0x500
/* B87BE8 80110A48 24C6C000 */  addiu $a2, %lo(_parameter_staticSegmentRomStart) # addiu $a2, $a2, -0x4000
/* B87BEC 80110A4C A6000254 */  sh    $zero, 0x254($s0)
/* B87BF0 80110A50 A2000260 */  sb    $zero, 0x260($s0)
/* B87BF4 80110A54 01262823 */  subu  $a1, $t1, $a2
/* B87BF8 80110A58 3C048015 */  lui   $a0, %hi(D_80154D50) # $a0, 0x8015
/* B87BFC 80110A5C A6190228 */  sh    $t9, 0x228($s0)
/* B87C00 80110A60 A6030256 */  sh    $v1, 0x256($s0)
/* B87C04 80110A64 A6030250 */  sh    $v1, 0x250($s0)
/* B87C08 80110A68 A603024E */  sh    $v1, 0x24e($s0)
/* B87C0C 80110A6C A603024C */  sh    $v1, 0x24c($s0)
/* B87C10 80110A70 A603024A */  sh    $v1, 0x24a($s0)
/* B87C14 80110A74 A6030248 */  sh    $v1, 0x248($s0)
/* B87C18 80110A78 A6030246 */  sh    $v1, 0x246($s0)
/* B87C1C 80110A7C A6030244 */  sh    $v1, 0x244($s0)
/* B87C20 80110A80 AFA60030 */  sw    $a2, 0x30($sp)
/* B87C24 80110A84 AFA5002C */  sw    $a1, 0x2c($sp)
/* B87C28 80110A88 0C00084C */  jal   osSyncPrintf
/* B87C2C 80110A8C 24844D50 */   addiu $a0, %lo(D_80154D50) # addiu $a0, $a0, 0x4d50
/* B87C30 80110A90 3C068015 */  lui   $a2, %hi(D_80154D78) # $a2, 0x8015
/* B87C34 80110A94 24C64D78 */  addiu $a2, %lo(D_80154D78) # addiu $a2, $a2, 0x4d78
/* B87C38 80110A98 8FA40058 */  lw    $a0, 0x58($sp)
/* B87C3C 80110A9C 8FA5002C */  lw    $a1, 0x2c($sp)
/* B87C40 80110AA0 0C031521 */  jal   Game_Alloc
/* B87C44 80110AA4 2407009F */   li    $a3, 159
/* B87C48 80110AA8 3C048015 */  lui   $a0, %hi(D_80154D8C) # $a0, 0x8015
/* B87C4C 80110AAC AE020130 */  sw    $v0, 0x130($s0)
/* B87C50 80110AB0 24844D8C */  addiu $a0, %lo(D_80154D8C) # addiu $a0, $a0, 0x4d8c
/* B87C54 80110AB4 0C00084C */  jal   osSyncPrintf
/* B87C58 80110AB8 00402825 */   move  $a1, $v0
/* B87C5C 80110ABC 8E040130 */  lw    $a0, 0x130($s0)
/* B87C60 80110AC0 14800008 */  bnez  $a0, .L80110AE4
/* B87C64 80110AC4 00000000 */   nop   
/* B87C68 80110AC8 3C048015 */  lui   $a0, %hi(D_80154DAC) # $a0, 0x8015
/* B87C6C 80110ACC 3C058015 */  lui   $a1, %hi(D_80154DD0) # $a1, 0x8015
/* B87C70 80110AD0 24A54DD0 */  addiu $a1, %lo(D_80154DD0) # addiu $a1, $a1, 0x4dd0
/* B87C74 80110AD4 24844DAC */  addiu $a0, %lo(D_80154DAC) # addiu $a0, $a0, 0x4dac
/* B87C78 80110AD8 0C0007FC */  jal   __assert
/* B87C7C 80110ADC 240600A1 */   li    $a2, 161
/* B87C80 80110AE0 8E040130 */  lw    $a0, 0x130($s0)
.L80110AE4:
/* B87C84 80110AE4 3C078015 */  lui   $a3, %hi(D_80154DE4) # $a3, 0x8015
/* B87C88 80110AE8 240A00A2 */  li    $t2, 162
/* B87C8C 80110AEC AFAA0010 */  sw    $t2, 0x10($sp)
/* B87C90 80110AF0 24E74DE4 */  addiu $a3, %lo(D_80154DE4) # addiu $a3, $a3, 0x4de4
/* B87C94 80110AF4 8FA50030 */  lw    $a1, 0x30($sp)
/* B87C98 80110AF8 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B87C9C 80110AFC 8FA6002C */   lw    $a2, 0x2c($sp)
/* B87CA0 80110B00 3C068015 */  lui   $a2, %hi(D_80154DF8) # $a2, 0x8015
/* B87CA4 80110B04 24C64DF8 */  addiu $a2, %lo(D_80154DF8) # addiu $a2, $a2, 0x4df8
/* B87CA8 80110B08 8FA40058 */  lw    $a0, 0x58($sp)
/* B87CAC 80110B0C 24050480 */  li    $a1, 1152
/* B87CB0 80110B10 0C031521 */  jal   Game_Alloc
/* B87CB4 80110B14 240700A6 */   li    $a3, 166
/* B87CB8 80110B18 3C048015 */  lui   $a0, %hi(D_80154E0C) # $a0, 0x8015
/* B87CBC 80110B1C AE020134 */  sw    $v0, 0x134($s0)
/* B87CC0 80110B20 24844E0C */  addiu $a0, %lo(D_80154E0C) # addiu $a0, $a0, 0x4e0c
/* B87CC4 80110B24 0C00084C */  jal   osSyncPrintf
/* B87CC8 80110B28 24050480 */   li    $a1, 1152
/* B87CCC 80110B2C 3C048015 */  lui   $a0, %hi(D_80154E30) # $a0, 0x8015
/* B87CD0 80110B30 24844E30 */  addiu $a0, %lo(D_80154E30) # addiu $a0, $a0, 0x4e30
/* B87CD4 80110B34 0C00084C */  jal   osSyncPrintf
/* B87CD8 80110B38 8E050134 */   lw    $a1, 0x134($s0)
/* B87CDC 80110B3C 8E040134 */  lw    $a0, 0x134($s0)
/* B87CE0 80110B40 54800009 */  bnezl $a0, .L80110B68
/* B87CE4 80110B44 92231409 */   lbu   $v1, 0x1409($s1)
/* B87CE8 80110B48 3C048015 */  lui   $a0, %hi(D_80154E50) # $a0, 0x8015
/* B87CEC 80110B4C 3C058015 */  lui   $a1, %hi(D_80154E74) # $a1, 0x8015
/* B87CF0 80110B50 24A54E74 */  addiu $a1, %lo(D_80154E74) # addiu $a1, $a1, 0x4e74
/* B87CF4 80110B54 24844E50 */  addiu $a0, %lo(D_80154E50) # addiu $a0, $a0, 0x4e50
/* B87CF8 80110B58 0C0007FC */  jal   __assert
/* B87CFC 80110B5C 240600A9 */   li    $a2, 169
/* B87D00 80110B60 8E040134 */  lw    $a0, 0x134($s0)
/* B87D04 80110B64 92231409 */  lbu   $v1, 0x1409($s1)
.L80110B68:
/* B87D08 80110B68 3C08008B */  lui   $t0, %hi(_do_action_staticSegmentRomStart) # $t0, 0x8b
/* B87D0C 80110B6C 25081000 */  addiu $t0, %lo(_do_action_staticSegmentRomStart) # addiu $t0, $t0, 0x1000
/* B87D10 80110B70 14600003 */  bnez  $v1, .L80110B80
/* B87D14 80110B74 24060300 */   li    $a2, 768
/* B87D18 80110B78 10000006 */  b     .L80110B94
/* B87D1C 80110B7C 00001025 */   move  $v0, $zero
.L80110B80:
/* B87D20 80110B80 24010001 */  li    $at, 1
/* B87D24 80110B84 14610003 */  bne   $v1, $at, .L80110B94
/* B87D28 80110B88 24025700 */   li    $v0, 22272
/* B87D2C 80110B8C 10000001 */  b     .L80110B94
/* B87D30 80110B90 24022B80 */   li    $v0, 11136
.L80110B94:
/* B87D34 80110B94 3C078015 */  lui   $a3, %hi(D_80154E88) # $a3, 0x8015
/* B87D38 80110B98 240B00AE */  li    $t3, 174
/* B87D3C 80110B9C AFAB0010 */  sw    $t3, 0x10($sp)
/* B87D40 80110BA0 24E74E88 */  addiu $a3, %lo(D_80154E88) # addiu $a3, $a3, 0x4e88
/* B87D44 80110BA4 01022821 */  addu  $a1, $t0, $v0
/* B87D48 80110BA8 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B87D4C 80110BAC AFA80028 */   sw    $t0, 0x28($sp)
/* B87D50 80110BB0 92231409 */  lbu   $v1, 0x1409($s1)
/* B87D54 80110BB4 8FA80028 */  lw    $t0, 0x28($sp)
/* B87D58 80110BB8 24060180 */  li    $a2, 384
/* B87D5C 80110BBC 14600003 */  bnez  $v1, .L80110BCC
/* B87D60 80110BC0 3C078015 */   lui   $a3, %hi(D_80154E9C) # $a3, 0x8015
/* B87D64 80110BC4 10000006 */  b     .L80110BE0
/* B87D68 80110BC8 24020480 */   li    $v0, 1152
.L80110BCC:
/* B87D6C 80110BCC 24010001 */  li    $at, 1
/* B87D70 80110BD0 14610003 */  bne   $v1, $at, .L80110BE0
/* B87D74 80110BD4 24025B80 */   li    $v0, 23424
/* B87D78 80110BD8 10000001 */  b     .L80110BE0
/* B87D7C 80110BDC 24023000 */   li    $v0, 12288
.L80110BE0:
/* B87D80 80110BE0 8E040134 */  lw    $a0, 0x134($s0)
/* B87D84 80110BE4 240C00B2 */  li    $t4, 178
/* B87D88 80110BE8 AFAC0010 */  sw    $t4, 0x10($sp)
/* B87D8C 80110BEC 01022821 */  addu  $a1, $t0, $v0
/* B87D90 80110BF0 24E74E9C */  addiu $a3, %lo(D_80154E9C) # addiu $a3, $a3, 0x4e9c
/* B87D94 80110BF4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B87D98 80110BF8 24840300 */   addiu $a0, $a0, 0x300
/* B87D9C 80110BFC 3C068015 */  lui   $a2, %hi(D_80154EB0) # $a2, 0x8015
/* B87DA0 80110C00 24C64EB0 */  addiu $a2, %lo(D_80154EB0) # addiu $a2, $a2, 0x4eb0
/* B87DA4 80110C04 8FA40058 */  lw    $a0, 0x58($sp)
/* B87DA8 80110C08 24054000 */  li    $a1, 16384
/* B87DAC 80110C0C 0C031521 */  jal   Game_Alloc
/* B87DB0 80110C10 240700BE */   li    $a3, 190
/* B87DB4 80110C14 3C048015 */  lui   $a0, %hi(D_80154EC4) # $a0, 0x8015
/* B87DB8 80110C18 AE020138 */  sw    $v0, 0x138($s0)
/* B87DBC 80110C1C 24844EC4 */  addiu $a0, %lo(D_80154EC4) # addiu $a0, $a0, 0x4ec4
/* B87DC0 80110C20 0C00084C */  jal   osSyncPrintf
/* B87DC4 80110C24 24054000 */   li    $a1, 16384
/* B87DC8 80110C28 3C048015 */  lui   $a0, %hi(D_80154EE8) # $a0, 0x8015
/* B87DCC 80110C2C 24844EE8 */  addiu $a0, %lo(D_80154EE8) # addiu $a0, $a0, 0x4ee8
/* B87DD0 80110C30 0C00084C */  jal   osSyncPrintf
/* B87DD4 80110C34 8E050138 */   lw    $a1, 0x138($s0)
/* B87DD8 80110C38 8E0D0138 */  lw    $t5, 0x138($s0)
/* B87DDC 80110C3C 15A00006 */  bnez  $t5, .L80110C58
/* B87DE0 80110C40 3C048015 */   lui   $a0, %hi(D_80154F08) # $a0, 0x8015
/* B87DE4 80110C44 3C058015 */  lui   $a1, %hi(D_80154F2C) # $a1, 0x8015
/* B87DE8 80110C48 24A54F2C */  addiu $a1, %lo(D_80154F2C) # addiu $a1, $a1, 0x4f2c
/* B87DEC 80110C4C 24844F08 */  addiu $a0, %lo(D_80154F08) # addiu $a0, $a0, 0x4f08
/* B87DF0 80110C50 0C0007FC */  jal   __assert
/* B87DF4 80110C54 240600C1 */   li    $a2, 193
.L80110C58:
/* B87DF8 80110C58 922E006B */  lbu   $t6, 0x6b($s1)
/* B87DFC 80110C5C 3C048015 */  lui   $a0, %hi(D_80154F40) # $a0, 0x8015
/* B87E00 80110C60 24844F40 */  addiu $a0, %lo(D_80154F40) # addiu $a0, $a0, 0x4f40
/* B87E04 80110C64 92250068 */  lbu   $a1, 0x68($s1)
/* B87E08 80110C68 92260069 */  lbu   $a2, 0x69($s1)
/* B87E0C 80110C6C 9227006A */  lbu   $a3, 0x6a($s1)
/* B87E10 80110C70 0C00084C */  jal   osSyncPrintf
/* B87E14 80110C74 AFAE0010 */   sw    $t6, 0x10($sp)
/* B87E18 80110C78 92220068 */  lbu   $v0, 0x68($s1)
/* B87E1C 80110C7C 284100F0 */  slti  $at, $v0, 0xf0
/* B87E20 80110C80 1020000D */  beqz  $at, .L80110CB8
/* B87E24 80110C84 3C180075 */   lui   $t8, %hi(_icon_item_staticSegmentRomStart) # $t8, 0x75
/* B87E28 80110C88 2718C000 */  addiu $t8, %lo(_icon_item_staticSegmentRomStart) # addiu $t8, $t8, -0x4000
/* B87E2C 80110C8C 8E040138 */  lw    $a0, 0x138($s0)
/* B87E30 80110C90 00027B00 */  sll   $t7, $v0, 0xc
/* B87E34 80110C94 3C078015 */  lui   $a3, %hi(D_80154F60) # $a3, 0x8015
/* B87E38 80110C98 241900C6 */  li    $t9, 198
/* B87E3C 80110C9C AFB90010 */  sw    $t9, 0x10($sp)
/* B87E40 80110CA0 24E74F60 */  addiu $a3, %lo(D_80154F60) # addiu $a3, $a3, 0x4f60
/* B87E44 80110CA4 01F82821 */  addu  $a1, $t7, $t8
/* B87E48 80110CA8 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B87E4C 80110CAC 24061000 */   li    $a2, 4096
/* B87E50 80110CB0 1000000F */  b     .L80110CF0
/* B87E54 80110CB4 92220069 */   lbu   $v0, 0x69($s1)
.L80110CB8:
/* B87E58 80110CB8 240100FF */  li    $at, 255
/* B87E5C 80110CBC 1041000B */  beq   $v0, $at, .L80110CEC
/* B87E60 80110CC0 00024B00 */   sll   $t1, $v0, 0xc
/* B87E64 80110CC4 3C0A0075 */  lui   $t2, %hi(_icon_item_staticSegmentRomStart) # $t2, 0x75
/* B87E68 80110CC8 254AC000 */  addiu $t2, %lo(_icon_item_staticSegmentRomStart) # addiu $t2, $t2, -0x4000
/* B87E6C 80110CCC 8E040138 */  lw    $a0, 0x138($s0)
/* B87E70 80110CD0 3C078015 */  lui   $a3, %hi(D_80154F74) # $a3, 0x8015
/* B87E74 80110CD4 240B00CB */  li    $t3, 203
/* B87E78 80110CD8 AFAB0010 */  sw    $t3, 0x10($sp)
/* B87E7C 80110CDC 24E74F74 */  addiu $a3, %lo(D_80154F74) # addiu $a3, $a3, 0x4f74
/* B87E80 80110CE0 012A2821 */  addu  $a1, $t1, $t2
/* B87E84 80110CE4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B87E88 80110CE8 24061000 */   li    $a2, 4096
.L80110CEC:
/* B87E8C 80110CEC 92220069 */  lbu   $v0, 0x69($s1)
.L80110CF0:
/* B87E90 80110CF0 3C0D0075 */  lui   $t5, %hi(_icon_item_staticSegmentRomStart) # $t5, 0x75
/* B87E94 80110CF4 25ADC000 */  addiu $t5, %lo(_icon_item_staticSegmentRomStart) # addiu $t5, $t5, -0x4000
/* B87E98 80110CF8 284100F0 */  slti  $at, $v0, 0xf0
/* B87E9C 80110CFC 1020000A */  beqz  $at, .L80110D28
/* B87EA0 80110D00 00026300 */   sll   $t4, $v0, 0xc
/* B87EA4 80110D04 8E040138 */  lw    $a0, 0x138($s0)
/* B87EA8 80110D08 3C078015 */  lui   $a3, %hi(D_80154F88) # $a3, 0x8015
/* B87EAC 80110D0C 240E00D1 */  li    $t6, 209
/* B87EB0 80110D10 AFAE0010 */  sw    $t6, 0x10($sp)
/* B87EB4 80110D14 24E74F88 */  addiu $a3, %lo(D_80154F88) # addiu $a3, $a3, 0x4f88
/* B87EB8 80110D18 018D2821 */  addu  $a1, $t4, $t5
/* B87EBC 80110D1C 24061000 */  li    $a2, 4096
/* B87EC0 80110D20 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B87EC4 80110D24 24841000 */   addiu $a0, $a0, 0x1000
.L80110D28:
/* B87EC8 80110D28 9222006A */  lbu   $v0, 0x6a($s1)
/* B87ECC 80110D2C 3C180075 */  lui   $t8, %hi(_icon_item_staticSegmentRomStart) # $t8, 0x75
/* B87ED0 80110D30 2718C000 */  addiu $t8, %lo(_icon_item_staticSegmentRomStart) # addiu $t8, $t8, -0x4000
/* B87ED4 80110D34 284100F0 */  slti  $at, $v0, 0xf0
/* B87ED8 80110D38 1020000A */  beqz  $at, .L80110D64
/* B87EDC 80110D3C 00027B00 */   sll   $t7, $v0, 0xc
/* B87EE0 80110D40 8E040138 */  lw    $a0, 0x138($s0)
/* B87EE4 80110D44 3C078015 */  lui   $a3, %hi(D_80154F9C) # $a3, 0x8015
/* B87EE8 80110D48 241900D6 */  li    $t9, 214
/* B87EEC 80110D4C AFB90010 */  sw    $t9, 0x10($sp)
/* B87EF0 80110D50 24E74F9C */  addiu $a3, %lo(D_80154F9C) # addiu $a3, $a3, 0x4f9c
/* B87EF4 80110D54 01F82821 */  addu  $a1, $t7, $t8
/* B87EF8 80110D58 24061000 */  li    $a2, 4096
/* B87EFC 80110D5C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B87F00 80110D60 24842000 */   addiu $a0, $a0, 0x2000
.L80110D64:
/* B87F04 80110D64 9222006B */  lbu   $v0, 0x6b($s1)
/* B87F08 80110D68 3C0A0075 */  lui   $t2, %hi(_icon_item_staticSegmentRomStart) # $t2, 0x75
/* B87F0C 80110D6C 254AC000 */  addiu $t2, %lo(_icon_item_staticSegmentRomStart) # addiu $t2, $t2, -0x4000
/* B87F10 80110D70 284100F0 */  slti  $at, $v0, 0xf0
/* B87F14 80110D74 1020000A */  beqz  $at, .L80110DA0
/* B87F18 80110D78 00024B00 */   sll   $t1, $v0, 0xc
/* B87F1C 80110D7C 8E040138 */  lw    $a0, 0x138($s0)
/* B87F20 80110D80 3C078015 */  lui   $a3, %hi(D_80154FB0) # $a3, 0x8015
/* B87F24 80110D84 240B00DB */  li    $t3, 219
/* B87F28 80110D88 AFAB0010 */  sw    $t3, 0x10($sp)
/* B87F2C 80110D8C 24E74FB0 */  addiu $a3, %lo(D_80154FB0) # addiu $a3, $a3, 0x4fb0
/* B87F30 80110D90 012A2821 */  addu  $a1, $t1, $t2
/* B87F34 80110D94 24061000 */  li    $a2, 4096
/* B87F38 80110D98 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B87F3C 80110D9C 24843000 */   addiu $a0, $a0, 0x3000
.L80110DA0:
/* B87F40 80110DA0 3C048015 */  lui   $a0, %hi(D_80154FC4) # $a0, 0x8015
/* B87F44 80110DA4 24844FC4 */  addiu $a0, %lo(D_80154FC4) # addiu $a0, $a0, 0x4fc4
/* B87F48 80110DA8 0C00084C */  jal   osSyncPrintf
/* B87F4C 80110DAC 862513CE */   lh    $a1, 0x13ce($s1)
/* B87F50 80110DB0 862213CE */  lh    $v0, 0x13ce($s1)
/* B87F54 80110DB4 24060004 */  li    $a2, 4
/* B87F58 80110DB8 24010008 */  li    $at, 8
/* B87F5C 80110DBC 10C20009 */  beq   $a2, $v0, .L80110DE4
/* B87F60 80110DC0 3C048015 */   lui   $a0, %hi(D_80154FD4) # $a0, 0x8015
/* B87F64 80110DC4 50410008 */  beql  $v0, $at, .L80110DE8
/* B87F68 80110DC8 8E251364 */   lw    $a1, 0x1364($s1)
/* B87F6C 80110DCC 862313D2 */  lh    $v1, 0x13d2($s1)
/* B87F70 80110DD0 2401000A */  li    $at, 10
/* B87F74 80110DD4 50C30004 */  beql  $a2, $v1, .L80110DE8
/* B87F78 80110DD8 8E251364 */   lw    $a1, 0x1364($s1)
/* B87F7C 80110DDC 5461002B */  bnel  $v1, $at, .L80110E8C
/* B87F80 80110DE0 2841000B */   slti  $at, $v0, 0xb
.L80110DE4:
/* B87F84 80110DE4 8E251364 */  lw    $a1, 0x1364($s1)
.L80110DE8:
/* B87F88 80110DE8 0C00084C */  jal   osSyncPrintf
/* B87F8C 80110DEC 24844FD4 */   addiu $a0, %lo(D_80154FD4) # addiu $a0, $a0, 0x4fd4
/* B87F90 80110DF0 8E221364 */  lw    $v0, 0x1364($s1)
/* B87F94 80110DF4 2401FFFF */  li    $at, -1
/* B87F98 80110DF8 24060004 */  li    $a2, 4
/* B87F9C 80110DFC 10410004 */  beq   $v0, $at, .L80110E10
/* B87FA0 80110E00 2419001A */   li    $t9, 26
/* B87FA4 80110E04 24010001 */  li    $at, 1
/* B87FA8 80110E08 5441000A */  bnel  $v0, $at, .L80110E34
/* B87FAC 80110E0C 862213CE */   lh    $v0, 0x13ce($s1)
.L80110E10:
/* B87FB0 80110E10 862C13CE */  lh    $t4, 0x13ce($s1)
/* B87FB4 80110E14 240D0001 */  li    $t5, 1
/* B87FB8 80110E18 240E008C */  li    $t6, 140
/* B87FBC 80110E1C 14CC0004 */  bne   $a2, $t4, .L80110E30
/* B87FC0 80110E20 240F0050 */   li    $t7, 80
/* B87FC4 80110E24 A62D13CE */  sh    $t5, 0x13ce($s1)
/* B87FC8 80110E28 A62E13D6 */  sh    $t6, 0x13d6($s1)
/* B87FCC 80110E2C A62F13DA */  sh    $t7, 0x13da($s1)
.L80110E30:
/* B87FD0 80110E30 862213CE */  lh    $v0, 0x13ce($s1)
.L80110E34:
/* B87FD4 80110E34 24010008 */  li    $at, 8
/* B87FD8 80110E38 240A0036 */  li    $t2, 54
/* B87FDC 80110E3C 10C20003 */  beq   $a2, $v0, .L80110E4C
/* B87FE0 80110E40 240B002E */   li    $t3, 46
/* B87FE4 80110E44 54410004 */  bnel  $v0, $at, .L80110E58
/* B87FE8 80110E48 24020001 */   li    $v0, 1
.L80110E4C:
/* B87FEC 80110E4C 10000002 */  b     .L80110E58
/* B87FF0 80110E50 00001025 */   move  $v0, $zero
/* B87FF4 80110E54 24020001 */  li    $v0, 1
.L80110E58:
/* B87FF8 80110E58 0002C040 */  sll   $t8, $v0, 1
/* B87FFC 80110E5C 02381821 */  addu  $v1, $s1, $t8
/* B88000 80110E60 A47913D6 */  sh    $t9, 0x13d6($v1)
/* B88004 80110E64 8629002E */  lh    $t1, 0x2e($s1)
/* B88008 80110E68 292100A1 */  slti  $at, $t1, 0xa1
/* B8800C 80110E6C 54200005 */  bnezl $at, .L80110E84
/* B88010 80110E70 A46B13DA */   sh    $t3, 0x13da($v1)
/* B88014 80110E74 A46A13DA */  sh    $t2, 0x13da($v1)
/* B88018 80110E78 10000003 */  b     .L80110E88
/* B8801C 80110E7C 862213CE */   lh    $v0, 0x13ce($s1)
/* B88020 80110E80 A46B13DA */  sh    $t3, 0x13da($v1)
.L80110E84:
/* B88024 80110E84 862213CE */  lh    $v0, 0x13ce($s1)
.L80110E88:
/* B88028 80110E88 2841000B */  slti  $at, $v0, 0xb
.L80110E8C:
/* B8802C 80110E8C 14200007 */  bnez  $at, .L80110EAC
/* B88030 80110E90 28410010 */   slti  $at, $v0, 0x10
/* B88034 80110E94 10200005 */  beqz  $at, .L80110EAC
/* B88038 80110E98 3C048015 */   lui   $a0, %hi(D_80154FE8) # $a0, 0x8015
/* B8803C 80110E9C A62013CE */  sh    $zero, 0x13ce($s1)
/* B88040 80110EA0 862513CE */  lh    $a1, 0x13ce($s1)
/* B88044 80110EA4 0C00084C */  jal   osSyncPrintf
/* B88048 80110EA8 24844FE8 */   addiu $a0, %lo(D_80154FE8) # addiu $a0, $a0, 0x4fe8
.L80110EAC:
/* B8804C 80110EAC 8FA5002C */  lw    $a1, 0x2c($sp)
/* B88050 80110EB0 3C048015 */  lui   $a0, %hi(D_80155028) # $a0, 0x8015
/* B88054 80110EB4 24845028 */  addiu $a0, %lo(D_80155028) # addiu $a0, $a0, 0x5028
/* B88058 80110EB8 0C00084C */  jal   osSyncPrintf
/* B8805C 80110EBC 24A55300 */   addiu $a1, $a1, 0x5300
/* B88060 80110EC0 0C01E258 */  jal   Health_InitData
/* B88064 80110EC4 8FA40058 */   lw    $a0, 0x58($sp)
/* B88068 80110EC8 0C0203DA */  jal   func_80080F68
/* B8806C 80110ECC 8FA40058 */   lw    $a0, 0x58($sp)
/* B88070 80110ED0 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* B88074 80110ED4 24A5FA90 */  addiu $a1, %lo(gGameInfo) # addiu $a1, $a1, -0x570
/* B88078 80110ED8 A6000242 */  sh    $zero, 0x242($s0)
/* B8807C 80110EDC A600023C */  sh    $zero, 0x23c($s0)
/* B88080 80110EE0 8CAD0000 */  lw    $t5, ($a1)
/* B88084 80110EE4 240200A0 */  li    $v0, 160
/* B88088 80110EE8 240E00FF */  li    $t6, 255
/* B8808C 80110EEC A5A20820 */  sh    $v0, 0x820($t5)
/* B88090 80110EF0 8CAF0000 */  lw    $t7, ($a1)
/* B88094 80110EF4 2403001E */  li    $v1, 30
/* B88098 80110EF8 240A00A2 */  li    $t2, 162
/* B8809C 80110EFC A5EE07EA */  sh    $t6, 0x7ea($t7)
/* B880A0 80110F00 8CB80000 */  lw    $t8, ($a1)
/* B880A4 80110F04 240400BA */  li    $a0, 186
/* B880A8 80110F08 240F00C8 */  li    $t7, 200
/* B880AC 80110F0C A70307EC */  sh    $v1, 0x7ec($t8)
/* B880B0 80110F10 8CB90000 */  lw    $t9, ($a1)
/* B880B4 80110F14 A72307EE */  sh    $v1, 0x7ee($t9)
/* B880B8 80110F18 8CA90000 */  lw    $t1, ($a1)
/* B880BC 80110F1C 24190032 */  li    $t9, 50
/* B880C0 80110F20 A5220838 */  sh    $v0, 0x838($t1)
/* B880C4 80110F24 8CAB0000 */  lw    $t3, ($a1)
/* B880C8 80110F28 A56A0F94 */  sh    $t2, 0xf94($t3)
/* B880CC 80110F2C 8CAC0000 */  lw    $t4, ($a1)
/* B880D0 80110F30 A5840AB6 */  sh    $a0, 0xab6($t4)
/* B880D4 80110F34 8CAD0000 */  lw    $t5, ($a1)
/* B880D8 80110F38 A5A40ABC */  sh    $a0, 0xabc($t5)
/* B880DC 80110F3C 8CAE0000 */  lw    $t6, ($a1)
/* B880E0 80110F40 A5C00AC0 */  sh    $zero, 0xac0($t6)
/* B880E4 80110F44 8CB80000 */  lw    $t8, ($a1)
/* B880E8 80110F48 A70F0AC2 */  sh    $t7, 0xac2($t8)
/* B880EC 80110F4C 8CA90000 */  lw    $t1, ($a1)
/* B880F0 80110F50 A5390AC4 */  sh    $t9, 0xac4($t1)
/* B880F4 80110F54 8FBF0024 */  lw    $ra, 0x24($sp)
/* B880F8 80110F58 8FB10020 */  lw    $s1, 0x20($sp)
/* B880FC 80110F5C 8FB0001C */  lw    $s0, 0x1c($sp)
/* B88100 80110F60 03E00008 */  jr    $ra
/* B88104 80110F64 27BD0058 */   addiu $sp, $sp, 0x58

