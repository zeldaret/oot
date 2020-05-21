.rdata
glabel D_8013F120
    .asciz "ROOM%d size=%d\n"
    .balign 4

glabel D_8013F130
    .asciz "../z_room.c"
    .balign 4

glabel D_8013F13C
    .asciz "game_play->room_rom_address.num = %d\n"
    .balign 4

glabel D_8013F164
    .asciz "DOOR%d=<%d> ROOM1=<%d, %d> ROOM2=<%d, %d>\n"
    .balign 4

glabel D_8013F190
    .asciz "\x1B[33m"
    .balign 4

glabel D_8013F198
    .asciz "部屋バッファサイズ=%08x(%5.1fK)\n"
    .balign 4

glabel D_8013F1BC
    .asciz "../z_room.c"
    .balign 4

glabel D_8013F1C8
    .asciz "部屋バッファ開始ポインタ=%08x\n"
    .balign 4

glabel D_8013F1E8
    .asciz "部屋バッファ終了ポインタ=%08x\n"
    .balign 4

glabel D_8013F208
    .asciz "\x1B[m"
    .balign 4

.text
glabel func_80096FE8
/* B0E188 80096FE8 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B0E18C 80096FEC AFB50038 */  sw    $s5, 0x38($sp)
/* B0E190 80096FF0 3C010001 */  lui   $at, 1
/* B0E194 80096FF4 AFBF003C */  sw    $ra, 0x3c($sp)
/* B0E198 80096FF8 AFB40034 */  sw    $s4, 0x34($sp)
/* B0E19C 80096FFC AFB30030 */  sw    $s3, 0x30($sp)
/* B0E1A0 80097000 AFB2002C */  sw    $s2, 0x2c($sp)
/* B0E1A4 80097004 AFB10028 */  sw    $s1, 0x28($sp)
/* B0E1A8 80097008 AFB00024 */  sw    $s0, 0x24($sp)
/* B0E1AC 8009700C AFA40040 */  sw    $a0, 0x40($sp)
/* B0E1B0 80097010 AFA50044 */  sw    $a1, 0x44($sp)
/* B0E1B4 80097014 0081A821 */  addu  $s5, $a0, $at
/* B0E1B8 80097018 92AE1DEC */  lbu   $t6, 0x1dec($s5)
/* B0E1BC 8009701C 00009825 */  move  $s3, $zero
/* B0E1C0 80097020 8EA21DF0 */  lw    $v0, 0x1df0($s5)
/* B0E1C4 80097024 19C00014 */  blez  $t6, .L80097078
/* B0E1C8 80097028 00009025 */   move  $s2, $zero
/* B0E1CC 8009702C 00408025 */  move  $s0, $v0
/* B0E1D0 80097030 8E0F0004 */  lw    $t7, 4($s0)
.L80097034:
/* B0E1D4 80097034 8E180000 */  lw    $t8, ($s0)
/* B0E1D8 80097038 3C048014 */  lui   $a0, %hi(D_8013F120) # $a0, 0x8014
/* B0E1DC 8009703C 2484F120 */  addiu $a0, %lo(D_8013F120) # addiu $a0, $a0, -0xee0
/* B0E1E0 80097040 01F88823 */  subu  $s1, $t7, $t8
/* B0E1E4 80097044 02203025 */  move  $a2, $s1
/* B0E1E8 80097048 0C00084C */  jal   osSyncPrintf
/* B0E1EC 8009704C 02402825 */   move  $a1, $s2
/* B0E1F0 80097050 0271082B */  sltu  $at, $s3, $s1
/* B0E1F4 80097054 50200003 */  beql  $at, $zero, .L80097064
/* B0E1F8 80097058 92B91DEC */   lbu   $t9, 0x1dec($s5)
/* B0E1FC 8009705C 02209825 */  move  $s3, $s1
/* B0E200 80097060 92B91DEC */  lbu   $t9, 0x1dec($s5)
.L80097064:
/* B0E204 80097064 26520001 */  addiu $s2, $s2, 1
/* B0E208 80097068 26100008 */  addiu $s0, $s0, 8
/* B0E20C 8009706C 0259082A */  slt   $at, $s2, $t9
/* B0E210 80097070 5420FFF0 */  bnezl $at, .L80097034
/* B0E214 80097074 8E0F0004 */   lw    $t7, 4($s0)
.L80097078:
/* B0E218 80097078 92AA1D34 */  lbu   $t2, 0x1d34($s5)
/* B0E21C 8009707C 3C048014 */  lui   $a0, %hi(D_8013F130) # $a0, 0x8014
/* B0E220 80097080 2484F130 */  addiu $a0, %lo(D_8013F130) # addiu $a0, $a0, -0xed0
/* B0E224 80097084 11400034 */  beqz  $t2, .L80097158
/* B0E228 80097088 24050390 */   li    $a1, 912
/* B0E22C 8009708C 8EB41DF0 */  lw    $s4, 0x1df0($s5)
/* B0E230 80097090 0C000B84 */  jal   LogUtils_LogThreadId
/* B0E234 80097094 8EB21D38 */   lw    $s2, 0x1d38($s5)
/* B0E238 80097098 3C048014 */  lui   $a0, %hi(D_8013F13C) # $a0, 0x8014
/* B0E23C 8009709C 2484F13C */  addiu $a0, %lo(D_8013F13C) # addiu $a0, $a0, -0xec4
/* B0E240 800970A0 0C00084C */  jal   osSyncPrintf
/* B0E244 800970A4 92A51DEC */   lbu   $a1, 0x1dec($s5)
/* B0E248 800970A8 92AB1D34 */  lbu   $t3, 0x1d34($s5)
/* B0E24C 800970AC 00008825 */  move  $s1, $zero
/* B0E250 800970B0 19600029 */  blez  $t3, .L80097158
/* B0E254 800970B4 00000000 */   nop
/* B0E258 800970B8 82470000 */  lb    $a3, ($s2)
.L800970BC:
/* B0E25C 800970BC 3C048014 */  lui   $a0, %hi(D_8013F164) # $a0, 0x8014
/* B0E260 800970C0 82490002 */  lb    $t1, 2($s2)
/* B0E264 800970C4 04E10003 */  bgez  $a3, .L800970D4
/* B0E268 800970C8 2484F164 */   addiu $a0, %lo(D_8013F164) # addiu $a0, $a0, -0xe9c
/* B0E26C 800970CC 10000006 */  b     .L800970E8
/* B0E270 800970D0 00001825 */   move  $v1, $zero
.L800970D4:
/* B0E274 800970D4 000760C0 */  sll   $t4, $a3, 3
/* B0E278 800970D8 028C1021 */  addu  $v0, $s4, $t4
/* B0E27C 800970DC 8C4D0004 */  lw    $t5, 4($v0)
/* B0E280 800970E0 8C4E0000 */  lw    $t6, ($v0)
/* B0E284 800970E4 01AE1823 */  subu  $v1, $t5, $t6
.L800970E8:
/* B0E288 800970E8 05210003 */  bgez  $t1, .L800970F8
/* B0E28C 800970EC 02202825 */   move  $a1, $s1
/* B0E290 800970F0 10000006 */  b     .L8009710C
/* B0E294 800970F4 00004025 */   move  $t0, $zero
.L800970F8:
/* B0E298 800970F8 000978C0 */  sll   $t7, $t1, 3
/* B0E29C 800970FC 028F1021 */  addu  $v0, $s4, $t7
/* B0E2A0 80097100 8C580004 */  lw    $t8, 4($v0)
/* B0E2A4 80097104 8C590000 */  lw    $t9, ($v0)
/* B0E2A8 80097108 03194023 */  subu  $t0, $t8, $t9
.L8009710C:
/* B0E2AC 8009710C 10E90003 */  beq   $a3, $t1, .L8009711C
/* B0E2B0 80097110 00608025 */   move  $s0, $v1
/* B0E2B4 80097114 10000001 */  b     .L8009711C
/* B0E2B8 80097118 00688021 */   addu  $s0, $v1, $t0
.L8009711C:
/* B0E2BC 8009711C 02003025 */  move  $a2, $s0
/* B0E2C0 80097120 AFA30010 */  sw    $v1, 0x10($sp)
/* B0E2C4 80097124 AFA90014 */  sw    $t1, 0x14($sp)
/* B0E2C8 80097128 0C00084C */  jal   osSyncPrintf
/* B0E2CC 8009712C AFA80018 */   sw    $t0, 0x18($sp)
/* B0E2D0 80097130 0270082B */  sltu  $at, $s3, $s0
/* B0E2D4 80097134 50200003 */  beql  $at, $zero, .L80097144
/* B0E2D8 80097138 92AA1D34 */   lbu   $t2, 0x1d34($s5)
/* B0E2DC 8009713C 02009825 */  move  $s3, $s0
/* B0E2E0 80097140 92AA1D34 */  lbu   $t2, 0x1d34($s5)
.L80097144:
/* B0E2E4 80097144 26310001 */  addiu $s1, $s1, 1
/* B0E2E8 80097148 26520010 */  addiu $s2, $s2, 0x10
/* B0E2EC 8009714C 022A082A */  slt   $at, $s1, $t2
/* B0E2F0 80097150 5420FFDA */  bnezl $at, .L800970BC
/* B0E2F4 80097154 82470000 */   lb    $a3, ($s2)
.L80097158:
/* B0E2F8 80097158 3C048014 */  lui   $a0, %hi(D_8013F190)
/* B0E2FC 8009715C 0C00084C */  jal   osSyncPrintf
/* B0E300 80097160 2484F190 */   addiu $a0, %lo(D_8013F190) # addiu $a0, $a0, -0xe70
/* B0E304 80097164 44932000 */  mtc1  $s3, $f4
/* B0E308 80097168 3C048014 */  lui   $a0, %hi(D_8013F198) # $a0, 0x8014
/* B0E30C 8009716C 2484F198 */  addiu $a0, %lo(D_8013F198) # addiu $a0, $a0, -0xe68
/* B0E310 80097170 02602825 */  move  $a1, $s3
/* B0E314 80097174 06610005 */  bgez  $s3, .L8009718C
/* B0E318 80097178 468021A0 */   cvt.s.w $f6, $f4
/* B0E31C 8009717C 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B0E320 80097180 44814000 */  mtc1  $at, $f8
/* B0E324 80097184 00000000 */  nop
/* B0E328 80097188 46083180 */  add.s $f6, $f6, $f8
.L8009718C:
/* B0E32C 8009718C 3C013A80 */  li    $at, 0x3A800000 # 0.000000
/* B0E330 80097190 44815000 */  mtc1  $at, $f10
/* B0E334 80097194 00000000 */  nop
/* B0E338 80097198 460A3402 */  mul.s $f16, $f6, $f10
/* B0E33C 8009719C 460084A1 */  cvt.d.s $f18, $f16
/* B0E340 800971A0 44079000 */  mfc1  $a3, $f18
/* B0E344 800971A4 44069800 */  mfc1  $a2, $f19
/* B0E348 800971A8 0C00084C */  jal   osSyncPrintf
/* B0E34C 800971AC 00000000 */   nop
/* B0E350 800971B0 3C068014 */  lui   $a2, %hi(D_8013F1BC) # $a2, 0x8014
/* B0E354 800971B4 24C6F1BC */  addiu $a2, %lo(D_8013F1BC) # addiu $a2, $a2, -0xe44
/* B0E358 800971B8 8FA40040 */  lw    $a0, 0x40($sp)
/* B0E35C 800971BC 02602825 */  move  $a1, $s3
/* B0E360 800971C0 0C031521 */  jal   GameState_AllocEnd
/* B0E364 800971C4 240703B2 */   li    $a3, 946
/* B0E368 800971C8 8FAB0044 */  lw    $t3, 0x44($sp)
/* B0E36C 800971CC 3C048014 */  lui   $a0, %hi(D_8013F1C8) # $a0, 0x8014
/* B0E370 800971D0 2484F1C8 */  addiu $a0, %lo(D_8013F1C8) # addiu $a0, $a0, -0xe38
/* B0E374 800971D4 00402825 */  move  $a1, $v0
/* B0E378 800971D8 0C00084C */  jal   osSyncPrintf
/* B0E37C 800971DC AD620028 */   sw    $v0, 0x28($t3)
/* B0E380 800971E0 8FAC0044 */  lw    $t4, 0x44($sp)
/* B0E384 800971E4 3C048014 */  lui   $a0, %hi(D_8013F1E8) # $a0, 0x8014
/* B0E388 800971E8 2484F1E8 */  addiu $a0, %lo(D_8013F1E8) # addiu $a0, $a0, -0xe18
/* B0E38C 800971EC 8D8D0028 */  lw    $t5, 0x28($t4)
/* B0E390 800971F0 01B32821 */  addu  $a1, $t5, $s3
/* B0E394 800971F4 0C00084C */  jal   osSyncPrintf
/* B0E398 800971F8 AD85002C */   sw    $a1, 0x2c($t4)
/* B0E39C 800971FC 3C048014 */  lui   $a0, %hi(D_8013F208) # $a0, 0x8014
/* B0E3A0 80097200 0C00084C */  jal   osSyncPrintf
/* B0E3A4 80097204 2484F208 */   addiu $a0, %lo(D_8013F208) # addiu $a0, $a0, -0xdf8
/* B0E3A8 80097208 8FAE0044 */  lw    $t6, 0x44($sp)
/* B0E3AC 8009720C 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B0E3B0 80097210 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B0E3B4 80097214 A1C00030 */  sb    $zero, 0x30($t6)
/* B0E3B8 80097218 8FAF0044 */  lw    $t7, 0x44($sp)
/* B0E3BC 8009721C A1E00031 */  sb    $zero, 0x31($t7)
/* B0E3C0 80097220 8C621364 */  lw    $v0, 0x1364($v1)
/* B0E3C4 80097224 18400006 */  blez  $v0, .L80097240
/* B0E3C8 80097228 0002C0C0 */   sll   $t8, $v0, 3
/* B0E3CC 8009722C 0302C023 */  subu  $t8, $t8, $v0
/* B0E3D0 80097230 0018C080 */  sll   $t8, $t8, 2
/* B0E3D4 80097234 0078C821 */  addu  $t9, $v1, $t8
/* B0E3D8 80097238 10000006 */  b     .L80097254
/* B0E3DC 8009723C 9327135E */   lbu   $a3, 0x135e($t9)
.L80097240:
/* B0E3E0 80097240 92AB1DEA */  lbu   $t3, 0x1dea($s5)
/* B0E3E4 80097244 8EAA1E00 */  lw    $t2, 0x1e00($s5)
/* B0E3E8 80097248 000B6840 */  sll   $t5, $t3, 1
/* B0E3EC 8009724C 014D6021 */  addu  $t4, $t2, $t5
/* B0E3F0 80097250 91870001 */  lbu   $a3, 1($t4)
.L80097254:
/* B0E3F4 80097254 8FA40040 */  lw    $a0, 0x40($sp)
/* B0E3F8 80097258 8FA50044 */  lw    $a1, 0x44($sp)
/* B0E3FC 8009725C 0C025CA3 */  jal   func_8009728C
/* B0E400 80097260 00E03025 */   move  $a2, $a3
/* B0E404 80097264 8FBF003C */  lw    $ra, 0x3c($sp)
/* B0E408 80097268 02601025 */  move  $v0, $s3
/* B0E40C 8009726C 8FB30030 */  lw    $s3, 0x30($sp)
/* B0E410 80097270 8FB00024 */  lw    $s0, 0x24($sp)
/* B0E414 80097274 8FB10028 */  lw    $s1, 0x28($sp)
/* B0E418 80097278 8FB2002C */  lw    $s2, 0x2c($sp)
/* B0E41C 8009727C 8FB40034 */  lw    $s4, 0x34($sp)
/* B0E420 80097280 8FB50038 */  lw    $s5, 0x38($sp)
/* B0E424 80097284 03E00008 */  jr    $ra
/* B0E428 80097288 27BD0040 */   addiu $sp, $sp, 0x40

