.rdata
glabel D_8013E1A0
    .asciz "../z_parameter.c"
    .balign 4

.text
glabel Interface_LoadActionLabel
/* AFDF30 80086D90 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AFDF34 80086D94 30A2FFFF */  andi  $v0, $a1, 0xffff
/* AFDF38 80086D98 AFB00030 */  sw    $s0, 0x30($sp)
/* AFDF3C 80086D9C 2841001D */  slti  $at, $v0, 0x1d
/* AFDF40 80086DA0 00808025 */  move  $s0, $a0
/* AFDF44 80086DA4 AFBF0034 */  sw    $ra, 0x34($sp)
/* AFDF48 80086DA8 AFA50044 */  sw    $a1, 0x44($sp)
/* AFDF4C 80086DAC 14200002 */  bnez  $at, .L80086DB8
/* AFDF50 80086DB0 AFA60048 */   sw    $a2, 0x48($sp)
/* AFDF54 80086DB4 2402000A */  li    $v0, 10
.L80086DB8:
/* AFDF58 80086DB8 3C038016 */  lui   $v1, %hi(gSaveContext+0x1409) # $v1, 0x8016
/* AFDF5C 80086DBC 9063FA69 */  lbu   $v1, %lo(gSaveContext+0x1409)($v1)
/* AFDF60 80086DC0 2445001D */  addiu $a1, $v0, 0x1d
/* AFDF64 80086DC4 24010002 */  li    $at, 2
/* AFDF68 80086DC8 10600002 */  beqz  $v1, .L80086DD4
/* AFDF6C 80086DCC 00000000 */   nop   
/* AFDF70 80086DD0 30A2FFFF */  andi  $v0, $a1, 0xffff
.L80086DD4:
/* AFDF74 80086DD4 14610002 */  bne   $v1, $at, .L80086DE0
/* AFDF78 80086DD8 2445001D */   addiu $a1, $v0, 0x1d
/* AFDF7C 80086DDC 30A2FFFF */  andi  $v0, $a1, 0xffff
.L80086DE0:
/* AFDF80 80086DE0 2401000A */  li    $at, 10
/* AFDF84 80086DE4 1041002A */  beq   $v0, $at, .L80086E90
/* AFDF88 80086DE8 3C038016 */   lui   $v1, %hi(gSegments) # $v1, 0x8016
/* AFDF8C 80086DEC 24010027 */  li    $at, 39
/* AFDF90 80086DF0 10410027 */  beq   $v0, $at, .L80086E90
/* AFDF94 80086DF4 24010044 */   li    $at, 68
/* AFDF98 80086DF8 10410025 */  beq   $v0, $at, .L80086E90
/* AFDF9C 80086DFC 260401C0 */   addiu $a0, $s0, 0x1c0
/* AFDFA0 80086E00 260501D8 */  addiu $a1, $s0, 0x1d8
/* AFDFA4 80086E04 24060001 */  li    $a2, 1
/* AFDFA8 80086E08 AFA2003C */  sw    $v0, 0x3c($sp)
/* AFDFAC 80086E0C 0C001874 */  jal   osCreateMesgQueue
/* AFDFB0 80086E10 AFA40038 */   sw    $a0, 0x38($sp)
/* AFDFB4 80086E14 87AF004A */  lh    $t7, 0x4a($sp)
/* AFDFB8 80086E18 24030180 */  li    $v1, 384
/* AFDFBC 80086E1C 8FA2003C */  lw    $v0, 0x3c($sp)
/* AFDFC0 80086E20 01E30019 */  multu $t7, $v1
/* AFDFC4 80086E24 8E0E0134 */  lw    $t6, 0x134($s0)
/* AFDFC8 80086E28 8FA90038 */  lw    $t1, 0x38($sp)
/* AFDFCC 80086E2C 3C08008B */  lui   $t0, %hi(_do_action_staticSegmentRomStart) # $t0, 0x8b
/* AFDFD0 80086E30 3C0A8014 */  lui   $t2, %hi(D_8013E1A0) # $t2, 0x8014
/* AFDFD4 80086E34 254AE1A0 */  addiu $t2, %lo(D_8013E1A0) # addiu $t2, $t2, -0x1e60
/* AFDFD8 80086E38 25081000 */  addiu $t0, %lo(_do_action_staticSegmentRomStart) # addiu $t0, $t0, 0x1000
/* AFDFDC 80086E3C 240B0861 */  li    $t3, 2145
/* AFDFE0 80086E40 AFAB0020 */  sw    $t3, 0x20($sp)
/* AFDFE4 80086E44 AFAA001C */  sw    $t2, 0x1c($sp)
/* AFDFE8 80086E48 0000C012 */  mflo  $t8
/* AFDFEC 80086E4C AFA00018 */  sw    $zero, 0x18($sp)
/* AFDFF0 80086E50 AFA00010 */  sw    $zero, 0x10($sp)
/* AFDFF4 80086E54 00430019 */  multu $v0, $v1
/* AFDFF8 80086E58 26040160 */  addiu $a0, $s0, 0x160
/* AFDFFC 80086E5C 24070180 */  li    $a3, 384
/* AFE000 80086E60 01D82821 */  addu  $a1, $t6, $t8
/* AFE004 80086E64 AFA90014 */  sw    $t1, 0x14($sp)
/* AFE008 80086E68 0000C812 */  mflo  $t9
/* AFE00C 80086E6C 03283021 */  addu  $a2, $t9, $t0
/* AFE010 80086E70 0C000697 */  jal   DmaMgr_SendRequest2
/* AFE014 80086E74 00000000 */   nop   
/* AFE018 80086E78 8FA40038 */  lw    $a0, 0x38($sp)
/* AFE01C 80086E7C 00002825 */  move  $a1, $zero
/* AFE020 80086E80 0C000CA0 */  jal   osRecvMesg
/* AFE024 80086E84 24060001 */   li    $a2, 1
/* AFE028 80086E88 10000019 */  b     .L80086EF0
/* AFE02C 80086E8C 8FBF0034 */   lw    $ra, 0x34($sp)
.L80086E90:
/* AFE030 80086E90 8E0C0134 */  lw    $t4, 0x134($s0)
/* AFE034 80086E94 87AF004A */  lh    $t7, 0x4a($sp)
/* AFE038 80086E98 3C018000 */  lui   $at, 0x8000
/* AFE03C 80086E9C 24636FA8 */  addiu $v1, %lo(gSegments) # addiu $v1, $v1, 0x6fa8
/* AFE040 80086EA0 3C028012 */  lui   $v0, %hi(sDoActionTextures)
/* AFE044 80086EA4 01816821 */  addu  $t5, $t4, $at
/* AFE048 80086EA8 000F7080 */  sll   $t6, $t7, 2
/* AFE04C 80086EAC AC6D001C */  sw    $t5, 0x1c($v1)
/* AFE050 80086EB0 004E1021 */  addu  $v0, $v0, $t6
/* AFE054 80086EB4 8C425AA8 */  lw    $v0, %lo(sDoActionTextures)($v0)
/* AFE058 80086EB8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* AFE05C 80086EBC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* AFE060 80086EC0 0002C900 */  sll   $t9, $v0, 4
/* AFE064 80086EC4 00194702 */  srl   $t0, $t9, 0x1c
/* AFE068 80086EC8 00084880 */  sll   $t1, $t0, 2
/* AFE06C 80086ECC 00695021 */  addu  $t2, $v1, $t1
/* AFE070 80086ED0 8D4B0000 */  lw    $t3, ($t2)
/* AFE074 80086ED4 0041C024 */  and   $t8, $v0, $at
/* AFE078 80086ED8 3C018000 */  lui   $at, 0x8000
/* AFE07C 80086EDC 030B2021 */  addu  $a0, $t8, $t3
/* AFE080 80086EE0 00812021 */  addu  $a0, $a0, $at
/* AFE084 80086EE4 0C021B57 */  jal   func_80086D5C
/* AFE088 80086EE8 24050060 */   li    $a1, 96
/* AFE08C 80086EEC 8FBF0034 */  lw    $ra, 0x34($sp)
.L80086EF0:
/* AFE090 80086EF0 8FB00030 */  lw    $s0, 0x30($sp)
/* AFE094 80086EF4 27BD0040 */  addiu $sp, $sp, 0x40
/* AFE098 80086EF8 03E00008 */  jr    $ra
/* AFE09C 80086EFC 00000000 */   nop   

