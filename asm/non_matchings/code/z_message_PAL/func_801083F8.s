.rdata
glabel D_80153ED0
    # Recording Start / Recording Start / Recording Start / Recording Start ->
    .asciz "録音開始 録音開始 録音開始 録音開始  -> "
    .balign 4

glabel D_80153EFC
    # Recording Playback / Recording Playback / Recording Playback / Recording Playback ->
    .asciz "録音再生 録音再生 録音再生 録音再生  -> "
    .balign 4

glabel D_80153F28
    # 8 Note Recording Start / 8 Note Recording Start / 8 Note Recording Start ->
    .asciz "８音録音開始 ８音録音開始 ８音録音開始  -> "
    .balign 4

glabel D_80153F54
    # 8 Note Playback / 8 Note Playback / 8 Note Playback ->
    .asciz "８音再生 ８音再生 ８音再生  -> "
    .balign 4

glabel D_80153F74
    # Musical Round Start / Musical Round Start / Musical Round Start / Musical Round Start ->
    .asciz "輪唱開始 輪唱開始 輪唱開始 輪唱開始  -> "
    .balign 4

glabel D_80153FA0
    # Frog Chorus / Frog Chorus ->
    .asciz "カエルの合唱 カエルの合唱  -> "
    .balign 4

glabel D_80153FC0
    # Ocarina（%d）
    .asciz "オカリナ（%d） "
    .balign 4

glabel D_80153FD0
    .asciz "000000000000  -> "
    .balign 4

glabel D_80153FE4
    .asciz "111111111111  -> "
    .balign 4

glabel D_80153FF8
    .asciz "222222222222  -> "
    .balign 4

glabel D_8015400C
    .asciz "msg_mode=%d\n"
    .balign 4

.text
glabel func_801083F8
/* B7F598 801083F8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B7F59C 801083FC 3C0E0001 */  lui   $t6, 1
/* B7F5A0 80108400 AFBF001C */  sw    $ra, 0x1c($sp)
/* B7F5A4 80108404 AFB00018 */  sw    $s0, 0x18($sp)
/* B7F5A8 80108408 01C47021 */  addu  $t6, $t6, $a0
/* B7F5AC 8010840C 91CE03DC */  lbu   $t6, 0x3dc($t6)
/* B7F5B0 80108410 24010006 */  li    $at, 6
/* B7F5B4 80108414 240F0001 */  li    $t7, 1
/* B7F5B8 80108418 15C100A0 */  bne   $t6, $at, .L8010869C
/* B7F5BC 8010841C 249020D8 */   addiu $s0, $a0, 0x20d8
/* B7F5C0 80108420 3C010001 */  lui   $at, 1
/* B7F5C4 80108424 00240821 */  addu  $at, $at, $a0
/* B7F5C8 80108428 A42F04C6 */  sh    $t7, 0x4c6($at)
/* B7F5CC 8010842C 34018000 */  li    $at, 32768
/* B7F5D0 80108430 0201C021 */  addu  $t8, $s0, $at
/* B7F5D4 80108434 AFB80024 */  sw    $t8, 0x24($sp)
/* B7F5D8 80108438 970563F0 */  lhu   $a1, 0x63f0($t8)
/* B7F5DC 8010843C 2401002A */  li    $at, 42
/* B7F5E0 80108440 24080021 */  li    $t0, 33
/* B7F5E4 80108444 14A10007 */  bne   $a1, $at, .L80108464
/* B7F5E8 80108448 3C048015 */   lui   $a0, %hi(D_80153ED0) # $a0, 0x8015
/* B7F5EC 8010844C 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F5F0 80108450 A0286305 */  sb    $t0, 0x6305($at)
/* B7F5F4 80108454 0C00084C */  jal   osSyncPrintf
/* B7F5F8 80108458 24843ED0 */   addiu $a0, %lo(D_80153ED0) # addiu $a0, $a0, 0x3ed0
/* B7F5FC 8010845C 1000008B */  b     .L8010868C
/* B7F600 80108460 8FB90024 */   lw    $t9, 0x24($sp)
.L80108464:
/* B7F604 80108464 2401002B */  li    $at, 43
/* B7F608 80108468 14A10021 */  bne   $a1, $at, .L801084F0
/* B7F60C 8010846C 3C048015 */   lui   $a0, %hi(D_80153EFC) # $a0, 0x8015
/* B7F610 80108470 0C00084C */  jal   osSyncPrintf
/* B7F614 80108474 24843EFC */   addiu $a0, %lo(D_80153EFC) # addiu $a0, $a0, 0x3efc
/* B7F618 80108478 0C03B616 */  jal   func_800ED858
/* B7F61C 8010847C 24040001 */   li    $a0, 1
/* B7F620 80108480 0C03B616 */  jal   func_800ED858
/* B7F624 80108484 24040001 */   li    $a0, 1
/* B7F628 80108488 0C03B8FE */  jal   func_800EE3F8
/* B7F62C 8010848C 00000000 */   nop   
/* B7F630 80108490 3C038015 */  lui   $v1, %hi(D_8014B2FC) # $v1, 0x8015
/* B7F634 80108494 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F638 80108498 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B7F63C 8010849C 2463B2FC */  addiu $v1, %lo(D_8014B2FC) # addiu $v1, $v1, -0x4d04
/* B7F640 801084A0 A4600000 */  sh    $zero, ($v1)
/* B7F644 801084A4 84690000 */  lh    $t1, ($v1)
/* B7F648 801084A8 3C048015 */  lui   $a0, %hi(D_8014B2F8) # $a0, 0x8015
/* B7F64C 801084AC 8FAB0024 */  lw    $t3, 0x24($sp)
/* B7F650 801084B0 2484B2F8 */  addiu $a0, %lo(D_8014B2F8) # addiu $a0, $a0, -0x4d08
/* B7F654 801084B4 A4890000 */  sh    $t1, ($a0)
/* B7F658 801084B8 848A0000 */  lh    $t2, ($a0)
/* B7F65C 801084BC 8D6C62B8 */  lw    $t4, 0x62b8($t3)
/* B7F660 801084C0 0C041A6C */  jal   func_801069B0
/* B7F664 801084C4 A18A0002 */   sb    $t2, 2($t4)
/* B7F668 801084C8 240D0003 */  li    $t5, 3
/* B7F66C 801084CC 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F670 801084D0 240E0023 */  li    $t6, 35
/* B7F674 801084D4 A02D63E8 */  sb    $t5, 0x63e8($at)
/* B7F678 801084D8 A02E6305 */  sb    $t6, 0x6305($at)
/* B7F67C 801084DC 2404000F */  li    $a0, 15
/* B7F680 801084E0 0C03B64F */  jal   func_800ED93C
/* B7F684 801084E4 24050001 */   li    $a1, 1
/* B7F688 801084E8 10000068 */  b     .L8010868C
/* B7F68C 801084EC 8FB90024 */   lw    $t9, 0x24($sp)
.L801084F0:
/* B7F690 801084F0 2401002C */  li    $at, 44
/* B7F694 801084F4 14A10008 */  bne   $a1, $at, .L80108518
/* B7F698 801084F8 240F0024 */   li    $t7, 36
/* B7F69C 801084FC 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F6A0 80108500 3C048015 */  lui   $a0, %hi(D_80153F28) # $a0, 0x8015
/* B7F6A4 80108504 A02F6305 */  sb    $t7, 0x6305($at)
/* B7F6A8 80108508 0C00084C */  jal   osSyncPrintf
/* B7F6AC 8010850C 24843F28 */   addiu $a0, %lo(D_80153F28) # addiu $a0, $a0, 0x3f28
/* B7F6B0 80108510 1000005E */  b     .L8010868C
/* B7F6B4 80108514 8FB90024 */   lw    $t9, 0x24($sp)
.L80108518:
/* B7F6B8 80108518 2401002D */  li    $at, 45
/* B7F6BC 8010851C 14A10021 */  bne   $a1, $at, .L801085A4
/* B7F6C0 80108520 3C048015 */   lui   $a0, %hi(D_80153F54) # $a0, 0x8015
/* B7F6C4 80108524 0C00084C */  jal   osSyncPrintf
/* B7F6C8 80108528 24843F54 */   addiu $a0, %lo(D_80153F54) # addiu $a0, $a0, 0x3f54
/* B7F6CC 8010852C 0C03B616 */  jal   func_800ED858
/* B7F6D0 80108530 24040001 */   li    $a0, 1
/* B7F6D4 80108534 0C03B616 */  jal   func_800ED858
/* B7F6D8 80108538 24040001 */   li    $a0, 1
/* B7F6DC 8010853C 0C03B8FE */  jal   func_800EE3F8
/* B7F6E0 80108540 00000000 */   nop   
/* B7F6E4 80108544 3C038015 */  lui   $v1, %hi(D_8014B2FC) # $v1, 0x8015
/* B7F6E8 80108548 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F6EC 8010854C AC2262B9 */  sw    $v0, 0x62b9($at)
/* B7F6F0 80108550 2463B2FC */  addiu $v1, %lo(D_8014B2FC) # addiu $v1, $v1, -0x4d04
/* B7F6F4 80108554 A4600000 */  sh    $zero, ($v1)
/* B7F6F8 80108558 84780000 */  lh    $t8, ($v1)
/* B7F6FC 8010855C 3C048015 */  lui   $a0, %hi(D_8014B2F8) # $a0, 0x8015
/* B7F700 80108560 8FA80024 */  lw    $t0, 0x24($sp)
/* B7F704 80108564 2484B2F8 */  addiu $a0, %lo(D_8014B2F8) # addiu $a0, $a0, -0x4d08
/* B7F708 80108568 A4980000 */  sh    $t8, ($a0)
/* B7F70C 8010856C 84990000 */  lh    $t9, ($a0)
/* B7F710 80108570 8D0962B8 */  lw    $t1, 0x62b8($t0)
/* B7F714 80108574 0C041A6C */  jal   func_801069B0
/* B7F718 80108578 A1390002 */   sb    $t9, 2($t1)
/* B7F71C 8010857C 240B0003 */  li    $t3, 3
/* B7F720 80108580 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F724 80108584 240A0028 */  li    $t2, 40
/* B7F728 80108588 A02B63E8 */  sb    $t3, 0x63e8($at)
/* B7F72C 8010858C A02A6305 */  sb    $t2, 0x6305($at)
/* B7F730 80108590 2404000D */  li    $a0, 13
/* B7F734 80108594 0C03B64F */  jal   func_800ED93C
/* B7F738 80108598 24050001 */   li    $a1, 1
/* B7F73C 8010859C 1000003B */  b     .L8010868C
/* B7F740 801085A0 8FB90024 */   lw    $t9, 0x24($sp)
.L801085A4:
/* B7F744 801085A4 2401002E */  li    $at, 46
/* B7F748 801085A8 14A10008 */  bne   $a1, $at, .L801085CC
/* B7F74C 801085AC 240C0029 */   li    $t4, 41
/* B7F750 801085B0 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F754 801085B4 3C048015 */  lui   $a0, %hi(D_80153F74) # $a0, 0x8015
/* B7F758 801085B8 A02C6305 */  sb    $t4, 0x6305($at)
/* B7F75C 801085BC 0C00084C */  jal   osSyncPrintf
/* B7F760 801085C0 24843F74 */   addiu $a0, %lo(D_80153F74) # addiu $a0, $a0, 0x3f74
/* B7F764 801085C4 10000031 */  b     .L8010868C
/* B7F768 801085C8 8FB90024 */   lw    $t9, 0x24($sp)
.L801085CC:
/* B7F76C 801085CC 2401002F */  li    $at, 47
/* B7F770 801085D0 14A10009 */  bne   $a1, $at, .L801085F8
/* B7F774 801085D4 3C048015 */   lui   $a0, %hi(D_80153FC0)
/* B7F778 801085D8 240D0031 */  li    $t5, 49
/* B7F77C 801085DC 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F780 801085E0 3C048015 */  lui   $a0, %hi(D_80153FA0) # $a0, 0x8015
/* B7F784 801085E4 A02D6305 */  sb    $t5, 0x6305($at)
/* B7F788 801085E8 0C00084C */  jal   osSyncPrintf
/* B7F78C 801085EC 24843FA0 */   addiu $a0, %lo(D_80153FA0) # addiu $a0, $a0, 0x3fa0
/* B7F790 801085F0 10000026 */  b     .L8010868C
/* B7F794 801085F4 8FB90024 */   lw    $t9, 0x24($sp)
.L801085F8:
/* B7F798 801085F8 0C00084C */  jal   osSyncPrintf
/* B7F79C 801085FC 24843FC0 */   addiu $a0, %lo(D_80153FC0)
/* B7F7A0 80108600 8FAE0024 */  lw    $t6, 0x24($sp)
/* B7F7A4 80108604 3C048015 */  lui   $a0, %hi(D_80153FD0) # $a0, 0x8015
/* B7F7A8 80108608 24010001 */  li    $at, 1
/* B7F7AC 8010860C 95C563F0 */  lhu   $a1, 0x63f0($t6)
/* B7F7B0 80108610 240F0009 */  li    $t7, 9
/* B7F7B4 80108614 24843FD0 */  addiu $a0, %lo(D_80153FD0) # addiu $a0, $a0, 0x3fd0
/* B7F7B8 80108618 50A00005 */  beql  $a1, $zero, .L80108630
/* B7F7BC 8010861C 26017FFF */   addiu $at, $s0, 0x7fff
/* B7F7C0 80108620 10A10002 */  beq   $a1, $at, .L8010862C
/* B7F7C4 80108624 28A10022 */   slti  $at, $a1, 0x22
/* B7F7C8 80108628 14200005 */  bnez  $at, .L80108640
.L8010862C:
/* B7F7CC 8010862C 26017FFF */   addiu $at, $s0, 0x7fff
.L80108630:
/* B7F7D0 80108630 0C00084C */  jal   osSyncPrintf
/* B7F7D4 80108634 A02F6305 */   sb    $t7, 0x6305($at)
/* B7F7D8 80108638 10000014 */  b     .L8010868C
/* B7F7DC 8010863C 8FB90024 */   lw    $t9, 0x24($sp)
.L80108640:
/* B7F7E0 80108640 28A10002 */  slti  $at, $a1, 2
/* B7F7E4 80108644 1420000B */  bnez  $at, .L80108674
/* B7F7E8 80108648 2408000B */   li    $t0, 11
/* B7F7EC 8010864C 28A1000E */  slti  $at, $a1, 0xe
/* B7F7F0 80108650 10200008 */  beqz  $at, .L80108674
/* B7F7F4 80108654 2418000A */   li    $t8, 10
/* B7F7F8 80108658 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F7FC 8010865C 3C048015 */  lui   $a0, %hi(D_80153FE4) # $a0, 0x8015
/* B7F800 80108660 A0386305 */  sb    $t8, 0x6305($at)
/* B7F804 80108664 0C00084C */  jal   osSyncPrintf
/* B7F808 80108668 24843FE4 */   addiu $a0, %lo(D_80153FE4) # addiu $a0, $a0, 0x3fe4
/* B7F80C 8010866C 10000007 */  b     .L8010868C
/* B7F810 80108670 8FB90024 */   lw    $t9, 0x24($sp)
.L80108674:
/* B7F814 80108674 26017FFF */  addiu $at, $s0, 0x7fff
/* B7F818 80108678 3C048015 */  lui   $a0, %hi(D_80153FF8) # $a0, 0x8015
/* B7F81C 8010867C A0286305 */  sb    $t0, 0x6305($at)
/* B7F820 80108680 0C00084C */  jal   osSyncPrintf
/* B7F824 80108684 24843FF8 */   addiu $a0, %lo(D_80153FF8) # addiu $a0, $a0, 0x3ff8
/* B7F828 80108688 8FB90024 */  lw    $t9, 0x24($sp)
.L8010868C:
/* B7F82C 8010868C 3C048015 */  lui   $a0, %hi(D_8015400C) # $a0, 0x8015
/* B7F830 80108690 2484400C */  addiu $a0, %lo(D_8015400C) # addiu $a0, $a0, 0x400c
/* B7F834 80108694 0C00084C */  jal   osSyncPrintf
/* B7F838 80108698 93256304 */   lbu   $a1, 0x6304($t9)
.L8010869C:
/* B7F83C 8010869C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B7F840 801086A0 8FB00018 */  lw    $s0, 0x18($sp)
/* B7F844 801086A4 27BD0030 */  addiu $sp, $sp, 0x30
/* B7F848 801086A8 03E00008 */  jr    $ra
/* B7F84C 801086AC 00000000 */   nop   

