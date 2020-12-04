.late_rodata
glabel D_8090DBB8
    .float 0.005

.text
glabel func_80900344
/* 03404 80900344 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03408 80900348 AFBF001C */  sw      $ra, 0x001C($sp)
/* 0340C 8090034C AFB00018 */  sw      $s0, 0x0018($sp)
/* 03410 80900350 AFA5002C */  sw      $a1, 0x002C($sp)
/* 03414 80900354 848E0390 */  lh      $t6, 0x0390($a0)           ## 00000390
/* 03418 80900358 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0341C 8090035C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 03420 80900360 55C0000D */  bnel    $t6, $zero, .L80900398
/* 03424 80900364 26040324 */  addiu   $a0, $s0, 0x0324           ## $a0 = 00000324
/* 03428 80900368 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 0342C 8090036C 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 03430 80900370 00000000 */  nop
/* 03434 80900374 4600010D */  trunc.w.s $f4, $f0
/* 03438 80900378 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0343C 8090037C 240539D9 */  addiu   $a1, $zero, 0x39D9         ## $a1 = 000039D9
/* 03440 80900380 44082000 */  mfc1    $t0, $f4
/* 03444 80900384 00000000 */  nop
/* 03448 80900388 2509001E */  addiu   $t1, $t0, 0x001E           ## $t1 = 0000001E
/* 0344C 8090038C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 03450 80900390 A6090390 */  sh      $t1, 0x0390($s0)           ## 00000390
/* 03454 80900394 26040324 */  addiu   $a0, $s0, 0x0324           ## $a0 = 00000324
.L80900398:
/* 03458 80900398 3C05437F */  lui     $a1, 0x437F                ## $a1 = 437F0000
/* 0345C 8090039C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03460 809003A0 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 03464 809003A4 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 03468 809003A8 920A0338 */  lbu     $t2, 0x0338($s0)           ## 00000338
/* 0346C 809003AC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 03470 809003B0 3C054150 */  lui     $a1, 0x4150                ## $a1 = 41500000
/* 03474 809003B4 11400041 */  beq     $t2, $zero, .L809004BC
/* 03478 809003B8 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0347C 809003BC 0C0295B2 */  jal     Animation_IsOnFrame
/* 03480 809003C0 AFA40020 */  sw      $a0, 0x0020($sp)
/* 03484 809003C4 10400008 */  beq     $v0, $zero, .L809003E8
/* 03488 809003C8 8FA40020 */  lw      $a0, 0x0020($sp)
/* 0348C 809003CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03490 809003D0 8FA5002C */  lw      $a1, 0x002C($sp)
/* 03494 809003D4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 03498 809003D8 0C23F535 */  jal     func_808FD4D4
/* 0349C 809003DC 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 034A0 809003E0 1000000A */  beq     $zero, $zero, .L8090040C
/* 034A4 809003E4 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
.L809003E8:
/* 034A8 809003E8 0C0295B2 */  jal     Animation_IsOnFrame
/* 034AC 809003EC 3C0541E0 */  lui     $a1, 0x41E0                ## $a1 = 41E00000
/* 034B0 809003F0 10400005 */  beq     $v0, $zero, .L80900408
/* 034B4 809003F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 034B8 809003F8 8FA5002C */  lw      $a1, 0x002C($sp)
/* 034BC 809003FC 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 034C0 80900400 0C23F535 */  jal     func_808FD4D4
/* 034C4 80900404 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
.L80900408:
/* 034C8 80900408 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
.L8090040C:
/* 034CC 8090040C 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 034D0 80900410 C6020090 */  lwc1    $f2, 0x0090($s0)           ## 00000090
/* 034D4 80900414 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 034D8 80900418 24A5E8EC */  addiu   $a1, $a1, 0xE8EC           ## $a1 = 0600E8EC
/* 034DC 8090041C 4606103C */  c.lt.s  $f2, $f6
/* 034E0 80900420 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 034E4 80900424 3C06C120 */  lui     $a2, 0xC120                ## $a2 = C1200000
/* 034E8 80900428 45020007 */  bc1fl   .L80900448
/* 034EC 8090042C 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 034F0 80900430 A2000338 */  sb      $zero, 0x0338($s0)         ## 00000338
/* 034F4 80900434 0C0294D3 */  jal     Animation_MorphToLoop
/* 034F8 80900438 8FA40020 */  lw      $a0, 0x0020($sp)
/* 034FC 8090043C 1000001A */  beq     $zero, $zero, .L809004A8
/* 03500 80900440 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 03504 80900444 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
.L80900448:
/* 03508 80900448 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 0350C 8090044C 44814000 */  mtc1    $at, $f8                   ## $f8 = 300.00
/* 03510 80900450 3C018091 */  lui     $at, %hi(D_8090DBB8)       ## $at = 80910000
/* 03514 80900454 C430DBB8 */  lwc1    $f16, %lo(D_8090DBB8)($at)
/* 03518 80900458 46081281 */  sub.s   $f10, $f2, $f8
/* 0351C 8090045C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 03520 80900460 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 03524 80900464 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 03528 80900468 46105482 */  mul.s   $f18, $f10, $f16
/* 0352C 8090046C 46049000 */  add.s   $f0, $f18, $f4
/* 03530 80900470 4600603C */  c.lt.s  $f12, $f0
/* 03534 80900474 E6000168 */  swc1    $f0, 0x0168($s0)           ## 00000168
/* 03538 80900478 45020003 */  bc1fl   .L80900488
/* 0353C 8090047C 920B0334 */  lbu     $t3, 0x0334($s0)           ## 00000334
/* 03540 80900480 E60C0168 */  swc1    $f12, 0x0168($s0)          ## 00000168
/* 03544 80900484 920B0334 */  lbu     $t3, 0x0334($s0)           ## 00000334
.L80900488:
/* 03548 80900488 51600007 */  beql    $t3, $zero, .L809004A8
/* 0354C 8090048C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 03550 80900490 C6060168 */  lwc1    $f6, 0x0168($s0)           ## 00000168
/* 03554 80900494 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 03558 80900498 00000000 */  nop
/* 0355C 8090049C 46083282 */  mul.s   $f10, $f6, $f8
/* 03560 809004A0 E60A0168 */  swc1    $f10, 0x0168($s0)          ## 00000168
/* 03564 809004A4 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
.L809004A8:
/* 03568 809004A8 44819000 */  mtc1    $at, $f18                  ## $f18 = 3.00
/* 0356C 809004AC C6100168 */  lwc1    $f16, 0x0168($s0)          ## 00000168
/* 03570 809004B0 46128002 */  mul.s   $f0, $f16, $f18
/* 03574 809004B4 10000012 */  beq     $zero, $zero, .L80900500
/* 03578 809004B8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L809004BC:
/* 0357C 809004BC 44810000 */  mtc1    $at, $f0                   ## $f0 = 3.00
/* 03580 809004C0 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 03584 809004C4 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 03588 809004C8 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 0358C 809004CC 3C050603 */  lui     $a1, 0x0603                ## $a1 = 06030000
/* 03590 809004D0 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 03594 809004D4 4604303E */  c.le.s  $f6, $f4
/* 03598 809004D8 24A553C0 */  addiu   $a1, $a1, 0x53C0           ## $a1 = 060353C0
/* 0359C 809004DC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 035A0 809004E0 3C06C120 */  lui     $a2, 0xC120                ## $a2 = C1200000
/* 035A4 809004E4 45020006 */  bc1fl   .L80900500
/* 035A8 809004E8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 035AC 809004EC A20C0338 */  sb      $t4, 0x0338($s0)           ## 00000338
/* 035B0 809004F0 0C0294D3 */  jal     Animation_MorphToLoop
/* 035B4 809004F4 E7A00024 */  swc1    $f0, 0x0024($sp)
/* 035B8 809004F8 C7A00024 */  lwc1    $f0, 0x0024($sp)
/* 035BC 809004FC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80900500:
/* 035C0 80900500 0C02927F */  jal     Animation_Update

/* 035C4 80900504 E7A00024 */  swc1    $f0, 0x0024($sp)
/* 035C8 80900508 C7A00024 */  lwc1    $f0, 0x0024($sp)
/* 035CC 8090050C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 035D0 80900510 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 035D4 80900514 44050000 */  mfc1    $a1, $f0
/* 035D8 80900518 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 035DC 8090051C 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 035E0 80900520 860D01A2 */  lh      $t5, 0x01A2($s0)           ## 000001A2
/* 035E4 80900524 8FA5002C */  lw      $a1, 0x002C($sp)
/* 035E8 80900528 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 035EC 8090052C 15A00005 */  bne     $t5, $zero, .L80900544
/* 035F0 80900530 00000000 */  nop
/* 035F4 80900534 0C23FF6C */  jal     func_808FFDB0
/* 035F8 80900538 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 035FC 8090053C 10000004 */  beq     $zero, $zero, .L80900550
/* 03600 80900540 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80900544:
/* 03604 80900544 0C23FF3F */  jal     func_808FFCFC
/* 03608 80900548 8FA5002C */  lw      $a1, 0x002C($sp)
/* 0360C 8090054C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80900550:
/* 03610 80900550 8FA5002C */  lw      $a1, 0x002C($sp)
/* 03614 80900554 0C23FEB2 */  jal     func_808FFAC8
/* 03618 80900558 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0361C 8090055C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03620 80900560 8FA5002C */  lw      $a1, 0x002C($sp)
/* 03624 80900564 0C23FEEF */  jal     func_808FFBBC
/* 03628 80900568 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0362C 8090056C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 03630 80900570 8FB00018 */  lw      $s0, 0x0018($sp)
/* 03634 80900574 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03638 80900578 03E00008 */  jr      $ra
/* 0363C 8090057C 00000000 */  nop
