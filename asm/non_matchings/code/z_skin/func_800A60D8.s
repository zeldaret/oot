.rdata
glabel D_801406C8
    .asciz "../z_skin.c"
    .balign 4

glabel D_801406D4
    .asciz "../z_skin.c"
    .balign 4

.text
glabel func_800A60D8
/* B1D278 800A60D8 27BDFF78 */  addiu $sp, $sp, -0x88
/* B1D27C 800A60DC AFB20028 */  sw    $s2, 0x28($sp)
/* B1D280 800A60E0 AFBF0044 */  sw    $ra, 0x44($sp)
/* B1D284 800A60E4 AFBE0040 */  sw    $fp, 0x40($sp)
/* B1D288 800A60E8 AFB7003C */  sw    $s7, 0x3c($sp)
/* B1D28C 800A60EC AFB60038 */  sw    $s6, 0x38($sp)
/* B1D290 800A60F0 AFB50034 */  sw    $s5, 0x34($sp)
/* B1D294 800A60F4 AFB40030 */  sw    $s4, 0x30($sp)
/* B1D298 800A60F8 AFB3002C */  sw    $s3, 0x2c($sp)
/* B1D29C 800A60FC AFB10024 */  sw    $s1, 0x24($sp)
/* B1D2A0 800A6100 AFB00020 */  sw    $s0, 0x20($sp)
/* B1D2A4 800A6104 AFA40088 */  sw    $a0, 0x88($sp)
/* B1D2A8 800A6108 AFA5008C */  sw    $a1, 0x8c($sp)
/* B1D2AC 800A610C AFA70094 */  sw    $a3, 0x94($sp)
/* B1D2B0 800A6110 8CB50000 */  lw    $s5, ($a1)
/* B1D2B4 800A6114 00C09025 */  move  $s2, $a2
/* B1D2B8 800A6118 3C068014 */  lui   $a2, %hi(D_801406C8) # $a2, 0x8014
/* B1D2BC 800A611C 24C606C8 */  addiu $a2, %lo(D_801406C8) # addiu $a2, $a2, 0x6c8
/* B1D2C0 800A6120 240701D7 */  li    $a3, 471
/* B1D2C4 800A6124 27A40060 */  addiu $a0, $sp, 0x60
/* B1D2C8 800A6128 0C031AB1 */  jal   Graph_OpenDisps
/* B1D2CC 800A612C 02A02825 */   move  $a1, $s5
/* B1D2D0 800A6130 8FB600A4 */  lw    $s6, 0xa4($sp)
/* B1D2D4 800A6134 3C058016 */  lui   $a1, %hi(D_801600C0) # $a1, 0x8016
/* B1D2D8 800A6138 24A500C0 */  addiu $a1, %lo(D_801600C0) # addiu $a1, $a1, 0xc0
/* B1D2DC 800A613C 32CF0001 */  andi  $t7, $s6, 1
/* B1D2E0 800A6140 15E00004 */  bnez  $t7, .L800A6154
/* B1D2E4 800A6144 02402025 */   move  $a0, $s2
/* B1D2E8 800A6148 8FA60088 */  lw    $a2, 0x88($sp)
/* B1D2EC 800A614C 0C029AB1 */  jal   func_800A6AC4
/* B1D2F0 800A6150 8FA7009C */   lw    $a3, 0x9c($sp)
.L800A6154:
/* B1D2F4 800A6154 8E450000 */  lw    $a1, ($s2)
/* B1D2F8 800A6158 3C098016 */  lui   $t1, %hi(gSegments)
/* B1D2FC 800A615C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1D300 800A6160 8CA20000 */  lw    $v0, ($a1)
/* B1D304 800A6164 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1D308 800A6168 32CB0002 */  andi  $t3, $s6, 2
/* B1D30C 800A616C 0002C100 */  sll   $t8, $v0, 4
/* B1D310 800A6170 0018CF02 */  srl   $t9, $t8, 0x1c
/* B1D314 800A6174 00194080 */  sll   $t0, $t9, 2
/* B1D318 800A6178 01284821 */  addu  $t1, $t1, $t0
/* B1D31C 800A617C 8D296FA8 */  lw    $t1, %lo(gSegments)($t1)
/* B1D320 800A6180 00415024 */  and   $t2, $v0, $at
/* B1D324 800A6184 3C018000 */  lui   $at, 0x8000
/* B1D328 800A6188 012A9821 */  addu  $s3, $t1, $t2
/* B1D32C 800A618C 15600015 */  bnez  $t3, .L800A61E4
/* B1D330 800A6190 02619821 */   addu  $s3, $s3, $at
/* B1D334 800A6194 8EA402C0 */  lw    $a0, 0x2c0($s5)
/* B1D338 800A6198 3C10DA38 */  lui   $s0, 0xda38
/* B1D33C 800A619C 3C0D8013 */  lui   $t5, %hi(gMtxClear) # $t5, 0x8013
/* B1D340 800A61A0 248C0008 */  addiu $t4, $a0, 8
/* B1D344 800A61A4 AEAC02C0 */  sw    $t4, 0x2c0($s5)
/* B1D348 800A61A8 25ADDB20 */  addiu $t5, %lo(gMtxClear) # addiu $t5, $t5, -0x24e0
/* B1D34C 800A61AC 36100003 */  ori   $s0, (0xDA380003 & 0xFFFF) # ori $s0, $s0, 3
/* B1D350 800A61B0 AC900000 */  sw    $s0, ($a0)
/* B1D354 800A61B4 AC8D0004 */  sw    $t5, 4($a0)
/* B1D358 800A61B8 02A02025 */  move  $a0, $s5
/* B1D35C 800A61BC 0C029F9C */  jal   func_800A7E70
/* B1D360 800A61C0 26450004 */   addiu $a1, $s2, 4
/* B1D364 800A61C4 10400048 */  beqz  $v0, .L800A62E8
/* B1D368 800A61C8 00000000 */   nop   
/* B1D36C 800A61CC 8EA402C0 */  lw    $a0, 0x2c0($s5)
/* B1D370 800A61D0 248E0008 */  addiu $t6, $a0, 8
/* B1D374 800A61D4 AEAE02C0 */  sw    $t6, 0x2c0($s5)
/* B1D378 800A61D8 AC820004 */  sw    $v0, 4($a0)
/* B1D37C 800A61DC AC900000 */  sw    $s0, ($a0)
/* B1D380 800A61E0 8E450000 */  lw    $a1, ($s2)
.L800A61E4:
/* B1D384 800A61E4 90AF0004 */  lbu   $t7, 4($a1)
/* B1D388 800A61E8 00008025 */  move  $s0, $zero
/* B1D38C 800A61EC 02608825 */  move  $s1, $s3
/* B1D390 800A61F0 19E00036 */  blez  $t7, .L800A62CC
/* B1D394 800A61F4 8FB700A0 */   lw    $s7, 0xa0($sp)
/* B1D398 800A61F8 241E0004 */  li    $fp, 4
/* B1D39C 800A61FC 24140001 */  li    $s4, 1
/* B1D3A0 800A6200 8FB30098 */  lw    $s3, 0x98($sp)
.L800A6204:
/* B1D3A4 800A6204 12600007 */  beqz  $s3, .L800A6224
/* B1D3A8 800A6208 02802025 */   move  $a0, $s4
/* B1D3AC 800A620C 8FA40088 */  lw    $a0, 0x88($sp)
/* B1D3B0 800A6210 8FA5008C */  lw    $a1, 0x8c($sp)
/* B1D3B4 800A6214 02003025 */  move  $a2, $s0
/* B1D3B8 800A6218 0260F809 */  jalr  $s3
/* B1D3BC 800A621C 02403825 */  move  $a3, $s2
/* B1D3C0 800A6220 00402025 */  move  $a0, $v0
.L800A6224:
/* B1D3C4 800A6224 8E220000 */  lw    $v0, ($s1)
/* B1D3C8 800A6228 3C0A8016 */  lui   $t2, %hi(gSegments)
/* B1D3CC 800A622C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1D3D0 800A6230 0002C900 */  sll   $t9, $v0, 4
/* B1D3D4 800A6234 00194702 */  srl   $t0, $t9, 0x1c
/* B1D3D8 800A6238 00084880 */  sll   $t1, $t0, 2
/* B1D3DC 800A623C 01495021 */  addu  $t2, $t2, $t1
/* B1D3E0 800A6240 8D4A6FA8 */  lw    $t2, %lo(gSegments)($t2)
/* B1D3E4 800A6244 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1D3E8 800A6248 0041C024 */  and   $t8, $v0, $at
/* B1D3EC 800A624C 3C038000 */  lui   $v1, 0x8000
/* B1D3F0 800A6250 030A5821 */  addu  $t3, $t8, $t2
/* B1D3F4 800A6254 006B1821 */  addu  $v1, $v1, $t3
/* B1D3F8 800A6258 8C630008 */  lw    $v1, 8($v1)
/* B1D3FC 800A625C 2401000B */  li    $at, 11
/* B1D400 800A6260 147E000A */  bne   $v1, $fp, .L800A628C
/* B1D404 800A6264 00000000 */   nop   
/* B1D408 800A6268 14940008 */  bne   $a0, $s4, .L800A628C
/* B1D40C 800A626C 02402825 */   move  $a1, $s2
/* B1D410 800A6270 02A02025 */  move  $a0, $s5
/* B1D414 800A6274 02003025 */  move  $a2, $s0
/* B1D418 800A6278 02E03825 */  move  $a3, $s7
/* B1D41C 800A627C 0C02978A */  jal   func_800A5E28
/* B1D420 800A6280 AFB60010 */   sw    $s6, 0x10($sp)
/* B1D424 800A6284 1000000B */  b     .L800A62B4
/* B1D428 800A6288 8E4C0000 */   lw    $t4, ($s2)
.L800A628C:
/* B1D42C 800A628C 54610009 */  bnel  $v1, $at, .L800A62B4
/* B1D430 800A6290 8E4C0000 */   lw    $t4, ($s2)
/* B1D434 800A6294 14940006 */  bne   $a0, $s4, .L800A62B0
/* B1D438 800A6298 02402825 */   move  $a1, $s2
/* B1D43C 800A629C 02A02025 */  move  $a0, $s5
/* B1D440 800A62A0 02003025 */  move  $a2, $s0
/* B1D444 800A62A4 00003825 */  move  $a3, $zero
/* B1D448 800A62A8 0C0297D8 */  jal   func_800A5F60
/* B1D44C 800A62AC AFB60010 */   sw    $s6, 0x10($sp)
.L800A62B0:
/* B1D450 800A62B0 8E4C0000 */  lw    $t4, ($s2)
.L800A62B4:
/* B1D454 800A62B4 26100001 */  addiu $s0, $s0, 1
/* B1D458 800A62B8 26310004 */  addiu $s1, $s1, 4
/* B1D45C 800A62BC 918D0004 */  lbu   $t5, 4($t4)
/* B1D460 800A62C0 020D082A */  slt   $at, $s0, $t5
/* B1D464 800A62C4 1420FFCF */  bnez  $at, .L800A6204
/* B1D468 800A62C8 00000000 */   nop   
.L800A62CC:
/* B1D46C 800A62CC 8FA20094 */  lw    $v0, 0x94($sp)
/* B1D470 800A62D0 8FA40088 */  lw    $a0, 0x88($sp)
/* B1D474 800A62D4 8FA5008C */  lw    $a1, 0x8c($sp)
/* B1D478 800A62D8 10400003 */  beqz  $v0, .L800A62E8
/* B1D47C 800A62DC 00000000 */   nop   
/* B1D480 800A62E0 0040F809 */  jalr  $v0
/* B1D484 800A62E4 02403025 */  move  $a2, $s2
.L800A62E8:
/* B1D488 800A62E8 3C068014 */  lui   $a2, %hi(D_801406D4) # $a2, 0x8014
/* B1D48C 800A62EC 24C606D4 */  addiu $a2, %lo(D_801406D4) # addiu $a2, $a2, 0x6d4
/* B1D490 800A62F0 27A40060 */  addiu $a0, $sp, 0x60
/* B1D494 800A62F4 02A02825 */  move  $a1, $s5
/* B1D498 800A62F8 0C031AD5 */  jal   Graph_CloseDisps
/* B1D49C 800A62FC 24070216 */   li    $a3, 534
/* B1D4A0 800A6300 8FBF0044 */  lw    $ra, 0x44($sp)
/* B1D4A4 800A6304 8FB00020 */  lw    $s0, 0x20($sp)
/* B1D4A8 800A6308 8FB10024 */  lw    $s1, 0x24($sp)
/* B1D4AC 800A630C 8FB20028 */  lw    $s2, 0x28($sp)
/* B1D4B0 800A6310 8FB3002C */  lw    $s3, 0x2c($sp)
/* B1D4B4 800A6314 8FB40030 */  lw    $s4, 0x30($sp)
/* B1D4B8 800A6318 8FB50034 */  lw    $s5, 0x34($sp)
/* B1D4BC 800A631C 8FB60038 */  lw    $s6, 0x38($sp)
/* B1D4C0 800A6320 8FB7003C */  lw    $s7, 0x3c($sp)
/* B1D4C4 800A6324 8FBE0040 */  lw    $fp, 0x40($sp)
/* B1D4C8 800A6328 03E00008 */  jr    $ra
/* B1D4CC 800A632C 27BD0088 */   addiu $sp, $sp, 0x88

