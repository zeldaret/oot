# Needs splitting

.rdata
glabel D_80139614
    .asciz "\x1B[1m%06u:\x1B[m camera: spline demo: start %s \n"
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
    .asciz "\x1B[41;37mcamera: spline demo: owner dead\n\x1B[m"
    .balign 4

glabel D_80139690
    .asciz "\x1B[43;30mcamera: warning: attention: target is not valid, stop!\n\x1B[m"
    .balign 4

glabel D_801396D4
    .asciz "\x1B[43;30mcamera: attention demo: this door is dummy door!\n\x1B[m"
    .balign 4
    
glabel D_80139714
    .asciz "\x1B[43;30mcamera: warning: circle: target is not valid, stop!\n\x1B[m"
    .balign 4
    
glabel D_80139754
    .asciz "../z_camera.c"
    .balign 4

glabel D_80139764
    .asciz "\x1B[34mcamera: create --- allocate %d byte\x1B[m\n"
    .balign 4

glabel D_80139794
    .asciz "\x1B[41;37mcamera: create: not enough memory\n\x1B[m"
    .balign 4
    
glabel D_801397C4
    .asciz "\x1B[34mcamera: destroy ---\x1B[m\n"
    .balign 4

glabel D_801397E4
    .asciz "../z_camera.c"
    .balign 4
    
glabel D_801397F4
    .asciz "\x1B[43;30mcamera: destroy: already cleared\n\x1B[m"
    .balign 4

.late_rodata
# todo: sort these out
glabel jtbl_8013A2B8
    .incbin "baserom.z64", 0xBB1458, 0x7C

glabel D_8013A334
    .incbin "baserom.z64", 0xBB14D4, 0x4

glabel D_8013A338
    .incbin "baserom.z64", 0xBB14D8, 0x4

glabel D_8013A33C
    .incbin "baserom.z64", 0xBB14DC, 0x4

glabel D_8013A340
    .incbin "baserom.z64", 0xBB14E0, 0x4

glabel D_8013A344
    .incbin "baserom.z64", 0xBB14E4, 0x4

glabel D_8013A348
    .incbin "baserom.z64", 0xBB14E8, 0x4

glabel D_8013A34C
    .incbin "baserom.z64", 0xBB14EC, 0x4

glabel D_8013A350
    .incbin "baserom.z64", 0xBB14F0, 0x4

glabel D_8013A354
    .incbin "baserom.z64", 0xBB14F4, 0x4

glabel D_8013A358
    .incbin "baserom.z64", 0xBB14F8, 0x4

glabel D_8013A35C
    .incbin "baserom.z64", 0xBB14FC, 0x4

glabel D_8013A360
    .incbin "baserom.z64", 0xBB1500, 0x4

glabel D_8013A364
    .incbin "baserom.z64", 0xBB1504, 0x4

glabel D_8013A368
    .incbin "baserom.z64", 0xBB1508, 0x4

glabel D_8013A36C
    .incbin "baserom.z64", 0xBB150C, 0x4

glabel jtbl_8013A370
    .incbin "baserom.z64", 0xBB1510, 0x14

glabel D_8013A384
    .incbin "baserom.z64", 0xBB1524, 0x4

glabel D_8013A388
    .incbin "baserom.z64", 0xBB1528, 0x4

glabel D_8013A38C
    .incbin "baserom.z64", 0xBB152C, 0x4

glabel D_8013A390
    .incbin "baserom.z64", 0xBB1530, 0x4

glabel D_8013A394
    .incbin "baserom.z64", 0xBB1534, 0x4

glabel D_8013A398
    .incbin "baserom.z64", 0xBB1538, 0x4

glabel D_8013A39C
    .incbin "baserom.z64", 0xBB153C, 0x4

glabel D_8013A3A0
    .incbin "baserom.z64", 0xBB1540, 0x4

glabel D_8013A3A4
    .incbin "baserom.z64", 0xBB1544, 0x4

glabel D_8013A3A8
    .incbin "baserom.z64", 0xBB1548, 0x4

glabel D_8013A3AC
    .incbin "baserom.z64", 0xBB154C, 0x4

glabel D_8013A3B0
    .incbin "baserom.z64", 0xBB1550, 0x4

glabel D_8013A3B4
    .incbin "baserom.z64", 0xBB1554, 0x4

glabel D_8013A3B8
    .incbin "baserom.z64", 0xBB1558, 0x4

glabel D_8013A3BC
    .incbin "baserom.z64", 0xBB155C, 0x4

glabel D_8013A3C0
    .incbin "baserom.z64", 0xBB1560, 0x4

glabel D_8013A3C4
    .incbin "baserom.z64", 0xBB1564, 0x4

glabel D_8013A3C8
    .incbin "baserom.z64", 0xBB1568, 0x4

glabel D_8013A3CC
    .incbin "baserom.z64", 0xBB156C, 0x4

glabel D_8013A3D0
    .incbin "baserom.z64", 0xBB1570, 0x4

glabel jtbl_8013A3D4
    .incbin "baserom.z64", 0xBB1574, 0x14

glabel D_8013A3E8
    .incbin "baserom.z64", 0xBB1588, 0x4

glabel D_8013A3EC
    .incbin "baserom.z64", 0xBB158C, 0x4

glabel D_8013A3F0
    .incbin "baserom.z64", 0xBB1590, 0x4

.text
glabel func_80054478
/* ACB618 80054478 27BDFFD0 */  addiu $sp, $sp, -0x30
/* ACB61C 8005447C AFA40030 */  sw    $a0, 0x30($sp)
/* ACB620 80054480 AFBF0014 */  sw    $ra, 0x14($sp)
/* ACB624 80054484 00A02025 */  move  $a0, $a1
/* ACB628 80054488 AFA60038 */  sw    $a2, 0x38($sp)
/* ACB62C 8005448C 0C015117 */  jal   Camera_Vec3fCopy
/* ACB630 80054490 27A5001C */   addiu $a1, $sp, 0x1c
/* ACB634 80054494 27A40028 */  addiu $a0, $sp, 0x28
/* ACB638 80054498 0C01F0FD */  jal   func_8007C3F4
/* ACB63C 8005449C 27A5001C */   addiu $a1, $sp, 0x1c
/* ACB640 800544A0 8FA50030 */  lw    $a1, 0x30($sp)
/* ACB644 800544A4 87AE002E */  lh    $t6, 0x2e($sp)
/* ACB648 800544A8 8FA40038 */  lw    $a0, 0x38($sp)
/* ACB64C 800544AC 84AF000E */  lh    $t7, 0xe($a1)
/* ACB650 800544B0 27A60028 */  addiu $a2, $sp, 0x28
/* ACB654 800544B4 01CFC021 */  addu  $t8, $t6, $t7
/* ACB658 800544B8 0C010F0A */  jal   func_80043C28
/* ACB65C 800544BC A7B8002E */   sh    $t8, 0x2e($sp)
/* ACB660 800544C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* ACB664 800544C4 27BD0030 */  addiu $sp, $sp, 0x30
/* ACB668 800544C8 03E00008 */  jr    $ra
/* ACB66C 800544CC 00000000 */   nop   
# SPLIT
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
/* ACB6C8 80054528 3C0B8012 */  lui   $t3, %hi(D_8011D068)
/* ACB6CC 8005452C 860C0144 */  lh    $t4, 0x144($s0)
/* ACB6D0 80054530 000950C0 */  sll   $t2, $t1, 3
/* ACB6D4 80054534 016A5821 */  addu  $t3, $t3, $t2
/* ACB6D8 80054538 8D6BD068 */  lw    $t3, %lo(D_8011D068)($t3)
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
/* ACB8F4 80054754 0C01EFE4 */  jal   func_8007BF90
/* ACB8F8 80054758 A619015A */   sh    $t9, 0x15a($s0)
/* ACB8FC 8005475C E60000DC */  swc1  $f0, 0xdc($s0)
/* ACB900 80054760 8FBF0024 */  lw    $ra, 0x24($sp)
.L80054764:
/* ACB904 80054764 8FB00020 */  lw    $s0, 0x20($sp)
/* ACB908 80054768 27BD0098 */  addiu $sp, $sp, 0x98
/* ACB90C 8005476C 03E00008 */  jr    $ra
/* ACB910 80054770 24020001 */   li    $v0, 1
# SPLIT
/* ACB914 80054774 27BDFFE8 */  addiu $sp, $sp, -0x18
/* ACB918 80054778 AFBF0014 */  sw    $ra, 0x14($sp)
/* ACB91C 8005477C 0C011CE5 */  jal   func_80047394
/* ACB920 80054780 00000000 */   nop   
/* ACB924 80054784 8FBF0014 */  lw    $ra, 0x14($sp)
/* ACB928 80054788 27BD0018 */  addiu $sp, $sp, 0x18
/* ACB92C 8005478C 03E00008 */  jr    $ra
/* ACB930 80054790 00000000 */   nop   
# SPLIT
/* ACB934 80054794 27BDFF58 */  addiu $sp, $sp, -0xa8
/* ACB938 80054798 AFB10018 */  sw    $s1, 0x18($sp)
/* ACB93C 8005479C 00808825 */  move  $s1, $a0
/* ACB940 800547A0 AFBF001C */  sw    $ra, 0x1c($sp)
/* ACB944 800547A4 AFB00014 */  sw    $s0, 0x14($sp)
/* ACB948 800547A8 A3A00053 */  sb    $zero, 0x53($sp)
/* ACB94C 800547AC 0C00B721 */  jal   func_8002DC84
/* ACB950 800547B0 8C840090 */   lw    $a0, 0x90($a0)
/* ACB954 800547B4 862E014C */  lh    $t6, 0x14c($s1)
/* ACB958 800547B8 8622015E */  lh    $v0, 0x15e($s1)
/* ACB95C 800547BC 46000406 */  mov.s $f16, $f0
/* ACB960 800547C0 31CFFFEF */  andi  $t7, $t6, 0xffef
/* ACB964 800547C4 1040000A */  beqz  $v0, .L800547F0
/* ACB968 800547C8 A62F014C */   sh    $t7, 0x14c($s1)
/* ACB96C 800547CC 2401000A */  li    $at, 10
/* ACB970 800547D0 10410007 */  beq   $v0, $at, .L800547F0
/* ACB974 800547D4 24010014 */   li    $at, 20
/* ACB978 800547D8 10410005 */  beq   $v0, $at, .L800547F0
/* ACB97C 800547DC 3C188016 */   lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* ACB980 800547E0 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* ACB984 800547E4 87030314 */  lh    $v1, 0x314($t8)
/* ACB988 800547E8 1060001A */  beqz  $v1, .L80054854
/* ACB98C 800547EC 00000000 */   nop   
.L800547F0:
/* ACB990 800547F0 86390142 */  lh    $t9, 0x142($s1)
/* ACB994 800547F4 3C098012 */  lui   $t1, %hi(D_8011D068)
/* ACB998 800547F8 862A0144 */  lh    $t2, 0x144($s1)
/* ACB99C 800547FC 001940C0 */  sll   $t0, $t9, 3
/* ACB9A0 80054800 01284821 */  addu  $t1, $t1, $t0
/* ACB9A4 80054804 8D29D068 */  lw    $t1, %lo(D_8011D068)($t1)
/* ACB9A8 80054808 000A58C0 */  sll   $t3, $t2, 3
/* ACB9AC 8005480C 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* ACB9B0 80054810 012B6021 */  addu  $t4, $t1, $t3
/* ACB9B4 80054814 8D820004 */  lw    $v0, 4($t4)
/* ACB9B8 80054818 844D0000 */  lh    $t5, ($v0)
/* ACB9BC 8005481C 24420008 */  addiu $v0, $v0, 8
/* ACB9C0 80054820 448D2000 */  mtc1  $t5, $f4
/* ACB9C4 80054824 00000000 */  nop   
/* ACB9C8 80054828 468021A0 */  cvt.s.w $f6, $f4
/* ACB9CC 8005482C E6260000 */  swc1  $f6, ($s1)
/* ACB9D0 80054830 844EFFFC */  lh    $t6, -4($v0)
/* ACB9D4 80054834 448E4000 */  mtc1  $t6, $f8
/* ACB9D8 80054838 00000000 */  nop   
/* ACB9DC 8005483C 468042A0 */  cvt.s.w $f10, $f8
/* ACB9E0 80054840 E62A0004 */  swc1  $f10, 4($s1)
/* ACB9E4 80054844 844F0000 */  lh    $t7, ($v0)
/* ACB9E8 80054848 A62F0008 */  sh    $t7, 8($s1)
/* ACB9EC 8005484C 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* ACB9F0 80054850 87030314 */  lh    $v1, 0x314($t8)
.L80054854:
/* ACB9F4 80054854 10600004 */  beqz  $v1, .L80054868
/* ACB9F8 80054858 02202025 */   move  $a0, $s1
/* ACB9FC 8005485C 0C011495 */  jal   func_80045254
/* ACBA00 80054860 E7B0004C */   swc1  $f16, 0x4c($sp)
/* ACBA04 80054864 C7B0004C */  lwc1  $f16, 0x4c($sp)
.L80054868:
/* ACBA08 80054868 26250050 */  addiu $a1, $s1, 0x50
/* ACBA0C 8005486C 2626005C */  addiu $a2, $s1, 0x5c
/* ACBA10 80054870 AFA60034 */  sw    $a2, 0x34($sp)
/* ACBA14 80054874 AFA50030 */  sw    $a1, 0x30($sp)
/* ACBA18 80054878 27A40090 */  addiu $a0, $sp, 0x90
/* ACBA1C 8005487C 0C01F124 */  jal   func_8007C490
/* ACBA20 80054880 E7B0004C */   swc1  $f16, 0x4c($sp)
/* ACBA24 80054884 86390008 */  lh    $t9, 8($s1)
/* ACBA28 80054888 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ACBA2C 8005488C C7B0004C */  lwc1  $f16, 0x4c($sp)
/* ACBA30 80054890 AC39D3A0 */  sw    $t9, %lo(D_8011D3A0)($at)
/* ACBA34 80054894 9628015E */  lhu   $t0, 0x15e($s1)
/* ACBA38 80054898 2D01001F */  sltiu $at, $t0, 0x1f
/* ACBA3C 8005489C 102001FB */  beqz  $at, .L8005508C
/* ACBA40 800548A0 00084080 */   sll   $t0, $t0, 2
/* ACBA44 800548A4 3C018014 */  lui   $at, %hi(jtbl_8013A2B8)
/* ACBA48 800548A8 00280821 */  addu  $at, $at, $t0
/* ACBA4C 800548AC 8C28A2B8 */  lw    $t0, %lo(jtbl_8013A2B8)($at)
/* ACBA50 800548B0 01000008 */  jr    $t0
/* ACBA54 800548B4 00000000 */   nop   
/* ACBA58 800548B8 862A014C */  lh    $t2, 0x14c($s1)
/* ACBA5C 800548BC 02202025 */  move  $a0, $s1
/* ACBA60 800548C0 3149FFF3 */  andi  $t1, $t2, 0xfff3
/* ACBA64 800548C4 0C010ED8 */  jal   func_80043B60
/* ACBA68 800548C8 A629014C */   sh    $t1, 0x14c($s1)
/* ACBA6C 800548CC C6320000 */  lwc1  $f18, ($s1)
/* ACBA70 800548D0 2630000C */  addiu $s0, $s1, 0xc
/* ACBA74 800548D4 26220094 */  addiu $v0, $s1, 0x94
/* ACBA78 800548D8 E63200FC */  swc1  $f18, 0xfc($s1)
/* ACBA7C 800548DC A6000010 */  sh    $zero, 0x10($s0)
/* ACBA80 800548E0 860B0010 */  lh    $t3, 0x10($s0)
/* ACBA84 800548E4 3C01C6FA */  li    $at, 0xC6FA0000 # 0.000000
/* ACBA88 800548E8 44812000 */  mtc1  $at, $f4
/* ACBA8C 800548EC A62B015A */  sh    $t3, 0x15a($s1)
/* ACBA90 800548F0 8C4D0000 */  lw    $t5, ($v0)
/* ACBA94 800548F4 AE0D0000 */  sw    $t5, ($s0)
/* ACBA98 800548F8 8C4C0004 */  lw    $t4, 4($v0)
/* ACBA9C 800548FC AE0C0004 */  sw    $t4, 4($s0)
/* ACBAA0 80054900 8C4D0008 */  lw    $t5, 8($v0)
/* ACBAA4 80054904 AE0D0008 */  sw    $t5, 8($s0)
/* ACBAA8 80054908 C6200104 */  lwc1  $f0, 0x104($s1)
/* ACBAAC 8005490C 46002032 */  c.eq.s $f4, $f0
/* ACBAB0 80054910 00000000 */  nop   
/* ACBAB4 80054914 45030003 */  bc1tl .L80054924
/* ACBAB8 80054918 8444000E */   lh    $a0, 0xe($v0)
/* ACBABC 8005491C E6000004 */  swc1  $f0, 4($s0)
/* ACBAC0 80054920 8444000E */  lh    $a0, 0xe($v0)
.L80054924:
/* ACBAC4 80054924 AFA20028 */  sw    $v0, 0x28($sp)
/* ACBAC8 80054928 0C01DE1C */  jal   Math_Sins
/* ACBACC 8005492C A7A4004A */   sh    $a0, 0x4a($sp)
/* ACBAD0 80054930 3C014220 */  li    $at, 0x42200000 # 0.000000
/* ACBAD4 80054934 44811000 */  mtc1  $at, $f2
/* ACBAD8 80054938 C6080000 */  lwc1  $f8, ($s0)
/* ACBADC 8005493C 87A4004A */  lh    $a0, 0x4a($sp)
/* ACBAE0 80054940 46020182 */  mul.s $f6, $f0, $f2
/* ACBAE4 80054944 46083280 */  add.s $f10, $f6, $f8
/* ACBAE8 80054948 E7AA0068 */  swc1  $f10, 0x68($sp)
/* ACBAEC 8005494C C6120004 */  lwc1  $f18, 4($s0)
/* ACBAF0 80054950 46029100 */  add.s $f4, $f18, $f2
/* ACBAF4 80054954 0C01DE0D */  jal   Math_Coss
/* ACBAF8 80054958 E7A4006C */   swc1  $f4, 0x6c($sp)
/* ACBAFC 8005495C 3C014220 */  li    $at, 0x42200000 # 0.000000
/* ACBB00 80054960 44813000 */  mtc1  $at, $f6
/* ACBB04 80054964 C60A0008 */  lwc1  $f10, 8($s0)
/* ACBB08 80054968 87A4004A */  lh    $a0, 0x4a($sp)
/* ACBB0C 8005496C 46060202 */  mul.s $f8, $f0, $f6
/* ACBB10 80054970 24190001 */  li    $t9, 1
/* ACBB14 80054974 2408FFFF */  li    $t0, -1
/* ACBB18 80054978 460A4480 */  add.s $f18, $f8, $f10
/* ACBB1C 8005497C E7B20070 */  swc1  $f18, 0x70($sp)
/* ACBB20 80054980 8E2E008C */  lw    $t6, 0x8c($s1)
/* ACBB24 80054984 8DCF009C */  lw    $t7, 0x9c($t6)
/* ACBB28 80054988 31F80001 */  andi  $t8, $t7, 1
/* ACBB2C 8005498C 53000007 */  beql  $t8, $zero, .L800549AC
/* ACBB30 80054990 24843FFF */   addiu $a0, $a0, 0x3fff
/* ACBB34 80054994 2484C001 */  addiu $a0, $a0, -0x3fff
/* ACBB38 80054998 00042400 */  sll   $a0, $a0, 0x10
/* ACBB3C 8005499C 00042403 */  sra   $a0, $a0, 0x10
/* ACBB40 800549A0 10000005 */  b     .L800549B8
/* ACBB44 800549A4 A6190012 */   sh    $t9, 0x12($s0)
/* ACBB48 800549A8 24843FFF */  addiu $a0, $a0, 0x3fff
.L800549AC:
/* ACBB4C 800549AC 00042400 */  sll   $a0, $a0, 0x10
/* ACBB50 800549B0 00042403 */  sra   $a0, $a0, 0x10
/* ACBB54 800549B4 A6080012 */  sh    $t0, 0x12($s0)
.L800549B8:
/* ACBB58 800549B8 0C01DE1C */  jal   Math_Sins
/* ACBB5C 800549BC A7A4004A */   sh    $a0, 0x4a($sp)
/* ACBB60 800549C0 3C038012 */  lui   $v1, %hi(D_8011D658) # $v1, 0x8012
/* ACBB64 800549C4 2463D658 */  addiu $v1, %lo(D_8011D658) # addiu $v1, $v1, -0x29a8
/* ACBB68 800549C8 C4640008 */  lwc1  $f4, 8($v1)
/* ACBB6C 800549CC C7A80068 */  lwc1  $f8, 0x68($sp)
/* ACBB70 800549D0 3C0140A0 */  li    $at, 0x40A00000 # 0.000000
/* ACBB74 800549D4 46040182 */  mul.s $f6, $f0, $f4
/* ACBB78 800549D8 44812000 */  mtc1  $at, $f4
/* ACBB7C 800549DC 87A4004A */  lh    $a0, 0x4a($sp)
/* ACBB80 800549E0 46083280 */  add.s $f10, $f6, $f8
/* ACBB84 800549E4 E7AA0074 */  swc1  $f10, 0x74($sp)
/* ACBB88 800549E8 C6120004 */  lwc1  $f18, 4($s0)
/* ACBB8C 800549EC 46049180 */  add.s $f6, $f18, $f4
/* ACBB90 800549F0 0C01DE0D */  jal   Math_Coss
/* ACBB94 800549F4 E7A60078 */   swc1  $f6, 0x78($sp)
/* ACBB98 800549F8 3C038012 */  lui   $v1, %hi(D_8011D658) # $v1, 0x8012
/* ACBB9C 800549FC 2463D658 */  addiu $v1, %lo(D_8011D658) # addiu $v1, $v1, -0x29a8
/* ACBBA0 80054A00 C4680008 */  lwc1  $f8, 8($v1)
/* ACBBA4 80054A04 C7B20070 */  lwc1  $f18, 0x70($sp)
/* ACBBA8 80054A08 02202025 */  move  $a0, $s1
/* ACBBAC 80054A0C 46080282 */  mul.s $f10, $f0, $f8
/* ACBBB0 80054A10 27A50068 */  addiu $a1, $sp, 0x68
/* ACBBB4 80054A14 27A60074 */  addiu $a2, $sp, 0x74
/* ACBBB8 80054A18 46125100 */  add.s $f4, $f10, $f18
/* ACBBBC 80054A1C 0C010FCD */  jal   func_80043F34
/* ACBBC0 80054A20 E7A4007C */   swc1  $f4, 0x7c($sp)
/* ACBBC4 80054A24 10400004 */  beqz  $v0, .L80054A38
/* ACBBC8 80054A28 3C068012 */   lui   $a2, %hi(D_8011D678)
/* ACBBCC 80054A2C 860A0012 */  lh    $t2, 0x12($s0)
/* ACBBD0 80054A30 000A4823 */  negu  $t1, $t2
/* ACBBD4 80054A34 A6090012 */  sh    $t1, 0x12($s0)
.L80054A38:
/* ACBBD8 80054A38 24C5D678 */  addiu $a1, $a2, %lo(D_8011D678)
/* ACBBDC 80054A3C 0C01F0FD */  jal   func_8007C3F4
/* ACBBE0 80054A40 27A40080 */   addiu $a0, $sp, 0x80
/* ACBBE4 80054A44 8FAC0028 */  lw    $t4, 0x28($sp)
/* ACBBE8 80054A48 87AB0086 */  lh    $t3, 0x86($sp)
/* ACBBEC 80054A4C 8FA40030 */  lw    $a0, 0x30($sp)
/* ACBBF0 80054A50 858D000E */  lh    $t5, 0xe($t4)
/* ACBBF4 80054A54 02002825 */  move  $a1, $s0
/* ACBBF8 80054A58 27A60080 */  addiu $a2, $sp, 0x80
/* ACBBFC 80054A5C 016D7021 */  addu  $t6, $t3, $t5
/* ACBC00 80054A60 0C010F0A */  jal   func_80043C28
/* ACBC04 80054A64 A7AE0086 */   sh    $t6, 0x86($sp)
/* ACBC08 80054A68 3C038012 */  lui   $v1, %hi(D_8011D658) # $v1, 0x8012
/* ACBC0C 80054A6C 2463D658 */  addiu $v1, %lo(D_8011D658) # addiu $v1, $v1, -0x29a8
/* ACBC10 80054A70 C4660000 */  lwc1  $f6, ($v1)
/* ACBC14 80054A74 846F0004 */  lh    $t7, 4($v1)
/* ACBC18 80054A78 84780006 */  lh    $t8, 6($v1)
/* ACBC1C 80054A7C E7A60088 */  swc1  $f6, 0x88($sp)
/* ACBC20 80054A80 A7AF008C */  sh    $t7, 0x8c($sp)
/* ACBC24 80054A84 86190012 */  lh    $t9, 0x12($s0)
/* ACBC28 80054A88 8FAA0028 */  lw    $t2, 0x28($sp)
/* ACBC2C 80054A8C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ACBC30 80054A90 03190019 */  multu $t8, $t9
/* ACBC34 80054A94 8549000E */  lh    $t1, 0xe($t2)
/* ACBC38 80054A98 44814000 */  mtc1  $at, $f8
/* ACBC3C 80054A9C 00004012 */  mflo  $t0
/* ACBC40 80054AA0 01096021 */  addu  $t4, $t0, $t1
/* ACBC44 80054AA4 A7AC008E */  sh    $t4, 0x8e($sp)
/* ACBC48 80054AA8 86060010 */  lh    $a2, 0x10($s0)
/* ACBC4C 80054AAC 10000191 */  b     .L800550F4
/* ACBC50 80054AB0 E608000C */   swc1  $f8, 0xc($s0)
/* ACBC54 80054AB4 2630000C */  addiu $s0, $s1, 0xc
/* ACBC58 80054AB8 860B0010 */  lh    $t3, 0x10($s0)
/* ACBC5C 80054ABC 3C018014 */  lui   $at, %hi(D_8013A334)
/* ACBC60 80054AC0 C424A334 */  lwc1  $f4, %lo(D_8013A334)($at)
/* ACBC64 80054AC4 256DFFFE */  addiu $t5, $t3, -2
/* ACBC68 80054AC8 448D5000 */  mtc1  $t5, $f10
/* ACBC6C 80054ACC 3C068012 */  lui   $a2, %hi(D_8011D678)
/* ACBC70 80054AD0 24C6D678 */  addiu $a2, %lo(D_8011D678) # addiu $a2, $a2, -0x2988
/* ACBC74 80054AD4 468054A0 */  cvt.s.w $f18, $f10
/* ACBC78 80054AD8 C4C20000 */  lwc1  $f2, ($a2)
/* ACBC7C 80054ADC C4C6000C */  lwc1  $f6, 0xc($a2)
/* ACBC80 80054AE0 C4CC0004 */  lwc1  $f12, 4($a2)
/* ACBC84 80054AE4 C4CE0008 */  lwc1  $f14, 8($a2)
/* ACBC88 80054AE8 46023201 */  sub.s $f8, $f6, $f2
/* ACBC8C 80054AEC 46049002 */  mul.s $f0, $f18, $f4
/* ACBC90 80054AF0 C4C40010 */  lwc1  $f4, 0x10($a2)
/* ACBC94 80054AF4 27A40080 */  addiu $a0, $sp, 0x80
/* ACBC98 80054AF8 27A5005C */  addiu $a1, $sp, 0x5c
/* ACBC9C 80054AFC 460C2181 */  sub.s $f6, $f4, $f12
/* ACBCA0 80054B00 46004282 */  mul.s $f10, $f8, $f0
/* ACBCA4 80054B04 E7A00058 */  swc1  $f0, 0x58($sp)
/* ACBCA8 80054B08 46003202 */  mul.s $f8, $f6, $f0
/* ACBCAC 80054B0C 46025480 */  add.s $f18, $f10, $f2
/* ACBCB0 80054B10 460C4280 */  add.s $f10, $f8, $f12
/* ACBCB4 80054B14 E7B2005C */  swc1  $f18, 0x5c($sp)
/* ACBCB8 80054B18 C4D20014 */  lwc1  $f18, 0x14($a2)
/* ACBCBC 80054B1C E7AA0060 */  swc1  $f10, 0x60($sp)
/* ACBCC0 80054B20 460E9101 */  sub.s $f4, $f18, $f14
/* ACBCC4 80054B24 46002182 */  mul.s $f6, $f4, $f0
/* ACBCC8 80054B28 460E3200 */  add.s $f8, $f6, $f14
/* ACBCCC 80054B2C 0C01F0FD */  jal   func_8007C3F4
/* ACBCD0 80054B30 E7A80064 */   swc1  $f8, 0x64($sp)
/* ACBCD4 80054B34 87AE0086 */  lh    $t6, 0x86($sp)
/* ACBCD8 80054B38 860F0012 */  lh    $t7, 0x12($s0)
/* ACBCDC 80054B3C 26230094 */  addiu $v1, $s1, 0x94
/* ACBCE0 80054B40 8479000E */  lh    $t9, 0xe($v1)
/* ACBCE4 80054B44 01CF0019 */  multu $t6, $t7
/* ACBCE8 80054B48 AFA30028 */  sw    $v1, 0x28($sp)
/* ACBCEC 80054B4C 8FA40030 */  lw    $a0, 0x30($sp)
/* ACBCF0 80054B50 02002825 */  move  $a1, $s0
/* ACBCF4 80054B54 27A60080 */  addiu $a2, $sp, 0x80
/* ACBCF8 80054B58 0000C012 */  mflo  $t8
/* ACBCFC 80054B5C 03195021 */  addu  $t2, $t8, $t9
/* ACBD00 80054B60 0C010F0A */  jal   func_80043C28
/* ACBD04 80054B64 A7AA0086 */   sh    $t2, 0x86($sp)
/* ACBD08 80054B68 3C038012 */  lui   $v1, %hi(D_8011D658)
/* ACBD0C 80054B6C 2463D658 */  addiu $v1, %lo(D_8011D658) # addiu $v1, $v1, -0x29a8
/* ACBD10 80054B70 84640004 */  lh    $a0, 4($v1)
/* ACBD14 80054B74 8468000C */  lh    $t0, 0xc($v1)
/* ACBD18 80054B78 C4620000 */  lwc1  $f2, ($v1)
/* ACBD1C 80054B7C C46A0008 */  lwc1  $f10, 8($v1)
/* ACBD20 80054B80 01044823 */  subu  $t1, $t0, $a0
/* ACBD24 80054B84 00096400 */  sll   $t4, $t1, 0x10
/* ACBD28 80054B88 000C5C03 */  sra   $t3, $t4, 0x10
/* ACBD2C 80054B8C 448B4000 */  mtc1  $t3, $f8
/* ACBD30 80054B90 46025481 */  sub.s $f18, $f10, $f2
/* ACBD34 80054B94 84650006 */  lh    $a1, 6($v1)
/* ACBD38 80054B98 846A000E */  lh    $t2, 0xe($v1)
/* ACBD3C 80054B9C 468042A0 */  cvt.s.w $f10, $f8
/* ACBD40 80054BA0 C7A00058 */  lwc1  $f0, 0x58($sp)
/* ACBD44 80054BA4 01454023 */  subu  $t0, $t2, $a1
/* ACBD48 80054BA8 00084C00 */  sll   $t1, $t0, 0x10
/* ACBD4C 80054BAC 46009102 */  mul.s $f4, $f18, $f0
/* ACBD50 80054BB0 00096403 */  sra   $t4, $t1, 0x10
/* ACBD54 80054BB4 448C4000 */  mtc1  $t4, $f8
/* ACBD58 80054BB8 46005482 */  mul.s $f18, $f10, $f0
/* ACBD5C 80054BBC 8FAE0028 */  lw    $t6, 0x28($sp)
/* ACBD60 80054BC0 3C018014 */  lui   $at, %hi(D_8013A338)
/* ACBD64 80054BC4 46022180 */  add.s $f6, $f4, $f2
/* ACBD68 80054BC8 468042A0 */  cvt.s.w $f10, $f8
/* ACBD6C 80054BCC E7A60080 */  swc1  $f6, 0x80($sp)
/* ACBD70 80054BD0 E7A60088 */  swc1  $f6, 0x88($sp)
/* ACBD74 80054BD4 4600910D */  trunc.w.s $f4, $f18
/* ACBD78 80054BD8 46005482 */  mul.s $f18, $f10, $f0
/* ACBD7C 80054BDC C42AA338 */  lwc1  $f10, %lo(D_8013A338)($at)
/* ACBD80 80054BE0 44182000 */  mfc1  $t8, $f4
/* ACBD84 80054BE4 00000000 */  nop   
/* ACBD88 80054BE8 0304C821 */  addu  $t9, $t8, $a0
/* ACBD8C 80054BEC 4600910D */  trunc.w.s $f4, $f18
/* ACBD90 80054BF0 03204025 */  move  $t0, $t9
/* ACBD94 80054BF4 A7B90084 */  sh    $t9, 0x84($sp)
/* ACBD98 80054BF8 A7A8008C */  sh    $t0, 0x8c($sp)
/* ACBD9C 80054BFC 440F2000 */  mfc1  $t7, $f4
/* ACBDA0 80054C00 00000000 */  nop   
/* ACBDA4 80054C04 01E5C021 */  addu  $t8, $t7, $a1
/* ACBDA8 80054C08 A7B80086 */  sh    $t8, 0x86($sp)
/* ACBDAC 80054C0C 86090012 */  lh    $t1, 0x12($s0)
/* ACBDB0 80054C10 00186400 */  sll   $t4, $t8, 0x10
/* ACBDB4 80054C14 000C5C03 */  sra   $t3, $t4, 0x10
/* ACBDB8 80054C18 01690019 */  multu $t3, $t1
/* ACBDBC 80054C1C 85CF000E */  lh    $t7, 0xe($t6)
/* ACBDC0 80054C20 00006812 */  mflo  $t5
/* ACBDC4 80054C24 01AFC821 */  addu  $t9, $t5, $t7
/* ACBDC8 80054C28 A7B9008E */  sh    $t9, 0x8e($sp)
/* ACBDCC 80054C2C C608000C */  lwc1  $f8, 0xc($s0)
/* ACBDD0 80054C30 86060010 */  lh    $a2, 0x10($s0)
/* ACBDD4 80054C34 460A4481 */  sub.s $f18, $f8, $f10
/* ACBDD8 80054C38 1000012E */  b     .L800550F4
/* ACBDDC 80054C3C E612000C */   swc1  $f18, 0xc($s0)
/* ACBDE0 80054C40 2630000C */  addiu $s0, $s1, 0xc
/* ACBDE4 80054C44 860A0010 */  lh    $t2, 0x10($s0)
/* ACBDE8 80054C48 3C018014 */  lui   $at, %hi(D_8013A33C)
/* ACBDEC 80054C4C C428A33C */  lwc1  $f8, %lo(D_8013A33C)($at)
/* ACBDF0 80054C50 2548FF6C */  addiu $t0, $t2, -0x94
/* ACBDF4 80054C54 44882000 */  mtc1  $t0, $f4
/* ACBDF8 80054C58 3C068012 */  lui   $a2, %hi(D_8011D678)
/* ACBDFC 80054C5C 24C6D678 */  addiu $a2, %lo(D_8011D678) # addiu $a2, $a2, -0x2988
/* ACBE00 80054C60 468021A0 */  cvt.s.w $f6, $f4
/* ACBE04 80054C64 C4C2000C */  lwc1  $f2, 0xc($a2)
/* ACBE08 80054C68 C4CA0018 */  lwc1  $f10, 0x18($a2)
/* ACBE0C 80054C6C C4CC0014 */  lwc1  $f12, 0x14($a2)
/* ACBE10 80054C70 27A40080 */  addiu $a0, $sp, 0x80
/* ACBE14 80054C74 46025481 */  sub.s $f18, $f10, $f2
/* ACBE18 80054C78 46083002 */  mul.s $f0, $f6, $f8
/* ACBE1C 80054C7C C4C80010 */  lwc1  $f8, 0x10($a2)
/* ACBE20 80054C80 C4CA001C */  lwc1  $f10, 0x1c($a2)
/* ACBE24 80054C84 27A5005C */  addiu $a1, $sp, 0x5c
/* ACBE28 80054C88 46104381 */  sub.s $f14, $f8, $f16
/* ACBE2C 80054C8C 46009102 */  mul.s $f4, $f18, $f0
/* ACBE30 80054C90 E7A00058 */  swc1  $f0, 0x58($sp)
/* ACBE34 80054C94 460E5481 */  sub.s $f18, $f10, $f14
/* ACBE38 80054C98 C4CA0020 */  lwc1  $f10, 0x20($a2)
/* ACBE3C 80054C9C 46022180 */  add.s $f6, $f4, $f2
/* ACBE40 80054CA0 46009102 */  mul.s $f4, $f18, $f0
/* ACBE44 80054CA4 460C5481 */  sub.s $f18, $f10, $f12
/* ACBE48 80054CA8 E7A6005C */  swc1  $f6, 0x5c($sp)
/* ACBE4C 80054CAC 460E2180 */  add.s $f6, $f4, $f14
/* ACBE50 80054CB0 46009102 */  mul.s $f4, $f18, $f0
/* ACBE54 80054CB4 E7A60060 */  swc1  $f6, 0x60($sp)
/* ACBE58 80054CB8 46103200 */  add.s $f8, $f6, $f16
/* ACBE5C 80054CBC 460C2180 */  add.s $f6, $f4, $f12
/* ACBE60 80054CC0 E7A80060 */  swc1  $f8, 0x60($sp)
/* ACBE64 80054CC4 0C01F0FD */  jal   func_8007C3F4
/* ACBE68 80054CC8 E7A60064 */   swc1  $f6, 0x64($sp)
/* ACBE6C 80054CCC 87B80086 */  lh    $t8, 0x86($sp)
/* ACBE70 80054CD0 860C0012 */  lh    $t4, 0x12($s0)
/* ACBE74 80054CD4 26230094 */  addiu $v1, $s1, 0x94
/* ACBE78 80054CD8 8469000E */  lh    $t1, 0xe($v1)
/* ACBE7C 80054CDC 030C0019 */  multu $t8, $t4
/* ACBE80 80054CE0 AFA30028 */  sw    $v1, 0x28($sp)
/* ACBE84 80054CE4 8FA40030 */  lw    $a0, 0x30($sp)
/* ACBE88 80054CE8 02002825 */  move  $a1, $s0
/* ACBE8C 80054CEC 27A60080 */  addiu $a2, $sp, 0x80
/* ACBE90 80054CF0 00005812 */  mflo  $t3
/* ACBE94 80054CF4 01697021 */  addu  $t6, $t3, $t1
/* ACBE98 80054CF8 0C010F0A */  jal   func_80043C28
/* ACBE9C 80054CFC A7AE0086 */   sh    $t6, 0x86($sp)
/* ACBEA0 80054D00 3C038012 */  lui   $v1, %hi(D_8011D658)
/* ACBEA4 80054D04 2463D658 */  addiu $v1, %lo(D_8011D658) # addiu $v1, $v1, -0x29a8
/* ACBEA8 80054D08 8464000C */  lh    $a0, 0xc($v1)
/* ACBEAC 80054D0C 846D0014 */  lh    $t5, 0x14($v1)
/* ACBEB0 80054D10 C4620008 */  lwc1  $f2, 8($v1)
/* ACBEB4 80054D14 C4680010 */  lwc1  $f8, 0x10($v1)
/* ACBEB8 80054D18 01A47823 */  subu  $t7, $t5, $a0
/* ACBEBC 80054D1C 000FCC00 */  sll   $t9, $t7, 0x10
/* ACBEC0 80054D20 00195403 */  sra   $t2, $t9, 0x10
/* ACBEC4 80054D24 448A3000 */  mtc1  $t2, $f6
/* ACBEC8 80054D28 46024281 */  sub.s $f10, $f8, $f2
/* ACBECC 80054D2C 8465000E */  lh    $a1, 0xe($v1)
/* ACBED0 80054D30 846E0016 */  lh    $t6, 0x16($v1)
/* ACBED4 80054D34 46803220 */  cvt.s.w $f8, $f6
/* ACBED8 80054D38 C7A00058 */  lwc1  $f0, 0x58($sp)
/* ACBEDC 80054D3C 01C56823 */  subu  $t5, $t6, $a1
/* ACBEE0 80054D40 000D7C00 */  sll   $t7, $t5, 0x10
/* ACBEE4 80054D44 46005482 */  mul.s $f18, $f10, $f0
/* ACBEE8 80054D48 000FCC03 */  sra   $t9, $t7, 0x10
/* ACBEEC 80054D4C 44993000 */  mtc1  $t9, $f6
/* ACBEF0 80054D50 46004282 */  mul.s $f10, $f8, $f0
/* ACBEF4 80054D54 8FB80028 */  lw    $t8, 0x28($sp)
/* ACBEF8 80054D58 3C018014 */  lui   $at, %hi(D_8013A340)
/* ACBEFC 80054D5C 46029100 */  add.s $f4, $f18, $f2
/* ACBF00 80054D60 46803220 */  cvt.s.w $f8, $f6
/* ACBF04 80054D64 E7A40080 */  swc1  $f4, 0x80($sp)
/* ACBF08 80054D68 E7A40088 */  swc1  $f4, 0x88($sp)
/* ACBF0C 80054D6C 4600548D */  trunc.w.s $f18, $f10
/* ACBF10 80054D70 46004282 */  mul.s $f10, $f8, $f0
/* ACBF14 80054D74 C428A340 */  lwc1  $f8, %lo(D_8013A340)($at)
/* ACBF18 80054D78 440B9000 */  mfc1  $t3, $f18
/* ACBF1C 80054D7C 00000000 */  nop   
/* ACBF20 80054D80 01644821 */  addu  $t1, $t3, $a0
/* ACBF24 80054D84 4600548D */  trunc.w.s $f18, $f10
/* ACBF28 80054D88 01206825 */  move  $t5, $t1
/* ACBF2C 80054D8C A7A90084 */  sh    $t1, 0x84($sp)
/* ACBF30 80054D90 A7AD008C */  sh    $t5, 0x8c($sp)
/* ACBF34 80054D94 440C9000 */  mfc1  $t4, $f18
/* ACBF38 80054D98 00000000 */  nop   
/* ACBF3C 80054D9C 01855821 */  addu  $t3, $t4, $a1
/* ACBF40 80054DA0 A7AB0086 */  sh    $t3, 0x86($sp)
/* ACBF44 80054DA4 860F0012 */  lh    $t7, 0x12($s0)
/* ACBF48 80054DA8 000BCC00 */  sll   $t9, $t3, 0x10
/* ACBF4C 80054DAC 00195403 */  sra   $t2, $t9, 0x10
/* ACBF50 80054DB0 014F0019 */  multu $t2, $t7
/* ACBF54 80054DB4 870C000E */  lh    $t4, 0xe($t8)
/* ACBF58 80054DB8 00004012 */  mflo  $t0
/* ACBF5C 80054DBC 010C4821 */  addu  $t1, $t0, $t4
/* ACBF60 80054DC0 A7A9008E */  sh    $t1, 0x8e($sp)
/* ACBF64 80054DC4 C606000C */  lwc1  $f6, 0xc($s0)
/* ACBF68 80054DC8 86060010 */  lh    $a2, 0x10($s0)
/* ACBF6C 80054DCC 46083281 */  sub.s $f10, $f6, $f8
/* ACBF70 80054DD0 100000C8 */  b     .L800550F4
/* ACBF74 80054DD4 E60A000C */   swc1  $f10, 0xc($s0)
/* ACBF78 80054DD8 2630000C */  addiu $s0, $s1, 0xc
/* ACBF7C 80054DDC 860E0010 */  lh    $t6, 0x10($s0)
/* ACBF80 80054DE0 3C018014 */  lui   $at, %hi(D_8013A344)
/* ACBF84 80054DE4 C426A344 */  lwc1  $f6, %lo(D_8013A344)($at)
/* ACBF88 80054DE8 25CDFF61 */  addiu $t5, $t6, -0x9f
/* ACBF8C 80054DEC 448D9000 */  mtc1  $t5, $f18
/* ACBF90 80054DF0 3C068012 */  lui   $a2, %hi(D_8011D678)
/* ACBF94 80054DF4 24C6D678 */  addiu $a2, %lo(D_8011D678) # addiu $a2, $a2, -0x2988
/* ACBF98 80054DF8 46809120 */  cvt.s.w $f4, $f18
/* ACBF9C 80054DFC C4C20018 */  lwc1  $f2, 0x18($a2)
/* ACBFA0 80054E00 C4C80024 */  lwc1  $f8, 0x24($a2)
/* ACBFA4 80054E04 C4CC001C */  lwc1  $f12, 0x1c($a2)
/* ACBFA8 80054E08 C4CE0020 */  lwc1  $f14, 0x20($a2)
/* ACBFAC 80054E0C 46024281 */  sub.s $f10, $f8, $f2
/* ACBFB0 80054E10 46062002 */  mul.s $f0, $f4, $f6
/* ACBFB4 80054E14 C4C60028 */  lwc1  $f6, 0x28($a2)
/* ACBFB8 80054E18 27A40080 */  addiu $a0, $sp, 0x80
/* ACBFBC 80054E1C 27A5005C */  addiu $a1, $sp, 0x5c
/* ACBFC0 80054E20 460C3201 */  sub.s $f8, $f6, $f12
/* ACBFC4 80054E24 C4C6002C */  lwc1  $f6, 0x2c($a2)
/* ACBFC8 80054E28 46005482 */  mul.s $f18, $f10, $f0
/* ACBFCC 80054E2C E7A00058 */  swc1  $f0, 0x58($sp)
/* ACBFD0 80054E30 46004282 */  mul.s $f10, $f8, $f0
/* ACBFD4 80054E34 460E3201 */  sub.s $f8, $f6, $f14
/* ACBFD8 80054E38 46029100 */  add.s $f4, $f18, $f2
/* ACBFDC 80054E3C 460C5480 */  add.s $f18, $f10, $f12
/* ACBFE0 80054E40 46004282 */  mul.s $f10, $f8, $f0
/* ACBFE4 80054E44 E7A4005C */  swc1  $f4, 0x5c($sp)
/* ACBFE8 80054E48 E7B20060 */  swc1  $f18, 0x60($sp)
/* ACBFEC 80054E4C 46109100 */  add.s $f4, $f18, $f16
/* ACBFF0 80054E50 460E5480 */  add.s $f18, $f10, $f14
/* ACBFF4 80054E54 E7A40060 */  swc1  $f4, 0x60($sp)
/* ACBFF8 80054E58 0C01F0FD */  jal   func_8007C3F4
/* ACBFFC 80054E5C E7B20064 */   swc1  $f18, 0x64($sp)
/* ACC000 80054E60 87AB0086 */  lh    $t3, 0x86($sp)
/* ACC004 80054E64 86190012 */  lh    $t9, 0x12($s0)
/* ACC008 80054E68 26230094 */  addiu $v1, $s1, 0x94
/* ACC00C 80054E6C 846F000E */  lh    $t7, 0xe($v1)
/* ACC010 80054E70 01790019 */  multu $t3, $t9
/* ACC014 80054E74 AFA30028 */  sw    $v1, 0x28($sp)
/* ACC018 80054E78 8FA40030 */  lw    $a0, 0x30($sp)
/* ACC01C 80054E7C 02002825 */  move  $a1, $s0
/* ACC020 80054E80 27A60080 */  addiu $a2, $sp, 0x80
/* ACC024 80054E84 00005012 */  mflo  $t2
/* ACC028 80054E88 014FC021 */  addu  $t8, $t2, $t7
/* ACC02C 80054E8C 0C010F0A */  jal   func_80043C28
/* ACC030 80054E90 A7B80086 */   sh    $t8, 0x86($sp)
/* ACC034 80054E94 3C038012 */  lui   $v1, %hi(D_8011D658)
/* ACC038 80054E98 2463D658 */  addiu $v1, %lo(D_8011D658) # addiu $v1, $v1, -0x29a8
/* ACC03C 80054E9C 84640014 */  lh    $a0, 0x14($v1)
/* ACC040 80054EA0 8468001C */  lh    $t0, 0x1c($v1)
/* ACC044 80054EA4 C4620010 */  lwc1  $f2, 0x10($v1)
/* ACC048 80054EA8 C4640018 */  lwc1  $f4, 0x18($v1)
/* ACC04C 80054EAC 01046023 */  subu  $t4, $t0, $a0
/* ACC050 80054EB0 000C4C00 */  sll   $t1, $t4, 0x10
/* ACC054 80054EB4 00097403 */  sra   $t6, $t1, 0x10
/* ACC058 80054EB8 448E9000 */  mtc1  $t6, $f18
/* ACC05C 80054EBC 46022181 */  sub.s $f6, $f4, $f2
/* ACC060 80054EC0 84650016 */  lh    $a1, 0x16($v1)
/* ACC064 80054EC4 8478001E */  lh    $t8, 0x1e($v1)
/* ACC068 80054EC8 46809120 */  cvt.s.w $f4, $f18
/* ACC06C 80054ECC C7A00058 */  lwc1  $f0, 0x58($sp)
/* ACC070 80054ED0 03054023 */  subu  $t0, $t8, $a1
/* ACC074 80054ED4 00086400 */  sll   $t4, $t0, 0x10
/* ACC078 80054ED8 46003202 */  mul.s $f8, $f6, $f0
/* ACC07C 80054EDC 000C4C03 */  sra   $t1, $t4, 0x10
/* ACC080 80054EE0 44899000 */  mtc1  $t1, $f18
/* ACC084 80054EE4 46002182 */  mul.s $f6, $f4, $f0
/* ACC088 80054EE8 8FAB0028 */  lw    $t3, 0x28($sp)
/* ACC08C 80054EEC 3C018014 */  lui   $at, %hi(D_8013A348)
/* ACC090 80054EF0 46024280 */  add.s $f10, $f8, $f2
/* ACC094 80054EF4 46809120 */  cvt.s.w $f4, $f18
/* ACC098 80054EF8 E7AA0080 */  swc1  $f10, 0x80($sp)
/* ACC09C 80054EFC E7AA0088 */  swc1  $f10, 0x88($sp)
/* ACC0A0 80054F00 4600320D */  trunc.w.s $f8, $f6
/* ACC0A4 80054F04 46002182 */  mul.s $f6, $f4, $f0
/* ACC0A8 80054F08 C424A348 */  lwc1  $f4, %lo(D_8013A348)($at)
/* ACC0AC 80054F0C 440A4000 */  mfc1  $t2, $f8
/* ACC0B0 80054F10 00000000 */  nop   
/* ACC0B4 80054F14 01447821 */  addu  $t7, $t2, $a0
/* ACC0B8 80054F18 4600320D */  trunc.w.s $f8, $f6
/* ACC0BC 80054F1C 01E04025 */  move  $t0, $t7
/* ACC0C0 80054F20 A7AF0084 */  sh    $t7, 0x84($sp)
/* ACC0C4 80054F24 A7A8008C */  sh    $t0, 0x8c($sp)
/* ACC0C8 80054F28 44194000 */  mfc1  $t9, $f8
/* ACC0CC 80054F2C 00000000 */  nop   
/* ACC0D0 80054F30 03255021 */  addu  $t2, $t9, $a1
/* ACC0D4 80054F34 A7AA0086 */  sh    $t2, 0x86($sp)
/* ACC0D8 80054F38 860C0012 */  lh    $t4, 0x12($s0)
/* ACC0DC 80054F3C 000A4C00 */  sll   $t1, $t2, 0x10
/* ACC0E0 80054F40 00097403 */  sra   $t6, $t1, 0x10
/* ACC0E4 80054F44 01CC0019 */  multu $t6, $t4
/* ACC0E8 80054F48 8579000E */  lh    $t9, 0xe($t3)
/* ACC0EC 80054F4C 00006812 */  mflo  $t5
/* ACC0F0 80054F50 01B97821 */  addu  $t7, $t5, $t9
/* ACC0F4 80054F54 A7AF008E */  sh    $t7, 0x8e($sp)
/* ACC0F8 80054F58 C612000C */  lwc1  $f18, 0xc($s0)
/* ACC0FC 80054F5C 86060010 */  lh    $a2, 0x10($s0)
/* ACC100 80054F60 46049180 */  add.s $f6, $f18, $f4
/* ACC104 80054F64 10000063 */  b     .L800550F4
/* ACC108 80054F68 E606000C */   swc1  $f6, 0xc($s0)
/* ACC10C 80054F6C 8638014C */  lh    $t8, 0x14c($s1)
/* ACC110 80054F70 240E0004 */  li    $t6, 4
/* ACC114 80054F74 37080400 */  ori   $t0, $t8, 0x400
/* ACC118 80054F78 A628014C */  sh    $t0, 0x14c($s1)
/* ACC11C 80054F7C 862A014C */  lh    $t2, 0x14c($s1)
/* ACC120 80054F80 31490008 */  andi  $t1, $t2, 8
/* ACC124 80054F84 51200003 */  beql  $t1, $zero, .L80054F94
/* ACC128 80054F88 240C0001 */   li    $t4, 1
/* ACC12C 80054F8C A62E015E */  sh    $t6, 0x15e($s1)
/* ACC130 80054F90 240C0001 */  li    $t4, 1
.L80054F94:
/* ACC134 80054F94 262B0094 */  addiu $t3, $s1, 0x94
/* ACC138 80054F98 A3AC0053 */  sb    $t4, 0x53($sp)
/* ACC13C 80054F9C AFAB0028 */  sw    $t3, 0x28($sp)
/* ACC140 80054FA0 2630000C */  addiu $s0, $s1, 0xc
/* ACC144 80054FA4 10000053 */  b     .L800550F4
/* ACC148 80054FA8 86060010 */   lh    $a2, 0x10($s0)
/* ACC14C 80054FAC 3C0142A0 */  li    $at, 0x42A00000 # 0.000000
/* ACC150 80054FB0 44814000 */  mtc1  $at, $f8
/* ACC154 80054FB4 87AD0096 */  lh    $t5, 0x96($sp)
/* ACC158 80054FB8 3C018014 */  lui   $at, %hi(D_8013A34C)
/* ACC15C 80054FBC C42AA34C */  lwc1  $f10, %lo(D_8013A34C)($at)
/* ACC160 80054FC0 A7A0008C */  sh    $zero, 0x8c($sp)
/* ACC164 80054FC4 2630000C */  addiu $s0, $s1, 0xc
/* ACC168 80054FC8 E7A80088 */  swc1  $f8, 0x88($sp)
/* ACC16C 80054FCC A7AD008E */  sh    $t5, 0x8e($sp)
/* ACC170 80054FD0 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ACC174 80054FD4 24193400 */  li    $t9, 13312
/* ACC178 80054FD8 E60A000C */  swc1  $f10, 0xc($s0)
/* ACC17C 80054FDC AC39D3A0 */  sw    $t9, %lo(D_8011D3A0)($at)
/* ACC180 80054FE0 86060010 */  lh    $a2, 0x10($s0)
/* ACC184 80054FE4 3C018014 */  lui   $at, %hi(D_8013A350)
/* ACC188 80054FE8 04C20025 */  bltzl $a2, .L80055080
/* ACC18C 80054FEC 8639014C */   lh    $t9, 0x14c($s1)
/* ACC190 80054FF0 C432A350 */  lwc1  $f18, %lo(D_8013A350)($at)
/* ACC194 80054FF4 C62400D8 */  lwc1  $f4, 0xd8($s1)
/* ACC198 80054FF8 3C0F8016 */  lui   $t7, %hi(D_8015BD7C) # $t7, 0x8016
/* ACC19C 80054FFC 4604903C */  c.lt.s $f18, $f4
/* ACC1A0 80055000 00000000 */  nop   
/* ACC1A4 80055004 4503001E */  bc1tl .L80055080
/* ACC1A8 80055008 8639014C */   lh    $t9, 0x14c($s1)
/* ACC1AC 8005500C 8DEFBD7C */  lw    $t7, %lo(D_8015BD7C)($t7)
/* ACC1B0 80055010 3C01FFFF */  lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
/* ACC1B4 80055014 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* ACC1B8 80055018 95E20020 */  lhu   $v0, 0x20($t7)
/* ACC1BC 8005501C 0041C027 */  nor   $t8, $v0, $at
/* ACC1C0 80055020 13000016 */  beqz  $t8, .L8005507C
/* ACC1C4 80055024 2401BFFF */   li    $at, -16385
/* ACC1C8 80055028 00414027 */  nor   $t0, $v0, $at
/* ACC1CC 8005502C 11000013 */  beqz  $t0, .L8005507C
/* ACC1D0 80055030 2401FFFD */   li    $at, -3
/* ACC1D4 80055034 00415027 */  nor   $t2, $v0, $at
/* ACC1D8 80055038 11400010 */  beqz  $t2, .L8005507C
/* ACC1DC 8005503C 2401FFFB */   li    $at, -5
/* ACC1E0 80055040 00414827 */  nor   $t1, $v0, $at
/* ACC1E4 80055044 1120000D */  beqz  $t1, .L8005507C
/* ACC1E8 80055048 2401FFF7 */   li    $at, -9
/* ACC1EC 8005504C 00417027 */  nor   $t6, $v0, $at
/* ACC1F0 80055050 11C0000A */  beqz  $t6, .L8005507C
/* ACC1F4 80055054 2401FFFE */   li    $at, -2
/* ACC1F8 80055058 00416027 */  nor   $t4, $v0, $at
/* ACC1FC 8005505C 11800007 */  beqz  $t4, .L8005507C
/* ACC200 80055060 2401FFEF */   li    $at, -17
/* ACC204 80055064 00415827 */  nor   $t3, $v0, $at
/* ACC208 80055068 11600004 */  beqz  $t3, .L8005507C
/* ACC20C 8005506C 2401DFFF */   li    $at, -8193
/* ACC210 80055070 00416827 */  nor   $t5, $v0, $at
/* ACC214 80055074 55A0001C */  bnezl $t5, .L800550E8
/* ACC218 80055078 240C0001 */   li    $t4, 1
.L8005507C:
/* ACC21C 8005507C 8639014C */  lh    $t9, 0x14c($s1)
.L80055080:
/* ACC220 80055080 332F0008 */  andi  $t7, $t9, 8
/* ACC224 80055084 51E00018 */  beql  $t7, $zero, .L800550E8
/* ACC228 80055088 240C0001 */   li    $t4, 1
.L8005508C:
/* ACC22C 8005508C 8638014C */  lh    $t8, 0x14c($s1)
/* ACC230 80055090 86250166 */  lh    $a1, 0x166($s1)
/* ACC234 80055094 2630000C */  addiu $s0, $s1, 0xc
/* ACC238 80055098 37080014 */  ori   $t0, $t8, 0x14
/* ACC23C 8005509C A628014C */  sh    $t0, 0x14c($s1)
/* ACC240 800550A0 862A014C */  lh    $t2, 0x14c($s1)
/* ACC244 800550A4 02202025 */  move  $a0, $s1
/* ACC248 800550A8 24060002 */  li    $a2, 2
/* ACC24C 800550AC 3149FFF7 */  andi  $t1, $t2, 0xfff7
/* ACC250 800550B0 04A10005 */  bgez  $a1, .L800550C8
/* ACC254 800550B4 A629014C */   sh    $t1, 0x14c($s1)
/* ACC258 800550B8 0C016952 */  jal   func_8005A548
/* ACC25C 800550BC 86250154 */   lh    $a1, 0x154($s1)
/* ACC260 800550C0 10000005 */  b     .L800550D8
/* ACC264 800550C4 00000000 */   nop   
.L800550C8:
/* ACC268 800550C8 0C0169EA */  jal   func_8005A7A8
/* ACC26C 800550CC 02202025 */   move  $a0, $s1
/* ACC270 800550D0 240EFFFF */  li    $t6, -1
/* ACC274 800550D4 A62E0166 */  sh    $t6, 0x166($s1)
.L800550D8:
/* ACC278 800550D8 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ACC27C 800550DC AC20D3A0 */  sw    $zero, %lo(D_8011D3A0)($at)
/* ACC280 800550E0 86060010 */  lh    $a2, 0x10($s0)
/* ACC284 800550E4 240C0001 */  li    $t4, 1
.L800550E8:
/* ACC288 800550E8 262B0094 */  addiu $t3, $s1, 0x94
/* ACC28C 800550EC A3AC0053 */  sb    $t4, 0x53($sp)
/* ACC290 800550F0 AFAB0028 */  sw    $t3, 0x28($sp)
.L800550F4:
/* ACC294 800550F4 24CD0001 */  addiu $t5, $a2, 1
/* ACC298 800550F8 A60D0010 */  sh    $t5, 0x10($s0)
/* ACC29C 800550FC 86060010 */  lh    $a2, 0x10($s0)
/* ACC2A0 80055100 24010001 */  li    $at, 1
/* ACC2A4 80055104 14C10003 */  bne   $a2, $at, .L80055114
/* ACC2A8 80055108 2419000A */   li    $t9, 10
/* ACC2AC 8005510C 1000001E */  b     .L80055188
/* ACC2B0 80055110 A639015E */   sh    $t9, 0x15e($s1)
.L80055114:
/* ACC2B4 80055114 24020002 */  li    $v0, 2
/* ACC2B8 80055118 14460004 */  bne   $v0, $a2, .L8005512C
/* ACC2BC 8005511C 24010094 */   li    $at, 148
/* ACC2C0 80055120 240F0001 */  li    $t7, 1
/* ACC2C4 80055124 10000018 */  b     .L80055188
/* ACC2C8 80055128 A62F015E */   sh    $t7, 0x15e($s1)
.L8005512C:
/* ACC2CC 8005512C 54C10004 */  bnel  $a2, $at, .L80055140
/* ACC2D0 80055130 2401009E */   li    $at, 158
/* ACC2D4 80055134 10000014 */  b     .L80055188
/* ACC2D8 80055138 A622015E */   sh    $v0, 0x15e($s1)
/* ACC2DC 8005513C 2401009E */  li    $at, 158
.L80055140:
/* ACC2E0 80055140 14C10003 */  bne   $a2, $at, .L80055150
/* ACC2E4 80055144 24180014 */   li    $t8, 20
/* ACC2E8 80055148 1000000F */  b     .L80055188
/* ACC2EC 8005514C A638015E */   sh    $t8, 0x15e($s1)
.L80055150:
/* ACC2F0 80055150 2401009F */  li    $at, 159
/* ACC2F4 80055154 14C10003 */  bne   $a2, $at, .L80055164
/* ACC2F8 80055158 24080003 */   li    $t0, 3
/* ACC2FC 8005515C 1000000A */  b     .L80055188
/* ACC300 80055160 A628015E */   sh    $t0, 0x15e($s1)
.L80055164:
/* ACC304 80055164 240100A8 */  li    $at, 168
/* ACC308 80055168 14C10003 */  bne   $a2, $at, .L80055178
/* ACC30C 8005516C 240A001E */   li    $t2, 30
/* ACC310 80055170 10000005 */  b     .L80055188
/* ACC314 80055174 A62A015E */   sh    $t2, 0x15e($s1)
.L80055178:
/* ACC318 80055178 240100E4 */  li    $at, 228
/* ACC31C 8005517C 14C10002 */  bne   $a2, $at, .L80055188
/* ACC320 80055180 24090004 */   li    $t1, 4
/* ACC324 80055184 A629015E */  sh    $t1, 0x15e($s1)
.L80055188:
/* ACC328 80055188 93AE0053 */  lbu   $t6, 0x53($sp)
/* ACC32C 8005518C 55C00020 */  bnezl $t6, .L80055210
/* ACC330 80055190 8FA40030 */   lw    $a0, 0x30($sp)
/* ACC334 80055194 C7AC0088 */  lwc1  $f12, 0x88($sp)
/* ACC338 80055198 C7AE0090 */  lwc1  $f14, 0x90($sp)
/* ACC33C 8005519C 8E06000C */  lw    $a2, 0xc($s0)
/* ACC340 800551A0 0C010E27 */  jal   func_8004389C
/* ACC344 800551A4 3C074000 */   lui   $a3, 0x4000
/* ACC348 800551A8 E7A00088 */  swc1  $f0, 0x88($sp)
/* ACC34C 800551AC 8E06000C */  lw    $a2, 0xc($s0)
/* ACC350 800551B0 87A4008C */  lh    $a0, 0x8c($sp)
/* ACC354 800551B4 87A50094 */  lh    $a1, 0x94($sp)
/* ACC358 800551B8 0C010E47 */  jal   func_8004391C
/* ACC35C 800551BC 2407000A */   li    $a3, 10
/* ACC360 800551C0 A7A2008C */  sh    $v0, 0x8c($sp)
/* ACC364 800551C4 8E06000C */  lw    $a2, 0xc($s0)
/* ACC368 800551C8 87A4008E */  lh    $a0, 0x8e($sp)
/* ACC36C 800551CC 87A50096 */  lh    $a1, 0x96($sp)
/* ACC370 800551D0 0C010E47 */  jal   func_8004391C
/* ACC374 800551D4 2407000A */   li    $a3, 10
/* ACC378 800551D8 26300074 */  addiu $s0, $s1, 0x74
/* ACC37C 800551DC A7A2008E */  sh    $v0, 0x8e($sp)
/* ACC380 800551E0 02002025 */  move  $a0, $s0
/* ACC384 800551E4 8FA50030 */  lw    $a1, 0x30($sp)
/* ACC388 800551E8 0C010F0A */  jal   func_80043C28
/* ACC38C 800551EC 27A60088 */   addiu $a2, $sp, 0x88
/* ACC390 800551F0 8FAC0034 */  lw    $t4, 0x34($sp)
/* ACC394 800551F4 8E0D0000 */  lw    $t5, ($s0)
/* ACC398 800551F8 AD8D0000 */  sw    $t5, ($t4)
/* ACC39C 800551FC 8E0B0004 */  lw    $t3, 4($s0)
/* ACC3A0 80055200 AD8B0004 */  sw    $t3, 4($t4)
/* ACC3A4 80055204 8E0D0008 */  lw    $t5, 8($s0)
/* ACC3A8 80055208 AD8D0008 */  sw    $t5, 8($t4)
/* ACC3AC 8005520C 8FA40030 */  lw    $a0, 0x30($sp)
.L80055210:
/* ACC3B0 80055210 0C01EFE4 */  jal   func_8007BF90
/* ACC3B4 80055214 8FA50034 */   lw    $a1, 0x34($sp)
/* ACC3B8 80055218 E62000DC */  swc1  $f0, 0xdc($s1)
/* ACC3BC 8005521C 3C018014 */  lui   $at, %hi(D_8013A354)
/* ACC3C0 80055220 C426A354 */  lwc1  $f6, %lo(D_8013A354)($at)
/* ACC3C4 80055224 C6280050 */  lwc1  $f8, 0x50($s1)
/* ACC3C8 80055228 C6240054 */  lwc1  $f4, 0x54($s1)
/* ACC3CC 8005522C E6260100 */  swc1  $f6, 0x100($s1)
/* ACC3D0 80055230 8FB90028 */  lw    $t9, 0x28($sp)
/* ACC3D4 80055234 24020001 */  li    $v0, 1
/* ACC3D8 80055238 C72A0000 */  lwc1  $f10, ($t9)
/* ACC3DC 8005523C 460A4481 */  sub.s $f18, $f8, $f10
/* ACC3E0 80055240 C62A0058 */  lwc1  $f10, 0x58($s1)
/* ACC3E4 80055244 E63200E4 */  swc1  $f18, 0xe4($s1)
/* ACC3E8 80055248 8FAF0028 */  lw    $t7, 0x28($sp)
/* ACC3EC 8005524C C5E60004 */  lwc1  $f6, 4($t7)
/* ACC3F0 80055250 46062201 */  sub.s $f8, $f4, $f6
/* ACC3F4 80055254 E62800E8 */  swc1  $f8, 0xe8($s1)
/* ACC3F8 80055258 8FB80028 */  lw    $t8, 0x28($sp)
/* ACC3FC 8005525C C7120008 */  lwc1  $f18, 8($t8)
/* ACC400 80055260 46125101 */  sub.s $f4, $f10, $f18
/* ACC404 80055264 E62400EC */  swc1  $f4, 0xec($s1)
/* ACC408 80055268 8FBF001C */  lw    $ra, 0x1c($sp)
/* ACC40C 8005526C 8FB10018 */  lw    $s1, 0x18($sp)
/* ACC410 80055270 8FB00014 */  lw    $s0, 0x14($sp)
/* ACC414 80055274 03E00008 */  jr    $ra
/* ACC418 80055278 27BD00A8 */   addiu $sp, $sp, 0xa8
# SPLIT
/* ACC41C 8005527C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* ACC420 80055280 AFBF0014 */  sw    $ra, 0x14($sp)
/* ACC424 80055284 0C011CE5 */  jal   func_80047394
/* ACC428 80055288 00000000 */   nop   
/* ACC42C 8005528C 8FBF0014 */  lw    $ra, 0x14($sp)
/* ACC430 80055290 27BD0018 */  addiu $sp, $sp, 0x18
/* ACC434 80055294 03E00008 */  jr    $ra
/* ACC438 80055298 00000000 */   nop   
# SPLIT
/* ACC43C 8005529C 27BDFF68 */  addiu $sp, $sp, -0x98
/* ACC440 800552A0 AFB00018 */  sw    $s0, 0x18($sp)
/* ACC444 800552A4 00808025 */  move  $s0, $a0
/* ACC448 800552A8 AFBF001C */  sw    $ra, 0x1c($sp)
/* ACC44C 800552AC 8E050090 */  lw    $a1, 0x90($s0)
/* ACC450 800552B0 0C00BBB9 */  jal   func_8002EEE4
/* ACC454 800552B4 27A40064 */   addiu $a0, $sp, 0x64
/* ACC458 800552B8 8E0E0090 */  lw    $t6, 0x90($s0)
/* ACC45C 800552BC 240F3200 */  li    $t7, 12800
/* ACC460 800552C0 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ACC464 800552C4 AC2FD3A0 */  sw    $t7, %lo(D_8011D3A0)($at)
/* ACC468 800552C8 AFAE004C */  sw    $t6, 0x4c($sp)
/* ACC46C 800552CC 8E0500A8 */  lw    $a1, 0xa8($s0)
/* ACC470 800552D0 10A00005 */  beqz  $a1, .L800552E8
/* ACC474 800552D4 00000000 */   nop   
/* ACC478 800552D8 8CB80130 */  lw    $t8, 0x130($a1)
/* ACC47C 800552DC 260400AC */  addiu $a0, $s0, 0xac
/* ACC480 800552E0 17000008 */  bnez  $t8, .L80055304
/* ACC484 800552E4 00000000 */   nop   
.L800552E8:
/* ACC488 800552E8 14A00003 */  bnez  $a1, .L800552F8
/* ACC48C 800552EC 3C048014 */   lui   $a0, %hi(D_80139690) # $a0, 0x8014
/* ACC490 800552F0 0C00084C */  jal   osSyncPrintf
/* ACC494 800552F4 24849690 */   addiu $a0, %lo(D_80139690) # addiu $a0, $a0, -0x6970
.L800552F8:
/* ACC498 800552F8 AE0000A8 */  sw    $zero, 0xa8($s0)
/* ACC49C 800552FC 10000259 */  b     .L80055C64
/* ACC4A0 80055300 24020001 */   li    $v0, 1
.L80055304:
/* ACC4A4 80055304 0C00BBB9 */  jal   func_8002EEE4
/* ACC4A8 80055308 AFA40020 */   sw    $a0, 0x20($sp)
/* ACC4AC 8005530C 27A40088 */  addiu $a0, $sp, 0x88
/* ACC4B0 80055310 8FA50020 */  lw    $a1, 0x20($sp)
/* ACC4B4 80055314 0C01F124 */  jal   func_8007C490
/* ACC4B8 80055318 26060094 */   addiu $a2, $s0, 0x94
/* ACC4BC 8005531C 8E1900A8 */  lw    $t9, 0xa8($s0)
/* ACC4C0 80055320 3C018012 */  lui   $at, %hi(D_8011D3AC) # $at, 0x8012
/* ACC4C4 80055324 27A6007E */  addiu $a2, $sp, 0x7e
/* ACC4C8 80055328 93280002 */  lbu   $t0, 2($t9)
/* ACC4CC 8005532C 27A7007C */  addiu $a3, $sp, 0x7c
/* ACC4D0 80055330 AC28D3AC */  sw    $t0, %lo(D_8011D3AC)($at)
/* ACC4D4 80055334 8E0500A8 */  lw    $a1, 0xa8($s0)
/* ACC4D8 80055338 0C00BCDD */  jal   func_8002F374
/* ACC4DC 8005533C 8E04008C */   lw    $a0, 0x8c($s0)
/* ACC4E0 80055340 8FA40020 */  lw    $a0, 0x20($sp)
/* ACC4E4 80055344 0C01EFE4 */  jal   func_8007BF90
/* ACC4E8 80055348 2605005C */   addiu $a1, $s0, 0x5c
/* ACC4EC 8005534C E7A00094 */  swc1  $f0, 0x94($sp)
/* ACC4F0 80055350 27A40080 */  addiu $a0, $sp, 0x80
/* ACC4F4 80055354 27A50064 */  addiu $a1, $sp, 0x64
/* ACC4F8 80055358 0C01F124 */  jal   func_8007C490
/* ACC4FC 8005535C 26060074 */   addiu $a2, $s0, 0x74
/* ACC500 80055360 87A90086 */  lh    $t1, 0x86($sp)
/* ACC504 80055364 87AA008E */  lh    $t2, 0x8e($sp)
/* ACC508 80055368 24010002 */  li    $at, 2
/* ACC50C 8005536C C7A40080 */  lwc1  $f4, 0x80($sp)
/* ACC510 80055370 012A5823 */  subu  $t3, $t1, $t2
/* ACC514 80055374 A7AB004A */  sh    $t3, 0x4a($sp)
/* ACC518 80055378 8E0C00A8 */  lw    $t4, 0xa8($s0)
/* ACC51C 8005537C C7A00088 */  lwc1  $f0, 0x88($sp)
/* ACC520 80055380 91830002 */  lbu   $v1, 2($t4)
/* ACC524 80055384 14610040 */  bne   $v1, $at, .L80055488
/* ACC528 80055388 3C0141F0 */   li    $at, 0x41F00000 # 0.000000
/* ACC52C 8005538C 44811000 */  mtc1  $at, $f2
/* ACC530 80055390 00000000 */  nop   
/* ACC534 80055394 4604103C */  c.lt.s $f2, $f4
/* ACC538 80055398 00000000 */  nop   
/* ACC53C 8005539C 45000021 */  bc1f  .L80055424
/* ACC540 800553A0 00000000 */   nop   
/* ACC544 800553A4 860D0160 */  lh    $t5, 0x160($s0)
/* ACC548 800553A8 3C018012 */  lui   $at, %hi(D_8011D6D8) # $at, 0x8012
/* ACC54C 800553AC 25AEFFFF */  addiu $t6, $t5, -1
/* ACC550 800553B0 0C03F66B */  jal   Math_Rand_ZeroOne
/* ACC554 800553B4 A42ED6D8 */   sh    $t6, %lo(D_8011D6D8)($at)
/* ACC558 800553B8 3C014120 */  li    $at, 0x41200000 # 0.000000
/* ACC55C 800553BC 44813000 */  mtc1  $at, $f6
/* ACC560 800553C0 3C028012 */  lui   $v0, %hi(D_8011D6AC) # $v0, 0x8012
/* ACC564 800553C4 2442D6AC */  addiu $v0, %lo(D_8011D6AC) # addiu $v0, $v0, -0x2954
/* ACC568 800553C8 46060202 */  mul.s $f8, $f0, $f6
/* ACC56C 800553CC 0C03F66B */  jal   Math_Rand_ZeroOne
/* ACC570 800553D0 E4480040 */   swc1  $f8, 0x40($v0)
/* ACC574 800553D4 3C014120 */  li    $at, 0x41200000 # 0.000000
/* ACC578 800553D8 44815000 */  mtc1  $at, $f10
/* ACC57C 800553DC 3C028012 */  lui   $v0, %hi(D_8011D6AC)
/* ACC580 800553E0 2442D6AC */  addiu $v0, %lo(D_8011D6AC) # addiu $v0, $v0, -0x2954
/* ACC584 800553E4 460A0402 */  mul.s $f16, $f0, $f10
/* ACC588 800553E8 240F0003 */  li    $t7, 3
/* ACC58C 800553EC 25E8FFFF */  addiu $t0, $t7, -1
/* ACC590 800553F0 E4500044 */  swc1  $f16, 0x44($v0)
/* ACC594 800553F4 86180162 */  lh    $t8, 0x162($s0)
/* ACC598 800553F8 AE020004 */  sw    $v0, 4($s0)
/* ACC59C 800553FC AE0F0000 */  sw    $t7, ($s0)
/* ACC5A0 80055400 53000004 */  beql  $t8, $zero, .L80055414
/* ACC5A4 80055404 86090160 */   lh    $t1, 0x160($s0)
/* ACC5A8 80055408 100001C2 */  b     .L80055B14
/* ACC5AC 8005540C AE080000 */   sw    $t0, ($s0)
/* ACC5B0 80055410 86090160 */  lh    $t1, 0x160($s0)
.L80055414:
/* ACC5B4 80055414 844A0054 */  lh    $t2, 0x54($v0)
/* ACC5B8 80055418 012A5821 */  addu  $t3, $t1, $t2
/* ACC5BC 8005541C 100001BD */  b     .L80055B14
/* ACC5C0 80055420 A60B0160 */   sh    $t3, 0x160($s0)
.L80055424:
/* ACC5C4 80055424 0C03F66B */  jal   Math_Rand_ZeroOne
/* ACC5C8 80055428 00000000 */   nop   
/* ACC5CC 8005542C 3C014120 */  li    $at, 0x41200000 # 0.000000
/* ACC5D0 80055430 44819000 */  mtc1  $at, $f18
/* ACC5D4 80055434 3C028012 */  lui   $v0, %hi(D_8011D724)
/* ACC5D8 80055438 2442D724 */  addiu $v0, %lo(D_8011D724) # addiu $v0, $v0, -0x28dc
/* ACC5DC 8005543C 46120102 */  mul.s $f4, $f0, $f18
/* ACC5E0 80055440 240E0003 */  li    $t6, 3
/* ACC5E4 80055444 25D9FFFF */  addiu $t9, $t6, -1
/* ACC5E8 80055448 E4440044 */  swc1  $f4, 0x44($v0)
/* ACC5EC 8005544C 860C0160 */  lh    $t4, 0x160($s0)
/* ACC5F0 80055450 258DFFFF */  addiu $t5, $t4, -1
/* ACC5F4 80055454 A44D002C */  sh    $t5, 0x2c($v0)
/* ACC5F8 80055458 860F0162 */  lh    $t7, 0x162($s0)
/* ACC5FC 8005545C AE020004 */  sw    $v0, 4($s0)
/* ACC600 80055460 AE0E0000 */  sw    $t6, ($s0)
/* ACC604 80055464 51E00004 */  beql  $t7, $zero, .L80055478
/* ACC608 80055468 86080160 */   lh    $t0, 0x160($s0)
/* ACC60C 8005546C 100001A9 */  b     .L80055B14
/* ACC610 80055470 AE190000 */   sw    $t9, ($s0)
/* ACC614 80055474 86080160 */  lh    $t0, 0x160($s0)
.L80055478:
/* ACC618 80055478 84490054 */  lh    $t1, 0x54($v0)
/* ACC61C 8005547C 01095021 */  addu  $t2, $t0, $t1
/* ACC620 80055480 100001A4 */  b     .L80055B14
/* ACC624 80055484 A60A0160 */   sh    $t2, 0x160($s0)
.L80055488:
/* ACC628 80055488 3C0141F0 */  li    $at, 0x41F00000 # 0.000000
/* ACC62C 8005548C 44811000 */  mtc1  $at, $f2
/* ACC630 80055490 3C028012 */  lui   $v0, %hi(D_8011D79C)
/* ACC634 80055494 2442D79C */  addiu $v0, %lo(D_8011D79C) # addiu $v0, $v0, -0x2864
/* ACC638 80055498 4602003C */  c.lt.s $f0, $f2
/* ACC63C 8005549C 240B0004 */  li    $t3, 4
/* ACC640 800554A0 C7AC0094 */  lwc1  $f12, 0x94($sp)
/* ACC644 800554A4 3C014396 */  li    $at, 0x43960000 # 0.000000
/* ACC648 800554A8 4502002E */  bc1fl .L80055564
/* ACC64C 800554AC 44818000 */   mtc1  $at, $f16
/* ACC650 800554B0 AE020004 */  sw    $v0, 4($s0)
/* ACC654 800554B4 AE0B0000 */  sw    $t3, ($s0)
/* ACC658 800554B8 87AC007E */  lh    $t4, 0x7e($sp)
/* ACC65C 800554BC 240D0041 */  li    $t5, 65
/* ACC660 800554C0 29810015 */  slti  $at, $t4, 0x15
/* ACC664 800554C4 14200007 */  bnez  $at, .L800554E4
/* ACC668 800554C8 2981012C */   slti  $at, $t4, 0x12c
/* ACC66C 800554CC 10200005 */  beqz  $at, .L800554E4
/* ACC670 800554D0 87A3007C */   lh    $v1, 0x7c($sp)
/* ACC674 800554D4 28610029 */  slti  $at, $v1, 0x29
/* ACC678 800554D8 14200002 */  bnez  $at, .L800554E4
/* ACC67C 800554DC 286100C8 */   slti  $at, $v1, 0xc8
/* ACC680 800554E0 1420000E */  bnez  $at, .L8005551C
.L800554E4:
/* ACC684 800554E4 3C01C1F0 */   li    $at, 0xC1F00000 # 0.000000
/* ACC688 800554E8 44813000 */  mtc1  $at, $f6
/* ACC68C 800554EC 3C014120 */  li    $at, 0x41200000 # 0.000000
/* ACC690 800554F0 44801000 */  mtc1  $zero, $f2
/* ACC694 800554F4 44814000 */  mtc1  $at, $f8
/* ACC698 800554F8 3C01C248 */  li    $at, 0xC2480000 # 0.000000
/* ACC69C 800554FC 44815000 */  mtc1  $at, $f10
/* ACC6A0 80055500 A04D0000 */  sb    $t5, ($v0)
/* ACC6A4 80055504 E4460014 */  swc1  $f6, 0x14($v0)
/* ACC6A8 80055508 E4420010 */  swc1  $f2, 0x10($v0)
/* ACC6AC 8005550C E4420018 */  swc1  $f2, 0x18($v0)
/* ACC6B0 80055510 E4420020 */  swc1  $f2, 0x20($v0)
/* ACC6B4 80055514 E448001C */  swc1  $f8, 0x1c($v0)
/* ACC6B8 80055518 E44A0024 */  swc1  $f10, 0x24($v0)
.L8005551C:
/* ACC6BC 8005551C 860E0160 */  lh    $t6, 0x160($s0)
/* ACC6C0 80055520 25CFFFFF */  addiu $t7, $t6, -1
/* ACC6C4 80055524 A44F002C */  sh    $t7, 0x2c($v0)
/* ACC6C8 80055528 86180162 */  lh    $t8, 0x162($s0)
/* ACC6CC 8005552C 53000006 */  beql  $t8, $zero, .L80055548
/* ACC6D0 80055530 86090160 */   lh    $t1, 0x160($s0)
/* ACC6D4 80055534 8E190000 */  lw    $t9, ($s0)
/* ACC6D8 80055538 2728FFFE */  addiu $t0, $t9, -2
/* ACC6DC 8005553C 10000175 */  b     .L80055B14
/* ACC6E0 80055540 AE080000 */   sw    $t0, ($s0)
/* ACC6E4 80055544 86090160 */  lh    $t1, 0x160($s0)
.L80055548:
/* ACC6E8 80055548 844A0054 */  lh    $t2, 0x54($v0)
/* ACC6EC 8005554C 844C007C */  lh    $t4, 0x7c($v0)
/* ACC6F0 80055550 012A5821 */  addu  $t3, $t1, $t2
/* ACC6F4 80055554 016C6821 */  addu  $t5, $t3, $t4
/* ACC6F8 80055558 1000016E */  b     .L80055B14
/* ACC6FC 8005555C A60D0160 */   sh    $t5, 0x160($s0)
/* ACC700 80055560 44818000 */  mtc1  $at, $f16
.L80055564:
/* ACC704 80055564 C7B20080 */  lwc1  $f18, 0x80($sp)
/* ACC708 80055568 3C01442F */  li    $at, 0x442F0000 # 0.000000
/* ACC70C 8005556C 4610603C */  c.lt.s $f12, $f16
/* ACC710 80055570 00000000 */  nop   
/* ACC714 80055574 45020017 */  bc1fl .L800555D4
/* ACC718 80055578 44812000 */   mtc1  $at, $f4
/* ACC71C 8005557C 4602903C */  c.lt.s $f18, $f2
/* ACC720 80055580 00000000 */  nop   
/* ACC724 80055584 45020013 */  bc1fl .L800555D4
/* ACC728 80055588 44812000 */   mtc1  $at, $f4
/* ACC72C 8005558C 860E0160 */  lh    $t6, 0x160($s0)
/* ACC730 80055590 3C028012 */  lui   $v0, %hi(D_8011D83C)
/* ACC734 80055594 2442D83C */  addiu $v0, %lo(D_8011D83C) # addiu $v0, $v0, -0x27c4
/* ACC738 80055598 A44E0004 */  sh    $t6, 4($v0)
/* ACC73C 8005559C 86180162 */  lh    $t8, 0x162($s0)
/* ACC740 800555A0 240F0002 */  li    $t7, 2
/* ACC744 800555A4 AE020004 */  sw    $v0, 4($s0)
/* ACC748 800555A8 13000004 */  beqz  $t8, .L800555BC
/* ACC74C 800555AC AE0F0000 */   sw    $t7, ($s0)
/* ACC750 800555B0 25E8FFFF */  addiu $t0, $t7, -1
/* ACC754 800555B4 10000157 */  b     .L80055B14
/* ACC758 800555B8 AE080000 */   sw    $t0, ($s0)
.L800555BC:
/* ACC75C 800555BC 86090160 */  lh    $t1, 0x160($s0)
/* ACC760 800555C0 844A002C */  lh    $t2, 0x2c($v0)
/* ACC764 800555C4 012A5821 */  addu  $t3, $t1, $t2
/* ACC768 800555C8 10000152 */  b     .L80055B14
/* ACC76C 800555CC A60B0160 */   sh    $t3, 0x160($s0)
/* ACC770 800555D0 44812000 */  mtc1  $at, $f4
.L800555D4:
/* ACC774 800555D4 87A5004A */  lh    $a1, 0x4a($sp)
/* ACC778 800555D8 4604603C */  c.lt.s $f12, $f4
/* ACC77C 800555DC 00000000 */  nop   
/* ACC780 800555E0 45020064 */  bc1fl .L80055774
/* ACC784 800555E4 2401000A */   li    $at, 10
/* ACC788 800555E8 04A00003 */  bltz  $a1, .L800555F8
/* ACC78C 800555EC 00051023 */   negu  $v0, $a1
/* ACC790 800555F0 10000001 */  b     .L800555F8
/* ACC794 800555F4 00A01025 */   move  $v0, $a1
.L800555F8:
/* ACC798 800555F8 284136B0 */  slti  $at, $v0, 0x36b0
/* ACC79C 800555FC 5020005D */  beql  $at, $zero, .L80055774
/* ACC7A0 80055600 2401000A */   li    $at, 10
/* ACC7A4 80055604 87A3007E */  lh    $v1, 0x7e($sp)
/* ACC7A8 80055608 28610015 */  slti  $at, $v1, 0x15
/* ACC7AC 8005560C 1420001D */  bnez  $at, .L80055684
/* ACC7B0 80055610 2861012C */   slti  $at, $v1, 0x12c
/* ACC7B4 80055614 1020001B */  beqz  $at, .L80055684
/* ACC7B8 80055618 87A3007C */   lh    $v1, 0x7c($sp)
/* ACC7BC 8005561C 28610029 */  slti  $at, $v1, 0x29
/* ACC7C0 80055620 14200018 */  bnez  $at, .L80055684
/* ACC7C4 80055624 286100C8 */   slti  $at, $v1, 0xc8
/* ACC7C8 80055628 10200016 */  beqz  $at, .L80055684
/* ACC7CC 8005562C C7A60080 */   lwc1  $f6, 0x80($sp)
/* ACC7D0 80055630 4606103C */  c.lt.s $f2, $f6
/* ACC7D4 80055634 00000000 */  nop   
/* ACC7D8 80055638 45000012 */  bc1f  .L80055684
/* ACC7DC 8005563C 00000000 */   nop   
/* ACC7E0 80055640 860C0160 */  lh    $t4, 0x160($s0)
/* ACC7E4 80055644 3C028012 */  lui   $v0, %hi(D_8011D88C) # $v0, 0x8012
/* ACC7E8 80055648 2442D88C */  addiu $v0, %lo(D_8011D88C) # addiu $v0, $v0, -0x2774
/* ACC7EC 8005564C A44C0004 */  sh    $t4, 4($v0)
/* ACC7F0 80055650 860E0162 */  lh    $t6, 0x162($s0)
/* ACC7F4 80055654 240D0002 */  li    $t5, 2
/* ACC7F8 80055658 AE020004 */  sw    $v0, 4($s0)
/* ACC7FC 8005565C 11C00004 */  beqz  $t6, .L80055670
/* ACC800 80055660 AE0D0000 */   sw    $t5, ($s0)
/* ACC804 80055664 25B8FFFF */  addiu $t8, $t5, -1
/* ACC808 80055668 1000012A */  b     .L80055B14
/* ACC80C 8005566C AE180000 */   sw    $t8, ($s0)
.L80055670:
/* ACC810 80055670 86190160 */  lh    $t9, 0x160($s0)
/* ACC814 80055674 8448002C */  lh    $t0, 0x2c($v0)
/* ACC818 80055678 03284821 */  addu  $t1, $t9, $t0
/* ACC81C 8005567C 10000125 */  b     .L80055B14
/* ACC820 80055680 A6090160 */   sh    $t1, 0x160($s0)
.L80055684:
/* ACC824 80055684 3C018014 */  lui   $at, %hi(D_8013A358)
/* ACC828 80055688 C428A358 */  lwc1  $f8, %lo(D_8013A358)($at)
/* ACC82C 8005568C 3C014248 */  li    $at, 0x42480000 # 0.000000
/* ACC830 80055690 44818000 */  mtc1  $at, $f16
/* ACC834 80055694 46086282 */  mul.s $f10, $f12, $f8
/* ACC838 80055698 3C028012 */  lui   $v0, %hi(D_8011D8DC) # $v0, 0x8012
/* ACC83C 8005569C 46106480 */  add.s $f18, $f12, $f16
/* ACC840 800556A0 2442D8DC */  addiu $v0, %lo(D_8011D8DC) # addiu $v0, $v0, -0x2724
/* ACC844 800556A4 E4520024 */  swc1  $f18, 0x24($v0)
/* ACC848 800556A8 0C03F66B */  jal   Math_Rand_ZeroOne
/* ACC84C 800556AC E44A0018 */   swc1  $f10, 0x18($v0)
/* ACC850 800556B0 3C014120 */  li    $at, 0x41200000 # 0.000000
/* ACC854 800556B4 44812000 */  mtc1  $at, $f4
/* ACC858 800556B8 87AA0086 */  lh    $t2, 0x86($sp)
/* ACC85C 800556BC 87AB008E */  lh    $t3, 0x8e($sp)
/* ACC860 800556C0 46040182 */  mul.s $f6, $f0, $f4
/* ACC864 800556C4 3C028012 */  lui   $v0, %hi(D_8011D8DC) # $v0, 0x8012
/* ACC868 800556C8 014B6023 */  subu  $t4, $t2, $t3
/* ACC86C 800556CC 000C6C00 */  sll   $t5, $t4, 0x10
/* ACC870 800556D0 2442D8DC */  addiu $v0, %lo(D_8011D8DC) # addiu $v0, $v0, -0x2724
/* ACC874 800556D4 000D7403 */  sra   $t6, $t5, 0x10
/* ACC878 800556D8 19C0000A */  blez  $t6, .L80055704
/* ACC87C 800556DC E446001C */   swc1  $f6, 0x1c($v0)
/* ACC880 800556E0 C4480010 */  lwc1  $f8, 0x10($v0)
/* ACC884 800556E4 C450001C */  lwc1  $f16, 0x1c($v0)
/* ACC888 800556E8 844F0006 */  lh    $t7, 6($v0)
/* ACC88C 800556EC 46004287 */  neg.s $f10, $f8
/* ACC890 800556F0 46008487 */  neg.s $f18, $f16
/* ACC894 800556F4 000FC023 */  negu  $t8, $t7
/* ACC898 800556F8 E44A0010 */  swc1  $f10, 0x10($v0)
/* ACC89C 800556FC E452001C */  swc1  $f18, 0x1c($v0)
/* ACC8A0 80055700 A4580006 */  sh    $t8, 6($v0)
.L80055704:
/* ACC8A4 80055704 86190160 */  lh    $t9, 0x160($s0)
/* ACC8A8 80055708 3C018014 */  lui   $at, %hi(D_8013A35C)
/* ACC8AC 8005570C C7A40094 */  lwc1  $f4, 0x94($sp)
/* ACC8B0 80055710 A4590004 */  sh    $t9, 4($v0)
/* ACC8B4 80055714 C426A35C */  lwc1  $f6, %lo(D_8013A35C)($at)
/* ACC8B8 80055718 240D0003 */  li    $t5, 3
/* ACC8BC 8005571C 25B8FFFE */  addiu $t8, $t5, -2
/* ACC8C0 80055720 46062202 */  mul.s $f8, $f4, $f6
/* ACC8C4 80055724 4600428D */  trunc.w.s $f10, $f8
/* ACC8C8 80055728 440B5000 */  mfc1  $t3, $f10
/* ACC8CC 8005572C 00000000 */  nop   
/* ACC8D0 80055730 256C0008 */  addiu $t4, $t3, 8
/* ACC8D4 80055734 A44C002C */  sh    $t4, 0x2c($v0)
/* ACC8D8 80055738 860E0162 */  lh    $t6, 0x162($s0)
/* ACC8DC 8005573C AE020004 */  sw    $v0, 4($s0)
/* ACC8E0 80055740 AE0D0000 */  sw    $t5, ($s0)
/* ACC8E4 80055744 51C00004 */  beql  $t6, $zero, .L80055758
/* ACC8E8 80055748 86190160 */   lh    $t9, 0x160($s0)
/* ACC8EC 8005574C 100000F1 */  b     .L80055B14
/* ACC8F0 80055750 AE180000 */   sw    $t8, ($s0)
/* ACC8F4 80055754 86190160 */  lh    $t9, 0x160($s0)
.L80055758:
/* ACC8F8 80055758 8448002C */  lh    $t0, 0x2c($v0)
/* ACC8FC 8005575C 844A0054 */  lh    $t2, 0x54($v0)
/* ACC900 80055760 03284821 */  addu  $t1, $t9, $t0
/* ACC904 80055764 012A5821 */  addu  $t3, $t1, $t2
/* ACC908 80055768 100000EA */  b     .L80055B14
/* ACC90C 8005576C A60B0160 */   sh    $t3, 0x160($s0)
/* ACC910 80055770 2401000A */  li    $at, 10
.L80055774:
/* ACC914 80055774 14610090 */  bne   $v1, $at, .L800559B8
/* ACC918 80055778 C7A00088 */   lwc1  $f0, 0x88($sp)
/* ACC91C 8005577C 860C0160 */  lh    $t4, 0x160($s0)
/* ACC920 80055780 3C078012 */  lui   $a3, %hi(D_8011D954) # $a3, 0x8012
/* ACC924 80055784 24E7D954 */  addiu $a3, %lo(D_8011D954) # addiu $a3, $a3, -0x26ac
/* ACC928 80055788 258DFFFB */  addiu $t5, $t4, -5
/* ACC92C 8005578C A4ED0004 */  sh    $t5, 4($a3)
/* ACC930 80055790 A7A0004A */  sh    $zero, 0x4a($sp)
/* ACC934 80055794 8E0500A8 */  lw    $a1, 0xa8($s0)
/* ACC938 80055798 8E04008C */  lw    $a0, 0x8c($s0)
/* ACC93C 8005579C 0C03034D */  jal   func_800C0D34
/* ACC940 800557A0 27A6004A */   addiu $a2, $sp, 0x4a
/* ACC944 800557A4 3C078012 */  lui   $a3, %hi(D_8011D954) # $a3, 0x8012
/* ACC948 800557A8 14400014 */  bnez  $v0, .L800557FC
/* ACC94C 800557AC 24E7D954 */   addiu $a3, %lo(D_8011D954) # addiu $a3, $a3, -0x26ac
/* ACC950 800557B0 3C048014 */  lui   $a0, %hi(D_801396D4)
/* ACC954 800557B4 0C00084C */  jal   osSyncPrintf
/* ACC958 800557B8 248496D4 */   addiu $a0, %lo(D_801396D4) # addiu $a0, $a0, -0x692c
/* ACC95C 800557BC 8E0E00A8 */  lw    $t6, 0xa8($s0)
/* ACC960 800557C0 87AF008E */  lh    $t7, 0x8e($sp)
/* ACC964 800557C4 3C078012 */  lui   $a3, %hi(D_8011D954)
/* ACC968 800557C8 85C400B6 */  lh    $a0, 0xb6($t6)
/* ACC96C 800557CC 24E7D954 */  addiu $a3, %lo(D_8011D954) # addiu $a3, $a3, -0x26ac
/* ACC970 800557D0 01E41823 */  subu  $v1, $t7, $a0
/* ACC974 800557D4 04600003 */  bltz  $v1, .L800557E4
/* ACC978 800557D8 00031023 */   negu  $v0, $v1
/* ACC97C 800557DC 10000001 */  b     .L800557E4
/* ACC980 800557E0 00601025 */   move  $v0, $v1
.L800557E4:
/* ACC984 800557E4 28414000 */  slti  $at, $v0, 0x4000
/* ACC988 800557E8 14200003 */  bnez  $at, .L800557F8
/* ACC98C 800557EC 24988001 */   addiu $t8, $a0, -0x7fff
/* ACC990 800557F0 10000002 */  b     .L800557FC
/* ACC994 800557F4 A7A4004A */   sh    $a0, 0x4a($sp)
.L800557F8:
/* ACC998 800557F8 A7B8004A */  sh    $t8, 0x4a($sp)
.L800557FC:
/* ACC99C 800557FC 8E0800A8 */  lw    $t0, 0xa8($s0)
/* ACC9A0 80055800 87B9004A */  lh    $t9, 0x4a($sp)
/* ACC9A4 80055804 87A5004A */  lh    $a1, 0x4a($sp)
/* ACC9A8 80055808 850900B6 */  lh    $t1, 0xb6($t0)
/* ACC9AC 8005580C 3C014334 */  li    $at, 0x43340000 # 0.000000
/* ACC9B0 80055810 57290005 */  bnel  $t9, $t1, .L80055828
/* ACC9B4 80055814 44800000 */   mtc1  $zero, $f0
/* ACC9B8 80055818 44810000 */  mtc1  $at, $f0
/* ACC9BC 8005581C 10000004 */  b     .L80055830
/* ACC9C0 80055820 87AA008E */   lh    $t2, 0x8e($sp)
/* ACC9C4 80055824 44800000 */  mtc1  $zero, $f0
.L80055828:
/* ACC9C8 80055828 00000000 */  nop   
/* ACC9CC 8005582C 87AA008E */  lh    $t2, 0x8e($sp)
.L80055830:
/* ACC9D0 80055830 E4E0003C */  swc1  $f0, 0x3c($a3)
/* ACC9D4 80055834 E4E00020 */  swc1  $f0, 0x20($a3)
/* ACC9D8 80055838 01455823 */  subu  $t3, $t2, $a1
/* ACC9DC 8005583C 000B6400 */  sll   $t4, $t3, 0x10
/* ACC9E0 80055840 000C6C03 */  sra   $t5, $t4, 0x10
/* ACC9E4 80055844 05A10005 */  bgez  $t5, .L8005585C
/* ACC9E8 80055848 E4E00014 */   swc1  $f0, 0x14($a3)
/* ACC9EC 8005584C 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* ACC9F0 80055850 44816000 */  mtc1  $at, $f12
/* ACC9F4 80055854 10000004 */  b     .L80055868
/* ACC9F8 80055858 00000000 */   nop   
.L8005585C:
/* ACC9FC 8005585C 3C01C1A0 */  li    $at, 0xC1A00000 # 0.000000
/* ACCA00 80055860 44816000 */  mtc1  $at, $f12
/* ACCA04 80055864 00000000 */  nop   
.L80055868:
/* ACCA08 80055868 0C03F66B */  jal   Math_Rand_ZeroOne
/* ACCA0C 8005586C E7AC0030 */   swc1  $f12, 0x30($sp)
/* ACCA10 80055870 C7AC0030 */  lwc1  $f12, 0x30($sp)
/* ACCA14 80055874 3C078012 */  lui   $a3, %hi(D_8011D954) # $a3, 0x8012
/* ACCA18 80055878 24E7D954 */  addiu $a3, %lo(D_8011D954) # addiu $a3, $a3, -0x26ac
/* ACCA1C 8005587C 460C0082 */  mul.s $f2, $f0, $f12
/* ACCA20 80055880 C4F00020 */  lwc1  $f16, 0x20($a3)
/* ACCA24 80055884 46028480 */  add.s $f18, $f16, $f2
/* ACCA28 80055888 E7A20090 */  swc1  $f2, 0x90($sp)
/* ACCA2C 8005588C 0C03F66B */  jal   Math_Rand_ZeroOne
/* ACCA30 80055890 E4F20020 */   swc1  $f18, 0x20($a3)
/* ACCA34 80055894 3C018014 */  lui   $at, %hi(D_8013A360)
/* ACCA38 80055898 C426A360 */  lwc1  $f6, %lo(D_8013A360)($at)
/* ACCA3C 8005589C C7A40090 */  lwc1  $f4, 0x90($sp)
/* ACCA40 800558A0 3C078012 */  lui   $a3, %hi(D_8011D954) # $a3, 0x8012
/* ACCA44 800558A4 24E7D954 */  addiu $a3, %lo(D_8011D954) # addiu $a3, $a3, -0x26ac
/* ACCA48 800558A8 46062202 */  mul.s $f8, $f4, $f6
/* ACCA4C 800558AC 27A40050 */  addiu $a0, $sp, 0x50
/* ACCA50 800558B0 46080282 */  mul.s $f10, $f0, $f8
/* ACCA54 800558B4 4600540D */  trunc.w.s $f16, $f10
/* ACCA58 800558B8 44028000 */  mfc1  $v0, $f16
/* ACCA5C 800558BC 00000000 */  nop   
/* ACCA60 800558C0 A4E2002E */  sh    $v0, 0x2e($a3)
/* ACCA64 800558C4 A4E20006 */  sh    $v0, 6($a3)
/* ACCA68 800558C8 0C00BBB9 */  jal   func_8002EEE4
/* ACCA6C 800558CC 8E0500A8 */   lw    $a1, 0xa8($s0)
/* ACCA70 800558D0 87A5004A */  lh    $a1, 0x4a($sp)
/* ACCA74 800558D4 24A48001 */  addiu $a0, $a1, -0x7fff
/* ACCA78 800558D8 00042400 */  sll   $a0, $a0, 0x10
/* ACCA7C 800558DC 0C01DE1C */  jal   Math_Sins
/* ACCA80 800558E0 00042403 */   sra   $a0, $a0, 0x10
/* ACCA84 800558E4 3C014248 */  li    $at, 0x42480000 # 0.000000
/* ACCA88 800558E8 44812000 */  mtc1  $at, $f4
/* ACCA8C 800558EC C7B20050 */  lwc1  $f18, 0x50($sp)
/* ACCA90 800558F0 87A5004A */  lh    $a1, 0x4a($sp)
/* ACCA94 800558F4 46002182 */  mul.s $f6, $f4, $f0
/* ACCA98 800558F8 24A48001 */  addiu $a0, $a1, -0x7fff
/* ACCA9C 800558FC 00042400 */  sll   $a0, $a0, 0x10
/* ACCAA0 80055900 00042403 */  sra   $a0, $a0, 0x10
/* ACCAA4 80055904 46069200 */  add.s $f8, $f18, $f6
/* ACCAA8 80055908 0C01DE0D */  jal   Math_Coss
/* ACCAAC 8005590C E7A80050 */   swc1  $f8, 0x50($sp)
/* ACCAB0 80055910 3C014248 */  li    $at, 0x42480000 # 0.000000
/* ACCAB4 80055914 44818000 */  mtc1  $at, $f16
/* ACCAB8 80055918 C7AA0058 */  lwc1  $f10, 0x58($sp)
/* ACCABC 8005591C 02002025 */  move  $a0, $s0
/* ACCAC0 80055920 46008102 */  mul.s $f4, $f16, $f0
/* ACCAC4 80055924 27A50064 */  addiu $a1, $sp, 0x64
/* ACCAC8 80055928 27A60050 */  addiu $a2, $sp, 0x50
/* ACCACC 8005592C 46045480 */  add.s $f18, $f10, $f4
/* ACCAD0 80055930 0C010FCD */  jal   func_80043F34
/* ACCAD4 80055934 E7B20058 */   swc1  $f18, 0x58($sp)
/* ACCAD8 80055938 3C078012 */  lui   $a3, %hi(D_8011D954) # $a3, 0x8012
/* ACCADC 8005593C 10400006 */  beqz  $v0, .L80055958
/* ACCAE0 80055940 24E7D954 */   addiu $a3, %lo(D_8011D954) # addiu $a3, $a3, -0x26ac
/* ACCAE4 80055944 240F00C1 */  li    $t7, 193
/* ACCAE8 80055948 2418008F */  li    $t8, 143
/* ACCAEC 8005594C A0EF0028 */  sb    $t7, 0x28($a3)
/* ACCAF0 80055950 1000000A */  b     .L8005597C
/* ACCAF4 80055954 A0F80050 */   sb    $t8, 0x50($a3)
.L80055958:
/* ACCAF8 80055958 3C018014 */  lui   $at, %hi(D_8013A364)
/* ACCAFC 8005595C C428A364 */  lwc1  $f8, %lo(D_8013A364)($at)
/* ACCB00 80055960 C7A60094 */  lwc1  $f6, 0x94($sp)
/* ACCB04 80055964 46083402 */  mul.s $f16, $f6, $f8
/* ACCB08 80055968 4600828D */  trunc.w.s $f10, $f16
/* ACCB0C 8005596C 440A5000 */  mfc1  $t2, $f10
/* ACCB10 80055970 00000000 */  nop   
/* ACCB14 80055974 254B0006 */  addiu $t3, $t2, 6
/* ACCB18 80055978 A4EB0054 */  sh    $t3, 0x54($a3)
.L8005597C:
/* ACCB1C 8005597C 860D0162 */  lh    $t5, 0x162($s0)
/* ACCB20 80055980 240C0004 */  li    $t4, 4
/* ACCB24 80055984 AE070004 */  sw    $a3, 4($s0)
/* ACCB28 80055988 11A00004 */  beqz  $t5, .L8005599C
/* ACCB2C 8005598C AE0C0000 */   sw    $t4, ($s0)
/* ACCB30 80055990 258FFFFE */  addiu $t7, $t4, -2
/* ACCB34 80055994 1000005F */  b     .L80055B14
/* ACCB38 80055998 AE0F0000 */   sw    $t7, ($s0)
.L8005599C:
/* ACCB3C 8005599C 86180160 */  lh    $t8, 0x160($s0)
/* ACCB40 800559A0 84E80054 */  lh    $t0, 0x54($a3)
/* ACCB44 800559A4 84E9007C */  lh    $t1, 0x7c($a3)
/* ACCB48 800559A8 0308C821 */  addu  $t9, $t8, $t0
/* ACCB4C 800559AC 03295021 */  addu  $t2, $t9, $t1
/* ACCB50 800559B0 10000058 */  b     .L80055B14
/* ACCB54 800559B4 A60A0160 */   sh    $t2, 0x160($s0)
.L800559B8:
/* ACCB58 800559B8 3C014348 */  li    $at, 0x43480000 # 0.000000
/* ACCB5C 800559BC 44812000 */  mtc1  $at, $f4
/* ACCB60 800559C0 3C013E80 */  lui   $at, 0x3e80
/* ACCB64 800559C4 4604003C */  c.lt.s $f0, $f4
/* ACCB68 800559C8 00000000 */  nop   
/* ACCB6C 800559CC 45020008 */  bc1fl .L800559F0
/* ACCB70 800559D0 3C0143C8 */   li    $at, 0x43C80000 # 0.000000
/* ACCB74 800559D4 44819000 */  mtc1  $at, $f18
/* ACCB78 800559D8 3C038012 */  lui   $v1, %hi(D_8011D9F4) # $v1, 0x8012
/* ACCB7C 800559DC 2463D9F4 */  addiu $v1, %lo(D_8011D9F4) # addiu $v1, $v1, -0x260c
/* ACCB80 800559E0 46120182 */  mul.s $f6, $f0, $f18
/* ACCB84 800559E4 E4600024 */  swc1  $f0, 0x24($v1)
/* ACCB88 800559E8 E4660018 */  swc1  $f6, 0x18($v1)
/* ACCB8C 800559EC 3C0143C8 */  li    $at, 0x43C80000 # 0.000000
.L800559F0:
/* ACCB90 800559F0 44814000 */  mtc1  $at, $f8
/* ACCB94 800559F4 00000000 */  nop   
/* ACCB98 800559F8 4608003C */  c.lt.s $f0, $f8
/* ACCB9C 800559FC 00000000 */  nop   
/* ACCBA0 80055A00 45000009 */  bc1f  .L80055A28
/* ACCBA4 80055A04 00000000 */   nop   
/* ACCBA8 80055A08 0C03F66B */  jal   Math_Rand_ZeroOne
/* ACCBAC 80055A0C 00000000 */   nop   
/* ACCBB0 80055A10 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* ACCBB4 80055A14 44818000 */  mtc1  $at, $f16
/* ACCBB8 80055A18 3C038012 */  lui   $v1, %hi(D_8011D9F4) # $v1, 0x8012
/* ACCBBC 80055A1C 2463D9F4 */  addiu $v1, %lo(D_8011D9F4) # addiu $v1, $v1, -0x260c
/* ACCBC0 80055A20 46100282 */  mul.s $f10, $f0, $f16
/* ACCBC4 80055A24 E46A001C */  swc1  $f10, 0x1c($v1)
.L80055A28:
/* ACCBC8 80055A28 0C00B721 */  jal   func_8002DC84
/* ACCBCC 80055A2C 8E040090 */   lw    $a0, 0x90($s0)
/* ACCBD0 80055A30 860B0160 */  lh    $t3, 0x160($s0)
/* ACCBD4 80055A34 3C038012 */  lui   $v1, %hi(D_8011D9F4) # $v1, 0x8012
/* ACCBD8 80055A38 2463D9F4 */  addiu $v1, %lo(D_8011D9F4) # addiu $v1, $v1, -0x260c
/* ACCBDC 80055A3C A46B0004 */  sh    $t3, 4($v1)
/* ACCBE0 80055A40 8E0500A8 */  lw    $a1, 0xa8($s0)
/* ACCBE4 80055A44 0C00BBB9 */  jal   func_8002EEE4
/* ACCBE8 80055A48 27A40050 */   addiu $a0, $sp, 0x50
/* ACCBEC 80055A4C 02002025 */  move  $a0, $s0
/* ACCBF0 80055A50 27A50064 */  addiu $a1, $sp, 0x64
/* ACCBF4 80055A54 0C010FCD */  jal   func_80043F34
/* ACCBF8 80055A58 27A60050 */   addiu $a2, $sp, 0x50
/* ACCBFC 80055A5C 3C038012 */  lui   $v1, %hi(D_8011D9F4) # $v1, 0x8012
/* ACCC00 80055A60 10400006 */  beqz  $v0, .L80055A7C
/* ACCC04 80055A64 2463D9F4 */   addiu $v1, %lo(D_8011D9F4) # addiu $v1, $v1, -0x260c
/* ACCC08 80055A68 240C0004 */  li    $t4, 4
/* ACCC0C 80055A6C 240D008F */  li    $t5, 143
/* ACCC10 80055A70 A46C002C */  sh    $t4, 0x2c($v1)
/* ACCC14 80055A74 1000000A */  b     .L80055AA0
/* ACCC18 80055A78 A06D0028 */   sb    $t5, 0x28($v1)
.L80055A7C:
/* ACCC1C 80055A7C 3C018014 */  lui   $at, %hi(D_8013A368)
/* ACCC20 80055A80 C432A368 */  lwc1  $f18, %lo(D_8013A368)($at)
/* ACCC24 80055A84 C7A40094 */  lwc1  $f4, 0x94($sp)
/* ACCC28 80055A88 46122182 */  mul.s $f6, $f4, $f18
/* ACCC2C 80055A8C 4600320D */  trunc.w.s $f8, $f6
/* ACCC30 80055A90 44084000 */  mfc1  $t0, $f8
/* ACCC34 80055A94 00000000 */  nop   
/* ACCC38 80055A98 25190008 */  addiu $t9, $t0, 8
/* ACCC3C 80055A9C A479002C */  sh    $t9, 0x2c($v1)
.L80055AA0:
/* ACCC40 80055AA0 860A0162 */  lh    $t2, 0x162($s0)
/* ACCC44 80055AA4 24090003 */  li    $t1, 3
/* ACCC48 80055AA8 AE030004 */  sw    $v1, 4($s0)
/* ACCC4C 80055AAC 11400010 */  beqz  $t2, .L80055AF0
/* ACCC50 80055AB0 AE090000 */   sw    $t1, ($s0)
/* ACCC54 80055AB4 8E0B008C */  lw    $t3, 0x8c($s0)
/* ACCC58 80055AB8 8D6C009C */  lw    $t4, 0x9c($t3)
/* ACCC5C 80055ABC 318D0001 */  andi  $t5, $t4, 1
/* ACCC60 80055AC0 51A00008 */  beql  $t5, $zero, .L80055AE4
/* ACCC64 80055AC4 8E190000 */   lw    $t9, ($s0)
/* ACCC68 80055AC8 846E0006 */  lh    $t6, 6($v1)
/* ACCC6C 80055ACC 8478002E */  lh    $t8, 0x2e($v1)
/* ACCC70 80055AD0 000E7823 */  negu  $t7, $t6
/* ACCC74 80055AD4 00184023 */  negu  $t0, $t8
/* ACCC78 80055AD8 A46F0006 */  sh    $t7, 6($v1)
/* ACCC7C 80055ADC A468002E */  sh    $t0, 0x2e($v1)
/* ACCC80 80055AE0 8E190000 */  lw    $t9, ($s0)
.L80055AE4:
/* ACCC84 80055AE4 2729FFFE */  addiu $t1, $t9, -2
/* ACCC88 80055AE8 1000000A */  b     .L80055B14
/* ACCC8C 80055AEC AE090000 */   sw    $t1, ($s0)
.L80055AF0:
/* ACCC90 80055AF0 860A0160 */  lh    $t2, 0x160($s0)
/* ACCC94 80055AF4 846B002C */  lh    $t3, 0x2c($v1)
/* ACCC98 80055AF8 846D0054 */  lh    $t5, 0x54($v1)
/* ACCC9C 80055AFC 014B6021 */  addu  $t4, $t2, $t3
/* ACCCA0 80055B00 018D7021 */  addu  $t6, $t4, $t5
/* ACCCA4 80055B04 A60E0160 */  sh    $t6, 0x160($s0)
/* ACCCA8 80055B08 A460002E */  sh    $zero, 0x2e($v1)
/* ACCCAC 80055B0C 846F002E */  lh    $t7, 0x2e($v1)
/* ACCCB0 80055B10 A46F0006 */  sh    $t7, 6($v1)
.L80055B14:
/* ACCCB4 80055B14 8E18008C */  lw    $t8, 0x8c($s0)
/* ACCCB8 80055B18 3C088012 */  lui   $t0, %hi(D_8011D6A8) # $t0, 0x8012
/* ACCCBC 80055B1C 8D08D6A8 */  lw    $t0, %lo(D_8011D6A8)($t0)
/* ACCCC0 80055B20 8F02009C */  lw    $v0, 0x9c($t8)
/* ACCCC4 80055B24 01021823 */  subu  $v1, $t0, $v0
/* ACCCC8 80055B28 28610033 */  slti  $at, $v1, 0x33
/* ACCCCC 80055B2C 10200003 */  beqz  $at, .L80055B3C
/* ACCCD0 80055B30 2861FFCE */   slti  $at, $v1, -0x32
/* ACCCD4 80055B34 10200005 */  beqz  $at, .L80055B4C
/* ACCCD8 80055B38 00000000 */   nop   
.L80055B3C:
/* ACCCDC 80055B3C 0C01E221 */  jal   func_80078884
/* ACCCE0 80055B40 9604012A */   lhu   $a0, 0x12a($s0)
/* ACCCE4 80055B44 8E19008C */  lw    $t9, 0x8c($s0)
/* ACCCE8 80055B48 8F22009C */  lw    $v0, 0x9c($t9)
.L80055B4C:
/* ACCCEC 80055B4C 3C018012 */  lui   $at, %hi(D_8011D6A8) # $at, 0x8012
/* ACCCF0 80055B50 AC22D6A8 */  sw    $v0, %lo(D_8011D6A8)($at)
/* ACCCF4 80055B54 8E090090 */  lw    $t1, 0x90($s0)
/* ACCCF8 80055B58 87B80072 */  lh    $t8, 0x72($sp)
/* ACCCFC 80055B5C 87A8008E */  lh    $t0, 0x8e($sp)
/* ACCD00 80055B60 8D2A067C */  lw    $t2, 0x67c($t1)
/* ACCD04 80055B64 8FA2004C */  lw    $v0, 0x4c($sp)
/* ACCD08 80055B68 0308C823 */  subu  $t9, $t8, $t0
/* ACCD0C 80055B6C 000A5900 */  sll   $t3, $t2, 4
/* ACCD10 80055B70 0563000D */  bgezl $t3, .L80055BA8
/* ACCD14 80055B74 A7B9004A */   sh    $t9, 0x4a($sp)
/* ACCD18 80055B78 804C014F */  lb    $t4, 0x14f($v0)
/* ACCD1C 80055B7C 24010001 */  li    $at, 1
/* ACCD20 80055B80 51810009 */  beql  $t4, $at, .L80055BA8
/* ACCD24 80055B84 A7B9004A */   sh    $t9, 0x4a($sp)
/* ACCD28 80055B88 8C4D067C */  lw    $t5, 0x67c($v0)
/* ACCD2C 80055B8C 3C012000 */  lui   $at, 0x2000
/* ACCD30 80055B90 01A17025 */  or    $t6, $t5, $at
/* ACCD34 80055B94 AC4E067C */  sw    $t6, 0x67c($v0)
/* ACCD38 80055B98 860F0160 */  lh    $t7, 0x160($s0)
/* ACCD3C 80055B9C 10000026 */  b     .L80055C38
/* ACCD40 80055BA0 A44F0110 */   sh    $t7, 0x110($v0)
/* ACCD44 80055BA4 A7B9004A */  sh    $t9, 0x4a($sp)
.L80055BA8:
/* ACCD48 80055BA8 8E0500A8 */  lw    $a1, 0xa8($s0)
/* ACCD4C 80055BAC 24010002 */  li    $at, 2
/* ACCD50 80055BB0 8FA2004C */  lw    $v0, 0x4c($sp)
/* ACCD54 80055BB4 90A90002 */  lbu   $t1, 2($a1)
/* ACCD58 80055BB8 3C0B8012 */  lui   $t3, %hi(D_8011D3F4) # $t3, 0x8012
/* ACCD5C 80055BBC 24060001 */  li    $a2, 1
/* ACCD60 80055BC0 1521001B */  bne   $t1, $at, .L80055C30
/* ACCD64 80055BC4 00000000 */   nop   
/* ACCD68 80055BC8 8E04008C */  lw    $a0, 0x8c($s0)
/* ACCD6C 80055BCC 8C4C067C */  lw    $t4, 0x67c($v0)
/* ACCD70 80055BD0 8D6BD3F4 */  lw    $t3, %lo(D_8011D3F4)($t3)
/* ACCD74 80055BD4 8C8A009C */  lw    $t2, 0x9c($a0)
/* ACCD78 80055BD8 318D0800 */  andi  $t5, $t4, 0x800
/* ACCD7C 80055BDC 11A00005 */  beqz  $t5, .L80055BF4
/* ACCD80 80055BE0 014B1823 */   subu  $v1, $t2, $t3
/* ACCD84 80055BE4 0C00B7D5 */  jal   func_8002DF54
/* ACCD88 80055BE8 24060008 */   li    $a2, 8
/* ACCD8C 80055BEC 10000013 */  b     .L80055C3C
/* ACCD90 80055BF0 8E0E008C */   lw    $t6, 0x8c($s0)
.L80055BF4:
/* ACCD94 80055BF4 04600003 */  bltz  $v1, .L80055C04
/* ACCD98 80055BF8 00031023 */   negu  $v0, $v1
/* ACCD9C 80055BFC 10000001 */  b     .L80055C04
/* ACCDA0 80055C00 00601025 */   move  $v0, $v1
.L80055C04:
/* ACCDA4 80055C04 28410BB9 */  slti  $at, $v0, 0xbb9
/* ACCDA8 80055C08 14200005 */  bnez  $at, .L80055C20
/* ACCDAC 80055C0C 00000000 */   nop   
/* ACCDB0 80055C10 0C00B7D5 */  jal   func_8002DF54
/* ACCDB4 80055C14 2406000C */   li    $a2, 12
/* ACCDB8 80055C18 10000008 */  b     .L80055C3C
/* ACCDBC 80055C1C 8E0E008C */   lw    $t6, 0x8c($s0)
.L80055C20:
/* ACCDC0 80055C20 0C00B7D5 */  jal   func_8002DF54
/* ACCDC4 80055C24 24060045 */   li    $a2, 69
/* ACCDC8 80055C28 10000004 */  b     .L80055C3C
/* ACCDCC 80055C2C 8E0E008C */   lw    $t6, 0x8c($s0)
.L80055C30:
/* ACCDD0 80055C30 0C00B7D5 */  jal   func_8002DF54
/* ACCDD4 80055C34 8E04008C */   lw    $a0, 0x8c($s0)
.L80055C38:
/* ACCDD8 80055C38 8E0E008C */  lw    $t6, 0x8c($s0)
.L80055C3C:
/* ACCDDC 80055C3C 3C018012 */  lui   $at, %hi(D_8011D3F4) # $at, 0x8012
/* ACCDE0 80055C40 02002025 */  move  $a0, $s0
/* ACCDE4 80055C44 8DCF009C */  lw    $t7, 0x9c($t6)
/* ACCDE8 80055C48 2405003C */  li    $a1, 60
/* ACCDEC 80055C4C 24060005 */  li    $a2, 5
/* ACCDF0 80055C50 0C016952 */  jal   func_8005A548
/* ACCDF4 80055C54 AC2FD3F4 */   sw    $t7, %lo(D_8011D3F4)($at)
/* ACCDF8 80055C58 0C014B83 */  jal   func_80052E0C
/* ACCDFC 80055C5C 02002025 */   move  $a0, $s0
/* ACCE00 80055C60 24020001 */  li    $v0, 1
.L80055C64:
/* ACCE04 80055C64 8FBF001C */  lw    $ra, 0x1c($sp)
/* ACCE08 80055C68 8FB00018 */  lw    $s0, 0x18($sp)
/* ACCE0C 80055C6C 27BD0098 */  addiu $sp, $sp, 0x98
/* ACCE10 80055C70 03E00008 */  jr    $ra
/* ACCE14 80055C74 00000000 */   nop   
# SPLIT
/* ACCE18 80055C78 27BDFF88 */  addiu $sp, $sp, -0x78
/* ACCE1C 80055C7C AFB00020 */  sw    $s0, 0x20($sp)
/* ACCE20 80055C80 00808025 */  move  $s0, $a0
/* ACCE24 80055C84 AFBF0024 */  sw    $ra, 0x24($sp)
/* ACCE28 80055C88 8C84008C */  lw    $a0, 0x8c($a0)
/* ACCE2C 80055C8C 0C030129 */  jal   func_800C04A4
/* ACCE30 80055C90 00002825 */   move  $a1, $zero
/* ACCE34 80055C94 AFA20074 */  sw    $v0, 0x74($sp)
/* ACCE38 80055C98 8E0E00A8 */  lw    $t6, 0xa8($s0)
/* ACCE3C 80055C9C 240F0037 */  li    $t7, 55
/* ACCE40 80055CA0 24180046 */  li    $t8, 70
/* ACCE44 80055CA4 2419005A */  li    $t9, 90
/* ACCE48 80055CA8 A7AF0042 */  sh    $t7, 0x42($sp)
/* ACCE4C 80055CAC A7B80044 */  sh    $t8, 0x44($sp)
/* ACCE50 80055CB0 A7B90046 */  sh    $t9, 0x46($sp)
/* ACCE54 80055CB4 AFAE005C */  sw    $t6, 0x5c($sp)
/* ACCE58 80055CB8 8603015E */  lh    $v1, 0x15e($s0)
/* ACCE5C 80055CBC 2401000A */  li    $at, 10
/* ACCE60 80055CC0 5060000A */  beql  $v1, $zero, .L80055CEC
/* ACCE64 80055CC4 860A0142 */   lh    $t2, 0x142($s0)
/* ACCE68 80055CC8 10610007 */  beq   $v1, $at, .L80055CE8
/* ACCE6C 80055CCC 24010014 */   li    $at, 20
/* ACCE70 80055CD0 10610005 */  beq   $v1, $at, .L80055CE8
/* ACCE74 80055CD4 3C098016 */   lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* ACCE78 80055CD8 8D29FA90 */  lw    $t1, %lo(gGameInfo)($t1)
/* ACCE7C 80055CDC 85220314 */  lh    $v0, 0x314($t1)
/* ACCE80 80055CE0 1040000F */  beqz  $v0, .L80055D20
/* ACCE84 80055CE4 00000000 */   nop   
.L80055CE8:
/* ACCE88 80055CE8 860A0142 */  lh    $t2, 0x142($s0)
.L80055CEC:
/* ACCE8C 80055CEC 3C0C8012 */  lui   $t4, %hi(D_8011D068)
/* ACCE90 80055CF0 860D0144 */  lh    $t5, 0x144($s0)
/* ACCE94 80055CF4 000A58C0 */  sll   $t3, $t2, 3
/* ACCE98 80055CF8 018B6021 */  addu  $t4, $t4, $t3
/* ACCE9C 80055CFC 8D8CD068 */  lw    $t4, %lo(D_8011D068)($t4)
/* ACCEA0 80055D00 000D70C0 */  sll   $t6, $t5, 3
/* ACCEA4 80055D04 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* ACCEA8 80055D08 018E7821 */  addu  $t7, $t4, $t6
/* ACCEAC 80055D0C 8DE30004 */  lw    $v1, 4($t7)
/* ACCEB0 80055D10 84780000 */  lh    $t8, ($v1)
/* ACCEB4 80055D14 A6180000 */  sh    $t8, ($s0)
/* ACCEB8 80055D18 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* ACCEBC 80055D1C 87220314 */  lh    $v0, 0x314($t9)
.L80055D20:
/* ACCEC0 80055D20 50400004 */  beql  $v0, $zero, .L80055D34
/* ACCEC4 80055D24 8603015E */   lh    $v1, 0x15e($s0)
/* ACCEC8 80055D28 0C011495 */  jal   func_80045254
/* ACCECC 80055D2C 02002025 */   move  $a0, $s0
/* ACCED0 80055D30 8603015E */  lh    $v1, 0x15e($s0)
.L80055D34:
/* ACCED4 80055D34 3C014270 */  li    $at, 0x42700000 # 0.000000
/* ACCED8 80055D38 1060000A */  beqz  $v1, .L80055D64
/* ACCEDC 80055D3C 00601025 */   move  $v0, $v1
/* ACCEE0 80055D40 24010001 */  li    $at, 1
/* ACCEE4 80055D44 10610031 */  beq   $v1, $at, .L80055E0C
/* ACCEE8 80055D48 24010002 */   li    $at, 2
/* ACCEEC 80055D4C 1041004C */  beq   $v0, $at, .L80055E80
/* ACCEF0 80055D50 24010003 */   li    $at, 3
/* ACCEF4 80055D54 10410061 */  beq   $v0, $at, .L80055EDC
/* ACCEF8 80055D58 26080004 */   addiu $t0, $s0, 4
/* ACCEFC 80055D5C 10000076 */  b     .L80055F38
/* ACCF00 80055D60 85020000 */   lh    $v0, ($t0)
.L80055D64:
/* ACCF04 80055D64 44812000 */  mtc1  $at, $f4
/* ACCF08 80055D68 A6000004 */  sh    $zero, 4($s0)
/* ACCF0C 80055D6C 27A40048 */  addiu $a0, $sp, 0x48
/* ACCF10 80055D70 E60400FC */  swc1  $f4, 0xfc($s0)
/* ACCF14 80055D74 0C00BBC5 */  jal   func_8002EF14
/* ACCF18 80055D78 8FA5005C */   lw    $a1, 0x5c($sp)
/* ACCF1C 80055D7C C7A60048 */  lwc1  $f6, 0x48($sp)
/* ACCF20 80055D80 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* ACCF24 80055D84 44815000 */  mtc1  $at, $f10
/* ACCF28 80055D88 E6060050 */  swc1  $f6, 0x50($s0)
/* ACCF2C 80055D8C C7A8004C */  lwc1  $f8, 0x4c($sp)
/* ACCF30 80055D90 3C014348 */  li    $at, 0x43480000 # 0.000000
/* ACCF34 80055D94 44812000 */  mtc1  $at, $f4
/* ACCF38 80055D98 460A4400 */  add.s $f16, $f8, $f10
/* ACCF3C 80055D9C 27A40048 */  addiu $a0, $sp, 0x48
/* ACCF40 80055DA0 E6100054 */  swc1  $f16, 0x54($s0)
/* ACCF44 80055DA4 C7B20050 */  lwc1  $f18, 0x50($sp)
/* ACCF48 80055DA8 E6120058 */  swc1  $f18, 0x58($s0)
/* ACCF4C 80055DAC 8FA50074 */  lw    $a1, 0x74($sp)
/* ACCF50 80055DB0 E7A40060 */  swc1  $f4, 0x60($sp)
/* ACCF54 80055DB4 0C01129D */  jal   func_80044A74
/* ACCF58 80055DB8 24A50094 */   addiu $a1, $a1, 0x94
/* ACCF5C 80055DBC 244907D0 */  addiu $t1, $v0, 0x7d0
/* ACCF60 80055DC0 240AFC18 */  li    $t2, -1000
/* ACCF64 80055DC4 26040074 */  addiu $a0, $s0, 0x74
/* ACCF68 80055DC8 A7A90066 */  sh    $t1, 0x66($sp)
/* ACCF6C 80055DCC A7AA0064 */  sh    $t2, 0x64($sp)
/* ACCF70 80055DD0 AFA40034 */  sw    $a0, 0x34($sp)
/* ACCF74 80055DD4 26050050 */  addiu $a1, $s0, 0x50
/* ACCF78 80055DD8 0C010F0A */  jal   func_80043C28
/* ACCF7C 80055DDC 27A60060 */   addiu $a2, $sp, 0x60
/* ACCF80 80055DE0 8FA40034 */  lw    $a0, 0x34($sp)
/* ACCF84 80055DE4 860C015E */  lh    $t4, 0x15e($s0)
/* ACCF88 80055DE8 8C8D0000 */  lw    $t5, ($a0)
/* ACCF8C 80055DEC 258E0001 */  addiu $t6, $t4, 1
/* ACCF90 80055DF0 AE0D005C */  sw    $t5, 0x5c($s0)
/* ACCF94 80055DF4 8C8B0004 */  lw    $t3, 4($a0)
/* ACCF98 80055DF8 AE0B0060 */  sw    $t3, 0x60($s0)
/* ACCF9C 80055DFC 8C8D0008 */  lw    $t5, 8($a0)
/* ACCFA0 80055E00 A60E015E */  sh    $t6, 0x15e($s0)
/* ACCFA4 80055E04 8603015E */  lh    $v1, 0x15e($s0)
/* ACCFA8 80055E08 AE0D0064 */  sw    $t5, 0x64($s0)
.L80055E0C:
/* ACCFAC 80055E0C 00037840 */  sll   $t7, $v1, 1
/* ACCFB0 80055E10 03AFC021 */  addu  $t8, $sp, $t7
/* ACCFB4 80055E14 26080004 */  addiu $t0, $s0, 4
/* ACCFB8 80055E18 85020000 */  lh    $v0, ($t0)
/* ACCFBC 80055E1C 87180040 */  lh    $t8, 0x40($t8)
/* ACCFC0 80055E20 24060008 */  li    $a2, 8
/* ACCFC4 80055E24 0302082A */  slt   $at, $t8, $v0
/* ACCFC8 80055E28 50200044 */  beql  $at, $zero, .L80055F3C
/* ACCFCC 80055E2C 24580001 */   addiu $t8, $v0, 1
/* ACCFD0 80055E30 8E04008C */  lw    $a0, 0x8c($s0)
/* ACCFD4 80055E34 8E050090 */  lw    $a1, 0x90($s0)
/* ACCFD8 80055E38 0C00B7D5 */  jal   func_8002DF54
/* ACCFDC 80055E3C AFA80034 */   sw    $t0, 0x34($sp)
/* ACCFE0 80055E40 27A40048 */  addiu $a0, $sp, 0x48
/* ACCFE4 80055E44 0C00BBC5 */  jal   func_8002EF14
/* ACCFE8 80055E48 8FA5005C */   lw    $a1, 0x5c($sp)
/* ACCFEC 80055E4C 8FA80034 */  lw    $t0, 0x34($sp)
/* ACCFF0 80055E50 C7A60048 */  lwc1  $f6, 0x48($sp)
/* ACCFF4 80055E54 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* ACCFF8 80055E58 44815000 */  mtc1  $at, $f10
/* ACCFFC 80055E5C E5060004 */  swc1  $f6, 4($t0)
/* ACD000 80055E60 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* ACD004 80055E64 460A4401 */  sub.s $f16, $f8, $f10
/* ACD008 80055E68 E5100008 */  swc1  $f16, 8($t0)
/* ACD00C 80055E6C C7B20050 */  lwc1  $f18, 0x50($sp)
/* ACD010 80055E70 E512000C */  swc1  $f18, 0xc($t0)
/* ACD014 80055E74 8619015E */  lh    $t9, 0x15e($s0)
/* ACD018 80055E78 27290001 */  addiu $t1, $t9, 1
/* ACD01C 80055E7C A609015E */  sh    $t1, 0x15e($s0)
.L80055E80:
/* ACD020 80055E80 3C018014 */  lui   $at, %hi(D_8013A36C)
/* ACD024 80055E84 C420A36C */  lwc1  $f0, %lo(D_8013A36C)($at)
/* ACD028 80055E88 3C014100 */  li    $at, 0x41000000 # 0.000000
/* ACD02C 80055E8C 44812000 */  mtc1  $at, $f4
/* ACD030 80055E90 26080004 */  addiu $t0, $s0, 4
/* ACD034 80055E94 44060000 */  mfc1  $a2, $f0
/* ACD038 80055E98 44070000 */  mfc1  $a3, $f0
/* ACD03C 80055E9C 25040004 */  addiu $a0, $t0, 4
/* ACD040 80055EA0 AFA80034 */  sw    $t0, 0x34($sp)
/* ACD044 80055EA4 26050050 */  addiu $a1, $s0, 0x50
/* ACD048 80055EA8 0C010E8F */  jal   func_80043A3C
/* ACD04C 80055EAC E7A40010 */   swc1  $f4, 0x10($sp)
/* ACD050 80055EB0 8603015E */  lh    $v1, 0x15e($s0)
/* ACD054 80055EB4 8FA80034 */  lw    $t0, 0x34($sp)
/* ACD058 80055EB8 00035040 */  sll   $t2, $v1, 1
/* ACD05C 80055EBC 03AA5821 */  addu  $t3, $sp, $t2
/* ACD060 80055EC0 856B0040 */  lh    $t3, 0x40($t3)
/* ACD064 80055EC4 85020000 */  lh    $v0, ($t0)
/* ACD068 80055EC8 246D0001 */  addiu $t5, $v1, 1
/* ACD06C 80055ECC 0162082A */  slt   $at, $t3, $v0
/* ACD070 80055ED0 5020001A */  beql  $at, $zero, .L80055F3C
/* ACD074 80055ED4 24580001 */   addiu $t8, $v0, 1
/* ACD078 80055ED8 A60D015E */  sh    $t5, 0x15e($s0)
.L80055EDC:
/* ACD07C 80055EDC 3C014248 */  li    $at, 0x42480000 # 0.000000
/* ACD080 80055EE0 44816000 */  mtc1  $at, $f12
/* ACD084 80055EE4 C60E00FC */  lwc1  $f14, 0xfc($s0)
/* ACD088 80055EE8 3C063E4C */  lui   $a2, (0x3E4CCCCD >> 16) # lui $a2, 0x3e4c
/* ACD08C 80055EEC 3C073C23 */  lui   $a3, (0x3C23D70A >> 16) # lui $a3, 0x3c23
/* ACD090 80055EF0 26080004 */  addiu $t0, $s0, 4
/* ACD094 80055EF4 AFA80034 */  sw    $t0, 0x34($sp)
/* ACD098 80055EF8 34E7D70A */  ori   $a3, (0x3C23D70A & 0xFFFF) # ori $a3, $a3, 0xd70a
/* ACD09C 80055EFC 0C010E27 */  jal   func_8004389C
/* ACD0A0 80055F00 34C6CCCD */   ori   $a2, (0x3E4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* ACD0A4 80055F04 860C015E */  lh    $t4, 0x15e($s0)
/* ACD0A8 80055F08 8FA80034 */  lw    $t0, 0x34($sp)
/* ACD0AC 80055F0C E60000FC */  swc1  $f0, 0xfc($s0)
/* ACD0B0 80055F10 000C7040 */  sll   $t6, $t4, 1
/* ACD0B4 80055F14 03AE7821 */  addu  $t7, $sp, $t6
/* ACD0B8 80055F18 85EF0040 */  lh    $t7, 0x40($t7)
/* ACD0BC 80055F1C 85020000 */  lh    $v0, ($t0)
/* ACD0C0 80055F20 01E2082A */  slt   $at, $t7, $v0
/* ACD0C4 80055F24 50200005 */  beql  $at, $zero, .L80055F3C
/* ACD0C8 80055F28 24580001 */   addiu $t8, $v0, 1
/* ACD0CC 80055F2C A6000160 */  sh    $zero, 0x160($s0)
/* ACD0D0 80055F30 10000007 */  b     .L80055F50
/* ACD0D4 80055F34 24020001 */   li    $v0, 1
.L80055F38:
/* ACD0D8 80055F38 24580001 */  addiu $t8, $v0, 1
.L80055F3C:
/* ACD0DC 80055F3C A5180000 */  sh    $t8, ($t0)
/* ACD0E0 80055F40 8FA5005C */  lw    $a1, 0x5c($sp)
/* ACD0E4 80055F44 0C00BBC5 */  jal   func_8002EF14
/* ACD0E8 80055F48 27A40048 */   addiu $a0, $sp, 0x48
/* ACD0EC 80055F4C 24020001 */  li    $v0, 1
.L80055F50:
/* ACD0F0 80055F50 8FBF0024 */  lw    $ra, 0x24($sp)
/* ACD0F4 80055F54 8FB00020 */  lw    $s0, 0x20($sp)
/* ACD0F8 80055F58 27BD0078 */  addiu $sp, $sp, 0x78
/* ACD0FC 80055F5C 03E00008 */  jr    $ra
/* ACD100 80055F60 00000000 */   nop   
# SPLIT
/* ACD104 80055F64 8482015E */  lh    $v0, 0x15e($a0)
/* ACD108 80055F68 14400009 */  bnez  $v0, .L80055F90
/* ACD10C 80055F6C 00000000 */   nop   
/* ACD110 80055F70 848E014C */  lh    $t6, 0x14c($a0)
/* ACD114 80055F74 24480001 */  addiu $t0, $v0, 1
/* ACD118 80055F78 A488015E */  sh    $t0, 0x15e($a0)
/* ACD11C 80055F7C 31CFFFFB */  andi  $t7, $t6, 0xfffb
/* ACD120 80055F80 A48F014C */  sh    $t7, 0x14c($a0)
/* ACD124 80055F84 8498014C */  lh    $t8, 0x14c($a0)
/* ACD128 80055F88 37191000 */  ori   $t9, $t8, 0x1000
/* ACD12C 80055F8C A499014C */  sh    $t9, 0x14c($a0)
.L80055F90:
/* ACD130 80055F90 03E00008 */  jr    $ra
/* ACD134 80055F94 00000000 */   nop   
# SPLIT
/* ACD138 80055F98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* ACD13C 80055F9C AFBF0014 */  sw    $ra, 0x14($sp)
/* ACD140 80055FA0 0C011CE5 */  jal   func_80047394
/* ACD144 80055FA4 00000000 */   nop   
/* ACD148 80055FA8 8FBF0014 */  lw    $ra, 0x14($sp)
/* ACD14C 80055FAC 27BD0018 */  addiu $sp, $sp, 0x18
/* ACD150 80055FB0 03E00008 */  jr    $ra
/* ACD154 80055FB4 00000000 */   nop   
# SPLIT
/* ACD158 80055FB8 27BDFF48 */  addiu $sp, $sp, -0xb8
/* ACD15C 80055FBC AFB00020 */  sw    $s0, 0x20($sp)
/* ACD160 80055FC0 00808025 */  move  $s0, $a0
/* ACD164 80055FC4 AFBF0024 */  sw    $ra, 0x24($sp)
/* ACD168 80055FC8 8C84008C */  lw    $a0, 0x8c($a0)
/* ACD16C 80055FCC 0C030129 */  jal   func_800C04A4
/* ACD170 80055FD0 00002825 */   move  $a1, $zero
/* ACD174 80055FD4 244E0094 */  addiu $t6, $v0, 0x94
/* ACD178 80055FD8 AFAE0064 */  sw    $t6, 0x64($sp)
/* ACD17C 80055FDC 8603015E */  lh    $v1, 0x15e($s0)
/* ACD180 80055FE0 00403025 */  move  $a2, $v0
/* ACD184 80055FE4 2401000A */  li    $at, 10
/* ACD188 80055FE8 5060000A */  beql  $v1, $zero, .L80056014
/* ACD18C 80055FEC 86180142 */   lh    $t8, 0x142($s0)
/* ACD190 80055FF0 10610007 */  beq   $v1, $at, .L80056010
/* ACD194 80055FF4 24010014 */   li    $at, 20
/* ACD198 80055FF8 10610005 */  beq   $v1, $at, .L80056010
/* ACD19C 80055FFC 3C0F8016 */   lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* ACD1A0 80056000 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* ACD1A4 80056004 85E20314 */  lh    $v0, 0x314($t7)
/* ACD1A8 80056008 1040000F */  beqz  $v0, .L80056048
/* ACD1AC 8005600C 00000000 */   nop   
.L80056010:
/* ACD1B0 80056010 86180142 */  lh    $t8, 0x142($s0)
.L80056014:
/* ACD1B4 80056014 3C098012 */  lui   $t1, %hi(D_8011D068)
/* ACD1B8 80056018 860A0144 */  lh    $t2, 0x144($s0)
/* ACD1BC 8005601C 0018C8C0 */  sll   $t9, $t8, 3
/* ACD1C0 80056020 01394821 */  addu  $t1, $t1, $t9
/* ACD1C4 80056024 8D29D068 */  lw    $t1, %lo(D_8011D068)($t1)
/* ACD1C8 80056028 000A58C0 */  sll   $t3, $t2, 3
/* ACD1CC 8005602C 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* ACD1D0 80056030 012B6021 */  addu  $t4, $t1, $t3
/* ACD1D4 80056034 8D830004 */  lw    $v1, 4($t4)
/* ACD1D8 80056038 846D0000 */  lh    $t5, ($v1)
/* ACD1DC 8005603C A60D000C */  sh    $t5, 0xc($s0)
/* ACD1E0 80056040 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* ACD1E4 80056044 85C20314 */  lh    $v0, 0x314($t6)
.L80056048:
/* ACD1E8 80056048 10400007 */  beqz  $v0, .L80056068
/* ACD1EC 8005604C 2603000C */   addiu $v1, $s0, 0xc
/* ACD1F0 80056050 02002025 */  move  $a0, $s0
/* ACD1F4 80056054 AFA30034 */  sw    $v1, 0x34($sp)
/* ACD1F8 80056058 0C011495 */  jal   func_80045254
/* ACD1FC 8005605C AFA6006C */   sw    $a2, 0x6c($sp)
/* ACD200 80056060 8FA30034 */  lw    $v1, 0x34($sp)
/* ACD204 80056064 8FA6006C */  lw    $a2, 0x6c($sp)
.L80056068:
/* ACD208 80056068 846F0000 */  lh    $t7, ($v1)
/* ACD20C 8005606C 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ACD210 80056070 AC2FD3A0 */  sw    $t7, %lo(D_8011D3A0)($at)
/* ACD214 80056074 9618015E */  lhu   $t8, 0x15e($s0)
/* ACD218 80056078 2F010005 */  sltiu $at, $t8, 5
/* ACD21C 8005607C 102000E7 */  beqz  $at, .L8005641C
/* ACD220 80056080 0018C080 */   sll   $t8, $t8, 2
/* ACD224 80056084 3C018014 */  lui   $at, %hi(jtbl_8013A370)
/* ACD228 80056088 00380821 */  addu  $at, $at, $t8
/* ACD22C 8005608C 8C38A370 */  lw    $t8, %lo(jtbl_8013A370)($at)
/* ACD230 80056090 03000008 */  jr    $t8
/* ACD234 80056094 00000000 */   nop   
/* ACD238 80056098 44802000 */  mtc1  $zero, $f4
/* ACD23C 8005609C 26080010 */  addiu $t0, $s0, 0x10
/* ACD240 800560A0 A5000004 */  sh    $zero, 4($t0)
/* ACD244 800560A4 A5000008 */  sh    $zero, 8($t0)
/* ACD248 800560A8 E5040000 */  swc1  $f4, ($t0)
/* ACD24C 800560AC 8619015E */  lh    $t9, 0x15e($s0)
/* ACD250 800560B0 272A0001 */  addiu $t2, $t9, 1
/* ACD254 800560B4 A60A015E */  sh    $t2, 0x15e($s0)
/* ACD258 800560B8 A5000006 */  sh    $zero, 6($t0)
/* ACD25C 800560BC 86020008 */  lh    $v0, 8($s0)
/* ACD260 800560C0 3042F000 */  andi  $v0, $v0, 0xf000
/* ACD264 800560C4 50400006 */  beql  $v0, $zero, .L800560E0
/* ACD268 800560C8 860C000A */   lh    $t4, 0xa($s0)
/* ACD26C 800560CC A5020008 */  sh    $v0, 8($t0)
/* ACD270 800560D0 86090008 */  lh    $t1, 8($s0)
/* ACD274 800560D4 312B0FFF */  andi  $t3, $t1, 0xfff
/* ACD278 800560D8 A60B0008 */  sh    $t3, 8($s0)
/* ACD27C 800560DC 860C000A */  lh    $t4, 0xa($s0)
.L800560E0:
/* ACD280 800560E0 A50C000A */  sh    $t4, 0xa($t0)
/* ACD284 800560E4 26080010 */  addiu $t0, $s0, 0x10
/* ACD288 800560E8 850D000A */  lh    $t5, 0xa($t0)
/* ACD28C 800560EC 25030004 */  addiu $v1, $t0, 4
/* ACD290 800560F0 27A4009C */  addiu $a0, $sp, 0x9c
/* ACD294 800560F4 19A0009F */  blez  $t5, .L80056374
/* ACD298 800560F8 27A50074 */   addiu $a1, $sp, 0x74
/* ACD29C 800560FC 8E070004 */  lw    $a3, 4($s0)
/* ACD2A0 80056100 260600FC */  addiu $a2, $s0, 0xfc
/* ACD2A4 80056104 AFA60034 */  sw    $a2, 0x34($sp)
/* ACD2A8 80056108 AFA8002C */  sw    $t0, 0x2c($sp)
/* ACD2AC 8005610C AFA30030 */  sw    $v1, 0x30($sp)
/* ACD2B0 80056110 AFA80014 */  sw    $t0, 0x14($sp)
/* ACD2B4 80056114 0C02ECAD */  jal   func_800BB2B4
/* ACD2B8 80056118 AFA30010 */   sw    $v1, 0x10($sp)
/* ACD2BC 8005611C 8FA30030 */  lw    $v1, 0x30($sp)
/* ACD2C0 80056120 8FA60034 */  lw    $a2, 0x34($sp)
/* ACD2C4 80056124 1440000A */  bnez  $v0, .L80056150
/* ACD2C8 80056128 8FA8002C */   lw    $t0, 0x2c($sp)
/* ACD2CC 8005612C 8E070000 */  lw    $a3, ($s0)
/* ACD2D0 80056130 AFA8002C */  sw    $t0, 0x2c($sp)
/* ACD2D4 80056134 AFA80014 */  sw    $t0, 0x14($sp)
/* ACD2D8 80056138 AFA30010 */  sw    $v1, 0x10($sp)
/* ACD2DC 8005613C 27A40090 */  addiu $a0, $sp, 0x90
/* ACD2E0 80056140 0C02ECAD */  jal   func_800BB2B4
/* ACD2E4 80056144 27A50074 */   addiu $a1, $sp, 0x74
/* ACD2E8 80056148 10400003 */  beqz  $v0, .L80056158
/* ACD2EC 8005614C 8FA8002C */   lw    $t0, 0x2c($sp)
.L80056150:
/* ACD2F0 80056150 240E0002 */  li    $t6, 2
/* ACD2F4 80056154 A60E015E */  sh    $t6, 0x15e($s0)
.L80056158:
/* ACD2F8 80056158 86020008 */  lh    $v0, 8($s0)
/* ACD2FC 8005615C 24010001 */  li    $at, 1
/* ACD300 80056160 8FA40064 */  lw    $a0, 0x64($sp)
/* ACD304 80056164 1441000C */  bne   $v0, $at, .L80056198
/* ACD308 80056168 27A5009C */   addiu $a1, $sp, 0x9c
/* ACD30C 8005616C 27A60084 */  addiu $a2, $sp, 0x84
/* ACD310 80056170 0C01511E */  jal   func_80054478
/* ACD314 80056174 AFA8002C */   sw    $t0, 0x2c($sp)
/* ACD318 80056178 8FA40064 */  lw    $a0, 0x64($sp)
/* ACD31C 8005617C 27A50090 */  addiu $a1, $sp, 0x90
/* ACD320 80056180 0C01511E */  jal   func_80054478
/* ACD324 80056184 27A60078 */   addiu $a2, $sp, 0x78
/* ACD328 80056188 8FA8002C */  lw    $t0, 0x2c($sp)
/* ACD32C 8005618C 2603005C */  addiu $v1, $s0, 0x5c
/* ACD330 80056190 10000046 */  b     .L800562AC
/* ACD334 80056194 26050050 */   addiu $a1, $s0, 0x50
.L80056198:
/* ACD338 80056198 24010004 */  li    $at, 4
/* ACD33C 8005619C 14410010 */  bne   $v0, $at, .L800561E0
/* ACD340 800561A0 27A40050 */   addiu $a0, $sp, 0x50
/* ACD344 800561A4 8E050090 */  lw    $a1, 0x90($s0)
/* ACD348 800561A8 0C00BBC5 */  jal   func_8002EF14
/* ACD34C 800561AC AFA8002C */   sw    $t0, 0x2c($sp)
/* ACD350 800561B0 27A40050 */  addiu $a0, $sp, 0x50
/* ACD354 800561B4 27A5009C */  addiu $a1, $sp, 0x9c
/* ACD358 800561B8 0C01511E */  jal   func_80054478
/* ACD35C 800561BC 27A60084 */   addiu $a2, $sp, 0x84
/* ACD360 800561C0 27A40050 */  addiu $a0, $sp, 0x50
/* ACD364 800561C4 27A50090 */  addiu $a1, $sp, 0x90
/* ACD368 800561C8 0C01511E */  jal   func_80054478
/* ACD36C 800561CC 27A60078 */   addiu $a2, $sp, 0x78
/* ACD370 800561D0 8FA8002C */  lw    $t0, 0x2c($sp)
/* ACD374 800561D4 2603005C */  addiu $v1, $s0, 0x5c
/* ACD378 800561D8 10000034 */  b     .L800562AC
/* ACD37C 800561DC 26050050 */   addiu $a1, $s0, 0x50
.L800561E0:
/* ACD380 800561E0 24010008 */  li    $at, 8
/* ACD384 800561E4 14410028 */  bne   $v0, $at, .L80056288
/* ACD388 800561E8 27A4009C */   addiu $a0, $sp, 0x9c
/* ACD38C 800561EC 8E0500A8 */  lw    $a1, 0xa8($s0)
/* ACD390 800561F0 2603005C */  addiu $v1, $s0, 0x5c
/* ACD394 800561F4 50A00014 */  beql  $a1, $zero, .L80056248
/* ACD398 800561F8 AE0000A8 */   sw    $zero, 0xa8($s0)
/* ACD39C 800561FC 8CAF0130 */  lw    $t7, 0x130($a1)
/* ACD3A0 80056200 27A40050 */  addiu $a0, $sp, 0x50
/* ACD3A4 80056204 51E00010 */  beql  $t7, $zero, .L80056248
/* ACD3A8 80056208 AE0000A8 */   sw    $zero, 0xa8($s0)
/* ACD3AC 8005620C 0C00BBC5 */  jal   func_8002EF14
/* ACD3B0 80056210 AFA8002C */   sw    $t0, 0x2c($sp)
/* ACD3B4 80056214 27A40050 */  addiu $a0, $sp, 0x50
/* ACD3B8 80056218 27A5009C */  addiu $a1, $sp, 0x9c
/* ACD3BC 8005621C 0C01511E */  jal   func_80054478
/* ACD3C0 80056220 27A60084 */   addiu $a2, $sp, 0x84
/* ACD3C4 80056224 27A40050 */  addiu $a0, $sp, 0x50
/* ACD3C8 80056228 27A50090 */  addiu $a1, $sp, 0x90
/* ACD3CC 8005622C 0C01511E */  jal   func_80054478
/* ACD3D0 80056230 27A60078 */   addiu $a2, $sp, 0x78
/* ACD3D4 80056234 8FA8002C */  lw    $t0, 0x2c($sp)
/* ACD3D8 80056238 2603005C */  addiu $v1, $s0, 0x5c
/* ACD3DC 8005623C 1000001B */  b     .L800562AC
/* ACD3E0 80056240 26050050 */   addiu $a1, $s0, 0x50
/* ACD3E4 80056244 AE0000A8 */  sw    $zero, 0xa8($s0)
.L80056248:
/* ACD3E8 80056248 8C6A0000 */  lw    $t2, ($v1)
/* ACD3EC 8005624C 27B80084 */  addiu $t8, $sp, 0x84
/* ACD3F0 80056250 26050050 */  addiu $a1, $s0, 0x50
/* ACD3F4 80056254 AF0A0000 */  sw    $t2, ($t8)
/* ACD3F8 80056258 8C790004 */  lw    $t9, 4($v1)
/* ACD3FC 8005625C 27A90078 */  addiu $t1, $sp, 0x78
/* ACD400 80056260 AF190004 */  sw    $t9, 4($t8)
/* ACD404 80056264 8C6A0008 */  lw    $t2, 8($v1)
/* ACD408 80056268 AF0A0008 */  sw    $t2, 8($t8)
/* ACD40C 8005626C 8CAC0000 */  lw    $t4, ($a1)
/* ACD410 80056270 AD2C0000 */  sw    $t4, ($t1)
/* ACD414 80056274 8CAB0004 */  lw    $t3, 4($a1)
/* ACD418 80056278 AD2B0004 */  sw    $t3, 4($t1)
/* ACD41C 8005627C 8CAC0008 */  lw    $t4, 8($a1)
/* ACD420 80056280 1000000A */  b     .L800562AC
/* ACD424 80056284 AD2C0008 */   sw    $t4, 8($t1)
.L80056288:
/* ACD428 80056288 27A50084 */  addiu $a1, $sp, 0x84
/* ACD42C 8005628C 0C015117 */  jal   Camera_Vec3fCopy
/* ACD430 80056290 AFA8002C */   sw    $t0, 0x2c($sp)
/* ACD434 80056294 27A40090 */  addiu $a0, $sp, 0x90
/* ACD438 80056298 0C015117 */  jal   Camera_Vec3fCopy
/* ACD43C 8005629C 27A50078 */   addiu $a1, $sp, 0x78
/* ACD440 800562A0 8FA8002C */  lw    $t0, 0x2c($sp)
/* ACD444 800562A4 2603005C */  addiu $v1, $s0, 0x5c
/* ACD448 800562A8 26050050 */  addiu $a1, $s0, 0x50
.L800562AC:
/* ACD44C 800562AC 27AD0084 */  addiu $t5, $sp, 0x84
/* ACD450 800562B0 8DAF0000 */  lw    $t7, ($t5)
/* ACD454 800562B4 26020074 */  addiu $v0, $s0, 0x74
/* ACD458 800562B8 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ACD45C 800562BC AC4F0000 */  sw    $t7, ($v0)
/* ACD460 800562C0 8DAE0004 */  lw    $t6, 4($t5)
/* ACD464 800562C4 8C590000 */  lw    $t9, ($v0)
/* ACD468 800562C8 27A40078 */  addiu $a0, $sp, 0x78
/* ACD46C 800562CC AC4E0004 */  sw    $t6, 4($v0)
/* ACD470 800562D0 8DAF0008 */  lw    $t7, 8($t5)
/* ACD474 800562D4 27A90078 */  addiu $t1, $sp, 0x78
/* ACD478 800562D8 AC4F0008 */  sw    $t7, 8($v0)
/* ACD47C 800562DC AC790000 */  sw    $t9, ($v1)
/* ACD480 800562E0 8C580004 */  lw    $t8, 4($v0)
/* ACD484 800562E4 AC780004 */  sw    $t8, 4($v1)
/* ACD488 800562E8 8C590008 */  lw    $t9, 8($v0)
/* ACD48C 800562EC AC790008 */  sw    $t9, 8($v1)
/* ACD490 800562F0 850A0006 */  lh    $t2, 6($t0)
/* ACD494 800562F4 5140000C */  beql  $t2, $zero, .L80056328
/* ACD498 800562F8 8D2C0000 */   lw    $t4, ($t1)
/* ACD49C 800562FC 44810000 */  mtc1  $at, $f0
/* ACD4A0 80056300 3C018014 */  lui   $at, %hi(D_8013A384)
/* ACD4A4 80056304 C426A384 */  lwc1  $f6, %lo(D_8013A384)($at)
/* ACD4A8 80056308 44060000 */  mfc1  $a2, $f0
/* ACD4AC 8005630C 44070000 */  mfc1  $a3, $f0
/* ACD4B0 80056310 AFA8002C */  sw    $t0, 0x2c($sp)
/* ACD4B4 80056314 0C010E8F */  jal   func_80043A3C
/* ACD4B8 80056318 E7A60010 */   swc1  $f6, 0x10($sp)
/* ACD4BC 8005631C 10000009 */  b     .L80056344
/* ACD4C0 80056320 8FA8002C */   lw    $t0, 0x2c($sp)
/* ACD4C4 80056324 8D2C0000 */  lw    $t4, ($t1)
.L80056328:
/* ACD4C8 80056328 240D0001 */  li    $t5, 1
/* ACD4CC 8005632C ACAC0000 */  sw    $t4, ($a1)
/* ACD4D0 80056330 8D2B0004 */  lw    $t3, 4($t1)
/* ACD4D4 80056334 ACAB0004 */  sw    $t3, 4($a1)
/* ACD4D8 80056338 8D2C0008 */  lw    $t4, 8($t1)
/* ACD4DC 8005633C ACAC0008 */  sw    $t4, 8($a1)
/* ACD4E0 80056340 A50D0006 */  sh    $t5, 6($t0)
.L80056344:
/* ACD4E4 80056344 3C014380 */  li    $at, 0x43800000 # 0.000000
/* ACD4E8 80056348 44815000 */  mtc1  $at, $f10
/* ACD4EC 8005634C C7A80074 */  lwc1  $f8, 0x74($sp)
/* ACD4F0 80056350 460A4402 */  mul.s $f16, $f8, $f10
/* ACD4F4 80056354 4600848D */  trunc.w.s $f18, $f16
/* ACD4F8 80056358 440F9000 */  mfc1  $t7, $f18
/* ACD4FC 8005635C 00000000 */  nop   
/* ACD500 80056360 A60F015A */  sh    $t7, 0x15a($s0)
/* ACD504 80056364 8518000A */  lh    $t8, 0xa($t0)
/* ACD508 80056368 2719FFFF */  addiu $t9, $t8, -1
/* ACD50C 8005636C 1000002B */  b     .L8005641C
/* ACD510 80056370 A519000A */   sh    $t9, 0xa($t0)
.L80056374:
/* ACD514 80056374 86020018 */  lh    $v0, 0x18($s0)
/* ACD518 80056378 A6000160 */  sh    $zero, 0x160($s0)
/* ACD51C 8005637C 24011000 */  li    $at, 4096
/* ACD520 80056380 50400027 */  beql  $v0, $zero, .L80056420
/* ACD524 80056384 8FBF0024 */   lw    $ra, 0x24($sp)
/* ACD528 80056388 10410016 */  beq   $v0, $at, .L800563E4
/* ACD52C 8005638C 00C02025 */   move  $a0, $a2
/* ACD530 80056390 24012000 */  li    $at, 8192
/* ACD534 80056394 14410021 */  bne   $v0, $at, .L8005641C
/* ACD538 80056398 240503FC */   li    $a1, 1020
/* ACD53C 8005639C 8602000A */  lh    $v0, 0xa($s0)
/* ACD540 800563A0 00003825 */  move  $a3, $zero
/* ACD544 800563A4 28410032 */  slti  $at, $v0, 0x32
/* ACD548 800563A8 50200004 */  beql  $at, $zero, .L800563BC
/* ACD54C 800563AC 24010005 */   li    $at, 5
/* ACD550 800563B0 10000006 */  b     .L800563CC
/* ACD554 800563B4 24060005 */   li    $a2, 5
/* ACD558 800563B8 24010005 */  li    $at, 5
.L800563BC:
/* ACD55C 800563BC 0041001A */  div   $zero, $v0, $at
/* ACD560 800563C0 00003012 */  mflo  $a2
/* ACD564 800563C4 00063400 */  sll   $a2, $a2, 0x10
/* ACD568 800563C8 00063403 */  sra   $a2, $a2, 0x10
.L800563CC:
/* ACD56C 800563CC 860A0162 */  lh    $t2, 0x162($s0)
/* ACD570 800563D0 8E04008C */  lw    $a0, 0x8c($s0)
/* ACD574 800563D4 0C02003E */  jal   func_800800F8
/* ACD578 800563D8 AFAA0010 */   sw    $t2, 0x10($sp)
/* ACD57C 800563DC 10000010 */  b     .L80056420
/* ACD580 800563E0 8FBF0024 */   lw    $ra, 0x24($sp)
.L800563E4:
/* ACD584 800563E4 0C016B99 */  jal   func_8005AE64
/* ACD588 800563E8 02002825 */   move  $a1, $s0
/* ACD58C 800563EC 1000000C */  b     .L80056420
/* ACD590 800563F0 8FBF0024 */   lw    $ra, 0x24($sp)
/* ACD594 800563F4 26080010 */  addiu $t0, $s0, 0x10
/* ACD598 800563F8 8509000A */  lh    $t1, 0xa($t0)
/* ACD59C 800563FC 252BFFFF */  addiu $t3, $t1, -1
/* ACD5A0 80056400 A50B000A */  sh    $t3, 0xa($t0)
/* ACD5A4 80056404 850C000A */  lh    $t4, 0xa($t0)
/* ACD5A8 80056408 05830005 */  bgezl $t4, .L80056420
/* ACD5AC 8005640C 8FBF0024 */   lw    $ra, 0x24($sp)
/* ACD5B0 80056410 860D015E */  lh    $t5, 0x15e($s0)
/* ACD5B4 80056414 25AE0001 */  addiu $t6, $t5, 1
/* ACD5B8 80056418 A60E015E */  sh    $t6, 0x15e($s0)
.L8005641C:
/* ACD5BC 8005641C 8FBF0024 */  lw    $ra, 0x24($sp)
.L80056420:
/* ACD5C0 80056420 8FB00020 */  lw    $s0, 0x20($sp)
/* ACD5C4 80056424 27BD00B8 */  addiu $sp, $sp, 0xb8
/* ACD5C8 80056428 03E00008 */  jr    $ra
/* ACD5CC 8005642C 24020001 */   li    $v0, 1
# SPLIT
/* ACD5D0 80056430 27BDFFE8 */  addiu $sp, $sp, -0x18
/* ACD5D4 80056434 AFBF0014 */  sw    $ra, 0x14($sp)
/* ACD5D8 80056438 0C011CE5 */  jal   func_80047394
/* ACD5DC 8005643C 00000000 */   nop   
/* ACD5E0 80056440 8FBF0014 */  lw    $ra, 0x14($sp)
/* ACD5E4 80056444 27BD0018 */  addiu $sp, $sp, 0x18
/* ACD5E8 80056448 03E00008 */  jr    $ra
/* ACD5EC 8005644C 00000000 */   nop   
# SPLIT
/* ACD5F0 80056450 27BDFFC0 */  addiu $sp, $sp, -0x40
/* ACD5F4 80056454 AFBF0024 */  sw    $ra, 0x24($sp)
/* ACD5F8 80056458 AFB00020 */  sw    $s0, 0x20($sp)
/* ACD5FC 8005645C 8482015E */  lh    $v0, 0x15e($a0)
/* ACD600 80056460 00808025 */  move  $s0, $a0
/* ACD604 80056464 2401000A */  li    $at, 10
/* ACD608 80056468 5040000A */  beql  $v0, $zero, .L80056494
/* ACD60C 8005646C 860F0142 */   lh    $t7, 0x142($s0)
/* ACD610 80056470 10410007 */  beq   $v0, $at, .L80056490
/* ACD614 80056474 24010014 */   li    $at, 20
/* ACD618 80056478 10410005 */  beq   $v0, $at, .L80056490
/* ACD61C 8005647C 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* ACD620 80056480 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* ACD624 80056484 85C30314 */  lh    $v1, 0x314($t6)
/* ACD628 80056488 10600018 */  beqz  $v1, .L800564EC
/* ACD62C 8005648C 00000000 */   nop   
.L80056490:
/* ACD630 80056490 860F0142 */  lh    $t7, 0x142($s0)
.L80056494:
/* ACD634 80056494 3C198012 */  lui   $t9, %hi(D_8011D068)
/* ACD638 80056498 86080144 */  lh    $t0, 0x144($s0)
/* ACD63C 8005649C 000FC0C0 */  sll   $t8, $t7, 3
/* ACD640 800564A0 0338C821 */  addu  $t9, $t9, $t8
/* ACD644 800564A4 8F39D068 */  lw    $t9, %lo(D_8011D068)($t9)
/* ACD648 800564A8 000848C0 */  sll   $t1, $t0, 3
/* ACD64C 800564AC 3C018014 */  lui   $at, %hi(D_8013A388)
/* ACD650 800564B0 03295021 */  addu  $t2, $t9, $t1
/* ACD654 800564B4 8D420004 */  lw    $v0, 4($t2)
/* ACD658 800564B8 C428A388 */  lwc1  $f8, %lo(D_8013A388)($at)
/* ACD65C 800564BC 3C0D8016 */  lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* ACD660 800564C0 844B0000 */  lh    $t3, ($v0)
/* ACD664 800564C4 24420004 */  addiu $v0, $v0, 4
/* ACD668 800564C8 448B2000 */  mtc1  $t3, $f4
/* ACD66C 800564CC 00000000 */  nop   
/* ACD670 800564D0 468021A0 */  cvt.s.w $f6, $f4
/* ACD674 800564D4 46083282 */  mul.s $f10, $f6, $f8
/* ACD678 800564D8 E60A0000 */  swc1  $f10, ($s0)
/* ACD67C 800564DC 844C0000 */  lh    $t4, ($v0)
/* ACD680 800564E0 A60C0004 */  sh    $t4, 4($s0)
/* ACD684 800564E4 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* ACD688 800564E8 85A30314 */  lh    $v1, 0x314($t5)
.L800564EC:
/* ACD68C 800564EC 50600004 */  beql  $v1, $zero, .L80056500
/* ACD690 800564F0 860E0004 */   lh    $t6, 4($s0)
/* ACD694 800564F4 0C011495 */  jal   func_80045254
/* ACD698 800564F8 02002025 */   move  $a0, $s0
/* ACD69C 800564FC 860E0004 */  lh    $t6, 4($s0)
.L80056500:
/* ACD6A0 80056500 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ACD6A4 80056504 AC2ED3A0 */  sw    $t6, %lo(D_8011D3A0)($at)
/* ACD6A8 80056508 8602015E */  lh    $v0, 0x15e($s0)
/* ACD6AC 8005650C 14400002 */  bnez  $v0, .L80056518
/* ACD6B0 80056510 244F0001 */   addiu $t7, $v0, 1
/* ACD6B4 80056514 A60F015E */  sh    $t7, 0x15e($s0)
.L80056518:
/* ACD6B8 80056518 8E0500A8 */  lw    $a1, 0xa8($s0)
/* ACD6BC 8005651C 10A00005 */  beqz  $a1, .L80056534
/* ACD6C0 80056520 00000000 */   nop   
/* ACD6C4 80056524 8CB80130 */  lw    $t8, 0x130($a1)
/* ACD6C8 80056528 260400AC */  addiu $a0, $s0, 0xac
/* ACD6CC 8005652C 17000008 */  bnez  $t8, .L80056550
/* ACD6D0 80056530 00000000 */   nop   
.L80056534:
/* ACD6D4 80056534 14A00003 */  bnez  $a1, .L80056544
/* ACD6D8 80056538 3C048014 */   lui   $a0, %hi(D_80139714) # $a0, 0x8014
/* ACD6DC 8005653C 0C00084C */  jal   osSyncPrintf
/* ACD6E0 80056540 24849714 */   addiu $a0, %lo(D_80139714) # addiu $a0, $a0, -0x68ec
.L80056544:
/* ACD6E4 80056544 AE0000A8 */  sw    $zero, 0xa8($s0)
/* ACD6E8 80056548 10000025 */  b     .L800565E0
/* ACD6EC 8005654C 24020001 */   li    $v0, 1
.L80056550:
/* ACD6F0 80056550 0C00BBB9 */  jal   func_8002EEE4
/* ACD6F4 80056554 AFA4002C */   sw    $a0, 0x2c($sp)
/* ACD6F8 80056558 C6000000 */  lwc1  $f0, ($s0)
/* ACD6FC 8005655C 3C018014 */  lui   $at, %hi(D_8013A38C)
/* ACD700 80056560 C430A38C */  lwc1  $f16, %lo(D_8013A38C)($at)
/* ACD704 80056564 26050050 */  addiu $a1, $s0, 0x50
/* ACD708 80056568 44060000 */  mfc1  $a2, $f0
/* ACD70C 8005656C 44070000 */  mfc1  $a3, $f0
/* ACD710 80056570 8FA4002C */  lw    $a0, 0x2c($sp)
/* ACD714 80056574 AFA50030 */  sw    $a1, 0x30($sp)
/* ACD718 80056578 0C010E8F */  jal   func_80043A3C
/* ACD71C 8005657C E7B00010 */   swc1  $f16, 0x10($sp)
/* ACD720 80056580 26020094 */  addiu $v0, $s0, 0x94
/* ACD724 80056584 C4440000 */  lwc1  $f4, ($v0)
/* ACD728 80056588 C6120050 */  lwc1  $f18, 0x50($s0)
/* ACD72C 8005658C C6080054 */  lwc1  $f8, 0x54($s0)
/* ACD730 80056590 2605005C */  addiu $a1, $s0, 0x5c
/* ACD734 80056594 46049181 */  sub.s $f6, $f18, $f4
/* ACD738 80056598 C6120058 */  lwc1  $f18, 0x58($s0)
/* ACD73C 8005659C E60600E4 */  swc1  $f6, 0xe4($s0)
/* ACD740 800565A0 C44A0004 */  lwc1  $f10, 4($v0)
/* ACD744 800565A4 460A4401 */  sub.s $f16, $f8, $f10
/* ACD748 800565A8 E61000E8 */  swc1  $f16, 0xe8($s0)
/* ACD74C 800565AC C4440008 */  lwc1  $f4, 8($v0)
/* ACD750 800565B0 46049181 */  sub.s $f6, $f18, $f4
/* ACD754 800565B4 E60600EC */  swc1  $f6, 0xec($s0)
/* ACD758 800565B8 0C01EFE4 */  jal   func_8007BF90
/* ACD75C 800565BC 8FA40030 */   lw    $a0, 0x30($sp)
/* ACD760 800565C0 86020160 */  lh    $v0, 0x160($s0)
/* ACD764 800565C4 44804000 */  mtc1  $zero, $f8
/* ACD768 800565C8 E60000DC */  swc1  $f0, 0xdc($s0)
/* ACD76C 800565CC 18400003 */  blez  $v0, .L800565DC
/* ACD770 800565D0 E60800D8 */   swc1  $f8, 0xd8($s0)
/* ACD774 800565D4 2448FFFF */  addiu $t0, $v0, -1
/* ACD778 800565D8 A6080160 */  sh    $t0, 0x160($s0)
.L800565DC:
/* ACD77C 800565DC 24020001 */  li    $v0, 1
.L800565E0:
/* ACD780 800565E0 8FBF0024 */  lw    $ra, 0x24($sp)
/* ACD784 800565E4 8FB00020 */  lw    $s0, 0x20($sp)
/* ACD788 800565E8 27BD0040 */  addiu $sp, $sp, 0x40
/* ACD78C 800565EC 03E00008 */  jr    $ra
/* ACD790 800565F0 00000000 */   nop   
# SPLIT
/* ACD794 800565F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* ACD798 800565F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* ACD79C 800565FC 0C011CE5 */  jal   func_80047394
/* ACD7A0 80056600 00000000 */   nop   
/* ACD7A4 80056604 8FBF0014 */  lw    $ra, 0x14($sp)
/* ACD7A8 80056608 27BD0018 */  addiu $sp, $sp, 0x18
/* ACD7AC 8005660C 03E00008 */  jr    $ra
/* ACD7B0 80056610 00000000 */   nop   
# SPLIT
/* ACD7B4 80056614 27BDFFE8 */  addiu $sp, $sp, -0x18
/* ACD7B8 80056618 AFBF0014 */  sw    $ra, 0x14($sp)
/* ACD7BC 8005661C 0C0146CF */  jal   func_80051B3C
/* ACD7C0 80056620 00000000 */   nop   
/* ACD7C4 80056624 8FBF0014 */  lw    $ra, 0x14($sp)
/* ACD7C8 80056628 27BD0018 */  addiu $sp, $sp, 0x18
/* ACD7CC 8005662C 03E00008 */  jr    $ra
/* ACD7D0 80056630 00000000 */   nop   
# SPLIT
/* ACD7D4 80056634 27BDFFE8 */  addiu $sp, $sp, -0x18
/* ACD7D8 80056638 AFBF0014 */  sw    $ra, 0x14($sp)
/* ACD7DC 8005663C 0C011CE5 */  jal   func_80047394
/* ACD7E0 80056640 00000000 */   nop   
/* ACD7E4 80056644 8FBF0014 */  lw    $ra, 0x14($sp)
/* ACD7E8 80056648 27BD0018 */  addiu $sp, $sp, 0x18
/* ACD7EC 8005664C 03E00008 */  jr    $ra
/* ACD7F0 80056650 00000000 */   nop   
# SPLIT
/* ACD7F4 80056654 27BDFFB0 */  addiu $sp, $sp, -0x50
/* ACD7F8 80056658 AFBF001C */  sw    $ra, 0x1c($sp)
/* ACD7FC 8005665C AFB10018 */  sw    $s1, 0x18($sp)
/* ACD800 80056660 AFB00014 */  sw    $s0, 0x14($sp)
/* ACD804 80056664 848E015E */  lh    $t6, 0x15e($a0)
/* ACD808 80056668 00808025 */  move  $s0, $a0
/* ACD80C 8005666C 240F3200 */  li    $t7, 12800
/* ACD810 80056670 15C0000B */  bnez  $t6, .L800566A0
/* ACD814 80056674 26110160 */   addiu $s1, $s0, 0x160
/* ACD818 80056678 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ACD81C 8005667C AC2FD3A0 */  sw    $t7, %lo(D_8011D3A0)($at)
/* ACD820 80056680 8498015E */  lh    $t8, 0x15e($a0)
/* ACD824 80056684 3C014220 */  li    $at, 0x42200000 # 0.000000
/* ACD828 80056688 44812000 */  mtc1  $at, $f4
/* ACD82C 8005668C 84880160 */  lh    $t0, 0x160($a0)
/* ACD830 80056690 27190001 */  addiu $t9, $t8, 1
/* ACD834 80056694 A499015E */  sh    $t9, 0x15e($a0)
/* ACD838 80056698 E48400FC */  swc1  $f4, 0xfc($a0)
/* ACD83C 8005669C A4880000 */  sh    $t0, ($a0)
.L800566A0:
/* ACD840 800566A0 86290000 */  lh    $t1, ($s1)
/* ACD844 800566A4 3C0142A0 */  li    $at, 0x42A00000 # 0.000000
/* ACD848 800566A8 44816000 */  mtc1  $at, $f12
/* ACD84C 800566AC 44894000 */  mtc1  $t1, $f8
/* ACD850 800566B0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ACD854 800566B4 44813000 */  mtc1  $at, $f6
/* ACD858 800566B8 468042A0 */  cvt.s.w $f10, $f8
/* ACD85C 800566BC 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ACD860 800566C0 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ACD864 800566C4 C60E00FC */  lwc1  $f14, 0xfc($s0)
/* ACD868 800566C8 460A3403 */  div.s $f16, $f6, $f10
/* ACD86C 800566CC 44068000 */  mfc1  $a2, $f16
/* ACD870 800566D0 0C010E27 */  jal   func_8004389C
/* ACD874 800566D4 00000000 */   nop   
/* ACD878 800566D8 E60000FC */  swc1  $f0, 0xfc($s0)
/* ACD87C 800566DC 86230000 */  lh    $v1, ($s1)
/* ACD880 800566E0 860A0000 */  lh    $t2, ($s0)
/* ACD884 800566E4 240DFE0C */  li    $t5, -500
/* ACD888 800566E8 27A4003C */  addiu $a0, $sp, 0x3c
/* ACD88C 800566EC 01435823 */  subu  $t3, $t2, $v1
/* ACD890 800566F0 2961000F */  slti  $at, $t3, 0xf
/* ACD894 800566F4 10200004 */  beqz  $at, .L80056708
/* ACD898 800566F8 246CFFFF */   addiu $t4, $v1, -1
/* ACD89C 800566FC A62C0000 */  sh    $t4, ($s1)
/* ACD8A0 80056700 10000038 */  b     .L800567E4
/* ACD8A4 80056704 00001025 */   move  $v0, $zero
.L80056708:
/* ACD8A8 80056708 A60D015A */  sh    $t5, 0x15a($s0)
/* ACD8AC 8005670C 0C00BBC5 */  jal   func_8002EF14
/* ACD8B0 80056710 8E0500A8 */   lw    $a1, 0xa8($s0)
/* ACD8B4 80056714 27AE003C */  addiu $t6, $sp, 0x3c
/* ACD8B8 80056718 8DD80000 */  lw    $t8, ($t6)
/* ACD8BC 8005671C 3C014316 */  li    $at, 0x43160000 # 0.000000
/* ACD8C0 80056720 44812000 */  mtc1  $at, $f4
/* ACD8C4 80056724 AE180050 */  sw    $t8, 0x50($s0)
/* ACD8C8 80056728 8DCF0004 */  lw    $t7, 4($t6)
/* ACD8CC 8005672C AE0F0054 */  sw    $t7, 0x54($s0)
/* ACD8D0 80056730 C6120054 */  lwc1  $f18, 0x54($s0)
/* ACD8D4 80056734 8DD80008 */  lw    $t8, 8($t6)
/* ACD8D8 80056738 46049201 */  sub.s $f8, $f18, $f4
/* ACD8DC 8005673C AE180058 */  sw    $t8, 0x58($s0)
/* ACD8E0 80056740 E6080054 */  swc1  $f8, 0x54($s0)
/* ACD8E4 80056744 87A2004A */  lh    $v0, 0x4a($sp)
/* ACD8E8 80056748 24428001 */  addiu $v0, $v0, -0x7fff
/* ACD8EC 8005674C 00021400 */  sll   $v0, $v0, 0x10
/* ACD8F0 80056750 00021403 */  sra   $v0, $v0, 0x10
/* ACD8F4 80056754 244203E8 */  addiu $v0, $v0, 0x3e8
/* ACD8F8 80056758 00022400 */  sll   $a0, $v0, 0x10
/* ACD8FC 8005675C A7A2003A */  sh    $v0, 0x3a($sp)
/* ACD900 80056760 0C01DE1C */  jal   Math_Sins
/* ACD904 80056764 00042403 */   sra   $a0, $a0, 0x10
/* ACD908 80056768 3C014443 */  li    $at, 0x44430000 # 0.000000
/* ACD90C 8005676C 44813000 */  mtc1  $at, $f6
/* ACD910 80056770 C6100050 */  lwc1  $f16, 0x50($s0)
/* ACD914 80056774 C6120054 */  lwc1  $f18, 0x54($s0)
/* ACD918 80056778 46060282 */  mul.s $f10, $f0, $f6
/* ACD91C 8005677C E6120078 */  swc1  $f18, 0x78($s0)
/* ACD920 80056780 46105080 */  add.s $f2, $f10, $f16
/* ACD924 80056784 E6020074 */  swc1  $f2, 0x74($s0)
/* ACD928 80056788 E602005C */  swc1  $f2, 0x5c($s0)
/* ACD92C 8005678C 0C01DE0D */  jal   Math_Coss
/* ACD930 80056790 87A4003A */   lh    $a0, 0x3a($sp)
/* ACD934 80056794 3C014443 */  li    $at, 0x44430000 # 0.000000
/* ACD938 80056798 44812000 */  mtc1  $at, $f4
/* ACD93C 8005679C C6060058 */  lwc1  $f6, 0x58($s0)
/* ACD940 800567A0 02002025 */  move  $a0, $s0
/* ACD944 800567A4 46040202 */  mul.s $f8, $f0, $f4
/* ACD948 800567A8 2605005C */  addiu $a1, $s0, 0x5c
/* ACD94C 800567AC 46064080 */  add.s $f2, $f8, $f6
/* ACD950 800567B0 E602007C */  swc1  $f2, 0x7c($s0)
/* ACD954 800567B4 E6020064 */  swc1  $f2, 0x64($s0)
/* ACD958 800567B8 C7AA0040 */  lwc1  $f10, 0x40($sp)
/* ACD95C 800567BC 0C011144 */  jal   func_80044510
/* ACD960 800567C0 E60A0060 */   swc1  $f10, 0x60($s0)
/* ACD964 800567C4 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* ACD968 800567C8 44818000 */  mtc1  $at, $f16
/* ACD96C 800567CC 24020001 */  li    $v0, 1
/* ACD970 800567D0 46100480 */  add.s $f18, $f0, $f16
/* ACD974 800567D4 E6120060 */  swc1  $f18, 0x60($s0)
/* ACD978 800567D8 86390000 */  lh    $t9, ($s1)
/* ACD97C 800567DC 2728FFFF */  addiu $t0, $t9, -1
/* ACD980 800567E0 A6280000 */  sh    $t0, ($s1)
.L800567E4:
/* ACD984 800567E4 8FBF001C */  lw    $ra, 0x1c($sp)
/* ACD988 800567E8 8FB00014 */  lw    $s0, 0x14($sp)
/* ACD98C 800567EC 8FB10018 */  lw    $s1, 0x18($sp)
/* ACD990 800567F0 03E00008 */  jr    $ra
/* ACD994 800567F4 27BD0050 */   addiu $sp, $sp, 0x50
# SPLIT
/* ACD998 800567F8 27BDFF38 */  addiu $sp, $sp, -0xc8
/* ACD99C 800567FC AFB00018 */  sw    $s0, 0x18($sp)
/* ACD9A0 80056800 00808025 */  move  $s0, $a0
/* ACD9A4 80056804 AFBF001C */  sw    $ra, 0x1c($sp)
/* ACD9A8 80056808 0C00B721 */  jal   func_8002DC84
/* ACD9AC 8005680C 8C840090 */   lw    $a0, 0x90($a0)
/* ACD9B0 80056810 8603015E */  lh    $v1, 0x15e($s0)
/* ACD9B4 80056814 10600008 */  beqz  $v1, .L80056838
/* ACD9B8 80056818 2401000A */   li    $at, 10
/* ACD9BC 8005681C 10610006 */  beq   $v1, $at, .L80056838
/* ACD9C0 80056820 24010014 */   li    $at, 20
/* ACD9C4 80056824 10610004 */  beq   $v1, $at, .L80056838
/* ACD9C8 80056828 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* ACD9CC 8005682C 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* ACD9D0 80056830 85C30314 */  lh    $v1, 0x314($t6)
/* ACD9D4 80056834 10600050 */  beqz  $v1, .L80056978
.L80056838:
/* ACD9D8 80056838 3C0B8016 */   lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* ACD9DC 8005683C 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* ACD9E0 80056840 3C018014 */  lui   $at, %hi(D_8013A390)
/* ACD9E4 80056844 C428A390 */  lwc1  $f8, %lo(D_8013A390)($at)
/* ACD9E8 80056848 856C01F0 */  lh    $t4, 0x1f0($t3)
/* ACD9EC 8005684C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ACD9F0 80056850 44815000 */  mtc1  $at, $f10
/* ACD9F4 80056854 448C2000 */  mtc1  $t4, $f4
/* ACD9F8 80056858 3C014288 */  li    $at, 0x42880000 # 0.000000
/* ACD9FC 8005685C 44819000 */  mtc1  $at, $f18
/* ACDA00 80056860 468021A0 */  cvt.s.w $f6, $f4
/* ACDA04 80056864 860F0142 */  lh    $t7, 0x142($s0)
/* ACDA08 80056868 3C198012 */  lui   $t9, %hi(D_8011D068)
/* ACDA0C 8005686C 86080144 */  lh    $t0, 0x144($s0)
/* ACDA10 80056870 000FC0C0 */  sll   $t8, $t7, 3
/* ACDA14 80056874 46009103 */  div.s $f4, $f18, $f0
/* ACDA18 80056878 0338C821 */  addu  $t9, $t9, $t8
/* ACDA1C 8005687C 8F39D068 */  lw    $t9, %lo(D_8011D068)($t9)
/* ACDA20 80056880 000848C0 */  sll   $t1, $t0, 3
/* ACDA24 80056884 46083082 */  mul.s $f2, $f6, $f8
/* ACDA28 80056888 03295021 */  addu  $t2, $t9, $t1
/* ACDA2C 8005688C 8D420004 */  lw    $v0, 4($t2)
/* ACDA30 80056890 3C018014 */  lui   $at, %hi(D_8013A394)
/* ACDA34 80056894 C432A394 */  lwc1  $f18, %lo(D_8013A394)($at)
/* ACDA38 80056898 844D0000 */  lh    $t5, ($v0)
/* ACDA3C 8005689C 3C018014 */  lui   $at, %hi(D_8013A398)
/* ACDA40 800568A0 2442001C */  addiu $v0, $v0, 0x1c
/* ACDA44 800568A4 448D4000 */  mtc1  $t5, $f8
/* ACDA48 800568A8 3C0D8016 */  lui   $t5, %hi(gGameInfo)
/* ACDA4C 800568AC 46025400 */  add.s $f16, $f10, $f2
/* ACDA50 800568B0 46041182 */  mul.s $f6, $f2, $f4
/* ACDA54 800568B4 468042A0 */  cvt.s.w $f10, $f8
/* ACDA58 800568B8 46068301 */  sub.s $f12, $f16, $f6
/* ACDA5C 800568BC 46125102 */  mul.s $f4, $f10, $f18
/* ACDA60 800568C0 00000000 */  nop   
/* ACDA64 800568C4 46002402 */  mul.s $f16, $f4, $f0
/* ACDA68 800568C8 00000000 */  nop   
/* ACDA6C 800568CC 460C8182 */  mul.s $f6, $f16, $f12
/* ACDA70 800568D0 E6060000 */  swc1  $f6, ($s0)
/* ACDA74 800568D4 844EFFE8 */  lh    $t6, -0x18($v0)
/* ACDA78 800568D8 448E4000 */  mtc1  $t6, $f8
/* ACDA7C 800568DC 00000000 */  nop   
/* ACDA80 800568E0 468042A0 */  cvt.s.w $f10, $f8
/* ACDA84 800568E4 E60A0004 */  swc1  $f10, 4($s0)
/* ACDA88 800568E8 844FFFEC */  lh    $t7, -0x14($v0)
/* ACDA8C 800568EC 448F9000 */  mtc1  $t7, $f18
/* ACDA90 800568F0 00000000 */  nop   
/* ACDA94 800568F4 46809120 */  cvt.s.w $f4, $f18
/* ACDA98 800568F8 E6040008 */  swc1  $f4, 8($s0)
/* ACDA9C 800568FC 8458FFF0 */  lh    $t8, -0x10($v0)
/* ACDAA0 80056900 A6180014 */  sh    $t8, 0x14($s0)
/* ACDAA4 80056904 8448FFF4 */  lh    $t0, -0xc($v0)
/* ACDAA8 80056908 C428A398 */  lwc1  $f8, %lo(D_8013A398)($at)
/* ACDAAC 8005690C 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ACDAB0 80056910 44888000 */  mtc1  $t0, $f16
/* ACDAB4 80056914 44819000 */  mtc1  $at, $f18
/* ACDAB8 80056918 3C018014 */  lui   $at, %hi(D_8013A39C)
/* ACDABC 8005691C 468081A0 */  cvt.s.w $f6, $f16
/* ACDAC0 80056920 46083282 */  mul.s $f10, $f6, $f8
/* ACDAC4 80056924 46125100 */  add.s $f4, $f10, $f18
/* ACDAC8 80056928 4600240D */  trunc.w.s $f16, $f4
/* ACDACC 8005692C 44098000 */  mfc1  $t1, $f16
/* ACDAD0 80056930 00000000 */  nop   
/* ACDAD4 80056934 A6090016 */  sh    $t1, 0x16($s0)
/* ACDAD8 80056938 844AFFF8 */  lh    $t2, -8($v0)
/* ACDADC 8005693C 448A3000 */  mtc1  $t2, $f6
/* ACDAE0 80056940 00000000 */  nop   
/* ACDAE4 80056944 46803220 */  cvt.s.w $f8, $f6
/* ACDAE8 80056948 E608000C */  swc1  $f8, 0xc($s0)
/* ACDAEC 8005694C 844BFFFC */  lh    $t3, -4($v0)
/* ACDAF0 80056950 C424A39C */  lwc1  $f4, %lo(D_8013A39C)($at)
/* ACDAF4 80056954 448B5000 */  mtc1  $t3, $f10
/* ACDAF8 80056958 00000000 */  nop   
/* ACDAFC 8005695C 468054A0 */  cvt.s.w $f18, $f10
/* ACDB00 80056960 46049402 */  mul.s $f16, $f18, $f4
/* ACDB04 80056964 E6100010 */  swc1  $f16, 0x10($s0)
/* ACDB08 80056968 844C0000 */  lh    $t4, ($v0)
/* ACDB0C 8005696C A60C0018 */  sh    $t4, 0x18($s0)
/* ACDB10 80056970 8DADFA90 */  lw    $t5, -0x570($t5)
/* ACDB14 80056974 85A30314 */  lh    $v1, 0x314($t5)
.L80056978:
/* ACDB18 80056978 50600004 */  beql  $v1, $zero, .L8005698C
/* ACDB1C 8005697C 26050050 */   addiu $a1, $s0, 0x50
/* ACDB20 80056980 0C011495 */  jal   func_80045254
/* ACDB24 80056984 02002025 */   move  $a0, $s0
/* ACDB28 80056988 26050050 */  addiu $a1, $s0, 0x50
.L8005698C:
/* ACDB2C 8005698C 2606005C */  addiu $a2, $s0, 0x5c
/* ACDB30 80056990 AFA60038 */  sw    $a2, 0x38($sp)
/* ACDB34 80056994 AFA50034 */  sw    $a1, 0x34($sp)
/* ACDB38 80056998 0C01F124 */  jal   func_8007C490
/* ACDB3C 8005699C 27A40064 */   addiu $a0, $sp, 0x64
/* ACDB40 800569A0 26060074 */  addiu $a2, $s0, 0x74
/* ACDB44 800569A4 AFA60030 */  sw    $a2, 0x30($sp)
/* ACDB48 800569A8 27A4005C */  addiu $a0, $sp, 0x5c
/* ACDB4C 800569AC 0C01F124 */  jal   func_8007C490
/* ACDB50 800569B0 8FA50034 */   lw    $a1, 0x34($sp)
/* ACDB54 800569B4 27A400A8 */  addiu $a0, $sp, 0xa8
/* ACDB58 800569B8 0C00BBC5 */  jal   func_8002EF14
/* ACDB5C 800569BC 8E0500A8 */   lw    $a1, 0xa8($s0)
/* ACDB60 800569C0 860E0018 */  lh    $t6, 0x18($s0)
/* ACDB64 800569C4 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ACDB68 800569C8 2606001C */  addiu $a2, $s0, 0x1c
/* ACDB6C 800569CC AC2ED3A0 */  sw    $t6, %lo(D_8011D3A0)($at)
/* ACDB70 800569D0 8603015E */  lh    $v1, 0x15e($s0)
/* ACDB74 800569D4 54600006 */  bnezl $v1, .L800569F0
/* ACDB78 800569D8 84C20000 */   lh    $v0, ($a2)
/* ACDB7C 800569DC 86180014 */  lh    $t8, 0x14($s0)
/* ACDB80 800569E0 246F0001 */  addiu $t7, $v1, 1
/* ACDB84 800569E4 A60F015E */  sh    $t7, 0x15e($s0)
/* ACDB88 800569E8 A618001C */  sh    $t8, 0x1c($s0)
/* ACDB8C 800569EC 84C20000 */  lh    $v0, ($a2)
.L800569F0:
/* ACDB90 800569F0 18400003 */  blez  $v0, .L80056A00
/* ACDB94 800569F4 2448FFFF */   addiu $t0, $v0, -1
/* ACDB98 800569F8 10000062 */  b     .L80056B84
/* ACDB9C 800569FC A4C80000 */   sh    $t0, ($a2)
.L80056A00:
/* ACDBA0 80056A00 54400061 */  bnezl $v0, .L80056B88
/* ACDBA4 80056A04 02002025 */   move  $a0, $s0
/* ACDBA8 80056A08 8E0300A8 */  lw    $v1, 0xa8($s0)
/* ACDBAC 80056A0C 50600007 */  beql  $v1, $zero, .L80056A2C
/* ACDBB0 80056A10 AE0000A8 */   sw    $zero, 0xa8($s0)
/* ACDBB4 80056A14 8C790130 */  lw    $t9, 0x130($v1)
/* ACDBB8 80056A18 2449FFFF */  addiu $t1, $v0, -1
/* ACDBBC 80056A1C 27A400A8 */  addiu $a0, $sp, 0xa8
/* ACDBC0 80056A20 17200004 */  bnez  $t9, .L80056A34
/* ACDBC4 80056A24 26050094 */   addiu $a1, $s0, 0x94
/* ACDBC8 80056A28 AE0000A8 */  sw    $zero, 0xa8($s0)
.L80056A2C:
/* ACDBCC 80056A2C 10000077 */  b     .L80056C0C
/* ACDBD0 80056A30 24020001 */   li    $v0, 1
.L80056A34:
/* ACDBD4 80056A34 A4C90000 */  sh    $t1, ($a2)
/* ACDBD8 80056A38 0C01EFE4 */  jal   func_8007BF90
/* ACDBDC 80056A3C AFA5002C */   sw    $a1, 0x2c($sp)
/* ACDBE0 80056A40 C6060008 */  lwc1  $f6, 8($s0)
/* ACDBE4 80056A44 8FA2002C */  lw    $v0, 0x2c($sp)
/* ACDBE8 80056A48 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* ACDBEC 80056A4C 4600303C */  c.lt.s $f6, $f0
/* ACDBF0 80056A50 27A4007C */  addiu $a0, $sp, 0x7c
/* ACDBF4 80056A54 4502004C */  bc1fl .L80056B88
/* ACDBF8 80056A58 02002025 */   move  $a0, $s0
/* ACDBFC 80056A5C 844A000E */  lh    $t2, 0xe($v0)
/* ACDC00 80056A60 44814000 */  mtc1  $at, $f8
/* ACDC04 80056A64 27A500A8 */  addiu $a1, $sp, 0xa8
/* ACDC08 80056A68 A7AA0072 */  sh    $t2, 0x72($sp)
/* ACDC0C 80056A6C 844B000C */  lh    $t3, 0xc($v0)
/* ACDC10 80056A70 27A6006C */  addiu $a2, $sp, 0x6c
/* ACDC14 80056A74 E7A8006C */  swc1  $f8, 0x6c($sp)
/* ACDC18 80056A78 000B6023 */  negu  $t4, $t3
/* ACDC1C 80056A7C 0C010F0A */  jal   func_80043C28
/* ACDC20 80056A80 A7AC0070 */   sh    $t4, 0x70($sp)
/* ACDC24 80056A84 02002025 */  move  $a0, $s0
/* ACDC28 80056A88 8FA50034 */  lw    $a1, 0x34($sp)
/* ACDC2C 80056A8C 0C010F46 */  jal   func_80043D18
/* ACDC30 80056A90 27A6007C */   addiu $a2, $sp, 0x7c
/* ACDC34 80056A94 27A4006C */  addiu $a0, $sp, 0x6c
/* ACDC38 80056A98 0C01F0FD */  jal   func_8007C3F4
/* ACDC3C 80056A9C 27A50088 */   addiu $a1, $sp, 0x88
/* ACDC40 80056AA0 8FAD002C */  lw    $t5, 0x2c($sp)
/* ACDC44 80056AA4 87AF0072 */  lh    $t7, 0x72($sp)
/* ACDC48 80056AA8 85AE000E */  lh    $t6, 0xe($t5)
/* ACDC4C 80056AAC 01CFC023 */  subu  $t8, $t6, $t7
/* ACDC50 80056AB0 A7B800A4 */  sh    $t8, 0xa4($sp)
/* ACDC54 80056AB4 C60A0004 */  lwc1  $f10, 4($s0)
/* ACDC58 80056AB8 0C03F66B */  jal   Math_Rand_ZeroOne
/* ACDC5C 80056ABC E7AA0074 */   swc1  $f10, 0x74($sp)
/* ACDC60 80056AC0 87A800A4 */  lh    $t0, 0xa4($sp)
/* ACDC64 80056AC4 8FAC002C */  lw    $t4, 0x2c($sp)
/* ACDC68 80056AC8 3C018014 */  lui   $at, %hi(D_8013A3A4)
/* ACDC6C 80056ACC 0501000E */  bgez  $t0, .L80056B08
/* ACDC70 80056AD0 00000000 */   nop   
/* ACDC74 80056AD4 3C018014 */  lui   $at, %hi(D_8013A3A0)
/* ACDC78 80056AD8 C432A3A0 */  lwc1  $f18, %lo(D_8013A3A0)($at)
/* ACDC7C 80056ADC 46120102 */  mul.s $f4, $f0, $f18
/* ACDC80 80056AE0 4600240D */  trunc.w.s $f16, $f4
/* ACDC84 80056AE4 44028000 */  mfc1  $v0, $f16
/* ACDC88 80056AE8 00000000 */  nop   
/* ACDC8C 80056AEC 00021400 */  sll   $v0, $v0, 0x10
/* ACDC90 80056AF0 00021403 */  sra   $v0, $v0, 0x10
/* ACDC94 80056AF4 24421553 */  addiu $v0, $v0, 0x1553
/* ACDC98 80056AF8 00021400 */  sll   $v0, $v0, 0x10
/* ACDC9C 80056AFC 00021403 */  sra   $v0, $v0, 0x10
/* ACDCA0 80056B00 1000000B */  b     .L80056B30
/* ACDCA4 80056B04 00021023 */   negu  $v0, $v0
.L80056B08:
/* ACDCA8 80056B08 C426A3A4 */  lwc1  $f6, %lo(D_8013A3A4)($at)
/* ACDCAC 80056B0C 46060202 */  mul.s $f8, $f0, $f6
/* ACDCB0 80056B10 4600428D */  trunc.w.s $f10, $f8
/* ACDCB4 80056B14 44025000 */  mfc1  $v0, $f10
/* ACDCB8 80056B18 00000000 */  nop   
/* ACDCBC 80056B1C 00021400 */  sll   $v0, $v0, 0x10
/* ACDCC0 80056B20 00021403 */  sra   $v0, $v0, 0x10
/* ACDCC4 80056B24 24421553 */  addiu $v0, $v0, 0x1553
/* ACDCC8 80056B28 00021400 */  sll   $v0, $v0, 0x10
/* ACDCCC 80056B2C 00021403 */  sra   $v0, $v0, 0x10
.L80056B30:
/* ACDCD0 80056B30 858D000E */  lh    $t5, 0xe($t4)
/* ACDCD4 80056B34 8FA40030 */  lw    $a0, 0x30($sp)
/* ACDCD8 80056B38 27A500A8 */  addiu $a1, $sp, 0xa8
/* ACDCDC 80056B3C 25B88001 */  addiu $t8, $t5, -0x7fff
/* ACDCE0 80056B40 00584021 */  addu  $t0, $v0, $t8
/* ACDCE4 80056B44 A7A8007A */  sh    $t0, 0x7a($sp)
/* ACDCE8 80056B48 86190016 */  lh    $t9, 0x16($s0)
/* ACDCEC 80056B4C 27A60074 */  addiu $a2, $sp, 0x74
/* ACDCF0 80056B50 0C010F0A */  jal   func_80043C28
/* ACDCF4 80056B54 A7B90078 */   sh    $t9, 0x78($sp)
/* ACDCF8 80056B58 8FA90030 */  lw    $t1, 0x30($sp)
/* ACDCFC 80056B5C 8FA60038 */  lw    $a2, 0x38($sp)
/* ACDD00 80056B60 02002025 */  move  $a0, $s0
/* ACDD04 80056B64 8D2C0000 */  lw    $t4, ($t1)
/* ACDD08 80056B68 27A500A8 */  addiu $a1, $sp, 0xa8
/* ACDD0C 80056B6C ACCC0000 */  sw    $t4, ($a2)
/* ACDD10 80056B70 8D2A0004 */  lw    $t2, 4($t1)
/* ACDD14 80056B74 ACCA0004 */  sw    $t2, 4($a2)
/* ACDD18 80056B78 8D2C0008 */  lw    $t4, 8($t1)
/* ACDD1C 80056B7C 0C010FCD */  jal   func_80043F34
/* ACDD20 80056B80 ACCC0008 */   sw    $t4, 8($a2)
.L80056B84:
/* ACDD24 80056B84 02002025 */  move  $a0, $s0
.L80056B88:
/* ACDD28 80056B88 27A5005C */  addiu $a1, $sp, 0x5c
/* ACDD2C 80056B8C 8E060000 */  lw    $a2, ($s0)
/* ACDD30 80056B90 0C0115EA */  jal   func_800457A8
/* ACDD34 80056B94 00003825 */   move  $a3, $zero
/* ACDD38 80056B98 3C0D8016 */  lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* ACDD3C 80056B9C 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* ACDD40 80056BA0 3C018014 */  lui   $at, %hi(D_8013A3A8)
/* ACDD44 80056BA4 C430A3A8 */  lwc1  $f16, %lo(D_8013A3A8)($at)
/* ACDD48 80056BA8 85AE019C */  lh    $t6, 0x19c($t5)
/* ACDD4C 80056BAC C6080100 */  lwc1  $f8, 0x100($s0)
/* ACDD50 80056BB0 C60C000C */  lwc1  $f12, 0xc($s0)
/* ACDD54 80056BB4 448E9000 */  mtc1  $t6, $f18
/* ACDD58 80056BB8 C60E00FC */  lwc1  $f14, 0xfc($s0)
/* ACDD5C 80056BBC 3C073F80 */  lui   $a3, 0x3f80
/* ACDD60 80056BC0 46809120 */  cvt.s.w $f4, $f18
/* ACDD64 80056BC4 46102182 */  mul.s $f6, $f4, $f16
/* ACDD68 80056BC8 00000000 */  nop   
/* ACDD6C 80056BCC 46083282 */  mul.s $f10, $f6, $f8
/* ACDD70 80056BD0 44065000 */  mfc1  $a2, $f10
/* ACDD74 80056BD4 0C010E27 */  jal   func_8004389C
/* ACDD78 80056BD8 00000000 */   nop   
/* ACDD7C 80056BDC E60000FC */  swc1  $f0, 0xfc($s0)
/* ACDD80 80056BE0 00002025 */  move  $a0, $zero
/* ACDD84 80056BE4 8605015A */  lh    $a1, 0x15a($s0)
/* ACDD88 80056BE8 3C063F00 */  lui   $a2, 0x3f00
/* ACDD8C 80056BEC 0C010E47 */  jal   func_8004391C
/* ACDD90 80056BF0 2407000A */   li    $a3, 10
/* ACDD94 80056BF4 A602015A */  sh    $v0, 0x15a($s0)
/* ACDD98 80056BF8 02002025 */  move  $a0, $s0
/* ACDD9C 80056BFC 0C011429 */  jal   func_800450A4
/* ACDDA0 80056C00 8E050010 */   lw    $a1, 0x10($s0)
/* ACDDA4 80056C04 E6000100 */  swc1  $f0, 0x100($s0)
/* ACDDA8 80056C08 24020001 */  li    $v0, 1
.L80056C0C:
/* ACDDAC 80056C0C 8FBF001C */  lw    $ra, 0x1c($sp)
/* ACDDB0 80056C10 8FB00018 */  lw    $s0, 0x18($sp)
/* ACDDB4 80056C14 27BD00C8 */  addiu $sp, $sp, 0xc8
/* ACDDB8 80056C18 03E00008 */  jr    $ra
/* ACDDBC 80056C1C 00000000 */   nop   
# SPLIT
/* ACDDC0 80056C20 27BDFF90 */  addiu $sp, $sp, -0x70
/* ACDDC4 80056C24 AFB00020 */  sw    $s0, 0x20($sp)
/* ACDDC8 80056C28 00808025 */  move  $s0, $a0
/* ACDDCC 80056C2C AFBF002C */  sw    $ra, 0x2c($sp)
/* ACDDD0 80056C30 AFB20028 */  sw    $s2, 0x28($sp)
/* ACDDD4 80056C34 AFB10024 */  sw    $s1, 0x24($sp)
/* ACDDD8 80056C38 0C00B721 */  jal   func_8002DC84
/* ACDDDC 80056C3C 8C840090 */   lw    $a0, 0x90($a0)
/* ACDDE0 80056C40 860E015E */  lh    $t6, 0x15e($s0)
/* ACDDE4 80056C44 46000086 */  mov.s $f2, $f0
/* ACDDE8 80056C48 27A4005C */  addiu $a0, $sp, 0x5c
/* ACDDEC 80056C4C 15C00023 */  bnez  $t6, .L80056CDC
/* ACDDF0 80056C50 26120050 */   addiu $s2, $s0, 0x50
/* ACDDF4 80056C54 8E0F008C */  lw    $t7, 0x8c($s0)
/* ACDDF8 80056C58 24010006 */  li    $at, 6
/* ACDDFC 80056C5C 24190003 */  li    $t9, 3
/* ACDE00 80056C60 85F800A4 */  lh    $t8, 0xa4($t7)
/* ACDE04 80056C64 26110094 */  addiu $s1, $s0, 0x94
/* ACDE08 80056C68 17010003 */  bne   $t8, $at, .L80056C78
/* ACDE0C 80056C6C 00000000 */   nop   
/* ACDE10 80056C70 10000016 */  b     .L80056CCC
/* ACDE14 80056C74 A6190000 */   sh    $t9, ($s0)
.L80056C78:
/* ACDE18 80056C78 3C018014 */  lui   $at, %hi(D_8013A3AC)
/* ACDE1C 80056C7C C426A3AC */  lwc1  $f6, %lo(D_8013A3AC)($at)
/* ACDE20 80056C80 C6240000 */  lwc1  $f4, ($s1)
/* ACDE24 80056C84 24080002 */  li    $t0, 2
/* ACDE28 80056C88 3C018014 */  lui   $at, %hi(D_8013A3B0)
/* ACDE2C 80056C8C 4606203C */  c.lt.s $f4, $f6
/* ACDE30 80056C90 00000000 */  nop   
/* ACDE34 80056C94 45020004 */  bc1fl .L80056CA8
/* ACDE38 80056C98 C6280004 */   lwc1  $f8, 4($s1)
/* ACDE3C 80056C9C 1000000B */  b     .L80056CCC
/* ACDE40 80056CA0 A6080000 */   sh    $t0, ($s0)
/* ACDE44 80056CA4 C6280004 */  lwc1  $f8, 4($s1)
.L80056CA8:
/* ACDE48 80056CA8 C42AA3B0 */  lwc1  $f10, %lo(D_8013A3B0)($at)
/* ACDE4C 80056CAC 24090001 */  li    $t1, 1
/* ACDE50 80056CB0 460A403C */  c.lt.s $f8, $f10
/* ACDE54 80056CB4 00000000 */  nop   
/* ACDE58 80056CB8 45020004 */  bc1fl .L80056CCC
/* ACDE5C 80056CBC A6090000 */   sh    $t1, ($s0)
/* ACDE60 80056CC0 10000002 */  b     .L80056CCC
/* ACDE64 80056CC4 A6000000 */   sh    $zero, ($s0)
/* ACDE68 80056CC8 A6090000 */  sh    $t1, ($s0)
.L80056CCC:
/* ACDE6C 80056CCC 860A015E */  lh    $t2, 0x15e($s0)
/* ACDE70 80056CD0 A600015A */  sh    $zero, 0x15a($s0)
/* ACDE74 80056CD4 254B0001 */  addiu $t3, $t2, 1
/* ACDE78 80056CD8 A60B015E */  sh    $t3, 0x15e($s0)
.L80056CDC:
/* ACDE7C 80056CDC 860C0000 */  lh    $t4, ($s0)
/* ACDE80 80056CE0 3C018012 */  lui   $at, %hi(D_8011DACC)
/* ACDE84 80056CE4 C6100054 */  lwc1  $f16, 0x54($s0)
/* ACDE88 80056CE8 000C6880 */  sll   $t5, $t4, 2
/* ACDE8C 80056CEC 002D0821 */  addu  $at, $at, $t5
/* ACDE90 80056CF0 C432DACC */  lwc1  $f18, %lo(D_8011DACC)($at)
/* ACDE94 80056CF4 26110094 */  addiu $s1, $s0, 0x94
/* ACDE98 80056CF8 4612803C */  c.lt.s $f16, $f18
/* ACDE9C 80056CFC 00000000 */  nop   
/* ACDEA0 80056D00 45020050 */  bc1fl .L80056E44
/* ACDEA4 80056D04 8E2B0000 */   lw    $t3, ($s1)
/* ACDEA8 80056D08 8E2F0000 */  lw    $t7, ($s1)
/* ACDEAC 80056D0C 3C018014 */  lui   $at, %hi(D_8013A3B4)
/* ACDEB0 80056D10 C420A3B4 */  lwc1  $f0, %lo(D_8013A3B4)($at)
/* ACDEB4 80056D14 AC8F0000 */  sw    $t7, ($a0)
/* ACDEB8 80056D18 8E2E0004 */  lw    $t6, 4($s1)
/* ACDEBC 80056D1C 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* ACDEC0 80056D20 44813000 */  mtc1  $at, $f6
/* ACDEC4 80056D24 AC8E0004 */  sw    $t6, 4($a0)
/* ACDEC8 80056D28 8E2F0008 */  lw    $t7, 8($s1)
/* ACDECC 80056D2C 3C018014 */  lui   $at, %hi(D_8013A3B8)
/* ACDED0 80056D30 44060000 */  mfc1  $a2, $f0
/* ACDED4 80056D34 AC8F0008 */  sw    $t7, 8($a0)
/* ACDED8 80056D38 C7A40060 */  lwc1  $f4, 0x60($sp)
/* ACDEDC 80056D3C C42AA3B8 */  lwc1  $f10, %lo(D_8013A3B8)($at)
/* ACDEE0 80056D40 44070000 */  mfc1  $a3, $f0
/* ACDEE4 80056D44 46062201 */  sub.s $f8, $f4, $f6
/* ACDEE8 80056D48 02402825 */  move  $a1, $s2
/* ACDEEC 80056D4C E7AA0010 */  swc1  $f10, 0x10($sp)
/* ACDEF0 80056D50 0C010E8F */  jal   func_80043A3C
/* ACDEF4 80056D54 E7A80060 */   swc1  $f8, 0x60($sp)
/* ACDEF8 80056D58 86180000 */  lh    $t8, ($s0)
/* ACDEFC 80056D5C 3C088012 */  lui   $t0, %hi(D_8011DA6C) # $t0, 0x8012
/* ACDF00 80056D60 2508DA6C */  addiu $t0, %lo(D_8011DA6C) # addiu $t0, $t0, -0x2594
/* ACDF04 80056D64 0018C880 */  sll   $t9, $t8, 2
/* ACDF08 80056D68 0338C823 */  subu  $t9, $t9, $t8
/* ACDF0C 80056D6C 0019C880 */  sll   $t9, $t9, 2
/* ACDF10 80056D70 03284821 */  addu  $t1, $t9, $t0
/* ACDF14 80056D74 8D2B0000 */  lw    $t3, ($t1)
/* ACDF18 80056D78 27A40048 */  addiu $a0, $sp, 0x48
/* ACDF1C 80056D7C 2605005C */  addiu $a1, $s0, 0x5c
/* ACDF20 80056D80 AC8B0000 */  sw    $t3, ($a0)
/* ACDF24 80056D84 8D2A0004 */  lw    $t2, 4($t1)
/* ACDF28 80056D88 8C8D0000 */  lw    $t5, ($a0)
/* ACDF2C 80056D8C 3C018012 */  lui   $at, %hi(D_8011DADC)
/* ACDF30 80056D90 AC8A0004 */  sw    $t2, 4($a0)
/* ACDF34 80056D94 8D2B0008 */  lw    $t3, 8($t1)
/* ACDF38 80056D98 3C198012 */  lui   $t9, %hi(D_8011DAEC)
/* ACDF3C 80056D9C AC8B0008 */  sw    $t3, 8($a0)
/* ACDF40 80056DA0 AE0D0074 */  sw    $t5, 0x74($s0)
/* ACDF44 80056DA4 8C8C0004 */  lw    $t4, 4($a0)
/* ACDF48 80056DA8 AE0C0078 */  sw    $t4, 0x78($s0)
/* ACDF4C 80056DAC 8C8D0008 */  lw    $t5, 8($a0)
/* ACDF50 80056DB0 AE0D007C */  sw    $t5, 0x7c($s0)
/* ACDF54 80056DB4 8C8F0000 */  lw    $t7, ($a0)
/* ACDF58 80056DB8 ACAF0000 */  sw    $t7, ($a1)
/* ACDF5C 80056DBC 8C8E0004 */  lw    $t6, 4($a0)
/* ACDF60 80056DC0 ACAE0004 */  sw    $t6, 4($a1)
/* ACDF64 80056DC4 8C8F0008 */  lw    $t7, 8($a0)
/* ACDF68 80056DC8 ACAF0008 */  sw    $t7, 8($a1)
/* ACDF6C 80056DCC 86020000 */  lh    $v0, ($s0)
/* ACDF70 80056DD0 C6300004 */  lwc1  $f16, 4($s1)
/* ACDF74 80056DD4 00021880 */  sll   $v1, $v0, 2
/* ACDF78 80056DD8 00230821 */  addu  $at, $at, $v1
/* ACDF7C 80056DDC C422DADC */  lwc1  $f2, %lo(D_8011DADC)($at)
/* ACDF80 80056DE0 3C018012 */  lui   $at, %hi(D_8011DACC)
/* ACDF84 80056DE4 00230821 */  addu  $at, $at, $v1
/* ACDF88 80056DE8 C424DACC */  lwc1  $f4, %lo(D_8011DACC)($at)
/* ACDF8C 80056DEC 46028481 */  sub.s $f18, $f16, $f2
/* ACDF90 80056DF0 0002C040 */  sll   $t8, $v0, 1
/* ACDF94 80056DF4 0338C821 */  addu  $t9, $t9, $t8
/* ACDF98 80056DF8 46022181 */  sub.s $f6, $f4, $f2
/* ACDF9C 80056DFC 8739DAEC */  lh    $t9, %lo(D_8011DAEC)($t9)
/* ACDFA0 80056E00 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* ACDFA4 80056E04 46069003 */  div.s $f0, $f18, $f6
/* ACDFA8 80056E08 44994000 */  mtc1  $t9, $f8
/* ACDFAC 80056E0C 44819000 */  mtc1  $at, $f18
/* ACDFB0 80056E10 3C014270 */  li    $at, 0x42700000 # 0.000000
/* ACDFB4 80056E14 468042A0 */  cvt.s.w $f10, $f8
/* ACDFB8 80056E18 44814000 */  mtc1  $at, $f8
/* ACDFBC 80056E1C 46005402 */  mul.s $f16, $f10, $f0
/* ACDFC0 80056E20 4600810D */  trunc.w.s $f4, $f16
/* ACDFC4 80056E24 46009182 */  mul.s $f6, $f18, $f0
/* ACDFC8 80056E28 44092000 */  mfc1  $t1, $f4
/* ACDFCC 80056E2C 00000000 */  nop   
/* ACDFD0 80056E30 A609015A */  sh    $t1, 0x15a($s0)
/* ACDFD4 80056E34 46083280 */  add.s $f10, $f6, $f8
/* ACDFD8 80056E38 10000034 */  b     .L80056F0C
/* ACDFDC 80056E3C E60A00FC */   swc1  $f10, 0xfc($s0)
/* ACDFE0 80056E40 8E2B0000 */  lw    $t3, ($s1)
.L80056E44:
/* ACDFE4 80056E44 3C018014 */  lui   $at, %hi(D_8013A3BC)
/* ACDFE8 80056E48 C420A3BC */  lwc1  $f0, %lo(D_8013A3BC)($at)
/* ACDFEC 80056E4C 27A4005C */  addiu $a0, $sp, 0x5c
/* ACDFF0 80056E50 AC8B0000 */  sw    $t3, ($a0)
/* ACDFF4 80056E54 8E2A0004 */  lw    $t2, 4($s1)
/* ACDFF8 80056E58 3C018014 */  lui   $at, %hi(D_8013A3C0)
/* ACDFFC 80056E5C 26120050 */  addiu $s2, $s0, 0x50
/* ACE000 80056E60 AC8A0004 */  sw    $t2, 4($a0)
/* ACE004 80056E64 8E2B0008 */  lw    $t3, 8($s1)
/* ACE008 80056E68 44060000 */  mfc1  $a2, $f0
/* ACE00C 80056E6C 44070000 */  mfc1  $a3, $f0
/* ACE010 80056E70 AC8B0008 */  sw    $t3, 8($a0)
/* ACE014 80056E74 C7B00060 */  lwc1  $f16, 0x60($sp)
/* ACE018 80056E78 C432A3C0 */  lwc1  $f18, %lo(D_8013A3C0)($at)
/* ACE01C 80056E7C 02402825 */  move  $a1, $s2
/* ACE020 80056E80 46028100 */  add.s $f4, $f16, $f2
/* ACE024 80056E84 E7B20010 */  swc1  $f18, 0x10($sp)
/* ACE028 80056E88 0C010E8F */  jal   func_80043A3C
/* ACE02C 80056E8C E7A40060 */   swc1  $f4, 0x60($sp)
/* ACE030 80056E90 860C0000 */  lh    $t4, ($s0)
/* ACE034 80056E94 3C0E8012 */  lui   $t6, %hi(D_8011DA9C)
/* ACE038 80056E98 25CEDA9C */  addiu $t6, %lo(D_8011DA9C) # addiu $t6, $t6, -0x2564
/* ACE03C 80056E9C 000C6880 */  sll   $t5, $t4, 2
/* ACE040 80056EA0 01AC6823 */  subu  $t5, $t5, $t4
/* ACE044 80056EA4 000D6880 */  sll   $t5, $t5, 2
/* ACE048 80056EA8 A600015A */  sh    $zero, 0x15a($s0)
/* ACE04C 80056EAC 01AE7821 */  addu  $t7, $t5, $t6
/* ACE050 80056EB0 8DF90000 */  lw    $t9, ($t7)
/* ACE054 80056EB4 27A40048 */  addiu $a0, $sp, 0x48
/* ACE058 80056EB8 2605005C */  addiu $a1, $s0, 0x5c
/* ACE05C 80056EBC AC990000 */  sw    $t9, ($a0)
/* ACE060 80056EC0 8DF80004 */  lw    $t8, 4($t7)
/* ACE064 80056EC4 8C890000 */  lw    $t1, ($a0)
/* ACE068 80056EC8 3C01428C */  li    $at, 0x428C0000 # 0.000000
/* ACE06C 80056ECC AC980004 */  sw    $t8, 4($a0)
/* ACE070 80056ED0 8DF90008 */  lw    $t9, 8($t7)
/* ACE074 80056ED4 44813000 */  mtc1  $at, $f6
/* ACE078 80056ED8 AC990008 */  sw    $t9, 8($a0)
/* ACE07C 80056EDC AE090074 */  sw    $t1, 0x74($s0)
/* ACE080 80056EE0 8C880004 */  lw    $t0, 4($a0)
/* ACE084 80056EE4 AE080078 */  sw    $t0, 0x78($s0)
/* ACE088 80056EE8 8C890008 */  lw    $t1, 8($a0)
/* ACE08C 80056EEC AE09007C */  sw    $t1, 0x7c($s0)
/* ACE090 80056EF0 8C8B0000 */  lw    $t3, ($a0)
/* ACE094 80056EF4 ACAB0000 */  sw    $t3, ($a1)
/* ACE098 80056EF8 8C8A0004 */  lw    $t2, 4($a0)
/* ACE09C 80056EFC ACAA0004 */  sw    $t2, 4($a1)
/* ACE0A0 80056F00 8C8B0008 */  lw    $t3, 8($a0)
/* ACE0A4 80056F04 ACAB0008 */  sw    $t3, 8($a1)
/* ACE0A8 80056F08 E60600FC */  swc1  $f6, 0xfc($s0)
.L80056F0C:
/* ACE0AC 80056F0C 0C01EFE4 */  jal   func_8007BF90
/* ACE0B0 80056F10 02402025 */   move  $a0, $s2
/* ACE0B4 80056F14 44804000 */  mtc1  $zero, $f8
/* ACE0B8 80056F18 E60000DC */  swc1  $f0, 0xdc($s0)
/* ACE0BC 80056F1C C60A0050 */  lwc1  $f10, 0x50($s0)
/* ACE0C0 80056F20 E6080100 */  swc1  $f8, 0x100($s0)
/* ACE0C4 80056F24 C6300000 */  lwc1  $f16, ($s1)
/* ACE0C8 80056F28 C6120054 */  lwc1  $f18, 0x54($s0)
/* ACE0CC 80056F2C 24020001 */  li    $v0, 1
/* ACE0D0 80056F30 46105101 */  sub.s $f4, $f10, $f16
/* ACE0D4 80056F34 C60A0058 */  lwc1  $f10, 0x58($s0)
/* ACE0D8 80056F38 E60400E4 */  swc1  $f4, 0xe4($s0)
/* ACE0DC 80056F3C C6260004 */  lwc1  $f6, 4($s1)
/* ACE0E0 80056F40 46069201 */  sub.s $f8, $f18, $f6
/* ACE0E4 80056F44 E60800E8 */  swc1  $f8, 0xe8($s0)
/* ACE0E8 80056F48 C6300008 */  lwc1  $f16, 8($s1)
/* ACE0EC 80056F4C 46105101 */  sub.s $f4, $f10, $f16
/* ACE0F0 80056F50 E60400EC */  swc1  $f4, 0xec($s0)
/* ACE0F4 80056F54 8FBF002C */  lw    $ra, 0x2c($sp)
/* ACE0F8 80056F58 8FB20028 */  lw    $s2, 0x28($sp)
/* ACE0FC 80056F5C 8FB10024 */  lw    $s1, 0x24($sp)
/* ACE100 80056F60 8FB00020 */  lw    $s0, 0x20($sp)
/* ACE104 80056F64 03E00008 */  jr    $ra
/* ACE108 80056F68 27BD0070 */   addiu $sp, $sp, 0x70
# SPLIT
/* ACE10C 80056F6C 27BDFF40 */  addiu $sp, $sp, -0xc0
/* ACE110 80056F70 AFBF0024 */  sw    $ra, 0x24($sp)
/* ACE114 80056F74 AFB20020 */  sw    $s2, 0x20($sp)
/* ACE118 80056F78 AFB1001C */  sw    $s1, 0x1c($sp)
/* ACE11C 80056F7C AFB00018 */  sw    $s0, 0x18($sp)
/* ACE120 80056F80 8482015E */  lh    $v0, 0x15e($a0)
/* ACE124 80056F84 00808025 */  move  $s0, $a0
/* ACE128 80056F88 2401000A */  li    $at, 10
/* ACE12C 80056F8C 5040000A */  beql  $v0, $zero, .L80056FB8
/* ACE130 80056F90 860F0142 */   lh    $t7, 0x142($s0)
/* ACE134 80056F94 10410007 */  beq   $v0, $at, .L80056FB4
/* ACE138 80056F98 24010014 */   li    $at, 20
/* ACE13C 80056F9C 10410005 */  beq   $v0, $at, .L80056FB4
/* ACE140 80056FA0 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* ACE144 80056FA4 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* ACE148 80056FA8 85C20314 */  lh    $v0, 0x314($t6)
/* ACE14C 80056FAC 1040000F */  beqz  $v0, .L80056FEC
/* ACE150 80056FB0 00000000 */   nop   
.L80056FB4:
/* ACE154 80056FB4 860F0142 */  lh    $t7, 0x142($s0)
.L80056FB8:
/* ACE158 80056FB8 3C198012 */  lui   $t9, %hi(D_8011D068)
/* ACE15C 80056FBC 860B0144 */  lh    $t3, 0x144($s0)
/* ACE160 80056FC0 000FC0C0 */  sll   $t8, $t7, 3
/* ACE164 80056FC4 0338C821 */  addu  $t9, $t9, $t8
/* ACE168 80056FC8 8F39D068 */  lw    $t9, %lo(D_8011D068)($t9)
/* ACE16C 80056FCC 000B60C0 */  sll   $t4, $t3, 3
/* ACE170 80056FD0 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* ACE174 80056FD4 032C6821 */  addu  $t5, $t9, $t4
/* ACE178 80056FD8 8DA30004 */  lw    $v1, 4($t5)
/* ACE17C 80056FDC 846E0000 */  lh    $t6, ($v1)
/* ACE180 80056FE0 A60E0000 */  sh    $t6, ($s0)
/* ACE184 80056FE4 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* ACE188 80056FE8 85E20314 */  lh    $v0, 0x314($t7)
.L80056FEC:
/* ACE18C 80056FEC 50400004 */  beql  $v0, $zero, .L80057000
/* ACE190 80056FF0 2611005C */   addiu $s1, $s0, 0x5c
/* ACE194 80056FF4 0C011495 */  jal   func_80045254
/* ACE198 80056FF8 02002025 */   move  $a0, $s0
/* ACE19C 80056FFC 2611005C */  addiu $s1, $s0, 0x5c
.L80057000:
/* ACE1A0 80057000 26120050 */  addiu $s2, $s0, 0x50
/* ACE1A4 80057004 02403025 */  move  $a2, $s2
/* ACE1A8 80057008 02202825 */  move  $a1, $s1
/* ACE1AC 8005700C 0C01F124 */  jal   func_8007C490
/* ACE1B0 80057010 27A40074 */   addiu $a0, $sp, 0x74
/* ACE1B4 80057014 0C0111DB */  jal   func_8004476C
/* ACE1B8 80057018 02002025 */   move  $a0, $s0
/* ACE1BC 8005701C 27A400A0 */  addiu $a0, $sp, 0xa0
/* ACE1C0 80057020 00402825 */  move  $a1, $v0
/* ACE1C4 80057024 0C010EF1 */  jal   func_80043BC4
/* ACE1C8 80057028 AFA2006C */   sw    $v0, 0x6c($sp)
/* ACE1CC 8005702C 8FA3006C */  lw    $v1, 0x6c($sp)
/* ACE1D0 80057030 27B80064 */  addiu $t8, $sp, 0x64
/* ACE1D4 80057034 2401FFFF */  li    $at, -1
/* ACE1D8 80057038 88790006 */  lwl   $t9, 6($v1)
/* ACE1DC 8005703C 98790009 */  lwr   $t9, 9($v1)
/* ACE1E0 80057040 26040074 */  addiu $a0, $s0, 0x74
/* ACE1E4 80057044 3C098012 */  lui   $t1, %hi(D_8011D3A0) # $t1, 0x8012
/* ACE1E8 80057048 AF190000 */  sw    $t9, ($t8)
/* ACE1EC 8005704C 9479000A */  lhu   $t9, 0xa($v1)
/* ACE1F0 80057050 A7190004 */  sh    $t9, 4($t8)
/* ACE1F4 80057054 8468000C */  lh    $t0, 0xc($v1)
/* ACE1F8 80057058 55010003 */  bnel  $t0, $at, .L80057068
/* ACE1FC 8005705C 29010169 */   slti  $at, $t0, 0x169
/* ACE200 80057060 24081770 */  li    $t0, 6000
/* ACE204 80057064 29010169 */  slti  $at, $t0, 0x169
.L80057068:
/* ACE208 80057068 10200008 */  beqz  $at, .L8005708C
/* ACE20C 8005706C 01000821 */   addu  $at, $t0, $zero
/* ACE210 80057070 00084080 */  sll   $t0, $t0, 2
/* ACE214 80057074 01014023 */  subu  $t0, $t0, $at
/* ACE218 80057078 000840C0 */  sll   $t0, $t0, 3
/* ACE21C 8005707C 01014021 */  addu  $t0, $t0, $at
/* ACE220 80057080 00084080 */  sll   $t0, $t0, 2
/* ACE224 80057084 00084400 */  sll   $t0, $t0, 0x10
/* ACE228 80057088 00084403 */  sra   $t0, $t0, 0x10
.L8005708C:
/* ACE22C 8005708C 860C0000 */  lh    $t4, ($s0)
/* ACE230 80057090 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ACE234 80057094 C7A400A0 */  lwc1  $f4, 0xa0($sp)
/* ACE238 80057098 AC2CD3A0 */  sw    $t4, %lo(D_8011D3A0)($at)
/* ACE23C 8005709C C4860000 */  lwc1  $f6, ($a0)
/* ACE240 800570A0 C7A800A4 */  lwc1  $f8, 0xa4($sp)
/* ACE244 800570A4 46062032 */  c.eq.s $f4, $f6
/* ACE248 800570A8 00000000 */  nop   
/* ACE24C 800570AC 45020010 */  bc1fl .L800570F0
/* ACE250 800570B0 8E0F0090 */   lw    $t7, 0x90($s0)
/* ACE254 800570B4 C48A0004 */  lwc1  $f10, 4($a0)
/* ACE258 800570B8 C7A400A8 */  lwc1  $f4, 0xa8($sp)
/* ACE25C 800570BC 460A4032 */  c.eq.s $f8, $f10
/* ACE260 800570C0 00000000 */  nop   
/* ACE264 800570C4 4502000A */  bc1fl .L800570F0
/* ACE268 800570C8 8E0F0090 */   lw    $t7, 0x90($s0)
/* ACE26C 800570CC C4860008 */  lwc1  $f6, 8($a0)
/* ACE270 800570D0 46062032 */  c.eq.s $f4, $f6
/* ACE274 800570D4 00000000 */  nop   
/* ACE278 800570D8 45020005 */  bc1fl .L800570F0
/* ACE27C 800570DC 8E0F0090 */   lw    $t7, 0x90($s0)
/* ACE280 800570E0 860D015E */  lh    $t5, 0x15e($s0)
/* ACE284 800570E4 55A0001A */  bnezl $t5, .L80057150
/* ACE288 800570E8 26030004 */   addiu $v1, $s0, 4
/* ACE28C 800570EC 8E0F0090 */  lw    $t7, 0x90($s0)
.L800570F0:
/* ACE290 800570F0 240E000C */  li    $t6, 12
/* ACE294 800570F4 2529D3A0 */  addiu $t1, %lo(D_8011D3A0) # addiu $t1, $t1, -0x2c60
/* ACE298 800570F8 A5EE0110 */  sh    $t6, 0x110($t7)
/* ACE29C 800570FC 8D380000 */  lw    $t8, ($t1)
/* ACE2A0 80057100 26030004 */  addiu $v1, $s0, 4
/* ACE2A4 80057104 240C000C */  li    $t4, 12
/* ACE2A8 80057108 330BF0FF */  andi  $t3, $t8, 0xf0ff
/* ACE2AC 8005710C 35790300 */  ori   $t9, $t3, 0x300
/* ACE2B0 80057110 AD390000 */  sw    $t9, ($t1)
/* ACE2B4 80057114 C6080098 */  lwc1  $f8, 0x98($s0)
/* ACE2B8 80057118 A46C0004 */  sh    $t4, 4($v1)
/* ACE2BC 8005711C 27AD00A0 */  addiu $t5, $sp, 0xa0
/* ACE2C0 80057120 E4680000 */  swc1  $f8, ($v1)
/* ACE2C4 80057124 8DAF0000 */  lw    $t7, ($t5)
/* ACE2C8 80057128 AC8F0000 */  sw    $t7, ($a0)
/* ACE2CC 8005712C 8DAE0004 */  lw    $t6, 4($t5)
/* ACE2D0 80057130 AC8E0004 */  sw    $t6, 4($a0)
/* ACE2D4 80057134 8DAF0008 */  lw    $t7, 8($t5)
/* ACE2D8 80057138 AC8F0008 */  sw    $t7, 8($a0)
/* ACE2DC 8005713C 8602015E */  lh    $v0, 0x15e($s0)
/* ACE2E0 80057140 14400002 */  bnez  $v0, .L8005714C
/* ACE2E4 80057144 24580001 */   addiu $t8, $v0, 1
/* ACE2E8 80057148 A618015E */  sh    $t8, 0x15e($s0)
.L8005714C:
/* ACE2EC 8005714C 26030004 */  addiu $v1, $s0, 4
.L80057150:
/* ACE2F0 80057150 84650004 */  lh    $a1, 4($v1)
/* ACE2F4 80057154 3C098012 */  lui   $t1, %hi(D_8011D3A0)
/* ACE2F8 80057158 2529D3A0 */  addiu $t1, %lo(D_8011D3A0) # addiu $t1, $t1, -0x2c60
/* ACE2FC 8005715C 18A00077 */  blez  $a1, .L8005733C
/* ACE300 80057160 26020094 */   addiu $v0, $s0, 0x94
/* ACE304 80057164 44855000 */  mtc1  $a1, $f10
/* ACE308 80057168 27AA0094 */  addiu $t2, $sp, 0x94
/* ACE30C 8005716C 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ACE310 80057170 46805120 */  cvt.s.w $f4, $f10
/* ACE314 80057174 44810000 */  mtc1  $at, $f0
/* ACE318 80057178 3C018014 */  lui   $at, %hi(D_8013A3C4)
/* ACE31C 8005717C 27AC0088 */  addiu $t4, $sp, 0x88
/* ACE320 80057180 3C073C23 */  lui   $a3, (0x3C23D70A >> 16) # lui $a3, 0x3c23
/* ACE324 80057184 44060000 */  mfc1  $a2, $f0
/* ACE328 80057188 E7A40058 */  swc1  $f4, 0x58($sp)
/* ACE32C 8005718C 8C990000 */  lw    $t9, ($a0)
/* ACE330 80057190 34E7D70A */  ori   $a3, (0x3C23D70A & 0xFFFF) # ori $a3, $a3, 0xd70a
/* ACE334 80057194 AD590000 */  sw    $t9, ($t2)
/* ACE338 80057198 8C8B0004 */  lw    $t3, 4($a0)
/* ACE33C 8005719C AD4B0004 */  sw    $t3, 4($t2)
/* ACE340 800571A0 8C990008 */  lw    $t9, 8($a0)
/* ACE344 800571A4 AD590008 */  sw    $t9, 8($t2)
/* ACE348 800571A8 C7A80094 */  lwc1  $f8, 0x94($sp)
/* ACE34C 800571AC C4460000 */  lwc1  $f6, ($v0)
/* ACE350 800571B0 46083281 */  sub.s $f10, $f6, $f8
/* ACE354 800571B4 46005102 */  mul.s $f4, $f10, $f0
/* ACE358 800571B8 46044180 */  add.s $f6, $f8, $f4
/* ACE35C 800571BC E7A60094 */  swc1  $f6, 0x94($sp)
/* ACE360 800571C0 C4680000 */  lwc1  $f8, ($v1)
/* ACE364 800571C4 C44A0004 */  lwc1  $f10, 4($v0)
/* ACE368 800571C8 C426A3C4 */  lwc1  $f6, %lo(D_8013A3C4)($at)
/* ACE36C 800571CC 46085101 */  sub.s $f4, $f10, $f8
/* ACE370 800571D0 C7A80098 */  lwc1  $f8, 0x98($sp)
/* ACE374 800571D4 46062282 */  mul.s $f10, $f4, $f6
/* ACE378 800571D8 460A4100 */  add.s $f4, $f8, $f10
/* ACE37C 800571DC E7A40098 */  swc1  $f4, 0x98($sp)
/* ACE380 800571E0 8D4E0000 */  lw    $t6, ($t2)
/* ACE384 800571E4 AD8E0000 */  sw    $t6, ($t4)
/* ACE388 800571E8 8D4D0004 */  lw    $t5, 4($t2)
/* ACE38C 800571EC AD8D0004 */  sw    $t5, 4($t4)
/* ACE390 800571F0 8D4E0008 */  lw    $t6, 8($t2)
/* ACE394 800571F4 AD8E0008 */  sw    $t6, 8($t4)
/* ACE398 800571F8 C62E0004 */  lwc1  $f14, 4($s1)
/* ACE39C 800571FC A7A80062 */  sh    $t0, 0x62($sp)
/* ACE3A0 80057200 AFA30030 */  sw    $v1, 0x30($sp)
/* ACE3A4 80057204 0C010E27 */  jal   func_8004389C
/* ACE3A8 80057208 C7AC0098 */   lwc1  $f12, 0x98($sp)
/* ACE3AC 8005720C 87B80064 */  lh    $t8, 0x64($sp)
/* ACE3B0 80057210 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* ACE3B4 80057214 44813000 */  mtc1  $at, $f6
/* ACE3B8 80057218 87AF0066 */  lh    $t7, 0x66($sp)
/* ACE3BC 8005721C 00185823 */  negu  $t3, $t8
/* ACE3C0 80057220 E7A0008C */  swc1  $f0, 0x8c($sp)
/* ACE3C4 80057224 A7AB00B0 */  sh    $t3, 0xb0($sp)
/* ACE3C8 80057228 27A4007C */  addiu $a0, $sp, 0x7c
/* ACE3CC 8005722C 27A50088 */  addiu $a1, $sp, 0x88
/* ACE3D0 80057230 27A600AC */  addiu $a2, $sp, 0xac
/* ACE3D4 80057234 E7A600AC */  swc1  $f6, 0xac($sp)
/* ACE3D8 80057238 0C010F0A */  jal   func_80043C28
/* ACE3DC 8005723C A7AF00B2 */   sh    $t7, 0xb2($sp)
/* ACE3E0 80057240 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ACE3E4 80057244 44814000 */  mtc1  $at, $f8
/* ACE3E8 80057248 C7AA0058 */  lwc1  $f10, 0x58($sp)
/* ACE3EC 8005724C C7A40088 */  lwc1  $f4, 0x88($sp)
/* ACE3F0 80057250 8FA30030 */  lw    $v1, 0x30($sp)
/* ACE3F4 80057254 460A4003 */  div.s $f0, $f8, $f10
/* ACE3F8 80057258 87A80062 */  lh    $t0, 0x62($sp)
/* ACE3FC 8005725C 3C018014 */  lui   $at, %hi(D_8013A3C8)
/* ACE400 80057260 E7A00054 */  swc1  $f0, 0x54($sp)
/* ACE404 80057264 C62C0000 */  lwc1  $f12, ($s1)
/* ACE408 80057268 C6220004 */  lwc1  $f2, 4($s1)
/* ACE40C 8005726C C62E0008 */  lwc1  $f14, 8($s1)
/* ACE410 80057270 460C2181 */  sub.s $f6, $f4, $f12
/* ACE414 80057274 46003202 */  mul.s $f8, $f6, $f0
/* ACE418 80057278 46086280 */  add.s $f10, $f12, $f8
/* ACE41C 8005727C E62A0000 */  swc1  $f10, ($s1)
/* ACE420 80057280 C7A4008C */  lwc1  $f4, 0x8c($sp)
/* ACE424 80057284 46022181 */  sub.s $f6, $f4, $f2
/* ACE428 80057288 46003202 */  mul.s $f8, $f6, $f0
/* ACE42C 8005728C 46081280 */  add.s $f10, $f2, $f8
/* ACE430 80057290 E62A0004 */  swc1  $f10, 4($s1)
/* ACE434 80057294 C7A40090 */  lwc1  $f4, 0x90($sp)
/* ACE438 80057298 460E2181 */  sub.s $f6, $f4, $f14
/* ACE43C 8005729C 46003202 */  mul.s $f8, $f6, $f0
/* ACE440 800572A0 46087280 */  add.s $f10, $f14, $f8
/* ACE444 800572A4 E62A0008 */  swc1  $f10, 8($s1)
/* ACE448 800572A8 C6500000 */  lwc1  $f16, ($s2)
/* ACE44C 800572AC C7A4007C */  lwc1  $f4, 0x7c($sp)
/* ACE450 800572B0 C6520004 */  lwc1  $f18, 4($s2)
/* ACE454 800572B4 C6420008 */  lwc1  $f2, 8($s2)
/* ACE458 800572B8 46102181 */  sub.s $f6, $f4, $f16
/* ACE45C 800572BC 46003202 */  mul.s $f8, $f6, $f0
/* ACE460 800572C0 46088280 */  add.s $f10, $f16, $f8
/* ACE464 800572C4 E64A0000 */  swc1  $f10, ($s2)
/* ACE468 800572C8 C7A40080 */  lwc1  $f4, 0x80($sp)
/* ACE46C 800572CC 46122181 */  sub.s $f6, $f4, $f18
/* ACE470 800572D0 46003202 */  mul.s $f8, $f6, $f0
/* ACE474 800572D4 46089280 */  add.s $f10, $f18, $f8
/* ACE478 800572D8 E64A0004 */  swc1  $f10, 4($s2)
/* ACE47C 800572DC C7A40084 */  lwc1  $f4, 0x84($sp)
/* ACE480 800572E0 C7A80054 */  lwc1  $f8, 0x54($sp)
/* ACE484 800572E4 46022181 */  sub.s $f6, $f4, $f2
/* ACE488 800572E8 46083282 */  mul.s $f10, $f6, $f8
/* ACE48C 800572EC 44883000 */  mtc1  $t0, $f6
/* ACE490 800572F0 00000000 */  nop   
/* ACE494 800572F4 46803220 */  cvt.s.w $f8, $f6
/* ACE498 800572F8 460A1100 */  add.s $f4, $f2, $f10
/* ACE49C 800572FC E6440008 */  swc1  $f4, 8($s2)
/* ACE4A0 80057300 C42AA3C8 */  lwc1  $f10, %lo(D_8013A3C8)($at)
/* ACE4A4 80057304 84790004 */  lh    $t9, 4($v1)
/* ACE4A8 80057308 C60000FC */  lwc1  $f0, 0xfc($s0)
/* ACE4AC 8005730C 460A4102 */  mul.s $f4, $f8, $f10
/* ACE4B0 80057310 44994000 */  mtc1  $t9, $f8
/* ACE4B4 80057314 00000000 */  nop   
/* ACE4B8 80057318 468042A0 */  cvt.s.w $f10, $f8
/* ACE4BC 8005731C 46002181 */  sub.s $f6, $f4, $f0
/* ACE4C0 80057320 460A3103 */  div.s $f4, $f6, $f10
/* ACE4C4 80057324 46040200 */  add.s $f8, $f0, $f4
/* ACE4C8 80057328 E60800FC */  swc1  $f8, 0xfc($s0)
/* ACE4CC 8005732C 846C0004 */  lh    $t4, 4($v1)
/* ACE4D0 80057330 258DFFFF */  addiu $t5, $t4, -1
/* ACE4D4 80057334 10000035 */  b     .L8005740C
/* ACE4D8 80057338 A46D0004 */   sh    $t5, 4($v1)
.L8005733C:
/* ACE4DC 8005733C 8D2E0000 */  lw    $t6, ($t1)
/* ACE4E0 80057340 27AA0094 */  addiu $t2, $sp, 0x94
/* ACE4E4 80057344 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ACE4E8 80057348 31CFF0FF */  andi  $t7, $t6, 0xf0ff
/* ACE4EC 8005734C AD2F0000 */  sw    $t7, ($t1)
/* ACE4F0 80057350 8C8B0000 */  lw    $t3, ($a0)
/* ACE4F4 80057354 44810000 */  mtc1  $at, $f0
/* ACE4F8 80057358 3C018014 */  lui   $at, %hi(D_8013A3CC)
/* ACE4FC 8005735C AD4B0000 */  sw    $t3, ($t2)
/* ACE500 80057360 8C980004 */  lw    $t8, 4($a0)
/* ACE504 80057364 3C073C23 */  lui   $a3, (0x3C23D70A >> 16) # lui $a3, 0x3c23
/* ACE508 80057368 44060000 */  mfc1  $a2, $f0
/* ACE50C 8005736C AD580004 */  sw    $t8, 4($t2)
/* ACE510 80057370 8C8B0008 */  lw    $t3, 8($a0)
/* ACE514 80057374 34E7D70A */  ori   $a3, (0x3C23D70A & 0xFFFF) # ori $a3, $a3, 0xd70a
/* ACE518 80057378 AD4B0008 */  sw    $t3, 8($t2)
/* ACE51C 8005737C C7AA0094 */  lwc1  $f10, 0x94($sp)
/* ACE520 80057380 C4460000 */  lwc1  $f6, ($v0)
/* ACE524 80057384 460A3101 */  sub.s $f4, $f6, $f10
/* ACE528 80057388 46002202 */  mul.s $f8, $f4, $f0
/* ACE52C 8005738C 46085180 */  add.s $f6, $f10, $f8
/* ACE530 80057390 E7A60094 */  swc1  $f6, 0x94($sp)
/* ACE534 80057394 C46A0000 */  lwc1  $f10, ($v1)
/* ACE538 80057398 C4440004 */  lwc1  $f4, 4($v0)
/* ACE53C 8005739C C426A3CC */  lwc1  $f6, %lo(D_8013A3CC)($at)
/* ACE540 800573A0 460A2201 */  sub.s $f8, $f4, $f10
/* ACE544 800573A4 C7AA0098 */  lwc1  $f10, 0x98($sp)
/* ACE548 800573A8 46064102 */  mul.s $f4, $f8, $f6
/* ACE54C 800573AC 46045200 */  add.s $f8, $f10, $f4
/* ACE550 800573B0 E7A80098 */  swc1  $f8, 0x98($sp)
/* ACE554 800573B4 8D4C0000 */  lw    $t4, ($t2)
/* ACE558 800573B8 AE2C0000 */  sw    $t4, ($s1)
/* ACE55C 800573BC 8D590004 */  lw    $t9, 4($t2)
/* ACE560 800573C0 AE390004 */  sw    $t9, 4($s1)
/* ACE564 800573C4 8D4C0008 */  lw    $t4, 8($t2)
/* ACE568 800573C8 C62E0004 */  lwc1  $f14, 4($s1)
/* ACE56C 800573CC AE2C0008 */  sw    $t4, 8($s1)
/* ACE570 800573D0 0C010E27 */  jal   func_8004389C
/* ACE574 800573D4 C7AC0098 */   lwc1  $f12, 0x98($sp)
/* ACE578 800573D8 E6200004 */  swc1  $f0, 4($s1)
/* ACE57C 800573DC 87AE0064 */  lh    $t6, 0x64($sp)
/* ACE580 800573E0 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* ACE584 800573E4 44813000 */  mtc1  $at, $f6
/* ACE588 800573E8 87AD0066 */  lh    $t5, 0x66($sp)
/* ACE58C 800573EC 000E7823 */  negu  $t7, $t6
/* ACE590 800573F0 A7AF00B0 */  sh    $t7, 0xb0($sp)
/* ACE594 800573F4 02402025 */  move  $a0, $s2
/* ACE598 800573F8 02202825 */  move  $a1, $s1
/* ACE59C 800573FC 27A600AC */  addiu $a2, $sp, 0xac
/* ACE5A0 80057400 E7A600AC */  swc1  $f6, 0xac($sp)
/* ACE5A4 80057404 0C010F0A */  jal   func_80043C28
/* ACE5A8 80057408 A7AD00B2 */   sh    $t5, 0xb2($sp)
.L8005740C:
/* ACE5AC 8005740C 8FBF0024 */  lw    $ra, 0x24($sp)
/* ACE5B0 80057410 8FB00018 */  lw    $s0, 0x18($sp)
/* ACE5B4 80057414 8FB1001C */  lw    $s1, 0x1c($sp)
/* ACE5B8 80057418 8FB20020 */  lw    $s2, 0x20($sp)
/* ACE5BC 8005741C 27BD00C0 */  addiu $sp, $sp, 0xc0
/* ACE5C0 80057420 03E00008 */  jr    $ra
/* ACE5C4 80057424 24020001 */   li    $v0, 1
# SPLIT
/* ACE5C8 80057428 27BDFFE8 */  addiu $sp, $sp, -0x18
/* ACE5CC 8005742C AFBF0014 */  sw    $ra, 0x14($sp)
/* ACE5D0 80057430 0C011CE5 */  jal   func_80047394
/* ACE5D4 80057434 00000000 */   nop   
/* ACE5D8 80057438 8FBF0014 */  lw    $ra, 0x14($sp)
/* ACE5DC 8005743C 27BD0018 */  addiu $sp, $sp, 0x18
/* ACE5E0 80057440 03E00008 */  jr    $ra
/* ACE5E4 80057444 00000000 */   nop   
# SPLIT
/* ACE5E8 80057448 27BDFF38 */  addiu $sp, $sp, -0xc8
/* ACE5EC 8005744C AFB00020 */  sw    $s0, 0x20($sp)
/* ACE5F0 80057450 00808025 */  move  $s0, $a0
/* ACE5F4 80057454 AFBF0024 */  sw    $ra, 0x24($sp)
/* ACE5F8 80057458 0C00B721 */  jal   func_8002DC84
/* ACE5FC 8005745C 8C840090 */   lw    $a0, 0x90($a0)
/* ACE600 80057460 3C018014 */  lui   $at, %hi(D_8013A3D0)
/* ACE604 80057464 C42CA3D0 */  lwc1  $f12, %lo(D_8013A3D0)($at)
/* ACE608 80057468 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ACE60C 8005746C 44814000 */  mtc1  $at, $f8
/* ACE610 80057470 E7A00098 */  swc1  $f0, 0x98($sp)
/* ACE614 80057474 860E014C */  lh    $t6, 0x14c($s0)
/* ACE618 80057478 3C014288 */  li    $at, 0x42880000 # 0.000000
/* ACE61C 8005747C 44818000 */  mtc1  $at, $f16
/* ACE620 80057480 31CFFFEF */  andi  $t7, $t6, 0xffef
/* ACE624 80057484 A60F014C */  sh    $t7, 0x14c($s0)
/* ACE628 80057488 46008483 */  div.s $f18, $f16, $f0
/* ACE62C 8005748C 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* ACE630 80057490 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ACE634 80057494 2401000A */  li    $at, 10
/* ACE638 80057498 845801F0 */  lh    $t8, 0x1f0($v0)
/* ACE63C 8005749C 44982000 */  mtc1  $t8, $f4
/* ACE640 800574A0 00000000 */  nop   
/* ACE644 800574A4 468021A0 */  cvt.s.w $f6, $f4
/* ACE648 800574A8 460C3082 */  mul.s $f2, $f6, $f12
/* ACE64C 800574AC 00000000 */  nop   
/* ACE650 800574B0 46121102 */  mul.s $f4, $f2, $f18
/* ACE654 800574B4 46024280 */  add.s $f10, $f8, $f2
/* ACE658 800574B8 46045181 */  sub.s $f6, $f10, $f4
/* ACE65C 800574BC E7A60078 */  swc1  $f6, 0x78($sp)
/* ACE660 800574C0 8603015E */  lh    $v1, 0x15e($s0)
/* ACE664 800574C4 10600008 */  beqz  $v1, .L800574E8
/* ACE668 800574C8 00000000 */   nop   
/* ACE66C 800574CC 10610006 */  beq   $v1, $at, .L800574E8
/* ACE670 800574D0 24010014 */   li    $at, 20
/* ACE674 800574D4 50610005 */  beql  $v1, $at, .L800574EC
/* ACE678 800574D8 86190142 */   lh    $t9, 0x142($s0)
/* ACE67C 800574DC 84430314 */  lh    $v1, 0x314($v0)
/* ACE680 800574E0 50600022 */  beql  $v1, $zero, .L8005756C
/* ACE684 800574E4 260C000C */   addiu $t4, $s0, 0xc
.L800574E8:
/* ACE688 800574E8 86190142 */  lh    $t9, 0x142($s0)
.L800574EC:
/* ACE68C 800574EC 3C0C8012 */  lui   $t4, %hi(D_8011D068)
/* ACE690 800574F0 860D0144 */  lh    $t5, 0x144($s0)
/* ACE694 800574F4 001958C0 */  sll   $t3, $t9, 3
/* ACE698 800574F8 018B6021 */  addu  $t4, $t4, $t3
/* ACE69C 800574FC 8D8CD068 */  lw    $t4, %lo(D_8011D068)($t4)
/* ACE6A0 80057500 000D70C0 */  sll   $t6, $t5, 3
/* ACE6A4 80057504 C7A40078 */  lwc1  $f4, 0x78($sp)
/* ACE6A8 80057508 018E7821 */  addu  $t7, $t4, $t6
/* ACE6AC 8005750C 8DE20004 */  lw    $v0, 4($t7)
/* ACE6B0 80057510 2604000C */  addiu $a0, $s0, 0xc
/* ACE6B4 80057514 3C0D8016 */  lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* ACE6B8 80057518 84580000 */  lh    $t8, ($v0)
/* ACE6BC 8005751C 24420008 */  addiu $v0, $v0, 8
/* ACE6C0 80057520 44984000 */  mtc1  $t8, $f8
/* ACE6C4 80057524 00000000 */  nop   
/* ACE6C8 80057528 46804420 */  cvt.s.w $f16, $f8
/* ACE6CC 8005752C 460C8482 */  mul.s $f18, $f16, $f12
/* ACE6D0 80057530 00000000 */  nop   
/* ACE6D4 80057534 46009282 */  mul.s $f10, $f18, $f0
/* ACE6D8 80057538 00000000 */  nop   
/* ACE6DC 8005753C 46045182 */  mul.s $f6, $f10, $f4
/* ACE6E0 80057540 E4860000 */  swc1  $f6, ($a0)
/* ACE6E4 80057544 8459FFFC */  lh    $t9, -4($v0)
/* ACE6E8 80057548 44994000 */  mtc1  $t9, $f8
/* ACE6EC 8005754C 00000000 */  nop   
/* ACE6F0 80057550 46804420 */  cvt.s.w $f16, $f8
/* ACE6F4 80057554 E4900004 */  swc1  $f16, 4($a0)
/* ACE6F8 80057558 844B0000 */  lh    $t3, ($v0)
/* ACE6FC 8005755C A48B0008 */  sh    $t3, 8($a0)
/* ACE700 80057560 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* ACE704 80057564 85A30314 */  lh    $v1, 0x314($t5)
/* ACE708 80057568 260C000C */  addiu $t4, $s0, 0xc
.L8005756C:
/* ACE70C 8005756C 10600003 */  beqz  $v1, .L8005757C
/* ACE710 80057570 AFAC0038 */   sw    $t4, 0x38($sp)
/* ACE714 80057574 0C011495 */  jal   func_80045254
/* ACE718 80057578 02002025 */   move  $a0, $s0
.L8005757C:
/* ACE71C 8005757C 8E050000 */  lw    $a1, ($s0)
/* ACE720 80057580 26020094 */  addiu $v0, $s0, 0x94
/* ACE724 80057584 50A00007 */  beql  $a1, $zero, .L800575A4
/* ACE728 80057588 8C590000 */   lw    $t9, ($v0)
/* ACE72C 8005758C 0C00BBD1 */  jal   func_8002EF44
/* ACE730 80057590 27A4007C */   addiu $a0, $sp, 0x7c
/* ACE734 80057594 260E0094 */  addiu $t6, $s0, 0x94
/* ACE738 80057598 10000015 */  b     .L800575F0
/* ACE73C 8005759C AFAE003C */   sw    $t6, 0x3c($sp)
/* ACE740 800575A0 8C590000 */  lw    $t9, ($v0)
.L800575A4:
/* ACE744 800575A4 27AF007C */  addiu $t7, $sp, 0x7c
/* ACE748 800575A8 ADF90000 */  sw    $t9, ($t7)
/* ACE74C 800575AC 8C580004 */  lw    $t8, 4($v0)
/* ACE750 800575B0 ADF80004 */  sw    $t8, 4($t7)
/* ACE754 800575B4 8C590008 */  lw    $t9, 8($v0)
/* ACE758 800575B8 ADF90008 */  sw    $t9, 8($t7)
/* ACE75C 800575BC 8C58000C */  lw    $t8, 0xc($v0)
/* ACE760 800575C0 ADF8000C */  sw    $t8, 0xc($t7)
/* ACE764 800575C4 8C590010 */  lw    $t9, 0x10($v0)
/* ACE768 800575C8 ADF90010 */  sw    $t9, 0x10($t7)
/* ACE76C 800575CC 8FAB0038 */  lw    $t3, 0x38($sp)
/* ACE770 800575D0 C7B20098 */  lwc1  $f18, 0x98($sp)
/* ACE774 800575D4 C7A60080 */  lwc1  $f6, 0x80($sp)
/* ACE778 800575D8 C56A0000 */  lwc1  $f10, ($t3)
/* ACE77C 800575DC AFA2003C */  sw    $v0, 0x3c($sp)
/* ACE780 800575E0 A7A00088 */  sh    $zero, 0x88($sp)
/* ACE784 800575E4 460A9100 */  add.s $f4, $f18, $f10
/* ACE788 800575E8 46043200 */  add.s $f8, $f6, $f4
/* ACE78C 800575EC E7A80080 */  swc1  $f8, 0x80($sp)
.L800575F0:
/* ACE790 800575F0 26050050 */  addiu $a1, $s0, 0x50
/* ACE794 800575F4 2606005C */  addiu $a2, $s0, 0x5c
/* ACE798 800575F8 AFA60048 */  sw    $a2, 0x48($sp)
/* ACE79C 800575FC AFA50044 */  sw    $a1, 0x44($sp)
/* ACE7A0 80057600 0C01F124 */  jal   func_8007C490
/* ACE7A4 80057604 27A4009C */   addiu $a0, $sp, 0x9c
/* ACE7A8 80057608 8FAA0038 */  lw    $t2, 0x38($sp)
/* ACE7AC 8005760C 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ACE7B0 80057610 854D0008 */  lh    $t5, 8($t2)
/* ACE7B4 80057614 AC2DD3A0 */  sw    $t5, %lo(D_8011D3A0)($at)
/* ACE7B8 80057618 8603015E */  lh    $v1, 0x15e($s0)
/* ACE7BC 8005761C 2C610005 */  sltiu $at, $v1, 5
/* ACE7C0 80057620 10200107 */  beqz  $at, .L80057A40
/* ACE7C4 80057624 00036080 */   sll   $t4, $v1, 2
/* ACE7C8 80057628 3C018014 */  lui   $at, %hi(jtbl_8013A3D4)
/* ACE7CC 8005762C 002C0821 */  addu  $at, $at, $t4
/* ACE7D0 80057630 8C2CA3D4 */  lw    $t4, %lo(jtbl_8013A3D4)($at)
/* ACE7D4 80057634 01800008 */  jr    $t4
/* ACE7D8 80057638 00000000 */   nop   
/* ACE7DC 8005763C 860E014C */  lh    $t6, 0x14c($s0)
/* ACE7E0 80057640 24780001 */  addiu $t8, $v1, 1
/* ACE7E4 80057644 A618015E */  sh    $t8, 0x15e($s0)
/* ACE7E8 80057648 31CFFFF9 */  andi  $t7, $t6, 0xfff9
/* ACE7EC 8005764C A60F014C */  sh    $t7, 0x14c($s0)
/* ACE7F0 80057650 8FB9003C */  lw    $t9, 0x3c($sp)
/* ACE7F4 80057654 87AD008A */  lh    $t5, 0x8a($sp)
/* ACE7F8 80057658 87AC008A */  lh    $t4, 0x8a($sp)
/* ACE7FC 8005765C 872B000E */  lh    $t3, 0xe($t9)
/* ACE800 80057660 87AF008A */  lh    $t7, 0x8a($sp)
/* ACE804 80057664 258E8001 */  addiu $t6, $t4, -0x7fff
/* ACE808 80057668 016D1023 */  subu  $v0, $t3, $t5
/* ACE80C 8005766C 04400003 */  bltz  $v0, .L8005767C
/* ACE810 80057670 00023823 */   negu  $a3, $v0
/* ACE814 80057674 10000001 */  b     .L8005767C
/* ACE818 80057678 00403825 */   move  $a3, $v0
.L8005767C:
/* ACE81C 8005767C 28E14000 */  slti  $at, $a3, 0x4000
/* ACE820 80057680 54200004 */  bnezl $at, .L80057694
/* ACE824 80057684 A60F0018 */   sh    $t7, 0x18($s0)
/* ACE828 80057688 10000002 */  b     .L80057694
/* ACE82C 8005768C A60E0018 */   sh    $t6, 0x18($s0)
/* ACE830 80057690 A60F0018 */  sh    $t7, 0x18($s0)
.L80057694:
/* ACE834 80057694 86180006 */  lh    $t8, 6($s0)
/* ACE838 80057698 2719FFFF */  addiu $t9, $t8, -1
/* ACE83C 8005769C A6190006 */  sh    $t9, 6($s0)
/* ACE840 800576A0 860B0006 */  lh    $t3, 6($s0)
/* ACE844 800576A4 5D60011B */  bgtzl $t3, .L80057B14
/* ACE848 800576A8 8FB9003C */   lw    $t9, 0x3c($sp)
/* ACE84C 800576AC 860D015E */  lh    $t5, 0x15e($s0)
/* ACE850 800576B0 25AC0001 */  addiu $t4, $t5, 1
/* ACE854 800576B4 A60C015E */  sh    $t4, 0x15e($s0)
/* ACE858 800576B8 854E0008 */  lh    $t6, 8($t2)
/* ACE85C 800576BC 31CF0001 */  andi  $t7, $t6, 1
/* ACE860 800576C0 51E0001F */  beql  $t7, $zero, .L80057740
/* ACE864 800576C4 240B0E38 */   li    $t3, 3640
/* ACE868 800576C8 0C0111DB */  jal   func_8004476C
/* ACE86C 800576CC 02002025 */   move  $a0, $s0
/* ACE870 800576D0 26040074 */  addiu $a0, $s0, 0x74
/* ACE874 800576D4 AFA40040 */  sw    $a0, 0x40($sp)
/* ACE878 800576D8 0C010EF1 */  jal   func_80043BC4
/* ACE87C 800576DC 00402825 */   move  $a1, $v0
/* ACE880 800576E0 8FB80040 */  lw    $t8, 0x40($sp)
/* ACE884 800576E4 27A7004C */  addiu $a3, $sp, 0x4c
/* ACE888 800576E8 27AF00AC */  addiu $t7, $sp, 0xac
/* ACE88C 800576EC 8F0B0000 */  lw    $t3, ($t8)
/* ACE890 800576F0 ACEB0000 */  sw    $t3, ($a3)
/* ACE894 800576F4 8F190004 */  lw    $t9, 4($t8)
/* ACE898 800576F8 8CEE0000 */  lw    $t6, ($a3)
/* ACE89C 800576FC ACF90004 */  sw    $t9, 4($a3)
/* ACE8A0 80057700 8F0B0008 */  lw    $t3, 8($t8)
/* ACE8A4 80057704 ACEB0008 */  sw    $t3, 8($a3)
/* ACE8A8 80057708 8FAD0048 */  lw    $t5, 0x48($sp)
/* ACE8AC 8005770C ADAE0000 */  sw    $t6, ($t5)
/* ACE8B0 80057710 8CEC0004 */  lw    $t4, 4($a3)
/* ACE8B4 80057714 ADAC0004 */  sw    $t4, 4($t5)
/* ACE8B8 80057718 8CEE0008 */  lw    $t6, 8($a3)
/* ACE8BC 8005771C ADAE0008 */  sw    $t6, 8($t5)
/* ACE8C0 80057720 8CF90000 */  lw    $t9, ($a3)
/* ACE8C4 80057724 ADF90000 */  sw    $t9, ($t7)
/* ACE8C8 80057728 8CF80004 */  lw    $t8, 4($a3)
/* ACE8CC 8005772C ADF80004 */  sw    $t8, 4($t7)
/* ACE8D0 80057730 8CF90008 */  lw    $t9, 8($a3)
/* ACE8D4 80057734 1000004F */  b     .L80057874
/* ACE8D8 80057738 ADF90008 */   sw    $t9, 8($t7)
/* ACE8DC 8005773C 240B0E38 */  li    $t3, 3640
.L80057740:
/* ACE8E0 80057740 A7AB00A8 */  sh    $t3, 0xa8($sp)
/* ACE8E4 80057744 8E0D008C */  lw    $t5, 0x8c($s0)
/* ACE8E8 80057748 26030018 */  addiu $v1, $s0, 0x18
/* ACE8EC 8005774C 24010AAA */  li    $at, 2730
/* ACE8F0 80057750 8DAC009C */  lw    $t4, 0x9c($t5)
/* ACE8F4 80057754 26040074 */  addiu $a0, $s0, 0x74
/* ACE8F8 80057758 318E0001 */  andi  $t6, $t4, 1
/* ACE8FC 8005775C 51C00004 */  beql  $t6, $zero, .L80057770
/* ACE900 80057760 2407FFFF */   li    $a3, -1
/* ACE904 80057764 10000002 */  b     .L80057770
/* ACE908 80057768 24070001 */   li    $a3, 1
/* ACE90C 8005776C 2407FFFF */  li    $a3, -1
.L80057770:
/* ACE910 80057770 00E10019 */  multu $a3, $at
/* ACE914 80057774 3C014348 */  li    $at, 0x43480000 # 0.000000
/* ACE918 80057778 44818000 */  mtc1  $at, $f16
/* ACE91C 8005777C C7B20078 */  lwc1  $f18, 0x78($sp)
/* ACE920 80057780 846F0000 */  lh    $t7, ($v1)
/* ACE924 80057784 AFA40040 */  sw    $a0, 0x40($sp)
/* ACE928 80057788 46128282 */  mul.s $f10, $f16, $f18
/* ACE92C 8005778C AFA30034 */  sw    $v1, 0x34($sp)
/* ACE930 80057790 8FA50044 */  lw    $a1, 0x44($sp)
/* ACE934 80057794 27A600A4 */  addiu $a2, $sp, 0xa4
/* ACE938 80057798 00001012 */  mflo  $v0
/* ACE93C 8005779C 00024C00 */  sll   $t1, $v0, 0x10
/* ACE940 800577A0 00094C03 */  sra   $t1, $t1, 0x10
/* ACE944 800577A4 01E9C021 */  addu  $t8, $t7, $t1
/* ACE948 800577A8 A7B800AA */  sh    $t8, 0xaa($sp)
/* ACE94C 800577AC E7AA00A4 */  swc1  $f10, 0xa4($sp)
/* ACE950 800577B0 0C010F0A */  jal   func_80043C28
/* ACE954 800577B4 AFA90030 */   sw    $t1, 0x30($sp)
/* ACE958 800577B8 8FB90040 */  lw    $t9, 0x40($sp)
/* ACE95C 800577BC 27A7004C */  addiu $a3, $sp, 0x4c
/* ACE960 800577C0 27B800AC */  addiu $t8, $sp, 0xac
/* ACE964 800577C4 8F2D0000 */  lw    $t5, ($t9)
/* ACE968 800577C8 02002025 */  move  $a0, $s0
/* ACE96C 800577CC 27A500AC */  addiu $a1, $sp, 0xac
/* ACE970 800577D0 ACED0000 */  sw    $t5, ($a3)
/* ACE974 800577D4 8F2B0004 */  lw    $t3, 4($t9)
/* ACE978 800577D8 8CEF0000 */  lw    $t7, ($a3)
/* ACE97C 800577DC ACEB0004 */  sw    $t3, 4($a3)
/* ACE980 800577E0 8F2D0008 */  lw    $t5, 8($t9)
/* ACE984 800577E4 ACED0008 */  sw    $t5, 8($a3)
/* ACE988 800577E8 8FAC0048 */  lw    $t4, 0x48($sp)
/* ACE98C 800577EC AD8F0000 */  sw    $t7, ($t4)
/* ACE990 800577F0 8CEE0004 */  lw    $t6, 4($a3)
/* ACE994 800577F4 AD8E0004 */  sw    $t6, 4($t4)
/* ACE998 800577F8 8CEF0008 */  lw    $t7, 8($a3)
/* ACE99C 800577FC AD8F0008 */  sw    $t7, 8($t4)
/* ACE9A0 80057800 8CEB0000 */  lw    $t3, ($a3)
/* ACE9A4 80057804 AF0B0000 */  sw    $t3, ($t8)
/* ACE9A8 80057808 8CF90004 */  lw    $t9, 4($a3)
/* ACE9AC 8005780C AF190004 */  sw    $t9, 4($t8)
/* ACE9B0 80057810 8CEB0008 */  lw    $t3, 8($a3)
/* ACE9B4 80057814 AF0B0008 */  sw    $t3, 8($t8)
/* ACE9B8 80057818 0C0110E8 */  jal   func_800443A0
/* ACE9BC 8005781C 8FA6003C */   lw    $a2, 0x3c($sp)
/* ACE9C0 80057820 10400014 */  beqz  $v0, .L80057874
/* ACE9C4 80057824 8FA30034 */   lw    $v1, 0x34($sp)
/* ACE9C8 80057828 8FA80030 */  lw    $t0, 0x30($sp)
/* ACE9CC 8005782C 846D0000 */  lh    $t5, ($v1)
/* ACE9D0 80057830 8FA40040 */  lw    $a0, 0x40($sp)
/* ACE9D4 80057834 00084023 */  negu  $t0, $t0
/* ACE9D8 80057838 00084400 */  sll   $t0, $t0, 0x10
/* ACE9DC 8005783C 00084403 */  sra   $t0, $t0, 0x10
/* ACE9E0 80057840 01A86021 */  addu  $t4, $t5, $t0
/* ACE9E4 80057844 A7AC00AA */  sh    $t4, 0xaa($sp)
/* ACE9E8 80057848 8FA50044 */  lw    $a1, 0x44($sp)
/* ACE9EC 8005784C 0C010F0A */  jal   func_80043C28
/* ACE9F0 80057850 27A600A4 */   addiu $a2, $sp, 0xa4
/* ACE9F4 80057854 8FAF0040 */  lw    $t7, 0x40($sp)
/* ACE9F8 80057858 8FAE0048 */  lw    $t6, 0x48($sp)
/* ACE9FC 8005785C 8DF90000 */  lw    $t9, ($t7)
/* ACEA00 80057860 ADD90000 */  sw    $t9, ($t6)
/* ACEA04 80057864 8DF80004 */  lw    $t8, 4($t7)
/* ACEA08 80057868 ADD80004 */  sw    $t8, 4($t6)
/* ACEA0C 8005786C 8DF90008 */  lw    $t9, 8($t7)
/* ACEA10 80057870 ADD90008 */  sw    $t9, 8($t6)
.L80057874:
/* ACEA14 80057874 8FAA0038 */  lw    $t2, 0x38($sp)
/* ACEA18 80057878 8FAD003C */  lw    $t5, 0x3c($sp)
/* ACEA1C 8005787C 27AB00AC */  addiu $t3, $sp, 0xac
/* ACEA20 80057880 3C013E80 */  li    $at, 0x3E800000 # 0.000000
/* ACEA24 80057884 8DAE0000 */  lw    $t6, ($t5)
/* ACEA28 80057888 44810000 */  mtc1  $at, $f0
/* ACEA2C 8005788C 3C018014 */  lui   $at, %hi(D_8013A3E8)
/* ACEA30 80057890 AD6E0000 */  sw    $t6, ($t3)
/* ACEA34 80057894 8DAC0004 */  lw    $t4, 4($t5)
/* ACEA38 80057898 44060000 */  mfc1  $a2, $f0
/* ACEA3C 8005789C 44070000 */  mfc1  $a3, $f0
/* ACEA40 800578A0 AD6C0004 */  sw    $t4, 4($t3)
/* ACEA44 800578A4 8DAE0008 */  lw    $t6, 8($t5)
/* ACEA48 800578A8 27A400AC */  addiu $a0, $sp, 0xac
/* ACEA4C 800578AC AD6E0008 */  sw    $t6, 8($t3)
/* ACEA50 800578B0 C5440000 */  lwc1  $f4, ($t2)
/* ACEA54 800578B4 C7A60098 */  lwc1  $f6, 0x98($sp)
/* ACEA58 800578B8 C7B000B0 */  lwc1  $f16, 0xb0($sp)
/* ACEA5C 800578BC C42AA3E8 */  lwc1  $f10, %lo(D_8013A3E8)($at)
/* ACEA60 800578C0 46043200 */  add.s $f8, $f6, $f4
/* ACEA64 800578C4 8FA50044 */  lw    $a1, 0x44($sp)
/* ACEA68 800578C8 E7AA0010 */  swc1  $f10, 0x10($sp)
/* ACEA6C 800578CC 46088480 */  add.s $f18, $f16, $f8
/* ACEA70 800578D0 0C010E8F */  jal   func_80043A3C
/* ACEA74 800578D4 E7B200B0 */   swc1  $f18, 0xb0($sp)
/* ACEA78 800578D8 860F0008 */  lh    $t7, 8($s0)
/* ACEA7C 800578DC 25F8FFFF */  addiu $t8, $t7, -1
/* ACEA80 800578E0 A6180008 */  sh    $t8, 8($s0)
/* ACEA84 800578E4 86190008 */  lh    $t9, 8($s0)
/* ACEA88 800578E8 5F20008A */  bgtzl $t9, .L80057B14
/* ACEA8C 800578EC 8FB9003C */   lw    $t9, 0x3c($sp)
/* ACEA90 800578F0 860B015E */  lh    $t3, 0x15e($s0)
/* ACEA94 800578F4 26030018 */  addiu $v1, $s0, 0x18
/* ACEA98 800578F8 256D0001 */  addiu $t5, $t3, 1
/* ACEA9C 800578FC A60D015E */  sh    $t5, 0x15e($s0)
/* ACEAA0 80057900 846C0000 */  lh    $t4, ($v1)
/* ACEAA4 80057904 258E8001 */  addiu $t6, $t4, -0x7fff
/* ACEAA8 80057908 A46E0000 */  sh    $t6, ($v1)
/* ACEAAC 8005790C 8FAA0038 */  lw    $t2, 0x38($sp)
/* ACEAB0 80057910 8FB8003C */  lw    $t8, 0x3c($sp)
/* ACEAB4 80057914 27AF00AC */  addiu $t7, $sp, 0xac
/* ACEAB8 80057918 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ACEABC 8005791C 8F0B0000 */  lw    $t3, ($t8)
/* ACEAC0 80057920 44810000 */  mtc1  $at, $f0
/* ACEAC4 80057924 3C018014 */  lui   $at, %hi(D_8013A3EC)
/* ACEAC8 80057928 ADEB0000 */  sw    $t3, ($t7)
/* ACEACC 8005792C 8F190004 */  lw    $t9, 4($t8)
/* ACEAD0 80057930 260D0074 */  addiu $t5, $s0, 0x74
/* ACEAD4 80057934 26030018 */  addiu $v1, $s0, 0x18
/* ACEAD8 80057938 ADF90004 */  sw    $t9, 4($t7)
/* ACEADC 8005793C 8F0B0008 */  lw    $t3, 8($t8)
/* ACEAE0 80057940 44060000 */  mfc1  $a2, $f0
/* ACEAE4 80057944 44070000 */  mfc1  $a3, $f0
/* ACEAE8 80057948 ADEB0008 */  sw    $t3, 8($t7)
/* ACEAEC 8005794C C5440000 */  lwc1  $f4, ($t2)
/* ACEAF0 80057950 C7A60098 */  lwc1  $f6, 0x98($sp)
/* ACEAF4 80057954 C7A800B0 */  lwc1  $f8, 0xb0($sp)
/* ACEAF8 80057958 C42AA3EC */  lwc1  $f10, %lo(D_8013A3EC)($at)
/* ACEAFC 8005795C 46043400 */  add.s $f16, $f6, $f4
/* ACEB00 80057960 AFA30034 */  sw    $v1, 0x34($sp)
/* ACEB04 80057964 AFAD0040 */  sw    $t5, 0x40($sp)
/* ACEB08 80057968 8FA50044 */  lw    $a1, 0x44($sp)
/* ACEB0C 8005796C 46104480 */  add.s $f18, $f8, $f16
/* ACEB10 80057970 27A400AC */  addiu $a0, $sp, 0xac
/* ACEB14 80057974 E7AA0010 */  swc1  $f10, 0x10($sp)
/* ACEB18 80057978 0C010E8F */  jal   func_80043A3C
/* ACEB1C 8005797C E7B200B0 */   swc1  $f18, 0xb0($sp)
/* ACEB20 80057980 3C063E99 */  lui   $a2, (0x3E99999A >> 16) # lui $a2, 0x3e99
/* ACEB24 80057984 34C6999A */  ori   $a2, (0x3E99999A & 0xFFFF) # ori $a2, $a2, 0x999a
/* ACEB28 80057988 24040AAA */  li    $a0, 2730
/* ACEB2C 8005798C 87A500A0 */  lh    $a1, 0xa0($sp)
/* ACEB30 80057990 0C010E47 */  jal   func_8004391C
/* ACEB34 80057994 2407000A */   li    $a3, 10
/* ACEB38 80057998 8FA30034 */  lw    $v1, 0x34($sp)
/* ACEB3C 8005799C A7A200A8 */  sh    $v0, 0xa8($sp)
/* ACEB40 800579A0 3C063E99 */  lui   $a2, (0x3E99999A >> 16) # lui $a2, 0x3e99
/* ACEB44 800579A4 34C6999A */  ori   $a2, (0x3E99999A & 0xFFFF) # ori $a2, $a2, 0x999a
/* ACEB48 800579A8 87A500A2 */  lh    $a1, 0xa2($sp)
/* ACEB4C 800579AC 2407000A */  li    $a3, 10
/* ACEB50 800579B0 0C010E47 */  jal   func_8004391C
/* ACEB54 800579B4 84640000 */   lh    $a0, ($v1)
/* ACEB58 800579B8 3C014270 */  li    $at, 0x42700000 # 0.000000
/* ACEB5C 800579BC 44816000 */  mtc1  $at, $f12
/* ACEB60 800579C0 3C063E99 */  lui   $a2, (0x3E99999A >> 16) # lui $a2, 0x3e99
/* ACEB64 800579C4 A7A200AA */  sh    $v0, 0xaa($sp)
/* ACEB68 800579C8 34C6999A */  ori   $a2, (0x3E99999A & 0xFFFF) # ori $a2, $a2, 0x999a
/* ACEB6C 800579CC C7AE009C */  lwc1  $f14, 0x9c($sp)
/* ACEB70 800579D0 0C010E27 */  jal   func_8004389C
/* ACEB74 800579D4 3C073F80 */   lui   $a3, 0x3f80
/* ACEB78 800579D8 E7A000A4 */  swc1  $f0, 0xa4($sp)
/* ACEB7C 800579DC 8FA40040 */  lw    $a0, 0x40($sp)
/* ACEB80 800579E0 8FA50044 */  lw    $a1, 0x44($sp)
/* ACEB84 800579E4 0C010F0A */  jal   func_80043C28
/* ACEB88 800579E8 27A600A4 */   addiu $a2, $sp, 0xa4
/* ACEB8C 800579EC 8FAE0040 */  lw    $t6, 0x40($sp)
/* ACEB90 800579F0 8FAC0048 */  lw    $t4, 0x48($sp)
/* ACEB94 800579F4 8DD80000 */  lw    $t8, ($t6)
/* ACEB98 800579F8 AD980000 */  sw    $t8, ($t4)
/* ACEB9C 800579FC 8DCF0004 */  lw    $t7, 4($t6)
/* ACEBA0 80057A00 AD8F0004 */  sw    $t7, 4($t4)
/* ACEBA4 80057A04 8DD80008 */  lw    $t8, 8($t6)
/* ACEBA8 80057A08 AD980008 */  sw    $t8, 8($t4)
/* ACEBAC 80057A0C 8619000A */  lh    $t9, 0xa($s0)
/* ACEBB0 80057A10 272BFFFF */  addiu $t3, $t9, -1
/* ACEBB4 80057A14 A60B000A */  sh    $t3, 0xa($s0)
/* ACEBB8 80057A18 860D000A */  lh    $t5, 0xa($s0)
/* ACEBBC 80057A1C 5DA0003D */  bgtzl $t5, .L80057B14
/* ACEBC0 80057A20 8FB9003C */   lw    $t9, 0x3c($sp)
/* ACEBC4 80057A24 860C015E */  lh    $t4, 0x15e($s0)
/* ACEBC8 80057A28 258E0001 */  addiu $t6, $t4, 1
/* ACEBCC 80057A2C A60E015E */  sh    $t6, 0x15e($s0)
/* ACEBD0 80057A30 8FAA0038 */  lw    $t2, 0x38($sp)
/* ACEBD4 80057A34 8603015E */  lh    $v1, 0x15e($s0)
/* ACEBD8 80057A38 246F0001 */  addiu $t7, $v1, 1
/* ACEBDC 80057A3C A60F015E */  sh    $t7, 0x15e($s0)
.L80057A40:
/* ACEBE0 80057A40 8618014C */  lh    $t8, 0x14c($s0)
/* ACEBE4 80057A44 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ACEBE8 80057A48 3C0B8016 */  lui   $t3, %hi(D_8015BD7C) # $t3, 0x8016
/* ACEBEC 80057A4C 37190410 */  ori   $t9, $t8, 0x410
/* ACEBF0 80057A50 A619014C */  sh    $t9, 0x14c($s0)
/* ACEBF4 80057A54 AC20D3A0 */  sw    $zero, %lo(D_8011D3A0)($at)
/* ACEBF8 80057A58 3C018014 */  lui   $at, %hi(D_8013A3F0)
/* ACEBFC 80057A5C C426A3F0 */  lwc1  $f6, %lo(D_8013A3F0)($at)
/* ACEC00 80057A60 C60400D8 */  lwc1  $f4, 0xd8($s0)
/* ACEC04 80057A64 02002025 */  move  $a0, $s0
/* ACEC08 80057A68 24060002 */  li    $a2, 2
/* ACEC0C 80057A6C 4604303C */  c.lt.s $f6, $f4
/* ACEC10 80057A70 00000000 */  nop   
/* ACEC14 80057A74 45010021 */  bc1t  .L80057AFC
/* ACEC18 80057A78 00000000 */   nop   
/* ACEC1C 80057A7C 8D6BBD7C */  lw    $t3, %lo(D_8015BD7C)($t3)
/* ACEC20 80057A80 3C01FFFF */  lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
/* ACEC24 80057A84 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* ACEC28 80057A88 95620020 */  lhu   $v0, 0x20($t3)
/* ACEC2C 80057A8C 00416827 */  nor   $t5, $v0, $at
/* ACEC30 80057A90 11A0001A */  beqz  $t5, .L80057AFC
/* ACEC34 80057A94 2401BFFF */   li    $at, -16385
/* ACEC38 80057A98 00416027 */  nor   $t4, $v0, $at
/* ACEC3C 80057A9C 11800017 */  beqz  $t4, .L80057AFC
/* ACEC40 80057AA0 2401FFFD */   li    $at, -3
/* ACEC44 80057AA4 00417027 */  nor   $t6, $v0, $at
/* ACEC48 80057AA8 11C00014 */  beqz  $t6, .L80057AFC
/* ACEC4C 80057AAC 2401FFFB */   li    $at, -5
/* ACEC50 80057AB0 00417827 */  nor   $t7, $v0, $at
/* ACEC54 80057AB4 11E00011 */  beqz  $t7, .L80057AFC
/* ACEC58 80057AB8 2401FFF7 */   li    $at, -9
/* ACEC5C 80057ABC 0041C027 */  nor   $t8, $v0, $at
/* ACEC60 80057AC0 1300000E */  beqz  $t8, .L80057AFC
/* ACEC64 80057AC4 2401FFFE */   li    $at, -2
/* ACEC68 80057AC8 0041C827 */  nor   $t9, $v0, $at
/* ACEC6C 80057ACC 1320000B */  beqz  $t9, .L80057AFC
/* ACEC70 80057AD0 2401FFEF */   li    $at, -17
/* ACEC74 80057AD4 00415827 */  nor   $t3, $v0, $at
/* ACEC78 80057AD8 11600008 */  beqz  $t3, .L80057AFC
/* ACEC7C 80057ADC 2401DFFF */   li    $at, -8193
/* ACEC80 80057AE0 00416827 */  nor   $t5, $v0, $at
/* ACEC84 80057AE4 11A00005 */  beqz  $t5, .L80057AFC
/* ACEC88 80057AE8 00000000 */   nop   
/* ACEC8C 80057AEC 854C0008 */  lh    $t4, 8($t2)
/* ACEC90 80057AF0 318E0008 */  andi  $t6, $t4, 8
/* ACEC94 80057AF4 51C00007 */  beql  $t6, $zero, .L80057B14
/* ACEC98 80057AF8 8FB9003C */   lw    $t9, 0x3c($sp)
.L80057AFC:
/* ACEC9C 80057AFC 0C016952 */  jal   func_8005A548
/* ACECA0 80057B00 86050154 */   lh    $a1, 0x154($s0)
/* ACECA4 80057B04 860F014C */  lh    $t7, 0x14c($s0)
/* ACECA8 80057B08 35F80006 */  ori   $t8, $t7, 6
/* ACECAC 80057B0C A618014C */  sh    $t8, 0x14c($s0)
/* ACECB0 80057B10 8FB9003C */  lw    $t9, 0x3c($sp)
.L80057B14:
/* ACECB4 80057B14 27A400AC */  addiu $a0, $sp, 0xac
/* ACECB8 80057B18 8F2D0000 */  lw    $t5, ($t9)
/* ACECBC 80057B1C AC8D0000 */  sw    $t5, ($a0)
/* ACECC0 80057B20 8F2B0004 */  lw    $t3, 4($t9)
/* ACECC4 80057B24 AC8B0004 */  sw    $t3, 4($a0)
/* ACECC8 80057B28 8F2D0008 */  lw    $t5, 8($t9)
/* ACECCC 80057B2C AC8D0008 */  sw    $t5, 8($a0)
/* ACECD0 80057B30 C7A800B0 */  lwc1  $f8, 0xb0($sp)
/* ACECD4 80057B34 C7B00098 */  lwc1  $f16, 0x98($sp)
/* ACECD8 80057B38 8FA50048 */  lw    $a1, 0x48($sp)
/* ACECDC 80057B3C 46104480 */  add.s $f18, $f8, $f16
/* ACECE0 80057B40 0C01EFE4 */  jal   func_8007BF90
/* ACECE4 80057B44 E7B200B0 */   swc1  $f18, 0xb0($sp)
/* ACECE8 80057B48 8FA3003C */  lw    $v1, 0x3c($sp)
/* ACECEC 80057B4C E60000DC */  swc1  $f0, 0xdc($s0)
/* ACECF0 80057B50 C60A0050 */  lwc1  $f10, 0x50($s0)
/* ACECF4 80057B54 C4660000 */  lwc1  $f6, ($v1)
/* ACECF8 80057B58 C6080054 */  lwc1  $f8, 0x54($s0)
/* ACECFC 80057B5C 24020001 */  li    $v0, 1
/* ACED00 80057B60 46065101 */  sub.s $f4, $f10, $f6
/* ACED04 80057B64 C60A0058 */  lwc1  $f10, 0x58($s0)
/* ACED08 80057B68 E60400E4 */  swc1  $f4, 0xe4($s0)
/* ACED0C 80057B6C C4700004 */  lwc1  $f16, 4($v1)
/* ACED10 80057B70 46104481 */  sub.s $f18, $f8, $f16
/* ACED14 80057B74 E61200E8 */  swc1  $f18, 0xe8($s0)
/* ACED18 80057B78 C4660008 */  lwc1  $f6, 8($v1)
/* ACED1C 80057B7C 46065101 */  sub.s $f4, $f10, $f6
/* ACED20 80057B80 E60400EC */  swc1  $f4, 0xec($s0)
/* ACED24 80057B84 8FBF0024 */  lw    $ra, 0x24($sp)
/* ACED28 80057B88 8FB00020 */  lw    $s0, 0x20($sp)
/* ACED2C 80057B8C 27BD00C8 */  addiu $sp, $sp, 0xc8
/* ACED30 80057B90 03E00008 */  jr    $ra
/* ACED34 80057B94 00000000 */   nop   
# SPLIT
/* ACED38 80057B98 27BDFFE0 */  addiu $sp, $sp, -0x20
/* ACED3C 80057B9C AFA50024 */  sw    $a1, 0x24($sp)
/* ACED40 80057BA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* ACED44 80057BA4 AFA40020 */  sw    $a0, 0x20($sp)
/* ACED48 80057BA8 AFA60028 */  sw    $a2, 0x28($sp)
/* ACED4C 80057BAC 3C058014 */  lui   $a1, %hi(D_80139754) # $a1, 0x8014
/* ACED50 80057BB0 24A59754 */  addiu $a1, %lo(D_80139754) # addiu $a1, $a1, -0x68ac
/* ACED54 80057BB4 2406249A */  li    $a2, 9370
/* ACED58 80057BB8 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* ACED5C 80057BBC 2404016C */   li    $a0, 364
/* ACED60 80057BC0 1040000C */  beqz  $v0, .L80057BF4
/* ACED64 80057BC4 AFA2001C */   sw    $v0, 0x1c($sp)
/* ACED68 80057BC8 3C048014 */  lui   $a0, %hi(D_80139764) # $a0, 0x8014
/* ACED6C 80057BCC 24849764 */  addiu $a0, %lo(D_80139764) # addiu $a0, $a0, -0x689c
/* ACED70 80057BD0 0C00084C */  jal   osSyncPrintf
/* ACED74 80057BD4 240505B0 */   li    $a1, 1456
/* ACED78 80057BD8 8FA4001C */  lw    $a0, 0x1c($sp)
/* ACED7C 80057BDC 8FA50020 */  lw    $a1, 0x20($sp)
/* ACED80 80057BE0 8FA60024 */  lw    $a2, 0x24($sp)
/* ACED84 80057BE4 0C015F1B */  jal   func_80057C6C
/* ACED88 80057BE8 8FA70028 */   lw    $a3, 0x28($sp)
/* ACED8C 80057BEC 10000005 */  b     .L80057C04
/* ACED90 80057BF0 8FBF0014 */   lw    $ra, 0x14($sp)
.L80057BF4:
/* ACED94 80057BF4 3C048014 */  lui   $a0, %hi(D_80139794) # $a0, 0x8014
/* ACED98 80057BF8 0C00084C */  jal   osSyncPrintf
/* ACED9C 80057BFC 24849794 */   addiu $a0, %lo(D_80139794) # addiu $a0, $a0, -0x686c
/* ACEDA0 80057C00 8FBF0014 */  lw    $ra, 0x14($sp)
.L80057C04:
/* ACEDA4 80057C04 8FA2001C */  lw    $v0, 0x1c($sp)
/* ACEDA8 80057C08 27BD0020 */  addiu $sp, $sp, 0x20
/* ACEDAC 80057C0C 03E00008 */  jr    $ra
/* ACEDB0 80057C10 00000000 */   nop   
# SPLIT
/* ACEDB4 80057C14 27BDFFE8 */  addiu $sp, $sp, -0x18
/* ACEDB8 80057C18 AFBF0014 */  sw    $ra, 0x14($sp)
/* ACEDBC 80057C1C 1080000C */  beqz  $a0, .L80057C50
/* ACEDC0 80057C20 00803825 */   move  $a3, $a0
/* ACEDC4 80057C24 3C048014 */  lui   $a0, %hi(D_801397C4) # $a0, 0x8014
/* ACEDC8 80057C28 248497C4 */  addiu $a0, %lo(D_801397C4) # addiu $a0, $a0, -0x683c
/* ACEDCC 80057C2C 0C00084C */  jal   osSyncPrintf
/* ACEDD0 80057C30 AFA70018 */   sw    $a3, 0x18($sp)
/* ACEDD4 80057C34 3C058014 */  lui   $a1, %hi(D_801397E4) # $a1, 0x8014
/* ACEDD8 80057C38 8FA40018 */  lw    $a0, 0x18($sp)
/* ACEDDC 80057C3C 24A597E4 */  addiu $a1, %lo(D_801397E4) # addiu $a1, $a1, -0x681c
/* ACEDE0 80057C40 0C01EC35 */  jal   ZeldaArena_FreeDebug
/* ACEDE4 80057C44 240624AF */   li    $a2, 9391
/* ACEDE8 80057C48 10000005 */  b     .L80057C60
/* ACEDEC 80057C4C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80057C50:
/* ACEDF0 80057C50 3C048014 */  lui   $a0, %hi(D_801397F4) # $a0, 0x8014
/* ACEDF4 80057C54 0C00084C */  jal   osSyncPrintf
/* ACEDF8 80057C58 248497F4 */   addiu $a0, %lo(D_801397F4) # addiu $a0, $a0, -0x680c
/* ACEDFC 80057C5C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80057C60:
/* ACEE00 80057C60 27BD0018 */  addiu $sp, $sp, 0x18
/* ACEE04 80057C64 03E00008 */  jr    $ra
/* ACEE08 80057C68 00000000 */   nop   

