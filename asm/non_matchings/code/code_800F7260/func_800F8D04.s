glabel func_800F8D04
/* B6FEA4 800F8D04 27BDFF78 */  addiu $sp, $sp, -0x88
/* B6FEA8 800F8D08 AFB40028 */  sw    $s4, 0x28($sp)
/* B6FEAC 800F8D0C 3094F000 */  andi  $s4, $a0, 0xf000
/* B6FEB0 800F8D10 0014A302 */  srl   $s4, $s4, 0xc
/* B6FEB4 800F8D14 329400FF */  andi  $s4, $s4, 0xff
/* B6FEB8 800F8D18 3C0F8013 */  lui   $t7, %hi(gSoundBanks) # $t7, 0x8013
/* B6FEBC 800F8D1C AFB5002C */  sw    $s5, 0x2c($sp)
/* B6FEC0 800F8D20 25EF33A8 */  addiu $t7, %lo(gSoundBanks) # addiu $t7, $t7, 0x33a8
/* B6FEC4 800F8D24 00147080 */  sll   $t6, $s4, 2
/* B6FEC8 800F8D28 01CFA821 */  addu  $s5, $t6, $t7
/* B6FECC 800F8D2C 8EA20000 */  lw    $v0, ($s5)
/* B6FED0 800F8D30 AFBF003C */  sw    $ra, 0x3c($sp)
/* B6FED4 800F8D34 AFBE0038 */  sw    $fp, 0x38($sp)
/* B6FED8 800F8D38 AFB70034 */  sw    $s7, 0x34($sp)
/* B6FEDC 800F8D3C AFB60030 */  sw    $s6, 0x30($sp)
/* B6FEE0 800F8D40 AFB30024 */  sw    $s3, 0x24($sp)
/* B6FEE4 800F8D44 AFB20020 */  sw    $s2, 0x20($sp)
/* B6FEE8 800F8D48 AFB1001C */  sw    $s1, 0x1c($sp)
/* B6FEEC 800F8D4C AFB00018 */  sw    $s0, 0x18($sp)
/* B6FEF0 800F8D50 AFA40088 */  sw    $a0, 0x88($sp)
/* B6FEF4 800F8D54 9051002D */  lbu   $s1, 0x2d($v0)
/* B6FEF8 800F8D58 241600FF */  li    $s6, 255
/* B6FEFC 800F8D5C 00009025 */  move  $s2, $zero
/* B6FF00 800F8D60 12D10025 */  beq   $s6, $s1, .L800F8DF8
/* B6FF04 800F8D64 24170030 */   li    $s7, 48
/* B6FF08 800F8D68 3C1E0602 */  lui   $fp, 0x602
.L800F8D6C:
/* B6FF0C 800F8D6C 02370019 */  multu $s1, $s7
/* B6FF10 800F8D70 8FB90088 */  lw    $t9, 0x88($sp)
/* B6FF14 800F8D74 0000C012 */  mflo  $t8
/* B6FF18 800F8D78 00588021 */  addu  $s0, $v0, $t8
/* B6FF1C 800F8D7C 96080028 */  lhu   $t0, 0x28($s0)
/* B6FF20 800F8D80 57280016 */  bnel  $t9, $t0, .L800F8DDC
/* B6FF24 800F8D84 323200FF */   andi  $s2, $s1, 0xff
/* B6FF28 800F8D88 9202002A */  lbu   $v0, 0x2a($s0)
/* B6FF2C 800F8D8C 00129880 */  sll   $s3, $s2, 2
/* B6FF30 800F8D90 02729823 */  subu  $s3, $s3, $s2
/* B6FF34 800F8D94 28410003 */  slti  $at, $v0, 3
/* B6FF38 800F8D98 14200007 */  bnez  $at, .L800F8DB8
/* B6FF3C 800F8D9C 00139900 */   sll   $s3, $s3, 4
/* B6FF40 800F8DA0 920A002E */  lbu   $t2, 0x2e($s0)
/* B6FF44 800F8DA4 00002825 */  move  $a1, $zero
/* B6FF48 800F8DA8 000A5A00 */  sll   $t3, $t2, 8
/* B6FF4C 800F8DAC 0C0396C8 */  jal   func_800E5B20
/* B6FF50 800F8DB0 017E2025 */   or    $a0, $t3, $fp
/* B6FF54 800F8DB4 9202002A */  lbu   $v0, 0x2a($s0)
.L800F8DB8:
/* B6FF58 800F8DB8 10400003 */  beqz  $v0, .L800F8DC8
/* B6FF5C 800F8DBC 328400FF */   andi  $a0, $s4, 0xff
/* B6FF60 800F8DC0 0C03DED5 */  jal   func_800F7B54
/* B6FF64 800F8DC4 322500FF */   andi  $a1, $s1, 0xff
.L800F8DC8:
/* B6FF68 800F8DC8 8EA20000 */  lw    $v0, ($s5)
/* B6FF6C 800F8DCC 00536021 */  addu  $t4, $v0, $s3
/* B6FF70 800F8DD0 10000007 */  b     .L800F8DF0
/* B6FF74 800F8DD4 9191002D */   lbu   $s1, 0x2d($t4)
/* B6FF78 800F8DD8 323200FF */  andi  $s2, $s1, 0xff
.L800F8DDC:
/* B6FF7C 800F8DDC 00126880 */  sll   $t5, $s2, 2
/* B6FF80 800F8DE0 01B26823 */  subu  $t5, $t5, $s2
/* B6FF84 800F8DE4 000D6900 */  sll   $t5, $t5, 4
/* B6FF88 800F8DE8 004D7021 */  addu  $t6, $v0, $t5
/* B6FF8C 800F8DEC 91D1002D */  lbu   $s1, 0x2d($t6)
.L800F8DF0:
/* B6FF90 800F8DF0 16D1FFDE */  bne   $s6, $s1, .L800F8D6C
/* B6FF94 800F8DF4 00000000 */   nop   
.L800F8DF8:
/* B6FF98 800F8DF8 8FAF0088 */  lw    $t7, 0x88($sp)
/* B6FF9C 800F8DFC 24040005 */  li    $a0, 5
/* B6FFA0 800F8E00 27A50050 */  addiu $a1, $sp, 0x50
/* B6FFA4 800F8E04 0C03DD38 */  jal   func_800F74E0
/* B6FFA8 800F8E08 A7AF0078 */   sh    $t7, 0x78($sp)
/* B6FFAC 800F8E0C 8FBF003C */  lw    $ra, 0x3c($sp)
/* B6FFB0 800F8E10 8FB00018 */  lw    $s0, 0x18($sp)
/* B6FFB4 800F8E14 8FB1001C */  lw    $s1, 0x1c($sp)
/* B6FFB8 800F8E18 8FB20020 */  lw    $s2, 0x20($sp)
/* B6FFBC 800F8E1C 8FB30024 */  lw    $s3, 0x24($sp)
/* B6FFC0 800F8E20 8FB40028 */  lw    $s4, 0x28($sp)
/* B6FFC4 800F8E24 8FB5002C */  lw    $s5, 0x2c($sp)
/* B6FFC8 800F8E28 8FB60030 */  lw    $s6, 0x30($sp)
/* B6FFCC 800F8E2C 8FB70034 */  lw    $s7, 0x34($sp)
/* B6FFD0 800F8E30 8FBE0038 */  lw    $fp, 0x38($sp)
/* B6FFD4 800F8E34 03E00008 */  jr    $ra
/* B6FFD8 800F8E38 27BD0088 */   addiu $sp, $sp, 0x88

