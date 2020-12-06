.rdata
glabel D_80139614
    .asciz "\x1b[1m%06u:\x1b[m camera: spline demo: start %s \n"
    .balign 4

glabel D_80139644
    .asciz "絶対" # actually japanese?
    .balign 4

glabel D_8013964C
    .asciz "相対"
    .balign 4

glabel D_80139654
    .asciz "CENTER"
    .balign 4

glabel D_8013965C
    .asciz "   EYE"
    .balign 4

glabel D_80139664
    .asciz "\x1b[41;37mcamera: spline demo: owner dead\n\x1b[m"
    .balign 4

.text
glabel Camera_Demo1
/* ACB670 800544D0 27BDFF68 */  addiu $sp, $sp, -0x98
/* ACB674 800544D4 AFBF0024 */  sw    $ra, 0x24($sp)
/* ACB678 800544D8 AFB00020 */  sw    $s0, 0x20($sp)
/* ACB67C 800544DC 8C8E0124 */  lw    $t6, 0x124($a0)
/* ACB680 800544E0 00808025 */  move  $s0, $a0
/* ACB684 800544E4 2401000A */  li    $at, 10
/* ACB688 800544E8 AFAE0084 */  sw    $t6, 0x84($sp)
/* ACB68C 800544EC 8C8F0128 */  lw    $t7, 0x128($a0)
/* ACB690 800544F0 AFAF0080 */  sw    $t7, 0x80($sp)
/* ACB694 800544F4 8482015E */  lh    $v0, 0x15e($a0)
/* ACB698 800544F8 3C048014 */  lui   $a0, %hi(D_80139614) # $a0, 0x8014
/* ACB69C 800544FC 5040000A */  beql  $v0, $zero, .L80054528
/* ACB6A0 80054500 86090142 */   lh    $t1, 0x142($s0)
/* ACB6A4 80054504 10410007 */  beq   $v0, $at, .L80054524
/* ACB6A8 80054508 24010014 */   li    $at, 20
/* ACB6AC 8005450C 10410005 */  beq   $v0, $at, .L80054524
/* ACB6B0 80054510 3C188016 */   lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* ACB6B4 80054514 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* ACB6B8 80054518 87190314 */  lh    $t9, 0x314($t8)
/* ACB6BC 8005451C 5320000D */  beql  $t9, $zero, .L80054554
/* ACB6C0 80054520 86180000 */   lh    $t8, ($s0)
.L80054524:
/* ACB6C4 80054524 86090142 */  lh    $t1, 0x142($s0)
.L80054528:
/* ACB6C8 80054528 3C0B8012 */  lui   $t3, %hi(sCameraSettings+4)
/* ACB6CC 8005452C 860C0144 */  lh    $t4, 0x144($s0)
/* ACB6D0 80054530 000950C0 */  sll   $t2, $t1, 3
/* ACB6D4 80054534 016A5821 */  addu  $t3, $t3, $t2
/* ACB6D8 80054538 8D6BD068 */  lw    $t3, %lo(sCameraSettings+4)($t3)
/* ACB6DC 8005453C 000C68C0 */  sll   $t5, $t4, 3
/* ACB6E0 80054540 016D7021 */  addu  $t6, $t3, $t5
/* ACB6E4 80054544 8DC20004 */  lw    $v0, 4($t6)
/* ACB6E8 80054548 844F0000 */  lh    $t7, ($v0)
/* ACB6EC 8005454C A60F0000 */  sh    $t7, ($s0)
/* ACB6F0 80054550 86180000 */  lh    $t8, ($s0)
.L80054554:
/* ACB6F4 80054554 3C018012 */  lui   $at, %hi(D_8011D3A0)
/* ACB6F8 80054558 AC38D3A0 */  sw    $t8, %lo(D_8011D3A0)($at)
/* ACB6FC 8005455C 8606015E */  lh    $a2, 0x15e($s0)
/* ACB700 80054560 24010001 */  li    $at, 1
/* ACB704 80054564 50C00006 */  beql  $a2, $zero, .L80054580
/* ACB708 80054568 44802000 */   mtc1  $zero, $f4
/* ACB70C 8005456C 50C10025 */  beql  $a2, $at, .L80054604
/* ACB710 80054570 26030004 */   addiu $v1, $s0, 4
/* ACB714 80054574 1000007B */  b     .L80054764
/* ACB718 80054578 8FBF0024 */   lw    $ra, 0x24($sp)
/* ACB71C 8005457C 44802000 */  mtc1  $zero, $f4
.L80054580:
/* ACB720 80054580 26030004 */  addiu $v1, $s0, 4
/* ACB724 80054584 A4600004 */  sh    $zero, 4($v1)
/* ACB728 80054588 E4640000 */  swc1  $f4, ($v1)
/* ACB72C 8005458C 8619015E */  lh    $t9, 0x15e($s0)
/* ACB730 80054590 860A012C */  lh    $t2, 0x12c($s0)
/* ACB734 80054594 3C068014 */  lui   $a2, %hi(D_8013964C)
/* ACB738 80054598 27290001 */  addiu $t1, $t9, 1
/* ACB73C 8005459C 15400004 */  bnez  $t2, .L800545B0
/* ACB740 800545A0 A609015E */   sh    $t1, 0x15e($s0)
/* ACB744 800545A4 3C068014 */  lui   $a2, %hi(D_80139644) # $a2, 0x8014
/* ACB748 800545A8 10000002 */  b     .L800545B4
/* ACB74C 800545AC 24C69644 */   addiu $a2, %lo(D_80139644) # addiu $a2, $a2, -0x69bc
.L800545B0:
/* ACB750 800545B0 24C6964C */  addiu $a2, %lo(D_8013964C)
.L800545B4:
/* ACB754 800545B4 8E0C008C */  lw    $t4, 0x8c($s0)
/* ACB758 800545B8 24849614 */  addiu $a0, %lo(D_80139614) # addiu $a0, $a0, -0x69ec
/* ACB75C 800545BC 0C00084C */  jal   osSyncPrintf
/* ACB760 800545C0 8D85009C */   lw    $a1, 0x9c($t4)
/* ACB764 800545C4 3C0B8016 */  lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* ACB768 800545C8 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* ACB76C 800545CC 3C048014 */  lui   $a0, %hi(D_80139654) # $a0, 0x8014
/* ACB770 800545D0 24849654 */  addiu $a0, %lo(D_80139654) # addiu $a0, $a0, -0x69ac
/* ACB774 800545D4 856D030E */  lh    $t5, 0x30e($t3)
/* ACB778 800545D8 24050005 */  li    $a1, 5
/* ACB77C 800545DC 51A00009 */  beql  $t5, $zero, .L80054604
/* ACB780 800545E0 26030004 */   addiu $v1, $s0, 4
/* ACB784 800545E4 0C0150C5 */  jal   Camera_DebugPrintSplineArray
/* ACB788 800545E8 8FA60084 */   lw    $a2, 0x84($sp)
/* ACB78C 800545EC 3C048014 */  lui   $a0, %hi(D_8013965C) # $a0, 0x8014
/* ACB790 800545F0 2484965C */  addiu $a0, %lo(D_8013965C) # addiu $a0, $a0, -0x69a4
/* ACB794 800545F4 24050005 */  li    $a1, 5
/* ACB798 800545F8 0C0150C5 */  jal   Camera_DebugPrintSplineArray
/* ACB79C 800545FC 8FA60080 */   lw    $a2, 0x80($sp)
/* ACB7A0 80054600 26030004 */  addiu $v1, $s0, 4
.L80054604:
/* ACB7A4 80054604 24680004 */  addiu $t0, $v1, 4
/* ACB7A8 80054608 260600FC */  addiu $a2, $s0, 0xfc
/* ACB7AC 8005460C 260E012C */  addiu $t6, $s0, 0x12c
/* ACB7B0 80054610 AFAE0030 */  sw    $t6, 0x30($sp)
/* ACB7B4 80054614 AFA60034 */  sw    $a2, 0x34($sp)
/* ACB7B8 80054618 AFA80010 */  sw    $t0, 0x10($sp)
/* ACB7BC 8005461C AFA80028 */  sw    $t0, 0x28($sp)
/* ACB7C0 80054620 AFA30014 */  sw    $v1, 0x14($sp)
/* ACB7C4 80054624 AFA3002C */  sw    $v1, 0x2c($sp)
/* ACB7C8 80054628 27A4005C */  addiu $a0, $sp, 0x5c
/* ACB7CC 8005462C 27A5004C */  addiu $a1, $sp, 0x4c
/* ACB7D0 80054630 0C02ECAD */  jal   func_800BB2B4
/* ACB7D4 80054634 8FA70080 */   lw    $a3, 0x80($sp)
/* ACB7D8 80054638 8FA3002C */  lw    $v1, 0x2c($sp)
/* ACB7DC 8005463C 8FA60034 */  lw    $a2, 0x34($sp)
/* ACB7E0 80054640 14400009 */  bnez  $v0, .L80054668
/* ACB7E4 80054644 8FA80028 */   lw    $t0, 0x28($sp)
/* ACB7E8 80054648 27A40050 */  addiu $a0, $sp, 0x50
/* ACB7EC 8005464C 27A5004C */  addiu $a1, $sp, 0x4c
/* ACB7F0 80054650 8FA70084 */  lw    $a3, 0x84($sp)
/* ACB7F4 80054654 AFA80010 */  sw    $t0, 0x10($sp)
/* ACB7F8 80054658 0C02ECAD */  jal   func_800BB2B4
/* ACB7FC 8005465C AFA30014 */   sw    $v1, 0x14($sp)
/* ACB800 80054660 50400005 */  beql  $v0, $zero, .L80054678
/* ACB804 80054664 8FB90030 */   lw    $t9, 0x30($sp)
.L80054668:
/* ACB808 80054668 860F015E */  lh    $t7, 0x15e($s0)
/* ACB80C 8005466C 25F80001 */  addiu $t8, $t7, 1
/* ACB810 80054670 A618015E */  sh    $t8, 0x15e($s0)
/* ACB814 80054674 8FB90030 */  lw    $t9, 0x30($sp)
.L80054678:
/* ACB818 80054678 27A4005C */  addiu $a0, $sp, 0x5c
/* ACB81C 8005467C 26050074 */  addiu $a1, $s0, 0x74
/* ACB820 80054680 87290000 */  lh    $t1, ($t9)
/* ACB824 80054684 1120001C */  beqz  $t1, .L800546F8
/* ACB828 80054688 00000000 */   nop
/* ACB82C 8005468C 8E050090 */  lw    $a1, 0x90($s0)
/* ACB830 80054690 3C048014 */  lui   $a0, %hi(D_80139664)
/* ACB834 80054694 10A00012 */  beqz  $a1, .L800546E0
/* ACB838 80054698 00000000 */   nop
/* ACB83C 8005469C 8CAA0130 */  lw    $t2, 0x130($a1)
/* ACB840 800546A0 1140000F */  beqz  $t2, .L800546E0
/* ACB844 800546A4 00000000 */   nop
/* ACB848 800546A8 0C00BBC5 */  jal   func_8002EF14
/* ACB84C 800546AC 27A40068 */   addiu $a0, $sp, 0x68
/* ACB850 800546B0 26060074 */  addiu $a2, $s0, 0x74
/* ACB854 800546B4 AFA60030 */  sw    $a2, 0x30($sp)
/* ACB858 800546B8 27A40068 */  addiu $a0, $sp, 0x68
/* ACB85C 800546BC 0C01511E */  jal   func_80054478
/* ACB860 800546C0 27A5005C */   addiu $a1, $sp, 0x5c
/* ACB864 800546C4 26060050 */  addiu $a2, $s0, 0x50
/* ACB868 800546C8 AFA60034 */  sw    $a2, 0x34($sp)
/* ACB86C 800546CC 27A40068 */  addiu $a0, $sp, 0x68
/* ACB870 800546D0 0C01511E */  jal   func_80054478
/* ACB874 800546D4 27A50050 */   addiu $a1, $sp, 0x50
/* ACB878 800546D8 1000000F */  b     .L80054718
/* ACB87C 800546DC 8FA60034 */   lw    $a2, 0x34($sp)
.L800546E0:
/* ACB880 800546E0 0C00084C */  jal   osSyncPrintf
/* ACB884 800546E4 24849664 */   addiu $a0, %lo(D_80139664)
/* ACB888 800546E8 260C0074 */  addiu $t4, $s0, 0x74
/* ACB88C 800546EC AFAC0030 */  sw    $t4, 0x30($sp)
/* ACB890 800546F0 10000009 */  b     .L80054718
/* ACB894 800546F4 26060050 */   addiu $a2, $s0, 0x50
.L800546F8:
/* ACB898 800546F8 0C015117 */  jal   Camera_Vec3fCopy
/* ACB89C 800546FC AFA50030 */   sw    $a1, 0x30($sp)
/* ACB8A0 80054700 26060050 */  addiu $a2, $s0, 0x50
/* ACB8A4 80054704 00C02825 */  move  $a1, $a2
/* ACB8A8 80054708 AFA60034 */  sw    $a2, 0x34($sp)
/* ACB8AC 8005470C 0C015117 */  jal   Camera_Vec3fCopy
/* ACB8B0 80054710 27A40050 */   addiu $a0, $sp, 0x50
/* ACB8B4 80054714 8FA60034 */  lw    $a2, 0x34($sp)
.L80054718:
/* ACB8B8 80054718 8FAD0030 */  lw    $t5, 0x30($sp)
/* ACB8BC 8005471C 2605005C */  addiu $a1, $s0, 0x5c
/* ACB8C0 80054720 3C014380 */  li    $at, 0x43800000 # 0.000000
/* ACB8C4 80054724 8DAF0000 */  lw    $t7, ($t5)
/* ACB8C8 80054728 44814000 */  mtc1  $at, $f8
/* ACB8CC 8005472C 00C02025 */  move  $a0, $a2
/* ACB8D0 80054730 ACAF0000 */  sw    $t7, ($a1)
/* ACB8D4 80054734 8DAE0004 */  lw    $t6, 4($t5)
/* ACB8D8 80054738 ACAE0004 */  sw    $t6, 4($a1)
/* ACB8DC 8005473C 8DAF0008 */  lw    $t7, 8($t5)
/* ACB8E0 80054740 ACAF0008 */  sw    $t7, 8($a1)
/* ACB8E4 80054744 C7A6004C */  lwc1  $f6, 0x4c($sp)
/* ACB8E8 80054748 46083282 */  mul.s $f10, $f6, $f8
/* ACB8EC 8005474C 4600540D */  trunc.w.s $f16, $f10
/* ACB8F0 80054750 44198000 */  mfc1  $t9, $f16
/* ACB8F4 80054754 0C01EFE4 */  jal   OLib_Vec3fDist
/* ACB8F8 80054758 A619015A */   sh    $t9, 0x15a($s0)
/* ACB8FC 8005475C E60000DC */  swc1  $f0, 0xdc($s0)
/* ACB900 80054760 8FBF0024 */  lw    $ra, 0x24($sp)
.L80054764:
/* ACB904 80054764 8FB00020 */  lw    $s0, 0x20($sp)
/* ACB908 80054768 27BD0098 */  addiu $sp, $sp, 0x98
/* ACB90C 8005476C 03E00008 */  jr    $ra
/* ACB910 80054770 24020001 */   li    $v0, 1
