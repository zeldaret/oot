glabel func_800A698C
/* B1DB2C 800A698C 27BDFF88 */  addiu $sp, $sp, -0x78
/* B1DB30 800A6990 93AF008B */  lbu   $t7, 0x8b($sp)
/* B1DB34 800A6994 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1DB38 800A6998 AFA40078 */  sw    $a0, 0x78($sp)
/* B1DB3C 800A699C 000FC080 */  sll   $t8, $t7, 2
/* B1DB40 800A69A0 AFA5007C */  sw    $a1, 0x7c($sp)
/* B1DB44 800A69A4 AFA60080 */  sw    $a2, 0x80($sp)
/* B1DB48 800A69A8 AFA70084 */  sw    $a3, 0x84($sp)
/* B1DB4C 800A69AC 00B8C821 */  addu  $t9, $a1, $t8
/* B1DB50 800A69B0 8F220000 */  lw    $v0, ($t9)
/* B1DB54 800A69B4 3C0C8016 */  lui   $t4, %hi(gSegments)
/* B1DB58 800A69B8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1DB5C 800A69BC 00024900 */  sll   $t1, $v0, 4
/* B1DB60 800A69C0 00095702 */  srl   $t2, $t1, 0x1c
/* B1DB64 800A69C4 000A5880 */  sll   $t3, $t2, 2
/* B1DB68 800A69C8 018B6021 */  addu  $t4, $t4, $t3
/* B1DB6C 800A69CC 8D8C6FA8 */  lw    $t4, %lo(gSegments)($t4)
/* B1DB70 800A69D0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1DB74 800A69D4 00414024 */  and   $t0, $v0, $at
/* B1DB78 800A69D8 93A30087 */  lbu   $v1, 0x87($sp)
/* B1DB7C 800A69DC 3C018000 */  lui   $at, 0x8000
/* B1DB80 800A69E0 010C6821 */  addu  $t5, $t0, $t4
/* B1DB84 800A69E4 01A17821 */  addu  $t7, $t5, $at
/* B1DB88 800A69E8 240100FF */  li    $at, 255
/* B1DB8C 800A69EC 14610005 */  bne   $v1, $at, .L800A6A04
/* B1DB90 800A69F0 AFAF0070 */   sw    $t7, 0x70($sp)
/* B1DB94 800A69F4 0C029CBF */  jal   func_800A72FC
/* B1DB98 800A69F8 27A4006C */   addiu $a0, $sp, 0x6c
/* B1DB9C 800A69FC 10000006 */  b     .L800A6A18
/* B1DBA0 800A6A00 93A9008B */   lbu   $t1, 0x8b($sp)
.L800A6A04:
/* B1DBA4 800A6A04 8FB80080 */  lw    $t8, 0x80($sp)
/* B1DBA8 800A6A08 00037180 */  sll   $t6, $v1, 6
/* B1DBAC 800A6A0C 01D8C821 */  addu  $t9, $t6, $t8
/* B1DBB0 800A6A10 AFB9006C */  sw    $t9, 0x6c($sp)
/* B1DBB4 800A6A14 93A9008B */  lbu   $t1, 0x8b($sp)
.L800A6A18:
/* B1DBB8 800A6A18 8FAB0080 */  lw    $t3, 0x80($sp)
/* B1DBBC 800A6A1C 8FA4006C */  lw    $a0, 0x6c($sp)
/* B1DBC0 800A6A20 00095180 */  sll   $t2, $t1, 6
/* B1DBC4 800A6A24 014B2821 */  addu  $a1, $t2, $t3
/* B1DBC8 800A6A28 AFA50024 */  sw    $a1, 0x24($sp)
/* B1DBCC 800A6A2C 0C029BE8 */  jal   func_800A6FA0
/* B1DBD0 800A6A30 27A60028 */   addiu $a2, $sp, 0x28
/* B1DBD4 800A6A34 8FA50024 */  lw    $a1, 0x24($sp)
/* B1DBD8 800A6A38 0C029CD7 */  jal   func_800A735C
/* B1DBDC 800A6A3C 27A40028 */   addiu $a0, $sp, 0x28
/* B1DBE0 800A6A40 8FA80070 */  lw    $t0, 0x70($sp)
/* B1DBE4 800A6A44 240100FF */  li    $at, 255
/* B1DBE8 800A6A48 8FA40078 */  lw    $a0, 0x78($sp)
/* B1DBEC 800A6A4C 91020006 */  lbu   $v0, 6($t0)
/* B1DBF0 800A6A50 8FA5007C */  lw    $a1, 0x7c($sp)
/* B1DBF4 800A6A54 8FA60080 */  lw    $a2, 0x80($sp)
/* B1DBF8 800A6A58 10410007 */  beq   $v0, $at, .L800A6A78
/* B1DBFC 800A6A5C 93A7008B */   lbu   $a3, 0x8b($sp)
/* B1DC00 800A6A60 0C029A63 */  jal   func_800A698C
/* B1DC04 800A6A64 AFA20010 */   sw    $v0, 0x10($sp)
/* B1DC08 800A6A68 50400004 */  beql  $v0, $zero, .L800A6A7C
/* B1DC0C 800A6A6C 8FAC0070 */   lw    $t4, 0x70($sp)
/* B1DC10 800A6A70 10000011 */  b     .L800A6AB8
/* B1DC14 800A6A74 8FBF001C */   lw    $ra, 0x1c($sp)
.L800A6A78:
/* B1DC18 800A6A78 8FAC0070 */  lw    $t4, 0x70($sp)
.L800A6A7C:
/* B1DC1C 800A6A7C 240100FF */  li    $at, 255
/* B1DC20 800A6A80 8FA40078 */  lw    $a0, 0x78($sp)
/* B1DC24 800A6A84 91820007 */  lbu   $v0, 7($t4)
/* B1DC28 800A6A88 8FA5007C */  lw    $a1, 0x7c($sp)
/* B1DC2C 800A6A8C 8FA60080 */  lw    $a2, 0x80($sp)
/* B1DC30 800A6A90 10410007 */  beq   $v0, $at, .L800A6AB0
/* B1DC34 800A6A94 93A70087 */   lbu   $a3, 0x87($sp)
/* B1DC38 800A6A98 0C029A63 */  jal   func_800A698C
/* B1DC3C 800A6A9C AFA20010 */   sw    $v0, 0x10($sp)
/* B1DC40 800A6AA0 50400004 */  beql  $v0, $zero, .L800A6AB4
/* B1DC44 800A6AA4 00001025 */   move  $v0, $zero
/* B1DC48 800A6AA8 10000003 */  b     .L800A6AB8
/* B1DC4C 800A6AAC 8FBF001C */   lw    $ra, 0x1c($sp)
.L800A6AB0:
/* B1DC50 800A6AB0 00001025 */  move  $v0, $zero
.L800A6AB4:
/* B1DC54 800A6AB4 8FBF001C */  lw    $ra, 0x1c($sp)
.L800A6AB8:
/* B1DC58 800A6AB8 27BD0078 */  addiu $sp, $sp, 0x78
/* B1DC5C 800A6ABC 03E00008 */  jr    $ra
/* B1DC60 800A6AC0 00000000 */   nop   

