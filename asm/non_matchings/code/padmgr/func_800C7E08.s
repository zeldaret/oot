glabel func_800C7E08
/* B3EFA8 800C7E08 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B3EFAC 800C7E0C AFBF002C */  sw    $ra, 0x2c($sp)
/* B3EFB0 800C7E10 AFB40028 */  sw    $s4, 0x28($sp)
/* B3EFB4 800C7E14 AFB30024 */  sw    $s3, 0x24($sp)
/* B3EFB8 800C7E18 00A09825 */  move  $s3, $a1
/* B3EFBC 800C7E1C 00C0A025 */  move  $s4, $a2
/* B3EFC0 800C7E20 AFB20020 */  sw    $s2, 0x20($sp)
/* B3EFC4 800C7E24 AFB1001C */  sw    $s1, 0x1c($sp)
/* B3EFC8 800C7E28 AFB00018 */  sw    $s0, 0x18($sp)
/* B3EFCC 800C7E2C 0C031CEF */  jal   PadMgr_Lock2
/* B3EFD0 800C7E30 AFA40030 */   sw    $a0, 0x30($sp)
/* B3EFD4 800C7E34 8FB10030 */  lw    $s1, 0x30($sp)
/* B3EFD8 800C7E38 02608025 */  move  $s0, $s3
/* B3EFDC 800C7E3C 24130004 */  li    $s3, 4
/* B3EFE0 800C7E40 00009025 */  move  $s2, $zero
/* B3EFE4 800C7E44 26310230 */  addiu $s1, $s1, 0x230
.L800C7E48:
/* B3EFE8 800C7E48 5280001F */  beql  $s4, $zero, .L800C7EC8
/* B3EFEC 800C7E4C 8A190000 */   lwl   $t9, ($s0)
/* B3EFF0 800C7E50 8A2F0000 */  lwl   $t7, ($s1)
/* B3EFF4 800C7E54 9A2F0003 */  lwr   $t7, 3($s1)
/* B3EFF8 800C7E58 AA0F0000 */  swl   $t7, ($s0)
/* B3EFFC 800C7E5C BA0F0003 */  swr   $t7, 3($s0)
/* B3F000 800C7E60 8A2E0004 */  lwl   $t6, 4($s1)
/* B3F004 800C7E64 9A2E0007 */  lwr   $t6, 7($s1)
/* B3F008 800C7E68 AA0E0004 */  swl   $t6, 4($s0)
/* B3F00C 800C7E6C BA0E0007 */  swr   $t6, 7($s0)
/* B3F010 800C7E70 8A2F0008 */  lwl   $t7, 8($s1)
/* B3F014 800C7E74 9A2F000B */  lwr   $t7, 0xb($s1)
/* B3F018 800C7E78 AA0F0008 */  swl   $t7, 8($s0)
/* B3F01C 800C7E7C BA0F000B */  swr   $t7, 0xb($s0)
/* B3F020 800C7E80 8A2E000C */  lwl   $t6, 0xc($s1)
/* B3F024 800C7E84 9A2E000F */  lwr   $t6, 0xf($s1)
/* B3F028 800C7E88 AA0E000C */  swl   $t6, 0xc($s0)
/* B3F02C 800C7E8C BA0E000F */  swr   $t6, 0xf($s0)
/* B3F030 800C7E90 8A2F0010 */  lwl   $t7, 0x10($s1)
/* B3F034 800C7E94 9A2F0013 */  lwr   $t7, 0x13($s1)
/* B3F038 800C7E98 AA0F0010 */  swl   $t7, 0x10($s0)
/* B3F03C 800C7E9C BA0F0013 */  swr   $t7, 0x13($s0)
/* B3F040 800C7EA0 8A2E0014 */  lwl   $t6, 0x14($s1)
/* B3F044 800C7EA4 9A2E0017 */  lwr   $t6, 0x17($s1)
/* B3F048 800C7EA8 AA0E0014 */  swl   $t6, 0x14($s0)
/* B3F04C 800C7EAC BA0E0017 */  swr   $t6, 0x17($s0)
/* B3F050 800C7EB0 A620000C */  sh    $zero, 0xc($s1)
/* B3F054 800C7EB4 A220000E */  sb    $zero, 0xe($s1)
/* B3F058 800C7EB8 A220000F */  sb    $zero, 0xf($s1)
/* B3F05C 800C7EBC 10000022 */  b     .L800C7F48
/* B3F060 800C7EC0 A6200012 */   sh    $zero, 0x12($s1)
/* B3F064 800C7EC4 8A190000 */  lwl   $t9, ($s0)
.L800C7EC8:
/* B3F068 800C7EC8 9A190003 */  lwr   $t9, 3($s0)
/* B3F06C 800C7ECC 02002025 */  move  $a0, $s0
/* B3F070 800C7ED0 AA190006 */  swl   $t9, 6($s0)
/* B3F074 800C7ED4 BA190009 */  swr   $t9, 9($s0)
/* B3F078 800C7ED8 96190004 */  lhu   $t9, 4($s0)
/* B3F07C 800C7EDC 96030006 */  lhu   $v1, 6($s0)
/* B3F080 800C7EE0 A619000A */  sh    $t9, 0xa($s0)
/* B3F084 800C7EE4 8A290000 */  lwl   $t1, ($s1)
/* B3F088 800C7EE8 9A290003 */  lwr   $t1, 3($s1)
/* B3F08C 800C7EEC AA090000 */  swl   $t1, ($s0)
/* B3F090 800C7EF0 BA090003 */  swr   $t1, 3($s0)
/* B3F094 800C7EF4 96050000 */  lhu   $a1, ($s0)
/* B3F098 800C7EF8 96290004 */  lhu   $t1, 4($s1)
/* B3F09C 800C7EFC 00651026 */  xor   $v0, $v1, $a1
/* B3F0A0 800C7F00 00625824 */  and   $t3, $v1, $v0
/* B3F0A4 800C7F04 00A25024 */  and   $t2, $a1, $v0
/* B3F0A8 800C7F08 A60A000C */  sh    $t2, 0xc($s0)
/* B3F0AC 800C7F0C A60B0012 */  sh    $t3, 0x12($s0)
/* B3F0B0 800C7F10 0C03F31B */  jal   func_800FCC6C
/* B3F0B4 800C7F14 A6090004 */   sh    $t1, 4($s0)
/* B3F0B8 800C7F18 820C0002 */  lb    $t4, 2($s0)
/* B3F0BC 800C7F1C 820D0008 */  lb    $t5, 8($s0)
/* B3F0C0 800C7F20 82090003 */  lb    $t1, 3($s0)
/* B3F0C4 800C7F24 820A0009 */  lb    $t2, 9($s0)
/* B3F0C8 800C7F28 8219000E */  lb    $t9, 0xe($s0)
/* B3F0CC 800C7F2C 820E000F */  lb    $t6, 0xf($s0)
/* B3F0D0 800C7F30 018DC023 */  subu  $t8, $t4, $t5
/* B3F0D4 800C7F34 012A6823 */  subu  $t5, $t1, $t2
/* B3F0D8 800C7F38 03384021 */  addu  $t0, $t9, $t8
/* B3F0DC 800C7F3C 01CD7821 */  addu  $t7, $t6, $t5
/* B3F0E0 800C7F40 A208000E */  sb    $t0, 0xe($s0)
/* B3F0E4 800C7F44 A20F000F */  sb    $t7, 0xf($s0)
.L800C7F48:
/* B3F0E8 800C7F48 26520001 */  addiu $s2, $s2, 1
/* B3F0EC 800C7F4C 26310018 */  addiu $s1, $s1, 0x18
/* B3F0F0 800C7F50 1653FFBD */  bne   $s2, $s3, .L800C7E48
/* B3F0F4 800C7F54 26100018 */   addiu $s0, $s0, 0x18
/* B3F0F8 800C7F58 0C031CF9 */  jal   PadMgr_Unlock2
/* B3F0FC 800C7F5C 8FA40030 */   lw    $a0, 0x30($sp)
/* B3F100 800C7F60 8FBF002C */  lw    $ra, 0x2c($sp)
/* B3F104 800C7F64 8FB00018 */  lw    $s0, 0x18($sp)
/* B3F108 800C7F68 8FB1001C */  lw    $s1, 0x1c($sp)
/* B3F10C 800C7F6C 8FB20020 */  lw    $s2, 0x20($sp)
/* B3F110 800C7F70 8FB30024 */  lw    $s3, 0x24($sp)
/* B3F114 800C7F74 8FB40028 */  lw    $s4, 0x28($sp)
/* B3F118 800C7F78 03E00008 */  jr    $ra
/* B3F11C 800C7F7C 27BD0030 */   addiu $sp, $sp, 0x30
