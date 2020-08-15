.rdata
glabel D_80139A24
    .asciz "camera: in %x\n"
    .balign 4

glabel D_80139A34
    .asciz "camera: cut out %x\n"
    .balign 4

glabel D_80139A48
    .asciz "camera: wait out %x\n"
    .balign 4

glabel D_80139A60
    .asciz "camera: engine (%d %d %d) %04x \n"
    .balign 4

glabel D_80139A84
    .asciz "camera: shrink_and_bitem %x(%d)\n"
    .balign 4

glabel D_80139AA8
    .asciz "camera: engine (%s(%d) %s(%d) %s(%d)) ok!\n"
    .balign 4

glabel D_80139AD4
    .asciz "camera: debug out\n"
    .balign 4

glabel D_80139AE8
    .asciz "dir  (%d) %d(%f) %d(%f) 0(0) \n"
    .balign 4

glabel D_80139B08
    .asciz "real (%d) %d(%f) %d(%f) 0(0) \n"
    .balign 4

glabel D_80139B28
    .asciz "camera: out (%f %f %f) (%f %f %f)\n"
    .balign 4

glabel D_80139B4C
    .asciz "camera: dir (%f %d(%f) %d(%f)) (%f)\n"
    .balign 4

glabel D_80139B74
    .asciz "camera: foot(%f %f %f) dist (%f)\n"
    .balign 4

.late_rodata
glabel D_8013A434
    .float 0.01

glabel D_8013A438
    .float 0.00003051851 # (1.0f / 32767.0f)

glabel D_8013A43C
    .float 0.00549325 # (180 / 32767.5f)

glabel D_8013A440
    .float 0.00549325 # (180 / 32767.5f)

glabel D_8013A444
    .float 0.00549325 # (180 / 32767.5f)

glabel D_8013A448
    .float 0.00549325 # (180 / 32767.5f)

glabel D_8013A44C
    .float 0.00549325 # (180 / 32767.5f)

.text
glabel func_800591EC
/* AD038C 800591EC 27BDFF20 */  addiu $sp, $sp, -0xe0
/* AD0390 800591F0 AFBF0044 */  sw    $ra, 0x44($sp)
/* AD0394 800591F4 AFB00040 */  sw    $s0, 0x40($sp)
/* AD0398 800591F8 AFA400E0 */  sw    $a0, 0xe0($sp)
/* AD039C 800591FC 8CAE008C */  lw    $t6, 0x8c($a1)
/* AD03A0 80059200 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AD03A4 80059204 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AD03A8 80059208 8DCF0790 */  lw    $t7, 0x790($t6)
/* AD03AC 8005920C 00A08025 */  move  $s0, $a1
/* AD03B0 80059210 3C048014 */  lui   $a0, %hi(D_80139A24) # $a0, 0x8014
/* AD03B4 80059214 8DF80090 */  lw    $t8, 0x90($t7)
/* AD03B8 80059218 AFB80058 */  sw    $t8, 0x58($sp)
/* AD03BC 8005921C 872902F4 */  lh    $t1, 0x2f4($t9)
/* AD03C0 80059220 51200004 */  beql  $t1, $zero, .L80059234
/* AD03C4 80059224 860A0140 */   lh    $t2, 0x140($s0)
/* AD03C8 80059228 0C00084C */  jal   osSyncPrintf
/* AD03CC 8005922C 24849A24 */   addiu $a0, %lo(D_80139A24) # addiu $a0, $a0, -0x65dc
/* AD03D0 80059230 860A0140 */  lh    $t2, 0x140($s0)
.L80059234:
/* AD03D4 80059234 3C0B8016 */  lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* AD03D8 80059238 3C018012 */  lui   $at, %hi(D_8011D3E8) # $at, 0x8012
/* AD03DC 8005923C 15400012 */  bnez  $t2, .L80059288
/* AD03E0 80059240 00000000 */   nop
/* AD03E4 80059244 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AD03E8 80059248 3C048014 */  lui   $a0, %hi(D_80139A34) # $a0, 0x8014
/* AD03EC 8005924C 24849A34 */  addiu $a0, %lo(D_80139A34) # addiu $a0, $a0, -0x65cc
/* AD03F0 80059250 856C02F4 */  lh    $t4, 0x2f4($t3)
/* AD03F4 80059254 51800004 */  beql  $t4, $zero, .L80059268
/* AD03F8 80059258 8A0F0134 */   lwl   $t7, 0x134($s0)
/* AD03FC 8005925C 0C00084C */  jal   osSyncPrintf
/* AD0400 80059260 02002825 */   move  $a1, $s0
/* AD0404 80059264 8A0F0134 */  lwl   $t7, 0x134($s0)
.L80059268:
/* AD0408 80059268 8FAD00E0 */  lw    $t5, 0xe0($sp)
/* AD040C 8005926C 9A0F0137 */  lwr   $t7, 0x137($s0)
/* AD0410 80059270 A9AF0000 */  swl   $t7, ($t5)
/* AD0414 80059274 B9AF0003 */  swr   $t7, 3($t5)
/* AD0418 80059278 960F0138 */  lhu   $t7, 0x138($s0)
/* AD041C 8005927C A5AF0004 */  sh    $t7, 4($t5)
/* AD0420 80059280 1000030C */  b     .L80059EB4
/* AD0424 80059284 8FA200E0 */   lw    $v0, 0xe0($sp)
.L80059288:
/* AD0428 80059288 AC20D3E8 */  sw    $zero, %lo(D_8011D3E8)($at)
/* AD042C 8005928C 8E050090 */  lw    $a1, 0x90($s0)
/* AD0430 80059290 10A000CC */  beqz  $a1, .L800595C4
/* AD0434 80059294 00000000 */   nop
/* AD0438 80059298 0C00BBD1 */  jal   func_8002EF44
/* AD043C 8005929C 27A40080 */   addiu $a0, $sp, 0x80
/* AD0440 800592A0 26050094 */  addiu $a1, $s0, 0x94
/* AD0444 800592A4 AFA50050 */  sw    $a1, 0x50($sp)
/* AD0448 800592A8 0C01F00A */  jal   OLib_Vec3fDistXZ
/* AD044C 800592AC 27A40080 */   addiu $a0, $sp, 0x80
/* AD0450 800592B0 E7A000A0 */  swc1  $f0, 0xa0($sp)
/* AD0454 800592B4 E60000D8 */  swc1  $f0, 0xd8($s0)
/* AD0458 800592B8 0C00B739 */  jal   func_8002DCE4
/* AD045C 800592BC 8E040090 */   lw    $a0, 0x90($s0)
/* AD0460 800592C0 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AD0464 800592C4 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AD0468 800592C8 3C018014 */  lui   $at, %hi(D_8013A434)
/* AD046C 800592CC C428A434 */  lwc1  $f8, %lo(D_8013A434)($at)
/* AD0470 800592D0 871901A4 */  lh    $t9, 0x1a4($t8)
/* AD0474 800592D4 C7B200A0 */  lwc1  $f18, 0xa0($sp)
/* AD0478 800592D8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AD047C 800592DC 44992000 */  mtc1  $t9, $f4
/* AD0480 800592E0 44817000 */  mtc1  $at, $f14
/* AD0484 800592E4 468021A0 */  cvt.s.w $f6, $f4
/* AD0488 800592E8 46083282 */  mul.s $f10, $f6, $f8
/* AD048C 800592EC 00000000 */  nop
/* AD0490 800592F0 46005402 */  mul.s $f16, $f10, $f0
/* AD0494 800592F4 0C01F02A */  jal   func_8007C0A8
/* AD0498 800592F8 46109303 */   div.s $f12, $f18, $f16
/* AD049C 800592FC E60000E0 */  swc1  $f0, 0xe0($s0)
/* AD04A0 80059300 C7A40080 */  lwc1  $f4, 0x80($sp)
/* AD04A4 80059304 C6060094 */  lwc1  $f6, 0x94($s0)
/* AD04A8 80059308 C6120098 */  lwc1  $f18, 0x98($s0)
/* AD04AC 8005930C 27AA0080 */  addiu $t2, $sp, 0x80
/* AD04B0 80059310 46062201 */  sub.s $f8, $f4, $f6
/* AD04B4 80059314 C606009C */  lwc1  $f6, 0x9c($s0)
/* AD04B8 80059318 27A900AC */  addiu $t1, $sp, 0xac
/* AD04BC 8005931C E60800F0 */  swc1  $f8, 0xf0($s0)
/* AD04C0 80059320 C7AA0084 */  lwc1  $f10, 0x84($sp)
/* AD04C4 80059324 46125401 */  sub.s $f16, $f10, $f18
/* AD04C8 80059328 E61000F4 */  swc1  $f16, 0xf4($s0)
/* AD04CC 8005932C C7A40088 */  lwc1  $f4, 0x88($sp)
/* AD04D0 80059330 46062201 */  sub.s $f8, $f4, $f6
/* AD04D4 80059334 E60800F8 */  swc1  $f8, 0xf8($s0)
/* AD04D8 80059338 8D4C0000 */  lw    $t4, ($t2)
/* AD04DC 8005933C AD2C0000 */  sw    $t4, ($t1)
/* AD04E0 80059340 8D4B0004 */  lw    $t3, 4($t2)
/* AD04E4 80059344 AD2B0004 */  sw    $t3, 4($t1)
/* AD04E8 80059348 8D4C0008 */  lw    $t4, 8($t2)
/* AD04EC 8005934C AD2C0008 */  sw    $t4, 8($t1)
/* AD04F0 80059350 0C00B721 */  jal   Player_GetCameraYOffset
/* AD04F4 80059354 8E040090 */   lw    $a0, 0x90($s0)
/* AD04F8 80059358 C7AA00B0 */  lwc1  $f10, 0xb0($sp)
/* AD04FC 8005935C 3C068016 */  lui   $a2, %hi(D_8015CE4C) # $a2, 0x8016
/* AD0500 80059360 27AE00AC */  addiu $t6, $sp, 0xac
/* AD0504 80059364 46005480 */  add.s $f18, $f10, $f0
/* AD0508 80059368 24C6CE4C */  addiu $a2, %lo(D_8015CE4C) # addiu $a2, $a2, -0x31b4
/* AD050C 8005936C 27A700A8 */  addiu $a3, $sp, 0xa8
/* AD0510 80059370 E7B200B0 */  swc1  $f18, 0xb0($sp)
/* AD0514 80059374 8E0D0090 */  lw    $t5, 0x90($s0)
/* AD0518 80059378 8E04008C */  lw    $a0, 0x8c($s0)
/* AD051C 8005937C AFAE0014 */  sw    $t6, 0x14($sp)
/* AD0520 80059380 AFAD0010 */  sw    $t5, 0x10($sp)
/* AD0524 80059384 0C00F283 */  jal   func_8003CA0C
/* AD0528 80059388 248507C0 */   addiu $a1, $a0, 0x7c0
/* AD052C 8005938C 3C01C6FA */  li    $at, 0xC6FA0000 # 0.000000
/* AD0530 80059390 44818000 */  mtc1  $at, $f16
/* AD0534 80059394 3C038016 */  lui   $v1, %hi(D_8015CE4C) # $v1, 0x8016
/* AD0538 80059398 2463CE4C */  addiu $v1, %lo(D_8015CE4C) # addiu $v1, $v1, -0x31b4
/* AD053C 8005939C 46100032 */  c.eq.s $f0, $f16
/* AD0540 800593A0 E7A000A4 */  swc1  $f0, 0xa4($sp)
/* AD0544 800593A4 3C028012 */  lui   $v0, %hi(D_8011DB10) # $v0, 0x8012
/* AD0548 800593A8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AD054C 800593AC 4501001D */  bc1t  .L80059424
/* AD0550 800593B0 27AE0080 */   addiu $t6, $sp, 0x80
/* AD0554 800593B4 8C6F0000 */  lw    $t7, ($v1)
/* AD0558 800593B8 3C018014 */  lui   $at, %hi(D_8013A438)
/* AD055C 800593BC C422A438 */  lwc1  $f2, %lo(D_8013A438)($at)
/* AD0560 800593C0 85F80008 */  lh    $t8, 8($t7)
/* AD0564 800593C4 00001025 */  move  $v0, $zero
/* AD0568 800593C8 44982000 */  mtc1  $t8, $f4
/* AD056C 800593CC 00000000 */  nop
/* AD0570 800593D0 468021A0 */  cvt.s.w $f6, $f4
/* AD0574 800593D4 46023202 */  mul.s $f8, $f6, $f2
/* AD0578 800593D8 E6080108 */  swc1  $f8, 0x108($s0)
/* AD057C 800593DC 8C790000 */  lw    $t9, ($v1)
/* AD0580 800593E0 8729000A */  lh    $t1, 0xa($t9)
/* AD0584 800593E4 44895000 */  mtc1  $t1, $f10
/* AD0588 800593E8 00000000 */  nop
/* AD058C 800593EC 468054A0 */  cvt.s.w $f18, $f10
/* AD0590 800593F0 46029402 */  mul.s $f16, $f18, $f2
/* AD0594 800593F4 E610010C */  swc1  $f16, 0x10c($s0)
/* AD0598 800593F8 8C6A0000 */  lw    $t2, ($v1)
/* AD059C 800593FC 854B000C */  lh    $t3, 0xc($t2)
/* AD05A0 80059400 448B2000 */  mtc1  $t3, $f4
/* AD05A4 80059404 00000000 */  nop
/* AD05A8 80059408 468021A0 */  cvt.s.w $f6, $f4
/* AD05AC 8005940C 46023202 */  mul.s $f8, $f6, $f2
/* AD05B0 80059410 E6080110 */  swc1  $f8, 0x110($s0)
/* AD05B4 80059414 8FAC00A8 */  lw    $t4, 0xa8($sp)
/* AD05B8 80059418 E6000104 */  swc1  $f0, 0x104($s0)
/* AD05BC 8005941C 10000008 */  b     .L80059440
/* AD05C0 80059420 A60C0146 */   sh    $t4, 0x146($s0)
.L80059424:
/* AD05C4 80059424 8C42DB10 */  lw    $v0, %lo(D_8011DB10)($v0)
/* AD05C8 80059428 44800000 */  mtc1  $zero, $f0
/* AD05CC 8005942C 44815000 */  mtc1  $at, $f10
/* AD05D0 80059430 24420001 */  addiu $v0, $v0, 1
/* AD05D4 80059434 E6000108 */  swc1  $f0, 0x108($s0)
/* AD05D8 80059438 E6000110 */  swc1  $f0, 0x110($s0)
/* AD05DC 8005943C E60A010C */  swc1  $f10, 0x10c($s0)
.L80059440:
/* AD05E0 80059440 8FAD0050 */  lw    $t5, 0x50($sp)
/* AD05E4 80059444 8DD80000 */  lw    $t8, ($t6)
/* AD05E8 80059448 3C018012 */  lui   $at, %hi(D_8011DB10) # $at, 0x8012
/* AD05EC 8005944C ADB80000 */  sw    $t8, ($t5)
/* AD05F0 80059450 8DCF0004 */  lw    $t7, 4($t6)
/* AD05F4 80059454 ADAF0004 */  sw    $t7, 4($t5)
/* AD05F8 80059458 8DD80008 */  lw    $t8, 8($t6)
/* AD05FC 8005945C ADB80008 */  sw    $t8, 8($t5)
/* AD0600 80059460 8DCF000C */  lw    $t7, 0xc($t6)
/* AD0604 80059464 ADAF000C */  sw    $t7, 0xc($t5)
/* AD0608 80059468 8DD80010 */  lw    $t8, 0x10($t6)
/* AD060C 8005946C ADB80010 */  sw    $t8, 0x10($t5)
/* AD0610 80059470 AC22DB10 */  sw    $v0, %lo(D_8011DB10)($at)
/* AD0614 80059474 284100C8 */  slti  $at, $v0, 0xc8
/* AD0618 80059478 10200052 */  beqz  $at, .L800595C4
/* AD061C 8005947C 00000000 */   nop
/* AD0620 80059480 86190140 */  lh    $t9, 0x140($s0)
/* AD0624 80059484 24010007 */  li    $at, 7
/* AD0628 80059488 57210008 */  bnel  $t9, $at, .L800594AC
/* AD062C 8005948C 8602014C */   lh    $v0, 0x14c($s0)
/* AD0630 80059490 0C01622D */  jal   func_800588B4
/* AD0634 80059494 02002025 */   move  $a0, $s0
/* AD0638 80059498 0C01633E */  jal   func_80058CF8
/* AD063C 8005949C 02002025 */   move  $a0, $s0
/* AD0640 800594A0 3C038016 */  lui   $v1, %hi(D_8015CE4C) # $v1, 0x8016
/* AD0644 800594A4 2463CE4C */  addiu $v1, %lo(D_8015CE4C) # addiu $v1, $v1, -0x31b4
/* AD0648 800594A8 8602014C */  lh    $v0, 0x14c($s0)
.L800594AC:
/* AD064C 800594AC 240AFFFF */  li    $t2, -1
/* AD0650 800594B0 30490004 */  andi  $t1, $v0, 4
/* AD0654 800594B4 55200004 */  bnezl $t1, .L800594C8
/* AD0658 800594B8 304B0001 */   andi  $t3, $v0, 1
/* AD065C 800594BC A60A0156 */  sh    $t2, 0x156($s0)
/* AD0660 800594C0 8602014C */  lh    $v0, 0x14c($s0)
/* AD0664 800594C4 304B0001 */  andi  $t3, $v0, 1
.L800594C8:
/* AD0668 800594C8 11600022 */  beqz  $t3, .L80059554
/* AD066C 800594CC 304C0004 */   andi  $t4, $v0, 4
/* AD0670 800594D0 11800020 */  beqz  $t4, .L80059554
/* AD0674 800594D4 304D0400 */   andi  $t5, $v0, 0x400
/* AD0678 800594D8 15A0001E */  bnez  $t5, .L80059554
/* AD067C 800594DC 304E0200 */   andi  $t6, $v0, 0x200
/* AD0680 800594E0 11C00004 */  beqz  $t6, .L800594F4
/* AD0684 800594E4 8FAF0058 */   lw    $t7, 0x58($sp)
/* AD0688 800594E8 81F8014F */  lb    $t8, 0x14f($t7)
/* AD068C 800594EC 24010001 */  li    $at, 1
/* AD0690 800594F0 17010018 */  bne   $t8, $at, .L80059554
.L800594F4:
/* AD0694 800594F4 0002CBC2 */   srl   $t9, $v0, 0xf
/* AD0698 800594F8 17200016 */  bnez  $t9, .L80059554
/* AD069C 800594FC C7B200A4 */   lwc1  $f18, 0xa4($sp)
/* AD06A0 80059500 3C01C6FA */  li    $at, 0xC6FA0000 # 0.000000
/* AD06A4 80059504 44818000 */  mtc1  $at, $f16
/* AD06A8 80059508 02002025 */  move  $a0, $s0
/* AD06AC 8005950C 27A500A8 */  addiu $a1, $sp, 0xa8
/* AD06B0 80059510 46109032 */  c.eq.s $f18, $f16
/* AD06B4 80059514 00000000 */  nop
/* AD06B8 80059518 4503000F */  bc1tl .L80059558
/* AD06BC 8005951C 86050156 */   lh    $a1, 0x156($s0)
/* AD06C0 80059520 0C0111E7 */  jal   func_8004479C
/* AD06C4 80059524 8C660000 */   lw    $a2, ($v1)
/* AD06C8 80059528 00021C00 */  sll   $v1, $v0, 0x10
/* AD06CC 8005952C 00031C03 */  sra   $v1, $v1, 0x10
/* AD06D0 80059530 2401FFFF */  li    $at, -1
/* AD06D4 80059534 10610007 */  beq   $v1, $at, .L80059554
/* AD06D8 80059538 8FA900A8 */   lw    $t1, 0xa8($sp)
/* AD06DC 8005953C A6090158 */  sh    $t1, 0x158($s0)
/* AD06E0 80059540 8FAA00A8 */  lw    $t2, 0xa8($sp)
/* AD06E4 80059544 24010032 */  li    $at, 50
/* AD06E8 80059548 55410003 */  bnel  $t2, $at, .L80059558
/* AD06EC 8005954C 86050156 */   lh    $a1, 0x156($s0)
/* AD06F0 80059550 A6030156 */  sh    $v1, 0x156($s0)
.L80059554:
/* AD06F4 80059554 86050156 */  lh    $a1, 0x156($s0)
.L80059558:
/* AD06F8 80059558 2401FFFF */  li    $at, -1
/* AD06FC 8005955C C7A40084 */  lwc1  $f4, 0x84($sp)
/* AD0700 80059560 10A10018 */  beq   $a1, $at, .L800595C4
/* AD0704 80059564 C7A600A4 */   lwc1  $f6, 0xa4($sp)
/* AD0708 80059568 46062001 */  sub.s $f0, $f4, $f6
/* AD070C 8005956C 3C014000 */  li    $at, 0x40000000 # 0.000000
/* AD0710 80059570 44814000 */  mtc1  $at, $f8
/* AD0714 80059574 46000005 */  abs.s $f0, $f0
/* AD0718 80059578 4608003C */  c.lt.s $f0, $f8
/* AD071C 8005957C 00000000 */  nop
/* AD0720 80059580 45000010 */  bc1f  .L800595C4
/* AD0724 80059584 00000000 */   nop
/* AD0728 80059588 860B014C */  lh    $t3, 0x14c($s0)
/* AD072C 8005958C 8FAD0058 */  lw    $t5, 0x58($sp)
/* AD0730 80059590 316C0200 */  andi  $t4, $t3, 0x200
/* AD0734 80059594 51800006 */  beql  $t4, $zero, .L800595B0
/* AD0738 80059598 860F0158 */   lh    $t7, 0x158($s0)
/* AD073C 8005959C 81AE014F */  lb    $t6, 0x14f($t5)
/* AD0740 800595A0 24010001 */  li    $at, 1
/* AD0744 800595A4 15C10007 */  bne   $t6, $at, .L800595C4
/* AD0748 800595A8 00000000 */   nop
/* AD074C 800595AC 860F0158 */  lh    $t7, 0x158($s0)
.L800595B0:
/* AD0750 800595B0 02002025 */  move  $a0, $s0
/* AD0754 800595B4 0C0169EA */  jal   func_8005A7A8
/* AD0758 800595B8 A60F0146 */   sh    $t7, 0x146($s0)
/* AD075C 800595BC 2418FFFF */  li    $t8, -1
/* AD0760 800595C0 A6180156 */  sh    $t8, 0x156($s0)
.L800595C4:
/* AD0764 800595C4 0C01613A */  jal   func_800584E8
/* AD0768 800595C8 02002025 */   move  $a0, $s0
/* AD076C 800595CC 0C01634D */  jal   func_80058D34
/* AD0770 800595D0 02002025 */   move  $a0, $s0
/* AD0774 800595D4 86190140 */  lh    $t9, 0x140($s0)
/* AD0778 800595D8 24010001 */  li    $at, 1
/* AD077C 800595DC 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* AD0780 800595E0 57210012 */  bnel  $t9, $at, .L8005962C
/* AD0784 800595E4 860D014C */   lh    $t5, 0x14c($s0)
/* AD0788 800595E8 8D29FA90 */  lw    $t1, %lo(gGameInfo)($t1)
/* AD078C 800595EC 3C048014 */  lui   $a0, %hi(D_80139A48) # $a0, 0x8014
/* AD0790 800595F0 24849A48 */  addiu $a0, %lo(D_80139A48) # addiu $a0, $a0, -0x65b8
/* AD0794 800595F4 852A02F4 */  lh    $t2, 0x2f4($t1)
/* AD0798 800595F8 51400004 */  beql  $t2, $zero, .L8005960C
/* AD079C 800595FC 8A0C0134 */   lwl   $t4, 0x134($s0)
/* AD07A0 80059600 0C00084C */  jal   osSyncPrintf
/* AD07A4 80059604 02002825 */   move  $a1, $s0
/* AD07A8 80059608 8A0C0134 */  lwl   $t4, 0x134($s0)
.L8005960C:
/* AD07AC 8005960C 8FA200E0 */  lw    $v0, 0xe0($sp)
/* AD07B0 80059610 9A0C0137 */  lwr   $t4, 0x137($s0)
/* AD07B4 80059614 A84C0000 */  swl   $t4, ($v0)
/* AD07B8 80059618 B84C0003 */  swr   $t4, 3($v0)
/* AD07BC 8005961C 960C0138 */  lhu   $t4, 0x138($s0)
/* AD07C0 80059620 10000224 */  b     .L80059EB4
/* AD07C4 80059624 A44C0004 */   sh    $t4, 4($v0)
/* AD07C8 80059628 860D014C */  lh    $t5, 0x14c($s0)
.L8005962C:
/* AD07CC 8005962C A600014A */  sh    $zero, 0x14a($s0)
/* AD07D0 80059630 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AD07D4 80059634 31AEFBDF */  andi  $t6, $t5, 0xfbdf
/* AD07D8 80059638 A60E014C */  sh    $t6, 0x14c($s0)
/* AD07DC 8005963C 860F014C */  lh    $t7, 0x14c($s0)
/* AD07E0 80059640 3C048014 */  lui   $a0, %hi(D_80139A60) # $a0, 0x8014
/* AD07E4 80059644 24849A60 */  addiu $a0, %lo(D_80139A60) # addiu $a0, $a0, -0x65a0
/* AD07E8 80059648 35F80010 */  ori   $t8, $t7, 0x10
/* AD07EC 8005964C A618014C */  sh    $t8, 0x14c($s0)
/* AD07F0 80059650 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AD07F4 80059654 872902F4 */  lh    $t1, 0x2f4($t9)
/* AD07F8 80059658 1120000D */  beqz  $t1, .L80059690
/* AD07FC 8005965C 00000000 */   nop
/* AD0800 80059660 86050142 */  lh    $a1, 0x142($s0)
/* AD0804 80059664 3C0B8012 */  lui   $t3, %hi(sCameraSettings+4)
/* AD0808 80059668 86060144 */  lh    $a2, 0x144($s0)
/* AD080C 8005966C 000550C0 */  sll   $t2, $a1, 3
/* AD0810 80059670 016A5821 */  addu  $t3, $t3, $t2
/* AD0814 80059674 8D6BD068 */  lw    $t3, %lo(sCameraSettings+4)($t3)
/* AD0818 80059678 000660C0 */  sll   $t4, $a2, 3
/* AD081C 8005967C 860E014C */  lh    $t6, 0x14c($s0)
/* AD0820 80059680 016C6821 */  addu  $t5, $t3, $t4
/* AD0824 80059684 85A70000 */  lh    $a3, ($t5)
/* AD0828 80059688 0C00084C */  jal   osSyncPrintf
/* AD082C 8005968C AFAE0010 */   sw    $t6, 0x10($sp)
.L80059690:
/* AD0830 80059690 3C028012 */  lui   $v0, %hi(D_8011DB10) # $v0, 0x8012
/* AD0834 80059694 8C42DB10 */  lw    $v0, %lo(D_8011DB10)($v0)
/* AD0838 80059698 284100C8 */  slti  $at, $v0, 0xc8
/* AD083C 8005969C 50200014 */  beql  $at, $zero, .L800596F0
/* AD0840 800596A0 8E0E0090 */   lw    $t6, 0x90($s0)
/* AD0844 800596A4 860F0142 */  lh    $t7, 0x142($s0)
/* AD0848 800596A8 3C198012 */  lui   $t9, %hi(sCameraSettings+4)
/* AD084C 800596AC 86090144 */  lh    $t1, 0x144($s0)
/* AD0850 800596B0 000FC0C0 */  sll   $t8, $t7, 3
/* AD0854 800596B4 0338C821 */  addu  $t9, $t9, $t8
/* AD0858 800596B8 8F39D068 */  lw    $t9, %lo(sCameraSettings+4)($t9)
/* AD085C 800596BC 000950C0 */  sll   $t2, $t1, 3
/* AD0860 800596C0 02002025 */  move  $a0, $s0
/* AD0864 800596C4 032A5821 */  addu  $t3, $t9, $t2
/* AD0868 800596C8 856C0000 */  lh    $t4, ($t3)
/* AD086C 800596CC 3C198012 */  lui   $t9, %hi(sCameraFunctions)
/* AD0870 800596D0 000C6880 */  sll   $t5, $t4, 2
/* AD0874 800596D4 032DC821 */  addu  $t9, $t9, $t5
/* AD0878 800596D8 8F39D274 */  lw    $t9, %lo(sCameraFunctions)($t9)
/* AD087C 800596DC 0320F809 */  jalr  $t9
/* AD0880 800596E0 00000000 */  nop
/* AD0884 800596E4 1000000E */  b     .L80059720
/* AD0888 800596E8 860F0140 */   lh    $t7, 0x140($s0)
/* AD088C 800596EC 8E0E0090 */  lw    $t6, 0x90($s0)
.L800596F0:
/* AD0890 800596F0 27A40098 */  addiu $a0, $sp, 0x98
/* AD0894 800596F4 26050050 */  addiu $a1, $s0, 0x50
/* AD0898 800596F8 51C00009 */  beql  $t6, $zero, .L80059720
/* AD089C 800596FC 860F0140 */   lh    $t7, 0x140($s0)
/* AD08A0 80059700 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* AD08A4 80059704 2606005C */   addiu $a2, $s0, 0x5c
/* AD08A8 80059708 02002025 */  move  $a0, $s0
/* AD08AC 8005970C 27A50098 */  addiu $a1, $sp, 0x98
/* AD08B0 80059710 24060000 */  li    $a2, 0
/* AD08B4 80059714 0C0115EA */  jal   func_800457A8
/* AD08B8 80059718 00003825 */   move  $a3, $zero
/* AD08BC 8005971C 860F0140 */  lh    $t7, 0x140($s0)
.L80059720:
/* AD08C0 80059720 24010007 */  li    $at, 7
/* AD08C4 80059724 3C028016 */  lui   $v0, %hi(gSaveContext+0x135c) # $v0, 0x8016
/* AD08C8 80059728 15E10038 */  bne   $t7, $at, .L8005980C
/* AD08CC 8005972C 00000000 */   nop
/* AD08D0 80059730 8C42F9BC */  lw    $v0, %lo(gSaveContext+0x135c)($v0)
/* AD08D4 80059734 3C038012 */  lui   $v1, %hi(D_8011D3F0) # $v1, 0x8012
/* AD08D8 80059738 24010003 */  li    $at, 3
/* AD08DC 8005973C 10400009 */  beqz  $v0, .L80059764
/* AD08E0 80059740 2463D3F0 */   addiu $v1, %lo(D_8011D3F0) # addiu $v1, $v1, -0x2c10
/* AD08E4 80059744 10410007 */  beq   $v0, $at, .L80059764
/* AD08E8 80059748 3C028012 */   lui   $v0, %hi(D_8011D3A0) # $v0, 0x8012
/* AD08EC 8005974C 2442D3A0 */  addiu $v0, %lo(D_8011D3A0) # addiu $v0, $v0, -0x2c60
/* AD08F0 80059750 AC400000 */  sw    $zero, ($v0)
/* AD08F4 80059754 0C0114D4 */  jal   func_80045350
/* AD08F8 80059758 84440002 */   lh    $a0, 2($v0)
/* AD08FC 8005975C 1000002B */  b     .L8005980C
/* AD0900 80059760 00000000 */   nop
.L80059764:
/* AD0904 80059764 8C620000 */  lw    $v0, ($v1)
/* AD0908 80059768 5040000E */  beql  $v0, $zero, .L800597A4
/* AD090C 8005976C 8E06008C */   lw    $a2, 0x8c($s0)
/* AD0910 80059770 86180164 */  lh    $t8, 0x164($s0)
/* AD0914 80059774 3C058012 */  lui   $a1, %hi(D_8011D3A0) # $a1, 0x8012
/* AD0918 80059778 24A5D3A0 */  addiu $a1, %lo(D_8011D3A0) # addiu $a1, $a1, -0x2c60
/* AD091C 8005977C 17000008 */  bnez  $t8, .L800597A0
/* AD0920 80059780 2449FFFF */   addiu $t1, $v0, -1
/* AD0924 80059784 240A3200 */  li    $t2, 12800
/* AD0928 80059788 ACAA0000 */  sw    $t2, ($a1)
/* AD092C 8005978C AC690000 */  sw    $t1, ($v1)
/* AD0930 80059790 0C0114D4 */  jal   func_80045350
/* AD0934 80059794 84A40002 */   lh    $a0, 2($a1)
/* AD0938 80059798 1000001C */  b     .L8005980C
/* AD093C 8005979C 00000000 */   nop
.L800597A0:
/* AD0940 800597A0 8E06008C */  lw    $a2, 0x8c($s0)
.L800597A4:
/* AD0944 800597A4 3C0B0001 */  lui   $t3, 1
/* AD0948 800597A8 340CF200 */  li    $t4, 61952
/* AD094C 800597AC 01665821 */  addu  $t3, $t3, $a2
/* AD0950 800597B0 916B241B */  lbu   $t3, 0x241b($t3)
/* AD0954 800597B4 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AD0958 800597B8 3C048012 */  lui   $a0, %hi(D_8011D3A0+2) # $a0, 0x8012
/* AD095C 800597BC 51600007 */  beql  $t3, $zero, .L800597DC
/* AD0960 800597C0 90CD1D6C */   lbu   $t5, 0x1d6c($a2)
/* AD0964 800597C4 AC2CD3A0 */  sw    $t4, %lo(D_8011D3A0)($at)
/* AD0968 800597C8 0C0114D4 */  jal   func_80045350
/* AD096C 800597CC 8484D3A2 */   lh    $a0,%lo(D_8011D3A0+2)($a0)
/* AD0970 800597D0 1000000E */  b     .L8005980C
/* AD0974 800597D4 00000000 */   nop
/* AD0978 800597D8 90CD1D6C */  lbu   $t5, 0x1d6c($a2)
.L800597DC:
/* AD097C 800597DC 24193200 */  li    $t9, 12800
/* AD0980 800597E0 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AD0984 800597E4 11A00007 */  beqz  $t5, .L80059804
/* AD0988 800597E8 3C048012 */   lui   $a0, %hi(D_8011D3A0+2)
/* AD098C 800597EC AC39D3A0 */  sw    $t9, %lo(D_8011D3A0)($at)
/* AD0990 800597F0 3C048012 */  lui   $a0, %hi(D_8011D3A0+2) # $a0, 0x8012
/* AD0994 800597F4 0C0114D4 */  jal   func_80045350
/* AD0998 800597F8 8484D3A2 */   lh    $a0,%lo(D_8011D3A0+2)($a0)
/* AD099C 800597FC 10000003 */  b     .L8005980C
/* AD09A0 80059800 00000000 */   nop
.L80059804:
/* AD09A4 80059804 0C0114D4 */  jal   func_80045350
/* AD09A8 80059808 8484D3A2 */   lh    $a0,%lo(D_8011D3A0+2)($a0)
.L8005980C:
/* AD09AC 8005980C 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AD09B0 80059810 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AD09B4 80059814 3C048014 */  lui   $a0, %hi(D_80139A84) # $a0, 0x8014
/* AD09B8 80059818 24849A84 */  addiu $a0, %lo(D_80139A84) # addiu $a0, $a0, -0x657c
/* AD09BC 8005981C 85C202F4 */  lh    $v0, 0x2f4($t6)
/* AD09C0 80059820 3C058012 */  lui   $a1, %hi(D_8011D3A0) # $a1, 0x8012
/* AD09C4 80059824 1040000A */  beqz  $v0, .L80059850
/* AD09C8 80059828 00000000 */   nop
/* AD09CC 8005982C 8E0F008C */  lw    $t7, 0x8c($s0)
/* AD09D0 80059830 3C060001 */  lui   $a2, 1
/* AD09D4 80059834 8CA5D3A0 */  lw    $a1, %lo(D_8011D3A0)($a1)
/* AD09D8 80059838 00CF3021 */  addu  $a2, $a2, $t7
/* AD09DC 8005983C 0C00084C */  jal   osSyncPrintf
/* AD09E0 80059840 90C6241B */   lbu   $a2, 0x241b($a2)
/* AD09E4 80059844 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AD09E8 80059848 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AD09EC 8005984C 870202F4 */  lh    $v0, 0x2f4($t8)
.L80059850:
/* AD09F0 80059850 1040001F */  beqz  $v0, .L800598D0
/* AD09F4 80059854 00000000 */   nop
/* AD09F8 80059858 86060142 */  lh    $a2, 0x142($s0)
/* AD09FC 8005985C 2408000C */  li    $t0, 12
/* AD0A00 80059860 86020144 */  lh    $v0, 0x144($s0)
/* AD0A04 80059864 00C80019 */  multu $a2, $t0
/* AD0A08 80059868 3C198012 */  lui   $t9, %hi(sCameraSettings+4)
/* AD0A0C 8005986C 000668C0 */  sll   $t5, $a2, 3
/* AD0A10 80059870 032DC821 */  addu  $t9, $t9, $t5
/* AD0A14 80059874 8F39D068 */  lw    $t9, %lo(sCameraSettings+4)($t9)
/* AD0A18 80059878 000270C0 */  sll   $t6, $v0, 3
/* AD0A1C 8005987C 3C0A8012 */  lui   $t2, %hi(sCameraSettingNames) # $t2, 0x8012
/* AD0A20 80059880 AFA20010 */  sw    $v0, 0x10($sp)
/* AD0A24 80059884 032E7821 */  addu  $t7, $t9, $t6
/* AD0A28 80059888 85E30000 */  lh    $v1, ($t7)
/* AD0A2C 8005988C 00004812 */  mflo  $t1
/* AD0A30 80059890 254A9F8C */  addiu $t2, %lo(sCameraSettingNames) # addiu $t2, $t2, -0x6074
/* AD0A34 80059894 012A2821 */  addu  $a1, $t1, $t2
/* AD0A38 80059898 00480019 */  multu $v0, $t0
/* AD0A3C 8005989C 3C098012 */  lui   $t1, %hi(sCameraFunctionNames) # $t1, 0x8012
/* AD0A40 800598A0 2529D3F8 */  addiu $t1, %lo(sCameraFunctionNames) # addiu $t1, $t1, -0x2c08
/* AD0A44 800598A4 3C0C8012 */  lui   $t4, %hi(sCameraModeNames) # $t4, 0x8012
/* AD0A48 800598A8 0003C0C0 */  sll   $t8, $v1, 3
/* AD0A4C 800598AC 03095021 */  addu  $t2, $t8, $t1
/* AD0A50 800598B0 258CA2A4 */  addiu $t4, %lo(sCameraModeNames) # addiu $t4, $t4, -0x5d5c
/* AD0A54 800598B4 3C048014 */  lui   $a0, %hi(D_80139AA8) # $a0, 0x8014
/* AD0A58 800598B8 24849AA8 */  addiu $a0, %lo(D_80139AA8) # addiu $a0, $a0, -0x6558
/* AD0A5C 800598BC AFAA0014 */  sw    $t2, 0x14($sp)
/* AD0A60 800598C0 00005812 */  mflo  $t3
/* AD0A64 800598C4 016C3821 */  addu  $a3, $t3, $t4
/* AD0A68 800598C8 0C00084C */  jal   osSyncPrintf
/* AD0A6C 800598CC AFA30018 */   sw    $v1, 0x18($sp)
.L800598D0:
/* AD0A70 800598D0 3C0B8016 */  lui   $t3, %hi(D_8015BD7C) # $t3, 0x8016
/* AD0A74 800598D4 8D6BBD7C */  lw    $t3, %lo(D_8015BD7C)($t3)
/* AD0A78 800598D8 2401EFFF */  li    $at, -4097
/* AD0A7C 800598DC 3C028012 */  lui   $v0, %hi(D_8011D394) # $v0, 0x8012
/* AD0A80 800598E0 956C0050 */  lhu   $t4, 0x50($t3)
/* AD0A84 800598E4 2442D394 */  addiu $v0, %lo(D_8011D394) # addiu $v0, $v0, -0x2c6c
/* AD0A88 800598E8 01816827 */  nor   $t5, $t4, $at
/* AD0A8C 800598EC 15A00012 */  bnez  $t5, .L80059938
/* AD0A90 800598F0 00000000 */   nop
/* AD0A94 800598F4 8C590000 */  lw    $t9, ($v0)
/* AD0A98 800598F8 3C048016 */  lui   $a0, %hi(D_8015BD80) # $a0, 0x8016
/* AD0A9C 800598FC 2484BD80 */  addiu $a0, %lo(D_8015BD80) # addiu $a0, $a0, -0x4280
/* AD0AA0 80059900 3B2E0001 */  xori  $t6, $t9, 1
/* AD0AA4 80059904 11C00005 */  beqz  $t6, .L8005991C
/* AD0AA8 80059908 AC4E0000 */   sw    $t6, ($v0)
/* AD0AAC 8005990C 0C02D379 */  jal   func_800B4DE4
/* AD0AB0 80059910 02002825 */   move  $a1, $s0
/* AD0AB4 80059914 10000008 */  b     .L80059938
/* AD0AB8 80059918 00000000 */   nop
.L8005991C:
/* AD0ABC 8005991C 8E06008C */  lw    $a2, 0x8c($s0)
/* AD0AC0 80059920 90D81D6C */  lbu   $t8, 0x1d6c($a2)
/* AD0AC4 80059924 00C02025 */  move  $a0, $a2
/* AD0AC8 80059928 13000003 */  beqz  $t8, .L80059938
/* AD0ACC 8005992C 00000000 */   nop
/* AD0AD0 80059930 0C01914D */  jal   func_80064534
/* AD0AD4 80059934 24C51D64 */   addiu $a1, $a2, 0x1d64
.L80059938:
/* AD0AD8 80059938 3C028012 */  lui   $v0, %hi(D_8011D394) # $v0, 0x8012
/* AD0ADC 8005993C 2442D394 */  addiu $v0, %lo(D_8011D394) # addiu $v0, $v0, -0x2c6c
/* AD0AE0 80059940 8C490000 */  lw    $t1, ($v0)
/* AD0AE4 80059944 3C018016 */  lui   $at, %hi(D_8015BDC8)
/* AD0AE8 80059948 3C048016 */  lui   $a0, %hi(D_8015BD80) # $a0, 0x8016
/* AD0AEC 8005994C 11200022 */  beqz  $t1, .L800599D8
/* AD0AF0 80059950 3C028016 */   lui   $v0, %hi(gGameInfo)
/* AD0AF4 80059954 C42ABDC8 */  lwc1  $f10, %lo(D_8015BDC8)($at)
/* AD0AF8 80059958 8E0A008C */  lw    $t2, 0x8c($s0)
/* AD0AFC 8005995C 2484BD80 */  addiu $a0, %lo(D_8015BD80) # addiu $a0, $a0, -0x4280
/* AD0B00 80059960 02002825 */  move  $a1, $s0
/* AD0B04 80059964 0C02D39F */  jal   func_800B4E7C
/* AD0B08 80059968 E54A00D0 */   swc1  $f10, 0xd0($t2)
/* AD0B0C 8005996C 8E04008C */  lw    $a0, 0x8c($s0)
/* AD0B10 80059970 3C058016 */  lui   $a1, %hi(D_8015BD90) # $a1, 0x8016
/* AD0B14 80059974 3C068016 */  lui   $a2, %hi(D_8015BD84) # $a2, 0x8016
/* AD0B18 80059978 3C078016 */  lui   $a3, %hi(D_8015BD9C) # $a3, 0x8016
/* AD0B1C 8005997C 24E7BD9C */  addiu $a3, %lo(D_8015BD9C) # addiu $a3, $a3, -0x4264
/* AD0B20 80059980 24C6BD84 */  addiu $a2, %lo(D_8015BD84) # addiu $a2, $a2, -0x427c
/* AD0B24 80059984 24A5BD90 */  addiu $a1, %lo(D_8015BD90) # addiu $a1, $a1, -0x4270
/* AD0B28 80059988 0C02A8D6 */  jal   func_800AA358
/* AD0B2C 8005998C 248400B8 */   addiu $a0, $a0, 0xb8
/* AD0B30 80059990 3C0B8016 */  lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* AD0B34 80059994 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AD0B38 80059998 3C048014 */  lui   $a0, %hi(D_80139AD4) # $a0, 0x8014
/* AD0B3C 8005999C 856C02F4 */  lh    $t4, 0x2f4($t3)
/* AD0B40 800599A0 11800003 */  beqz  $t4, .L800599B0
/* AD0B44 800599A4 00000000 */   nop
/* AD0B48 800599A8 0C00084C */  jal   osSyncPrintf
/* AD0B4C 800599AC 24849AD4 */   addiu $a0, %lo(D_80139AD4) # addiu $a0, $a0, -0x652c
.L800599B0:
/* AD0B50 800599B0 3C0D8016 */  lui   $t5, %hi(D_8015CE46) # $t5, 0x8016
/* AD0B54 800599B4 25ADCE46 */  addiu $t5, %lo(D_8015CE46) # addiu $t5, $t5, -0x31ba
/* AD0B58 800599B8 89AE0000 */  lwl   $t6, ($t5)
/* AD0B5C 800599BC 8FA200E0 */  lw    $v0, 0xe0($sp)
/* AD0B60 800599C0 99AE0003 */  lwr   $t6, 3($t5)
/* AD0B64 800599C4 A84E0000 */  swl   $t6, ($v0)
/* AD0B68 800599C8 B84E0003 */  swr   $t6, 3($v0)
/* AD0B6C 800599CC 95AE0004 */  lhu   $t6, 4($t5)
/* AD0B70 800599D0 10000138 */  b     .L80059EB4
/* AD0B74 800599D4 A44E0004 */   sh    $t6, 4($v0)
.L800599D8:
/* AD0B78 800599D8 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AD0B7C 800599DC 24010003 */  li    $at, 3
/* AD0B80 800599E0 02002025 */  move  $a0, $s0
/* AD0B84 800599E4 844F0194 */  lh    $t7, 0x194($v0)
/* AD0B88 800599E8 31F8FFF7 */  andi  $t8, $t7, 0xfff7
/* AD0B8C 800599EC A4580194 */  sh    $t8, 0x194($v0)
/* AD0B90 800599F0 86090140 */  lh    $t1, 0x140($s0)
/* AD0B94 800599F4 1521000A */  bne   $t1, $at, .L80059A20
/* AD0B98 800599F8 00000000 */   nop
/* AD0B9C 800599FC 8A0C0134 */  lwl   $t4, 0x134($s0)
/* AD0BA0 80059A00 8FAA00E0 */  lw    $t2, 0xe0($sp)
/* AD0BA4 80059A04 9A0C0137 */  lwr   $t4, 0x137($s0)
/* AD0BA8 80059A08 A94C0000 */  swl   $t4, ($t2)
/* AD0BAC 80059A0C B94C0003 */  swr   $t4, 3($t2)
/* AD0BB0 80059A10 960C0138 */  lhu   $t4, 0x138($s0)
/* AD0BB4 80059A14 A54C0004 */  sh    $t4, 4($t2)
/* AD0BB8 80059A18 10000126 */  b     .L80059EB4
/* AD0BBC 80059A1C 8FA200E0 */   lw    $v0, 0xe0($sp)
.L80059A20:
/* AD0BC0 80059A20 0C024BFC */  jal   Quake_Calc
/* AD0BC4 80059A24 27A5005C */   addiu $a1, $sp, 0x5c
/* AD0BC8 80059A28 10400038 */  beqz  $v0, .L80059B0C
/* AD0BCC 80059A2C AFA200A8 */   sw    $v0, 0xa8($sp)
/* AD0BD0 80059A30 860D0142 */  lh    $t5, 0x142($s0)
/* AD0BD4 80059A34 24010038 */  li    $at, 56
/* AD0BD8 80059A38 C7B0005C */  lwc1  $f16, 0x5c($sp)
/* AD0BDC 80059A3C 51A10034 */  beql  $t5, $at, .L80059B10
/* AD0BE0 80059A40 8E0C0050 */   lw    $t4, 0x50($s0)
/* AD0BE4 80059A44 C6120050 */  lwc1  $f18, 0x50($s0)
/* AD0BE8 80059A48 C7A80060 */  lwc1  $f8, 0x60($sp)
/* AD0BEC 80059A4C 27A40098 */  addiu $a0, $sp, 0x98
/* AD0BF0 80059A50 46109100 */  add.s $f4, $f18, $f16
/* AD0BF4 80059A54 C7B00064 */  lwc1  $f16, 0x64($sp)
/* AD0BF8 80059A58 27A500C8 */  addiu $a1, $sp, 0xc8
/* AD0BFC 80059A5C 27A600D4 */  addiu $a2, $sp, 0xd4
/* AD0C00 80059A60 E7A400D4 */  swc1  $f4, 0xd4($sp)
/* AD0C04 80059A64 C6060054 */  lwc1  $f6, 0x54($s0)
/* AD0C08 80059A68 46083280 */  add.s $f10, $f6, $f8
/* AD0C0C 80059A6C C7A80068 */  lwc1  $f8, 0x68($sp)
/* AD0C10 80059A70 E7AA00D8 */  swc1  $f10, 0xd8($sp)
/* AD0C14 80059A74 C6120058 */  lwc1  $f18, 0x58($s0)
/* AD0C18 80059A78 46109100 */  add.s $f4, $f18, $f16
/* AD0C1C 80059A7C C7B0006C */  lwc1  $f16, 0x6c($sp)
/* AD0C20 80059A80 E7A400DC */  swc1  $f4, 0xdc($sp)
/* AD0C24 80059A84 C606005C */  lwc1  $f6, 0x5c($s0)
/* AD0C28 80059A88 46083280 */  add.s $f10, $f6, $f8
/* AD0C2C 80059A8C C7A80070 */  lwc1  $f8, 0x70($sp)
/* AD0C30 80059A90 E7AA00C8 */  swc1  $f10, 0xc8($sp)
/* AD0C34 80059A94 C6120060 */  lwc1  $f18, 0x60($s0)
/* AD0C38 80059A98 46109100 */  add.s $f4, $f18, $f16
/* AD0C3C 80059A9C E7A400CC */  swc1  $f4, 0xcc($sp)
/* AD0C40 80059AA0 C6060064 */  lwc1  $f6, 0x64($s0)
/* AD0C44 80059AA4 46083280 */  add.s $f10, $f6, $f8
/* AD0C48 80059AA8 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* AD0C4C 80059AAC E7AA00D0 */   swc1  $f10, 0xd0($sp)
/* AD0C50 80059AB0 87B9009C */  lh    $t9, 0x9c($sp)
/* AD0C54 80059AB4 87AE0074 */  lh    $t6, 0x74($sp)
/* AD0C58 80059AB8 87AF009E */  lh    $t7, 0x9e($sp)
/* AD0C5C 80059ABC 87B80076 */  lh    $t8, 0x76($sp)
/* AD0C60 80059AC0 032E2821 */  addu  $a1, $t9, $t6
/* AD0C64 80059AC4 00052C00 */  sll   $a1, $a1, 0x10
/* AD0C68 80059AC8 01F83021 */  addu  $a2, $t7, $t8
/* AD0C6C 80059ACC 00063400 */  sll   $a2, $a2, 0x10
/* AD0C70 80059AD0 00063403 */  sra   $a2, $a2, 0x10
/* AD0C74 80059AD4 00052C03 */  sra   $a1, $a1, 0x10
/* AD0C78 80059AD8 27A400BC */  addiu $a0, $sp, 0xbc
/* AD0C7C 80059ADC 0C01139A */  jal   func_80044E68
/* AD0C80 80059AE0 8607015A */   lh    $a3, 0x15a($s0)
/* AD0C84 80059AE4 87A90078 */  lh    $t1, 0x78($sp)
/* AD0C88 80059AE8 3C018014 */  lui   $at, %hi(D_8013A43C)
/* AD0C8C 80059AEC C424A43C */  lwc1  $f4, %lo(D_8013A43C)($at)
/* AD0C90 80059AF0 44899000 */  mtc1  $t1, $f18
/* AD0C94 80059AF4 C60800FC */  lwc1  $f8, 0xfc($s0)
/* AD0C98 80059AF8 46809420 */  cvt.s.w $f16, $f18
/* AD0C9C 80059AFC 46048182 */  mul.s $f6, $f16, $f4
/* AD0CA0 80059B00 46064280 */  add.s $f10, $f8, $f6
/* AD0CA4 80059B04 1000001A */  b     .L80059B70
/* AD0CA8 80059B08 E7AA00B8 */   swc1  $f10, 0xb8($sp)
.L80059B0C:
/* AD0CAC 80059B0C 8E0C0050 */  lw    $t4, 0x50($s0)
.L80059B10:
/* AD0CB0 80059B10 27AA00D4 */  addiu $t2, $sp, 0xd4
/* AD0CB4 80059B14 27AD00C8 */  addiu $t5, $sp, 0xc8
/* AD0CB8 80059B18 AD4C0000 */  sw    $t4, ($t2)
/* AD0CBC 80059B1C 8E0B0054 */  lw    $t3, 0x54($s0)
/* AD0CC0 80059B20 27A40098 */  addiu $a0, $sp, 0x98
/* AD0CC4 80059B24 27A500C8 */  addiu $a1, $sp, 0xc8
/* AD0CC8 80059B28 AD4B0004 */  sw    $t3, 4($t2)
/* AD0CCC 80059B2C 8E0C0058 */  lw    $t4, 0x58($s0)
/* AD0CD0 80059B30 27A600D4 */  addiu $a2, $sp, 0xd4
/* AD0CD4 80059B34 AD4C0008 */  sw    $t4, 8($t2)
/* AD0CD8 80059B38 8E0E005C */  lw    $t6, 0x5c($s0)
/* AD0CDC 80059B3C ADAE0000 */  sw    $t6, ($t5)
/* AD0CE0 80059B40 8E190060 */  lw    $t9, 0x60($s0)
/* AD0CE4 80059B44 ADB90004 */  sw    $t9, 4($t5)
/* AD0CE8 80059B48 8E0E0064 */  lw    $t6, 0x64($s0)
/* AD0CEC 80059B4C 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* AD0CF0 80059B50 ADAE0008 */   sw    $t6, 8($t5)
/* AD0CF4 80059B54 27A400BC */  addiu $a0, $sp, 0xbc
/* AD0CF8 80059B58 87A5009C */  lh    $a1, 0x9c($sp)
/* AD0CFC 80059B5C 87A6009E */  lh    $a2, 0x9e($sp)
/* AD0D00 80059B60 0C01139A */  jal   func_80044E68
/* AD0D04 80059B64 8607015A */   lh    $a3, 0x15a($s0)
/* AD0D08 80059B68 C61200FC */  lwc1  $f18, 0xfc($s0)
/* AD0D0C 80059B6C E7B200B8 */  swc1  $f18, 0xb8($sp)
.L80059B70:
/* AD0D10 80059B70 8602015C */  lh    $v0, 0x15c($s0)
/* AD0D14 80059B74 27AC00BC */  addiu $t4, $sp, 0xbc
/* AD0D18 80059B78 27AE0068 */  addiu $t6, $sp, 0x68
/* AD0D1C 80059B7C 304F0004 */  andi  $t7, $v0, 4
/* AD0D20 80059B80 11E0000A */  beqz  $t7, .L80059BAC
/* AD0D24 80059B84 3058FFFB */   andi  $t8, $v0, 0xfffb
/* AD0D28 80059B88 8E0B0068 */  lw    $t3, 0x68($s0)
/* AD0D2C 80059B8C A618015C */  sh    $t8, 0x15c($s0)
/* AD0D30 80059B90 27A900BC */  addiu $t1, $sp, 0xbc
/* AD0D34 80059B94 AD2B0000 */  sw    $t3, ($t1)
/* AD0D38 80059B98 8E0A006C */  lw    $t2, 0x6c($s0)
/* AD0D3C 80059B9C AD2A0004 */  sw    $t2, 4($t1)
/* AD0D40 80059BA0 8E0B0070 */  lw    $t3, 0x70($s0)
/* AD0D44 80059BA4 10000007 */  b     .L80059BC4
/* AD0D48 80059BA8 AD2B0008 */   sw    $t3, 8($t1)
.L80059BAC:
/* AD0D4C 80059BAC 8D990000 */  lw    $t9, ($t4)
/* AD0D50 80059BB0 AE190068 */  sw    $t9, 0x68($s0)
/* AD0D54 80059BB4 8D8D0004 */  lw    $t5, 4($t4)
/* AD0D58 80059BB8 AE0D006C */  sw    $t5, 0x6c($s0)
/* AD0D5C 80059BBC 8D990008 */  lw    $t9, 8($t4)
/* AD0D60 80059BC0 AE190070 */  sw    $t9, 0x70($s0)
.L80059BC4:
/* AD0D64 80059BC4 8DD80000 */  lw    $t8, ($t6)
/* AD0D68 80059BC8 02002025 */  move  $a0, $s0
/* AD0D6C 80059BCC AE180080 */  sw    $t8, 0x80($s0)
/* AD0D70 80059BD0 8DCF0004 */  lw    $t7, 4($t6)
/* AD0D74 80059BD4 AE0F0084 */  sw    $t7, 0x84($s0)
/* AD0D78 80059BD8 8DD80008 */  lw    $t8, 8($t6)
/* AD0D7C 80059BDC 0C0163A3 */  jal   func_80058E8C
/* AD0D80 80059BE0 AE180088 */   sw    $t8, 0x88($s0)
/* AD0D84 80059BE4 8E06008C */  lw    $a2, 0x8c($s0)
/* AD0D88 80059BE8 24010051 */  li    $at, 81
/* AD0D8C 80059BEC 84C900A4 */  lh    $t1, 0xa4($a2)
/* AD0D90 80059BF0 24C400B8 */  addiu $a0, $a2, 0xb8
/* AD0D94 80059BF4 1521000D */  bne   $t1, $at, .L80059C2C
/* AD0D98 80059BF8 3C01426C */   li    $at, 0x426C0000 # 0.000000
/* AD0D9C 80059BFC 44812000 */  mtc1  $at, $f4
/* AD0DA0 80059C00 C61000FC */  lwc1  $f16, 0xfc($s0)
/* AD0DA4 80059C04 3C053F4A */  lui   $a1, (0x3F4A3D71 >> 16) # lui $a1, 0x3f4a
/* AD0DA8 80059C08 34A53D71 */  ori   $a1, (0x3F4A3D71 & 0xFFFF) # ori $a1, $a1, 0x3d71
/* AD0DAC 80059C0C 4604803C */  c.lt.s $f16, $f4
/* AD0DB0 80059C10 00000000 */  nop
/* AD0DB4 80059C14 45000005 */  bc1f  .L80059C2C
/* AD0DB8 80059C18 00000000 */   nop
/* AD0DBC 80059C1C 0C02A90F */  jal   View_SetScale
/* AD0DC0 80059C20 24C400B8 */   addiu $a0, $a2, 0xb8
/* AD0DC4 80059C24 10000004 */  b     .L80059C38
/* AD0DC8 80059C28 C7A800B8 */   lwc1  $f8, 0xb8($sp)
.L80059C2C:
/* AD0DCC 80059C2C 0C02A90F */  jal   View_SetScale
/* AD0DD0 80059C30 3C053F80 */   lui   $a1, 0x3f80
/* AD0DD4 80059C34 C7A800B8 */  lwc1  $f8, 0xb8($sp)
.L80059C38:
/* AD0DD8 80059C38 8E0A008C */  lw    $t2, 0x8c($s0)
/* AD0DDC 80059C3C 27A500C8 */  addiu $a1, $sp, 0xc8
/* AD0DE0 80059C40 27A600D4 */  addiu $a2, $sp, 0xd4
/* AD0DE4 80059C44 E54800D0 */  swc1  $f8, 0xd0($t2)
/* AD0DE8 80059C48 8E04008C */  lw    $a0, 0x8c($s0)
/* AD0DEC 80059C4C 27A700BC */  addiu $a3, $sp, 0xbc
/* AD0DF0 80059C50 0C02A8D6 */  jal   func_800AA358
/* AD0DF4 80059C54 248400B8 */   addiu $a0, $a0, 0xb8
/* AD0DF8 80059C58 87AB009C */  lh    $t3, 0x9c($sp)
/* AD0DFC 80059C5C 3C038012 */  lui   $v1, %hi(D_8011D3E8) # $v1, 0x8012
/* AD0E00 80059C60 2463D3E8 */  addiu $v1, %lo(D_8011D3E8) # addiu $v1, $v1, -0x2c18
/* AD0E04 80059C64 A60B013A */  sh    $t3, 0x13a($s0)
/* AD0E08 80059C68 87AC009E */  lh    $t4, 0x9e($sp)
/* AD0E0C 80059C6C A600013E */  sh    $zero, 0x13e($s0)
/* AD0E10 80059C70 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AD0E14 80059C74 A60C013C */  sh    $t4, 0x13c($s0)
/* AD0E18 80059C78 8C6D0000 */  lw    $t5, ($v1)
/* AD0E1C 80059C7C 87B9009C */  lh    $t9, 0x9c($sp)
/* AD0E20 80059C80 15A00005 */  bnez  $t5, .L80059C98
/* AD0E24 80059C84 00000000 */   nop
/* AD0E28 80059C88 A6190134 */  sh    $t9, 0x134($s0)
/* AD0E2C 80059C8C 87AE009E */  lh    $t6, 0x9e($sp)
/* AD0E30 80059C90 A6000138 */  sh    $zero, 0x138($s0)
/* AD0E34 80059C94 A60E0136 */  sh    $t6, 0x136($s0)
.L80059C98:
/* AD0E38 80059C98 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AD0E3C 80059C9C 85F802F6 */  lh    $t8, 0x2f6($t7)
/* AD0E40 80059CA0 53000029 */  beql  $t8, $zero, .L80059D48
/* AD0E44 80059CA4 86090160 */   lh    $t1, 0x160($s0)
/* AD0E48 80059CA8 86060134 */  lh    $a2, 0x134($s0)
/* AD0E4C 80059CAC 3C018014 */  lui   $at, %hi(D_8013A440)
/* AD0E50 80059CB0 C420A440 */  lwc1  $f0, %lo(D_8013A440)($at)
/* AD0E54 80059CB4 44863000 */  mtc1  $a2, $f6
/* AD0E58 80059CB8 3C048014 */  lui   $a0, %hi(D_80139AE8) # $a0, 0x8014
/* AD0E5C 80059CBC 24849AE8 */  addiu $a0, %lo(D_80139AE8) # addiu $a0, $a0, -0x6518
/* AD0E60 80059CC0 468032A0 */  cvt.s.w $f10, $f6
/* AD0E64 80059CC4 8C650000 */  lw    $a1, ($v1)
/* AD0E68 80059CC8 46005482 */  mul.s $f18, $f10, $f0
/* AD0E6C 80059CCC 46009421 */  cvt.d.s $f16, $f18
/* AD0E70 80059CD0 F7B00010 */  sdc1  $f16, 0x10($sp)
/* AD0E74 80059CD4 86020136 */  lh    $v0, 0x136($s0)
/* AD0E78 80059CD8 44822000 */  mtc1  $v0, $f4
/* AD0E7C 80059CDC AFA20018 */  sw    $v0, 0x18($sp)
/* AD0E80 80059CE0 46802220 */  cvt.s.w $f8, $f4
/* AD0E84 80059CE4 46004182 */  mul.s $f6, $f8, $f0
/* AD0E88 80059CE8 460032A1 */  cvt.d.s $f10, $f6
/* AD0E8C 80059CEC 0C00084C */  jal   osSyncPrintf
/* AD0E90 80059CF0 F7AA0020 */   sdc1  $f10, 0x20($sp)
/* AD0E94 80059CF4 8606013A */  lh    $a2, 0x13a($s0)
/* AD0E98 80059CF8 3C018014 */  lui   $at, %hi(D_8013A444)
/* AD0E9C 80059CFC C420A444 */  lwc1  $f0, %lo(D_8013A444)($at)
/* AD0EA0 80059D00 44869000 */  mtc1  $a2, $f18
/* AD0EA4 80059D04 3C048014 */  lui   $a0, %hi(D_80139B08) # $a0, 0x8014
/* AD0EA8 80059D08 3C058012 */  lui   $a1, %hi(D_8011D3E8) # $a1, 0x8012
/* AD0EAC 80059D0C 46809420 */  cvt.s.w $f16, $f18
/* AD0EB0 80059D10 8CA5D3E8 */  lw    $a1, %lo(D_8011D3E8)($a1)
/* AD0EB4 80059D14 24849B08 */  addiu $a0, %lo(D_80139B08) # addiu $a0, $a0, -0x64f8
/* AD0EB8 80059D18 46008102 */  mul.s $f4, $f16, $f0
/* AD0EBC 80059D1C 46002221 */  cvt.d.s $f8, $f4
/* AD0EC0 80059D20 F7A80010 */  sdc1  $f8, 0x10($sp)
/* AD0EC4 80059D24 8602013C */  lh    $v0, 0x13c($s0)
/* AD0EC8 80059D28 44823000 */  mtc1  $v0, $f6
/* AD0ECC 80059D2C AFA20018 */  sw    $v0, 0x18($sp)
/* AD0ED0 80059D30 468032A0 */  cvt.s.w $f10, $f6
/* AD0ED4 80059D34 46005482 */  mul.s $f18, $f10, $f0
/* AD0ED8 80059D38 46009421 */  cvt.d.s $f16, $f18
/* AD0EDC 80059D3C 0C00084C */  jal   osSyncPrintf
/* AD0EE0 80059D40 F7B00020 */   sdc1  $f16, 0x20($sp)
/* AD0EE4 80059D44 86090160 */  lh    $t1, 0x160($s0)
.L80059D48:
/* AD0EE8 80059D48 2401FFFF */  li    $at, -1
/* AD0EEC 80059D4C 3C0A8016 */  lui   $t2, %hi(D_8015BD7C) # $t2, 0x8016
/* AD0EF0 80059D50 11210008 */  beq   $t1, $at, .L80059D74
/* AD0EF4 80059D54 3C0D8016 */   lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* AD0EF8 80059D58 8D4ABD7C */  lw    $t2, %lo(D_8015BD7C)($t2)
/* AD0EFC 80059D5C 2401FEFF */  li    $at, -257
/* AD0F00 80059D60 954B0020 */  lhu   $t3, 0x20($t2)
/* AD0F04 80059D64 01616027 */  nor   $t4, $t3, $at
/* AD0F08 80059D68 15800002 */  bnez  $t4, .L80059D74
/* AD0F0C 80059D6C 00000000 */   nop
/* AD0F10 80059D70 A6000160 */  sh    $zero, 0x160($s0)
.L80059D74:
/* AD0F14 80059D74 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* AD0F18 80059D78 85B902F4 */  lh    $t9, 0x2f4($t5)
/* AD0F1C 80059D7C 53200046 */  beql  $t9, $zero, .L80059E98
/* AD0F20 80059D80 8A0B0134 */   lwl   $t3, 0x134($s0)
/* AD0F24 80059D84 C6060054 */  lwc1  $f6, 0x54($s0)
/* AD0F28 80059D88 C6040050 */  lwc1  $f4, 0x50($s0)
/* AD0F2C 80059D8C 3C048014 */  lui   $a0, %hi(D_80139B28) # $a0, 0x8014
/* AD0F30 80059D90 460032A1 */  cvt.d.s $f10, $f6
/* AD0F34 80059D94 46002221 */  cvt.d.s $f8, $f4
/* AD0F38 80059D98 F7AA0010 */  sdc1  $f10, 0x10($sp)
/* AD0F3C 80059D9C C6120058 */  lwc1  $f18, 0x58($s0)
/* AD0F40 80059DA0 44074000 */  mfc1  $a3, $f8
/* AD0F44 80059DA4 44064800 */  mfc1  $a2, $f9
/* AD0F48 80059DA8 46009421 */  cvt.d.s $f16, $f18
/* AD0F4C 80059DAC 24849B28 */  addiu $a0, %lo(D_80139B28) # addiu $a0, $a0, -0x64d8
/* AD0F50 80059DB0 F7B00018 */  sdc1  $f16, 0x18($sp)
/* AD0F54 80059DB4 C604005C */  lwc1  $f4, 0x5c($s0)
/* AD0F58 80059DB8 46002221 */  cvt.d.s $f8, $f4
/* AD0F5C 80059DBC F7A80020 */  sdc1  $f8, 0x20($sp)
/* AD0F60 80059DC0 C6060060 */  lwc1  $f6, 0x60($s0)
/* AD0F64 80059DC4 460032A1 */  cvt.d.s $f10, $f6
/* AD0F68 80059DC8 F7AA0028 */  sdc1  $f10, 0x28($sp)
/* AD0F6C 80059DCC C6120064 */  lwc1  $f18, 0x64($s0)
/* AD0F70 80059DD0 46009421 */  cvt.d.s $f16, $f18
/* AD0F74 80059DD4 0C00084C */  jal   osSyncPrintf
/* AD0F78 80059DD8 F7B00030 */   sdc1  $f16, 0x30($sp)
/* AD0F7C 80059DDC 87AE009C */  lh    $t6, 0x9c($sp)
/* AD0F80 80059DE0 C7A40098 */  lwc1  $f4, 0x98($sp)
/* AD0F84 80059DE4 87AF009E */  lh    $t7, 0x9e($sp)
/* AD0F88 80059DE8 448E3000 */  mtc1  $t6, $f6
/* AD0F8C 80059DEC 46002221 */  cvt.d.s $f8, $f4
/* AD0F90 80059DF0 3C018014 */  lui   $at, %hi(D_8013A448)
/* AD0F94 80059DF4 468032A0 */  cvt.s.w $f10, $f6
/* AD0F98 80059DF8 44074000 */  mfc1  $a3, $f8
/* AD0F9C 80059DFC 448F4000 */  mtc1  $t7, $f8
/* AD0FA0 80059E00 C432A448 */  lwc1  $f18, %lo(D_8013A448)($at)
/* AD0FA4 80059E04 3C018014 */  lui   $at, %hi(D_8013A44C)
/* AD0FA8 80059E08 468041A0 */  cvt.s.w $f6, $f8
/* AD0FAC 80059E0C 46125402 */  mul.s $f16, $f10, $f18
/* AD0FB0 80059E10 C42AA44C */  lwc1  $f10, %lo(D_8013A44C)($at)
/* AD0FB4 80059E14 AFAE0010 */  sw    $t6, 0x10($sp)
/* AD0FB8 80059E18 AFAF0020 */  sw    $t7, 0x20($sp)
/* AD0FBC 80059E1C 44064800 */  mfc1  $a2, $f9
/* AD0FC0 80059E20 460A3482 */  mul.s $f18, $f6, $f10
/* AD0FC4 80059E24 3C048014 */  lui   $a0, %hi(D_80139B4C) # $a0, 0x8014
/* AD0FC8 80059E28 46008121 */  cvt.d.s $f4, $f16
/* AD0FCC 80059E2C 24849B4C */  addiu $a0, %lo(D_80139B4C) # addiu $a0, $a0, -0x64b4
/* AD0FD0 80059E30 F7A40018 */  sdc1  $f4, 0x18($sp)
/* AD0FD4 80059E34 46009421 */  cvt.d.s $f16, $f18
/* AD0FD8 80059E38 F7B00028 */  sdc1  $f16, 0x28($sp)
/* AD0FDC 80059E3C C60400FC */  lwc1  $f4, 0xfc($s0)
/* AD0FE0 80059E40 46002221 */  cvt.d.s $f8, $f4
/* AD0FE4 80059E44 0C00084C */  jal   osSyncPrintf
/* AD0FE8 80059E48 F7A80030 */   sdc1  $f8, 0x30($sp)
/* AD0FEC 80059E4C 8E180090 */  lw    $t8, 0x90($s0)
/* AD0FF0 80059E50 3C048014 */  lui   $a0, %hi(D_80139B74) # $a0, 0x8014
/* AD0FF4 80059E54 24849B74 */  addiu $a0, %lo(D_80139B74) # addiu $a0, $a0, -0x648c
/* AD0FF8 80059E58 1300000E */  beqz  $t8, .L80059E94
/* AD0FFC 80059E5C C7A60080 */   lwc1  $f6, 0x80($sp)
/* AD1000 80059E60 C7B20084 */  lwc1  $f18, 0x84($sp)
/* AD1004 80059E64 C7A40088 */  lwc1  $f4, 0x88($sp)
/* AD1008 80059E68 460032A1 */  cvt.d.s $f10, $f6
/* AD100C 80059E6C 46009421 */  cvt.d.s $f16, $f18
/* AD1010 80059E70 46002221 */  cvt.d.s $f8, $f4
/* AD1014 80059E74 F7B00010 */  sdc1  $f16, 0x10($sp)
/* AD1018 80059E78 F7A80018 */  sdc1  $f8, 0x18($sp)
/* AD101C 80059E7C C60600DC */  lwc1  $f6, 0xdc($s0)
/* AD1020 80059E80 44075000 */  mfc1  $a3, $f10
/* AD1024 80059E84 44065800 */  mfc1  $a2, $f11
/* AD1028 80059E88 460032A1 */  cvt.d.s $f10, $f6
/* AD102C 80059E8C 0C00084C */  jal   osSyncPrintf
/* AD1030 80059E90 F7AA0020 */   sdc1  $f10, 0x20($sp)
.L80059E94:
/* AD1034 80059E94 8A0B0134 */  lwl   $t3, 0x134($s0)
.L80059E98:
/* AD1038 80059E98 8FA900E0 */  lw    $t1, 0xe0($sp)
/* AD103C 80059E9C 9A0B0137 */  lwr   $t3, 0x137($s0)
/* AD1040 80059EA0 A92B0000 */  swl   $t3, ($t1)
/* AD1044 80059EA4 B92B0003 */  swr   $t3, 3($t1)
/* AD1048 80059EA8 960B0138 */  lhu   $t3, 0x138($s0)
/* AD104C 80059EAC A52B0004 */  sh    $t3, 4($t1)
/* AD1050 80059EB0 8FA200E0 */  lw    $v0, 0xe0($sp)
.L80059EB4:
/* AD1054 80059EB4 8FBF0044 */  lw    $ra, 0x44($sp)
/* AD1058 80059EB8 8FB00040 */  lw    $s0, 0x40($sp)
/* AD105C 80059EBC 27BD00E0 */  addiu $sp, $sp, 0xe0
/* AD1060 80059EC0 03E00008 */  jr    $ra
/* AD1064 80059EC4 00000000 */   nop

