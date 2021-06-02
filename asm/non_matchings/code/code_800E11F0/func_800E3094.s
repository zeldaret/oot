glabel func_800E3094
/* B5A234 800E3094 27BDFF90 */  addiu $sp, $sp, -0x70
/* B5A238 800E3098 AFB10018 */  sw    $s1, 0x18($sp)
/* B5A23C 800E309C 3C118017 */  lui   $s1, %hi(gAudioContext) # $s1, 0x8017
/* B5A240 800E30A0 2631F180 */  addiu $s1, %lo(gAudioContext) # addiu $s1, $s1, -0xe80
/* B5A244 800E30A4 3C018017 */  lui   $at, %hi(D_801755D0) # $at, 0x8017
/* B5A248 800E30A8 AC2055D0 */  sw    $zero, %lo(D_801755D0)($at)
/* B5A24C 800E30AC AFBF001C */  sw    $ra, 0x1c($sp)
/* B5A250 800E30B0 AFB00014 */  sw    $s0, 0x14($sp)
/* B5A254 800E30B4 AFA40070 */  sw    $a0, 0x70($sp)
/* B5A258 800E30B8 AFA50074 */  sw    $a1, 0x74($sp)
/* B5A25C 800E30BC AE202984 */  sw    $zero, 0x2984($s1)
/* B5A260 800E30C0 02201025 */  move  $v0, $s1
/* B5A264 800E30C4 24036450 */  li    $v1, 25680
.L800E30C8:
/* B5A268 800E30C8 2463FFFF */  addiu $v1, $v1, -1
/* B5A26C 800E30CC A0400000 */  sb    $zero, ($v0)
/* B5A270 800E30D0 0461FFFD */  bgez  $v1, .L800E30C8
/* B5A274 800E30D4 24420001 */   addiu $v0, $v0, 1
/* B5A278 800E30D8 3C028000 */  lui   $v0, %hi(osTvType) # $v0, 0x8000
/* B5A27C 800E30DC 8C420300 */  lw    $v0, %lo(osTvType)($v0)
/* B5A280 800E30E0 10400007 */  beqz  $v0, .L800E3100
/* B5A284 800E30E4 24010001 */   li    $at, 1
/* B5A288 800E30E8 10410010 */  beq   $v0, $at, .L800E312C
/* B5A28C 800E30EC 24010002 */   li    $at, 2
/* B5A290 800E30F0 10410009 */  beq   $v0, $at, .L800E3118
/* B5A294 800E30F4 240F003C */   li    $t7, 60
/* B5A298 800E30F8 1000000C */  b     .L800E312C
/* B5A29C 800E30FC 00000000 */   nop
.L800E3100:
/* B5A2A0 800E3100 3C018015 */  lui   $at, %hi(D_80149480)
/* B5A2A4 800E3104 C4249480 */  lwc1  $f4, %lo(D_80149480)($at)
/* B5A2A8 800E3108 240E0032 */  li    $t6, 50
/* B5A2AC 800E310C AE2E2964 */  sw    $t6, 0x2964($s1)
/* B5A2B0 800E3110 1000000B */  b     .L800E3140
/* B5A2B4 800E3114 E6242960 */   swc1  $f4, 0x2960($s1)
.L800E3118:
/* B5A2B8 800E3118 3C018015 */  lui   $at, %hi(D_80149484)
/* B5A2BC 800E311C C4269484 */  lwc1  $f6, %lo(D_80149484)($at)
/* B5A2C0 800E3120 AE2F2964 */  sw    $t7, 0x2964($s1)
/* B5A2C4 800E3124 10000006 */  b     .L800E3140
/* B5A2C8 800E3128 E6262960 */   swc1  $f6, 0x2960($s1)
.L800E312C:
/* B5A2CC 800E312C 3C018015 */  lui   $at, %hi(D_80149488)
/* B5A2D0 800E3130 C4289488 */  lwc1  $f8, %lo(D_80149488)($at)
/* B5A2D4 800E3134 2418003C */  li    $t8, 60
/* B5A2D8 800E3138 AE382964 */  sw    $t8, 0x2964($s1)
/* B5A2DC 800E313C E6282960 */  swc1  $f8, 0x2960($s1)
.L800E3140:
/* B5A2E0 800E3140 0C039A06 */  jal   func_800E6818
/* B5A2E4 800E3144 00000000 */   nop
/* B5A2E8 800E3148 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B5A2EC 800E314C 3C048017 */  lui   $a0, %hi(gAudioContext+0x6) # $a0, 0x8017
/* B5A2F0 800E3150 2484F186 */  addiu $a0, %lo(gAudioContext+0x6) # addiu $a0, $a0, -0xe7a
/* B5A2F4 800E3154 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B5A2F8 800E3158 240300A0 */  li    $v1, 160
.L800E315C:
/* B5A2FC 800E315C 24420002 */  addiu $v0, $v0, 2
/* B5A300 800E3160 0044082B */  sltu  $at, $v0, $a0
/* B5A304 800E3164 1420FFFD */  bnez  $at, .L800E315C
/* B5A308 800E3168 A4432972 */   sh    $v1, 0x2972($v0)
/* B5A30C 800E316C 3C048017 */  lui   $a0, %hi(gAudioContext+0x25e8) # $a0, 0x8017
/* B5A310 800E3170 3C058017 */  lui   $a1, %hi(gAudioContext+0x2600) # $a1, 0x8017
/* B5A314 800E3174 AE20289C */  sw    $zero, 0x289c($s1)
/* B5A318 800E3178 AE2028A4 */  sw    $zero, 0x28a4($s1)
/* B5A31C 800E317C AE2028A8 */  sw    $zero, 0x28a8($s1)
/* B5A320 800E3180 A220289A */  sb    $zero, 0x289a($s1)
/* B5A324 800E3184 AE2028B8 */  sw    $zero, 0x28b8($s1)
/* B5A328 800E3188 AE2028F4 */  sw    $zero, 0x28f4($s1)
/* B5A32C 800E318C AE202944 */  sw    $zero, 0x2944($s1)
/* B5A330 800E3190 24A51780 */  addiu $a1, %lo(gAudioContext+0x2600) # addiu $a1, $a1, 0x1780
/* B5A334 800E3194 24841768 */  addiu $a0, %lo(gAudioContext+0x25e8) # addiu $a0, $a0, 0x1768
/* B5A338 800E3198 0C001874 */  jal   osCreateMesgQueue
/* B5A33C 800E319C 24060001 */   li    $a2, 1
/* B5A340 800E31A0 3C048017 */  lui   $a0, %hi(gAudioContext+0x1ed0) # $a0, 0x8017
/* B5A344 800E31A4 3C058017 */  lui   $a1, %hi(gAudioContext+0x1ee8) # $a1, 0x8017
/* B5A348 800E31A8 24A51068 */  addiu $a1, %lo(gAudioContext+0x1ee8) # addiu $a1, $a1, 0x1068
/* B5A34C 800E31AC 24841050 */  addiu $a0, %lo(gAudioContext+0x1ed0) # addiu $a0, $a0, 0x1050
/* B5A350 800E31B0 0C001874 */  jal   osCreateMesgQueue
/* B5A354 800E31B4 24060040 */   li    $a2, 64
/* B5A358 800E31B8 3C048017 */  lui   $a0, %hi(gAudioContext+0x1e20) # $a0, 0x8017
/* B5A35C 800E31BC 3C058017 */  lui   $a1, %hi(gAudioContext+0x1e38) # $a1, 0x8017
/* B5A360 800E31C0 24A50FB8 */  addiu $a1, %lo(gAudioContext+0x1e38) # addiu $a1, $a1, 0xfb8
/* B5A364 800E31C4 24840FA0 */  addiu $a0, %lo(gAudioContext+0x1e20) # addiu $a0, $a0, 0xfa0
/* B5A368 800E31C8 0C001874 */  jal   osCreateMesgQueue
/* B5A36C 800E31CC 24060010 */   li    $a2, 16
/* B5A370 800E31D0 3C048017 */  lui   $a0, %hi(gAudioContext+0x1e78) # $a0, 0x8017
/* B5A374 800E31D4 3C058017 */  lui   $a1, %hi(gAudioContext+0x1e90) # $a1, 0x8017
/* B5A378 800E31D8 24A51010 */  addiu $a1, %lo(gAudioContext+0x1e90) # addiu $a1, $a1, 0x1010
/* B5A37C 800E31DC 24840FF8 */  addiu $a0, %lo(gAudioContext+0x1e78) # addiu $a0, $a0, 0xff8
/* B5A380 800E31E0 0C001874 */  jal   osCreateMesgQueue
/* B5A384 800E31E4 24060010 */   li    $a2, 16
/* B5A388 800E31E8 AE2028A0 */  sw    $zero, 0x28a0($s1)
/* B5A38C 800E31EC 0C001E44 */  jal   osCartRomInit
/* B5A390 800E31F0 AE202620 */   sw    $zero, 0x2620($s1)
/* B5A394 800E31F4 8FA30070 */  lw    $v1, 0x70($sp)
/* B5A398 800E31F8 AE221E18 */  sw    $v0, 0x1e18($s1)
/* B5A39C 800E31FC 3C048015 */  lui   $a0, %hi(D_8014A6C8) # $a0, 0x8015
/* B5A3A0 800E3200 14600007 */  bnez  $v1, .L800E3220
/* B5A3A4 800E3204 3C19801E */   lui   $t9, %hi(gAudioHeap) # $t9, 0x801e
/* B5A3A8 800E3208 273989E0 */  addiu $t9, %lo(gAudioHeap) # addiu $t9, $t9, -0x7620
/* B5A3AC 800E320C AE393524 */  sw    $t9, 0x3524($s1)
/* B5A3B0 800E3210 3C088015 */  lui   $t0, %hi(D_8014A6C4) # $t0, 0x8015
/* B5A3B4 800E3214 8D08A6C4 */  lw    $t0, %lo(D_8014A6C4)($t0)
/* B5A3B8 800E3218 10000004 */  b     .L800E322C
/* B5A3BC 800E321C AE283528 */   sw    $t0, 0x3528($s1)
.L800E3220:
/* B5A3C0 800E3220 8FA90074 */  lw    $t1, 0x74($sp)
/* B5A3C4 800E3224 AE233524 */  sw    $v1, 0x3524($s1)
/* B5A3C8 800E3228 AE293528 */  sw    $t1, 0x3528($s1)
.L800E322C:
/* B5A3CC 800E322C 8E2A3528 */  lw    $t2, 0x3528($s1)
/* B5A3D0 800E3230 00008025 */  move  $s0, $zero
/* B5A3D4 800E3234 05410003 */  bgez  $t2, .L800E3244
/* B5A3D8 800E3238 000A58C3 */   sra   $t3, $t2, 3
/* B5A3DC 800E323C 25410007 */  addiu $at, $t2, 7
/* B5A3E0 800E3240 000158C3 */  sra   $t3, $at, 3
.L800E3244:
/* B5A3E4 800E3244 19600011 */  blez  $t3, .L800E328C
/* B5A3E8 800E3248 00001025 */   move  $v0, $zero
/* B5A3EC 800E324C 8E2E3524 */  lw    $t6, 0x3524($s1)
.L800E3250:
/* B5A3F0 800E3250 240C0000 */  li    $t4, 0
/* B5A3F4 800E3254 240D0000 */  li    $t5, 0
/* B5A3F8 800E3258 01C27821 */  addu  $t7, $t6, $v0
/* B5A3FC 800E325C ADEC0000 */  sw    $t4, ($t7)
/* B5A400 800E3260 ADED0004 */  sw    $t5, 4($t7)
/* B5A404 800E3264 8E383528 */  lw    $t8, 0x3528($s1)
/* B5A408 800E3268 26100001 */  addiu $s0, $s0, 1
/* B5A40C 800E326C 24420008 */  addiu $v0, $v0, 8
/* B5A410 800E3270 07010003 */  bgez  $t8, .L800E3280
/* B5A414 800E3274 0018C8C3 */   sra   $t9, $t8, 3
/* B5A418 800E3278 27010007 */  addiu $at, $t8, 7
/* B5A41C 800E327C 0001C8C3 */  sra   $t9, $at, 3
.L800E3280:
/* B5A420 800E3280 0219082A */  slt   $at, $s0, $t9
/* B5A424 800E3284 5420FFF2 */  bnezl $at, .L800E3250
/* B5A428 800E3288 8E2E3524 */   lw    $t6, 0x3524($s1)
.L800E328C:
/* B5A42C 800E328C 0C03797C */  jal   Audio_InitMainPools
/* B5A430 800E3290 8C84A6C8 */   lw    $a0, %lo(D_8014A6C8)($a0)
/* B5A434 800E3294 3C108017 */  lui   $s0, %hi(gAudioContext) # $s0, 0x8017
/* B5A438 800E3298 2610F180 */  addiu $s0, %lo(gAudioContext) # addiu $s0, $s0, -0xe80
.L800E329C:
/* B5A43C 800E329C 3C048017 */  lui   $a0, %hi(gAudioContext+0x29b0) # $a0, 0x8017
/* B5A440 800E32A0 24841B30 */  addiu $a0, %lo(gAudioContext+0x29b0) # addiu $a0, $a0, 0x1b30
/* B5A444 800E32A4 0C0378E0 */  jal   Audio_AllocZeroed
/* B5A448 800E32A8 24050B00 */   li    $a1, 2816
/* B5A44C 800E32AC 3C088017 */  lui   $t0, %hi(gAudioContext+0xc) # $t0, 0x8017
/* B5A450 800E32B0 2508F18C */  addiu $t0, %lo(gAudioContext+0xc) # addiu $t0, $t0, -0xe74
/* B5A454 800E32B4 26100004 */  addiu $s0, $s0, 4
/* B5A458 800E32B8 0208082B */  sltu  $at, $s0, $t0
/* B5A45C 800E32BC 1420FFF7 */  bnez  $at, .L800E329C
/* B5A460 800E32C0 AE022964 */   sw    $v0, 0x2964($s0)
/* B5A464 800E32C4 3C098015 */  lui   $t1, %hi(D_80155500) # $t1, 0x8015
/* B5A468 800E32C8 3C0A8015 */  lui   $t2, %hi(D_801550D0) # $t2, 0x8015
/* B5A46C 800E32CC 3C0B8015 */  lui   $t3, %hi(D_80155BF0) # $t3, 0x8015
/* B5A470 800E32D0 3C0E8015 */  lui   $t6, %hi(D_80155340) # $t6, 0x8015
/* B5A474 800E32D4 25295500 */  addiu $t1, %lo(D_80155500) # addiu $t1, $t1, 0x5500
/* B5A478 800E32D8 254A50D0 */  addiu $t2, %lo(D_801550D0) # addiu $t2, $t2, 0x50d0
/* B5A47C 800E32DC 256B5BF0 */  addiu $t3, %lo(D_80155BF0) # addiu $t3, $t3, 0x5bf0
/* B5A480 800E32E0 25CE5340 */  addiu $t6, %lo(D_80155340) # addiu $t6, $t6, 0x5340
/* B5A484 800E32E4 AE292830 */  sw    $t1, 0x2830($s1)
/* B5A488 800E32E8 AE2A2834 */  sw    $t2, 0x2834($s1)
/* B5A48C 800E32EC AE2B2838 */  sw    $t3, 0x2838($s1)
/* B5A490 800E32F0 AE2E283C */  sw    $t6, 0x283c($s1)
/* B5A494 800E32F4 852D0000 */  lh    $t5, ($t1)
/* B5A498 800E32F8 240F0001 */  li    $t7, 1
/* B5A49C 800E32FC A2203519 */  sb    $zero, 0x3519($s1)
/* B5A4A0 800E3300 A22F3518 */  sb    $t7, 0x3518($s1)
/* B5A4A4 800E3304 0C037E3D */  jal   Audio_ResetStep
/* B5A4A8 800E3308 A62D2840 */   sh    $t5, 0x2840($s1)
/* B5A4AC 800E330C 3C050004 */  lui   $a1, %hi(_AudioseqSegmentRomStart) # $a1, 4
/* B5A4B0 800E3310 24A54DF0 */  addiu $a1, %lo(_AudioseqSegmentRomStart) # addiu $a1, $a1, 0x4df0
/* B5A4B4 800E3314 8E242830 */  lw    $a0, 0x2830($s1)
/* B5A4B8 800E3318 0C0386C2 */  jal   func_800E1B08
/* B5A4BC 800E331C 00003025 */   move  $a2, $zero
/* B5A4C0 800E3320 3C050002 */  lui   $a1, %hi(_AudiobankSegmentRomStart) # $a1, 2
/* B5A4C4 800E3324 24A59030 */  addiu $a1, %lo(_AudiobankSegmentRomStart) # addiu $a1, $a1, -0x6fd0
/* B5A4C8 800E3328 8E242834 */  lw    $a0, 0x2834($s1)
/* B5A4CC 800E332C 0C0386C2 */  jal   func_800E1B08
/* B5A4D0 800E3330 00003025 */   move  $a2, $zero
/* B5A4D4 800E3334 3C050009 */  lui   $a1, %hi(_AudiotableSegmentRomStart) # $a1, 9
/* B5A4D8 800E3338 24A54870 */  addiu $a1, %lo(_AudiotableSegmentRomStart) # addiu $a1, $a1, 0x4870
/* B5A4DC 800E333C 8E242838 */  lw    $a0, 0x2838($s1)
/* B5A4E0 800E3340 0C0386C2 */  jal   func_800E1B08
/* B5A4E4 800E3344 00003025 */   move  $a2, $zero
/* B5A4E8 800E3348 8E382834 */  lw    $t8, 0x2834($s1)
/* B5A4EC 800E334C 3C048017 */  lui   $a0, %hi(gAudioContext+0x29b0) # $a0, 0x8017
/* B5A4F0 800E3350 24841B30 */  addiu $a0, %lo(gAudioContext+0x29b0) # addiu $a0, $a0, 0x1b30
/* B5A4F4 800E3354 87030000 */  lh    $v1, ($t8)
/* B5A4F8 800E3358 00032880 */  sll   $a1, $v1, 2
/* B5A4FC 800E335C 00A32821 */  addu  $a1, $a1, $v1
/* B5A500 800E3360 00052880 */  sll   $a1, $a1, 2
/* B5A504 800E3364 0C0378F7 */  jal   Audio_Alloc
/* B5A508 800E3368 AFA30024 */   sw    $v1, 0x24($sp)
/* B5A50C 800E336C 8FA30024 */  lw    $v1, 0x24($sp)
/* B5A510 800E3370 AE222844 */  sw    $v0, 0x2844($s1)
/* B5A514 800E3374 00008025 */  move  $s0, $zero
/* B5A518 800E3378 18600007 */  blez  $v1, .L800E3398
/* B5A51C 800E337C 02002025 */   move  $a0, $s0
.L800E3380:
/* B5A520 800E3380 0C038C0D */  jal   func_800E3034
/* B5A524 800E3384 AFA30024 */   sw    $v1, 0x24($sp)
/* B5A528 800E3388 8FA30024 */  lw    $v1, 0x24($sp)
/* B5A52C 800E338C 26100001 */  addiu $s0, $s0, 1
/* B5A530 800E3390 5603FFFB */  bnel  $s0, $v1, .L800E3380
/* B5A534 800E3394 02002025 */   move  $a0, $s0
.L800E3398:
/* B5A538 800E3398 3C048017 */  lui   $a0, %hi(gAudioContext+0x29b0) # $a0, 0x8017
/* B5A53C 800E339C 3C058015 */  lui   $a1, %hi(D_8014A6CC) # $a1, 0x8015
/* B5A540 800E33A0 8CA5A6CC */  lw    $a1, %lo(D_8014A6CC)($a1)
/* B5A544 800E33A4 0C0378F7 */  jal   Audio_Alloc
/* B5A548 800E33A8 24841B30 */   addiu $a0, %lo(gAudioContext+0x29b0) # addiu $a0, $a0, 0x1b30
/* B5A54C 800E33AC 14400003 */  bnez  $v0, .L800E33BC
/* B5A550 800E33B0 00402825 */   move  $a1, $v0
/* B5A554 800E33B4 3C018015 */  lui   $at, %hi(D_8014A6CC) # $at, 0x8015
/* B5A558 800E33B8 AC20A6CC */  sw    $zero, %lo(D_8014A6CC)($at)
.L800E33BC:
/* B5A55C 800E33BC 3C048017 */  lui   $a0, %hi(gAudioContext+0x2d50) # $a0, 0x8017
/* B5A560 800E33C0 3C068015 */  lui   $a2, %hi(D_8014A6CC) # $a2, 0x8015
/* B5A564 800E33C4 8CC6A6CC */  lw    $a2, %lo(D_8014A6CC)($a2)
/* B5A568 800E33C8 0C03790D */  jal   Audio_SoundAllocPoolInit
/* B5A56C 800E33CC 24841ED0 */   addiu $a0, %lo(gAudioContext+0x2d50) # addiu $a0, $a0, 0x1ed0
/* B5A570 800E33D0 24190001 */  li    $t9, 1
/* B5A574 800E33D4 3C018013 */  lui   $at, %hi(D_801304D8) # $at, 0x8013
/* B5A578 800E33D8 AC3904D8 */  sw    $t9, %lo(D_801304D8)($at)
/* B5A57C 800E33DC 8E25289C */  lw    $a1, 0x289c($s1)
/* B5A580 800E33E0 8E245BE8 */  lw    $a0, 0x5be8($s1)
/* B5A584 800E33E4 0C000C18 */  jal   osSendMesg
/* B5A588 800E33E8 00003025 */   move  $a2, $zero
/* B5A58C 800E33EC 8FBF001C */  lw    $ra, 0x1c($sp)
/* B5A590 800E33F0 8FB00014 */  lw    $s0, 0x14($sp)
/* B5A594 800E33F4 8FB10018 */  lw    $s1, 0x18($sp)
/* B5A598 800E33F8 03E00008 */  jr    $ra
/* B5A59C 800E33FC 27BD0070 */   addiu $sp, $sp, 0x70

