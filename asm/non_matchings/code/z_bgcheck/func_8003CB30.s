glabel func_8003CB30
/* AB3CD0 8003CB30 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AB3CD4 8003CB34 AFA60048 */  sw    $a2, 0x48($sp)
/* AB3CD8 8003CB38 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB3CDC 8003CB3C 44812000 */  mtc1  $at, $f4
/* AB3CE0 8003CB40 8FAF0048 */  lw    $t7, 0x48($sp)
/* AB3CE4 8003CB44 AFA50044 */  sw    $a1, 0x44($sp)
/* AB3CE8 8003CB48 00802825 */  move  $a1, $a0
/* AB3CEC 8003CB4C AFBF002C */  sw    $ra, 0x2c($sp)
/* AB3CF0 8003CB50 AFA40040 */  sw    $a0, 0x40($sp)
/* AB3CF4 8003CB54 27AE0034 */  addiu $t6, $sp, 0x34
/* AB3CF8 8003CB58 2418001C */  li    $t8, 28
/* AB3CFC 8003CB5C AFB8001C */  sw    $t8, 0x1c($sp)
/* AB3D00 8003CB60 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB3D04 8003CB64 00002025 */  move  $a0, $zero
/* AB3D08 8003CB68 00003025 */  move  $a2, $zero
/* AB3D0C 8003CB6C 27A7003C */  addiu $a3, $sp, 0x3c
/* AB3D10 8003CB70 AFA00018 */  sw    $zero, 0x18($sp)
/* AB3D14 8003CB74 AFAF0014 */  sw    $t7, 0x14($sp)
/* AB3D18 8003CB78 0C00F185 */  jal   func_8003C614
/* AB3D1C 8003CB7C E7A40020 */   swc1  $f4, 0x20($sp)
/* AB3D20 8003CB80 8FB9003C */  lw    $t9, 0x3c($sp)
/* AB3D24 8003CB84 46000086 */  mov.s $f2, $f0
/* AB3D28 8003CB88 8FA80044 */  lw    $t0, 0x44($sp)
/* AB3D2C 8003CB8C 53200012 */  beql  $t9, $zero, .L8003CBD8
/* AB3D30 8003CB90 8FBF002C */   lw    $ra, 0x2c($sp)
/* AB3D34 8003CB94 8B2A0000 */  lwl   $t2, ($t9)
/* AB3D38 8003CB98 9B2A0003 */  lwr   $t2, 3($t9)
/* AB3D3C 8003CB9C A90A0000 */  swl   $t2, ($t0)
/* AB3D40 8003CBA0 B90A0003 */  swr   $t2, 3($t0)
/* AB3D44 8003CBA4 8B290004 */  lwl   $t1, 4($t9)
/* AB3D48 8003CBA8 9B290007 */  lwr   $t1, 7($t9)
/* AB3D4C 8003CBAC A9090004 */  swl   $t1, 4($t0)
/* AB3D50 8003CBB0 B9090007 */  swr   $t1, 7($t0)
/* AB3D54 8003CBB4 8B2A0008 */  lwl   $t2, 8($t9)
/* AB3D58 8003CBB8 9B2A000B */  lwr   $t2, 0xb($t9)
/* AB3D5C 8003CBBC A90A0008 */  swl   $t2, 8($t0)
/* AB3D60 8003CBC0 B90A000B */  swr   $t2, 0xb($t0)
/* AB3D64 8003CBC4 8B29000C */  lwl   $t1, 0xc($t9)
/* AB3D68 8003CBC8 9B29000F */  lwr   $t1, 0xf($t9)
/* AB3D6C 8003CBCC A909000C */  swl   $t1, 0xc($t0)
/* AB3D70 8003CBD0 B909000F */  swr   $t1, 0xf($t0)
/* AB3D74 8003CBD4 8FBF002C */  lw    $ra, 0x2c($sp)
.L8003CBD8:
/* AB3D78 8003CBD8 27BD0040 */  addiu $sp, $sp, 0x40
/* AB3D7C 8003CBDC 46001006 */  mov.s $f0, $f2
/* AB3D80 8003CBE0 03E00008 */  jr    $ra
/* AB3D84 8003CBE4 00000000 */   nop   

/* AB3D88 8003CBE8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AB3D8C 8003CBEC AFA60040 */  sw    $a2, 0x40($sp)
/* AB3D90 8003CBF0 AFA70044 */  sw    $a3, 0x44($sp)
/* AB3D94 8003CBF4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB3D98 8003CBF8 44812000 */  mtc1  $at, $f4
/* AB3D9C 8003CBFC 8FAF0044 */  lw    $t7, 0x44($sp)
/* AB3DA0 8003CC00 8FAE0040 */  lw    $t6, 0x40($sp)
/* AB3DA4 8003CC04 AFA5003C */  sw    $a1, 0x3c($sp)
/* AB3DA8 8003CC08 00802825 */  move  $a1, $a0
/* AB3DAC 8003CC0C AFBF002C */  sw    $ra, 0x2c($sp)
/* AB3DB0 8003CC10 AFA40038 */  sw    $a0, 0x38($sp)
/* AB3DB4 8003CC14 2418001C */  li    $t8, 28
/* AB3DB8 8003CC18 AFB8001C */  sw    $t8, 0x1c($sp)
/* AB3DBC 8003CC1C 00002025 */  move  $a0, $zero
/* AB3DC0 8003CC20 27A70034 */  addiu $a3, $sp, 0x34
/* AB3DC4 8003CC24 00003025 */  move  $a2, $zero
/* AB3DC8 8003CC28 AFA00018 */  sw    $zero, 0x18($sp)
/* AB3DCC 8003CC2C AFAF0014 */  sw    $t7, 0x14($sp)
/* AB3DD0 8003CC30 E7A40020 */  swc1  $f4, 0x20($sp)
/* AB3DD4 8003CC34 0C00F185 */  jal   func_8003C614
/* AB3DD8 8003CC38 AFAE0010 */   sw    $t6, 0x10($sp)
/* AB3DDC 8003CC3C 8FB90034 */  lw    $t9, 0x34($sp)
/* AB3DE0 8003CC40 46000086 */  mov.s $f2, $f0
/* AB3DE4 8003CC44 8FA8003C */  lw    $t0, 0x3c($sp)
/* AB3DE8 8003CC48 53200012 */  beql  $t9, $zero, .L8003CC94
/* AB3DEC 8003CC4C 8FBF002C */   lw    $ra, 0x2c($sp)
/* AB3DF0 8003CC50 8B2A0000 */  lwl   $t2, ($t9)
/* AB3DF4 8003CC54 9B2A0003 */  lwr   $t2, 3($t9)
/* AB3DF8 8003CC58 A90A0000 */  swl   $t2, ($t0)
/* AB3DFC 8003CC5C B90A0003 */  swr   $t2, 3($t0)
/* AB3E00 8003CC60 8B290004 */  lwl   $t1, 4($t9)
/* AB3E04 8003CC64 9B290007 */  lwr   $t1, 7($t9)
/* AB3E08 8003CC68 A9090004 */  swl   $t1, 4($t0)
/* AB3E0C 8003CC6C B9090007 */  swr   $t1, 7($t0)
/* AB3E10 8003CC70 8B2A0008 */  lwl   $t2, 8($t9)
/* AB3E14 8003CC74 9B2A000B */  lwr   $t2, 0xb($t9)
/* AB3E18 8003CC78 A90A0008 */  swl   $t2, 8($t0)
/* AB3E1C 8003CC7C B90A000B */  swr   $t2, 0xb($t0)
/* AB3E20 8003CC80 8B29000C */  lwl   $t1, 0xc($t9)
/* AB3E24 8003CC84 9B29000F */  lwr   $t1, 0xf($t9)
/* AB3E28 8003CC88 A909000C */  swl   $t1, 0xc($t0)
/* AB3E2C 8003CC8C B909000F */  swr   $t1, 0xf($t0)
/* AB3E30 8003CC90 8FBF002C */  lw    $ra, 0x2c($sp)
.L8003CC94:
/* AB3E34 8003CC94 27BD0038 */  addiu $sp, $sp, 0x38
/* AB3E38 8003CC98 46001006 */  mov.s $f0, $f2
/* AB3E3C 8003CC9C 03E00008 */  jr    $ra
/* AB3E40 8003CCA0 00000000 */   nop   

