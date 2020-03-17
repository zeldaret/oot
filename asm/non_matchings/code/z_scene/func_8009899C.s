.rdata
glabel D_8013F594
    .asciz "scene_info->object_bank.num <= OBJECT_EXCHANGE_BANK_MAX"
    .balign 4

glabel D_8013F5CC
    .asciz "../z_scene.c"
    .balign 4

.text
glabel func_8009899C
/* B0FB3C 8009899C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B0FB40 800989A0 AFBF003C */  sw    $ra, 0x3c($sp)
/* B0FB44 800989A4 AFBE0038 */  sw    $fp, 0x38($sp)
/* B0FB48 800989A8 AFB70034 */  sw    $s7, 0x34($sp)
/* B0FB4C 800989AC AFB60030 */  sw    $s6, 0x30($sp)
/* B0FB50 800989B0 AFB5002C */  sw    $s5, 0x2c($sp)
/* B0FB54 800989B4 AFB40028 */  sw    $s4, 0x28($sp)
/* B0FB58 800989B8 AFB30024 */  sw    $s3, 0x24($sp)
/* B0FB5C 800989BC AFB20020 */  sw    $s2, 0x20($sp)
/* B0FB60 800989C0 AFB1001C */  sw    $s1, 0x1c($sp)
/* B0FB64 800989C4 AFB00018 */  sw    $s0, 0x18($sp)
/* B0FB68 800989C8 8CA20004 */  lw    $v0, 4($a1)
/* B0FB6C 800989CC 3C198016 */  lui   $t9, %hi(gSegments)
/* B0FB70 800989D0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0FB74 800989D4 00027100 */  sll   $t6, $v0, 4
/* B0FB78 800989D8 000E7F02 */  srl   $t7, $t6, 0x1c
/* B0FB7C 800989DC 000FC080 */  sll   $t8, $t7, 2
/* B0FB80 800989E0 0338C821 */  addu  $t9, $t9, $t8
/* B0FB84 800989E4 8F396FA8 */  lw    $t9, %lo(gSegments)($t9)
/* B0FB88 800989E8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0FB8C 800989EC 00414024 */  and   $t0, $v0, $at
/* B0FB90 800989F0 3C018000 */  lui   $at, 0x8000
/* B0FB94 800989F4 03289021 */  addu  $s2, $t9, $t0
/* B0FB98 800989F8 02419021 */  addu  $s2, $s2, $at
/* B0FB9C 800989FC 3C010001 */  lui   $at, (0x000117B0 >> 16) # lui $at, 1
/* B0FBA0 80098A00 00818021 */  addu  $s0, $a0, $at
/* B0FBA4 80098A04 921117AD */  lbu   $s1, 0x17ad($s0)
/* B0FBA8 80098A08 920617AC */  lbu   $a2, 0x17ac($s0)
/* B0FBAC 80098A0C 342117B0 */  ori   $at, (0x000117B0 & 0xFFFF) # ori $at, $at, 0x17b0
/* B0FBB0 80098A10 0011B100 */  sll   $s6, $s1, 4
/* B0FBB4 80098A14 02D1B021 */  addu  $s6, $s6, $s1
/* B0FBB8 80098A18 0016B080 */  sll   $s6, $s6, 2
/* B0FBBC 80098A1C 00969821 */  addu  $s3, $a0, $s6
/* B0FBC0 80098A20 02619821 */  addu  $s3, $s3, $at
/* B0FBC4 80098A24 0226082A */  slt   $at, $s1, $a2
/* B0FBC8 80098A28 0080B825 */  move  $s7, $a0
/* B0FBCC 80098A2C 00A0F025 */  move  $fp, $a1
/* B0FBD0 80098A30 0000A825 */  move  $s5, $zero
/* B0FBD4 80098A34 10200020 */  beqz  $at, .L80098AB8
/* B0FBD8 80098A38 0260A025 */   move  $s4, $s3
/* B0FBDC 80098A3C 86890000 */  lh    $t1, ($s4)
.L80098A40:
/* B0FBE0 80098A40 864A0000 */  lh    $t2, ($s2)
/* B0FBE4 80098A44 02601025 */  move  $v0, $s3
/* B0FBE8 80098A48 02201825 */  move  $v1, $s1
/* B0FBEC 80098A4C 112A0011 */  beq   $t1, $t2, .L80098A94
/* B0FBF0 80098A50 0226082A */   slt   $at, $s1, $a2
/* B0FBF4 80098A54 10200008 */  beqz  $at, .L80098A78
/* B0FBF8 80098A58 26E51C24 */   addiu $a1, $s7, 0x1c24
/* B0FBFC 80098A5C A4400000 */  sh    $zero, ($v0)
.L80098A60:
/* B0FC00 80098A60 920B17AC */  lbu   $t3, 0x17ac($s0)
/* B0FC04 80098A64 24630001 */  addiu $v1, $v1, 1
/* B0FC08 80098A68 24420044 */  addiu $v0, $v0, 0x44
/* B0FC0C 80098A6C 006B082A */  slt   $at, $v1, $t3
/* B0FC10 80098A70 5420FFFB */  bnezl $at, .L80098A60
/* B0FC14 80098A74 A4400000 */   sh    $zero, ($v0)
.L80098A78:
/* B0FC18 80098A78 3C010001 */  lui   $at, 1
/* B0FC1C 80098A7C 00370821 */  addu  $at, $at, $s7
/* B0FC20 80098A80 A03117AC */  sb    $s1, 0x17ac($at)
/* B0FC24 80098A84 0C00C68A */  jal   func_80031A28
/* B0FC28 80098A88 02E02025 */   move  $a0, $s7
/* B0FC2C 80098A8C 10000007 */  b     .L80098AAC
/* B0FC30 80098A90 920617AC */   lbu   $a2, 0x17ac($s0)
.L80098A94:
/* B0FC34 80098A94 26310001 */  addiu $s1, $s1, 1
/* B0FC38 80098A98 26D60044 */  addiu $s6, $s6, 0x44
/* B0FC3C 80098A9C 26730044 */  addiu $s3, $s3, 0x44
/* B0FC40 80098AA0 26B50001 */  addiu $s5, $s5, 1
/* B0FC44 80098AA4 26520002 */  addiu $s2, $s2, 2
/* B0FC48 80098AA8 26940044 */  addiu $s4, $s4, 0x44
.L80098AAC:
/* B0FC4C 80098AAC 0226082A */  slt   $at, $s1, $a2
/* B0FC50 80098AB0 5420FFE3 */  bnezl $at, .L80098A40
/* B0FC54 80098AB4 86890000 */   lh    $t1, ($s4)
.L80098AB8:
/* B0FC58 80098AB8 93C20001 */  lbu   $v0, 1($fp)
/* B0FC5C 80098ABC 3C048014 */  lui   $a0, %hi(D_8013F594) # $a0, 0x8014
/* B0FC60 80098AC0 2484F594 */  addiu $a0, %lo(D_8013F594) # addiu $a0, $a0, -0xa6c
/* B0FC64 80098AC4 28410014 */  slti  $at, $v0, 0x14
/* B0FC68 80098AC8 14200005 */  bnez  $at, .L80098AE0
/* B0FC6C 80098ACC 3C058014 */   lui   $a1, %hi(D_8013F5CC) # $a1, 0x8014
/* B0FC70 80098AD0 24A5F5CC */  addiu $a1, %lo(D_8013F5CC) # addiu $a1, $a1, -0xa34
/* B0FC74 80098AD4 0C0007FC */  jal   __assert
/* B0FC78 80098AD8 240602C1 */   li    $a2, 705
/* B0FC7C 80098ADC 93C20001 */  lbu   $v0, 1($fp)
.L80098AE0:
/* B0FC80 80098AE0 02A2082A */  slt   $at, $s5, $v0
/* B0FC84 80098AE4 10200014 */  beqz  $at, .L80098B38
/* B0FC88 80098AE8 3C010001 */   lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* B0FC8C 80098AEC 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* B0FC90 80098AF0 02E18021 */  addu  $s0, $s7, $at
.L80098AF4:
/* B0FC94 80098AF4 02002025 */  move  $a0, $s0
/* B0FC98 80098AF8 02202825 */  move  $a1, $s1
/* B0FC9C 80098AFC 0C0260BF */  jal   func_800982FC
/* B0FCA0 80098B00 86460000 */   lh    $a2, ($s2)
/* B0FCA4 80098B04 2A210012 */  slti  $at, $s1, 0x12
/* B0FCA8 80098B08 10200005 */  beqz  $at, .L80098B20
/* B0FCAC 80098B0C 26310001 */   addiu $s1, $s1, 1
/* B0FCB0 80098B10 02F66021 */  addu  $t4, $s7, $s6
/* B0FCB4 80098B14 3C010001 */  lui   $at, 1
/* B0FCB8 80098B18 002C0821 */  addu  $at, $at, $t4
/* B0FCBC 80098B1C AC2217F8 */  sw    $v0, 0x17f8($at)
.L80098B20:
/* B0FCC0 80098B20 93CD0001 */  lbu   $t5, 1($fp)
/* B0FCC4 80098B24 26B50001 */  addiu $s5, $s5, 1
/* B0FCC8 80098B28 26D60044 */  addiu $s6, $s6, 0x44
/* B0FCCC 80098B2C 02AD082A */  slt   $at, $s5, $t5
/* B0FCD0 80098B30 1420FFF0 */  bnez  $at, .L80098AF4
/* B0FCD4 80098B34 26520002 */   addiu $s2, $s2, 2
.L80098B38:
/* B0FCD8 80098B38 3C010001 */  lui   $at, 1
/* B0FCDC 80098B3C 00370821 */  addu  $at, $at, $s7
/* B0FCE0 80098B40 A03117AC */  sb    $s1, 0x17ac($at)
/* B0FCE4 80098B44 8FBF003C */  lw    $ra, 0x3c($sp)
/* B0FCE8 80098B48 8FBE0038 */  lw    $fp, 0x38($sp)
/* B0FCEC 80098B4C 8FB70034 */  lw    $s7, 0x34($sp)
/* B0FCF0 80098B50 8FB60030 */  lw    $s6, 0x30($sp)
/* B0FCF4 80098B54 8FB5002C */  lw    $s5, 0x2c($sp)
/* B0FCF8 80098B58 8FB40028 */  lw    $s4, 0x28($sp)
/* B0FCFC 80098B5C 8FB30024 */  lw    $s3, 0x24($sp)
/* B0FD00 80098B60 8FB20020 */  lw    $s2, 0x20($sp)
/* B0FD04 80098B64 8FB1001C */  lw    $s1, 0x1c($sp)
/* B0FD08 80098B68 8FB00018 */  lw    $s0, 0x18($sp)
/* B0FD0C 80098B6C 03E00008 */  jr    $ra
/* B0FD10 80098B70 27BD0040 */   addiu $sp, $sp, 0x40

