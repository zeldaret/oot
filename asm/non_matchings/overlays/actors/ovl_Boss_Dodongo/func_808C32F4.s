.late_rodata
glabel D_808CA6C4
    .float 0.7
    .balign 4

glabel D_808CA6C8
 .word 0x4622F983

.text
glabel func_808C32F4
/* 02164 808C32F4 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 02168 808C32F8 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 0216C 808C32FC AFB00030 */  sw      $s0, 0x0030($sp)
/* 02170 808C3300 AFA50054 */  sw      $a1, 0x0054($sp)
/* 02174 808C3304 848E01AA */  lh      $t6, 0x01AA($a0)           ## 000001AA
/* 02178 808C3308 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0217C 808C330C 15C0000C */  bne     $t6, $zero, .L808C3340
/* 02180 808C3310 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02184 808C3314 AFA4003C */  sw      $a0, 0x003C($sp)
/* 02188 808C3318 0C0295B2 */  jal     func_800A56C8
/* 0218C 808C331C 3C054160 */  lui     $a1, 0x4160                ## $a1 = 41600000
/* 02190 808C3320 10400050 */  beq     $v0, $zero, .L808C3464
/* 02194 808C3324 8FA4003C */  lw      $a0, 0x003C($sp)
/* 02198 808C3328 3C050602 */  lui     $a1, 0x0602                ## $a1 = 06020000
/* 0219C 808C332C 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 021A0 808C3330 24A5CAE0 */  addiu   $a1, $a1, 0xCAE0           ## $a1 = 0601CAE0
/* 021A4 808C3334 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 021A8 808C3338 1000004A */  beq     $zero, $zero, .L808C3464
/* 021AC 808C333C A60301AA */  sh      $v1, 0x01AA($s0)           ## 000001AA
.L808C3340:
/* 021B0 808C3340 860F01BC */  lh      $t7, 0x01BC($s0)           ## 000001BC
/* 021B4 808C3344 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 021B8 808C3348 11E10046 */  beq     $t7, $at, .L808C3464
/* 021BC 808C334C 00000000 */  nop
/* 021C0 808C3350 C6040164 */  lwc1    $f4, 0x0164($s0)           ## 00000164
/* 021C4 808C3354 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 021C8 808C3358 2401001F */  addiu   $at, $zero, 0x001F         ## $at = 0000001F
/* 021CC 808C335C 4600218D */  trunc.w.s $f6, $f4
/* 021D0 808C3360 44023000 */  mfc1    $v0, $f6
/* 021D4 808C3364 00000000 */  nop
/* 021D8 808C3368 10620003 */  beq     $v1, $v0, .L808C3378
/* 021DC 808C336C 00000000 */  nop
/* 021E0 808C3370 1441003C */  bne     $v0, $at, .L808C3464
/* 021E4 808C3374 00000000 */  nop
.L808C3378:
/* 021E8 808C3378 14620012 */  bne     $v1, $v0, .L808C33C4
/* 021EC 808C337C 8FA40054 */  lw      $a0, 0x0054($sp)
/* 021F0 808C3380 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 021F4 808C3384 44814000 */  mtc1    $at, $f8                   ## $f8 = 8.00
/* 021F8 808C3388 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 021FC 808C338C 240801F4 */  addiu   $t0, $zero, 0x01F4         ## $t0 = 000001F4
/* 02200 808C3390 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 02204 808C3394 AFA9001C */  sw      $t1, 0x001C($sp)
/* 02208 808C3398 AFA80018 */  sw      $t0, 0x0018($sp)
/* 0220C 808C339C AFB90010 */  sw      $t9, 0x0010($sp)
/* 02210 808C33A0 8FA40054 */  lw      $a0, 0x0054($sp)
/* 02214 808C33A4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02218 808C33A8 26060410 */  addiu   $a2, $s0, 0x0410           ## $a2 = 00000410
/* 0221C 808C33AC 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 02220 808C33B0 AFA00020 */  sw      $zero, 0x0020($sp)
/* 02224 808C33B4 0C00CC98 */  jal     func_80033260
/* 02228 808C33B8 E7A80014 */  swc1    $f8, 0x0014($sp)
/* 0222C 808C33BC 10000010 */  beq     $zero, $zero, .L808C3400
/* 02230 808C33C0 860D01BC */  lh      $t5, 0x01BC($s0)           ## 000001BC
.L808C33C4:
/* 02234 808C33C4 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 02238 808C33C8 44815000 */  mtc1    $at, $f10                  ## $f10 = 8.00
/* 0223C 808C33CC 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 02240 808C33D0 240B01F4 */  addiu   $t3, $zero, 0x01F4         ## $t3 = 000001F4
/* 02244 808C33D4 240C000A */  addiu   $t4, $zero, 0x000A         ## $t4 = 0000000A
/* 02248 808C33D8 AFAC001C */  sw      $t4, 0x001C($sp)
/* 0224C 808C33DC AFAB0018 */  sw      $t3, 0x0018($sp)
/* 02250 808C33E0 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 02254 808C33E4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02258 808C33E8 26060404 */  addiu   $a2, $s0, 0x0404           ## $a2 = 00000404
/* 0225C 808C33EC 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 02260 808C33F0 AFA00020 */  sw      $zero, 0x0020($sp)
/* 02264 808C33F4 0C00CC98 */  jal     func_80033260
/* 02268 808C33F8 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 0226C 808C33FC 860D01BC */  lh      $t5, 0x01BC($s0)           ## 000001BC
.L808C3400:
/* 02270 808C3400 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02274 808C3404 11A00005 */  beq     $t5, $zero, .L808C341C
/* 02278 808C3408 00000000 */  nop
/* 0227C 808C340C 0C01E221 */  jal     func_80078884
/* 02280 808C3410 24043808 */  addiu   $a0, $zero, 0x3808         ## $a0 = 00003808
/* 02284 808C3414 10000004 */  beq     $zero, $zero, .L808C3428
/* 02288 808C3418 860E01B4 */  lh      $t6, 0x01B4($s0)           ## 000001B4
.L808C341C:
/* 0228C 808C341C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 02290 808C3420 24053808 */  addiu   $a1, $zero, 0x3808         ## $a1 = 00003808
/* 02294 808C3424 860E01B4 */  lh      $t6, 0x01B4($s0)           ## 000001B4
.L808C3428:
/* 02298 808C3428 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 0229C 808C342C 240500B4 */  addiu   $a1, $zero, 0x00B4         ## $a1 = 000000B4
/* 022A0 808C3430 15C00008 */  bne     $t6, $zero, .L808C3454
/* 022A4 808C3434 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 022A8 808C3438 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022AC 808C343C 8FA50054 */  lw      $a1, 0x0054($sp)
/* 022B0 808C3440 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 022B4 808C3444 0C00CFA2 */  jal     func_80033E88
/* 022B8 808C3448 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 022BC 808C344C 10000005 */  beq     $zero, $zero, .L808C3464
/* 022C0 808C3450 00000000 */  nop
.L808C3454:
/* 022C4 808C3454 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 022C8 808C3458 A60F01B6 */  sh      $t7, 0x01B6($s0)           ## 000001B6
/* 022CC 808C345C 0C02A7DB */  jal     func_800A9F6C
/* 022D0 808C3460 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
.L808C3464:
/* 022D4 808C3464 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 022D8 808C3468 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 022DC 808C346C 3C01808D */  lui     $at, %hi(D_808CA6C4)       ## $at = 808D0000
/* 022E0 808C3470 C420A6C4 */  lwc1    $f0, %lo(D_808CA6C4)($at)
/* 022E4 808C3474 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 022E8 808C3478 44818000 */  mtc1    $at, $f16                  ## $f16 = 4.00
/* 022EC 808C347C 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 022F0 808C3480 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.25
/* 022F4 808C3484 46100482 */  mul.s   $f18, $f0, $f16
/* 022F8 808C3488 861801A0 */  lh      $t8, 0x01A0($s0)           ## 000001A0
/* 022FC 808C348C 3C08808D */  lui     $t0, %hi(D_808CA3F8)       ## $t0 = 808D0000
/* 02300 808C3490 46040182 */  mul.s   $f6, $f0, $f4
/* 02304 808C3494 0018C880 */  sll     $t9, $t8,  2
/* 02308 808C3498 0338C823 */  subu    $t9, $t9, $t8
/* 0230C 808C349C 0019C880 */  sll     $t9, $t9,  2
/* 02310 808C34A0 2508A3F8 */  addiu   $t0, $t0, %lo(D_808CA3F8)  ## $t0 = 808CA3F8
/* 02314 808C34A4 03284821 */  addu    $t1, $t9, $t0
/* 02318 808C34A8 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0231C 808C34AC AFA9004C */  sw      $t1, 0x004C($sp)
/* 02320 808C34B0 44073000 */  mfc1    $a3, $f6
/* 02324 808C34B4 44059000 */  mfc1    $a1, $f18
/* 02328 808C34B8 E60001EC */  swc1    $f0, 0x01EC($s0)           ## 000001EC
/* 0232C 808C34BC 260401E4 */  addiu   $a0, $s0, 0x01E4           ## $a0 = 000001E4
/* 02330 808C34C0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02334 808C34C4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 02338 808C34C8 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 0233C 808C34CC 8FAA004C */  lw      $t2, 0x004C($sp)
/* 02340 808C34D0 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 02344 808C34D4 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 02348 808C34D8 8E0701E4 */  lw      $a3, 0x01E4($s0)           ## 000001E4
/* 0234C 808C34DC 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 02350 808C34E0 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 02354 808C34E4 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 02358 808C34E8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 0235C 808C34EC E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 02360 808C34F0 8FAB004C */  lw      $t3, 0x004C($sp)
/* 02364 808C34F4 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 02368 808C34F8 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 0236C 808C34FC 8E0701E4 */  lw      $a3, 0x01E4($s0)           ## 000001E4
/* 02370 808C3500 8D650008 */  lw      $a1, 0x0008($t3)           ## 00000008
/* 02374 808C3504 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 02378 808C3508 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 0237C 808C350C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 02380 808C3510 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 02384 808C3514 8FA2004C */  lw      $v0, 0x004C($sp)
/* 02388 808C3518 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 0238C 808C351C 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 02390 808C3520 C4520000 */  lwc1    $f18, 0x0000($v0)          ## 00000000
/* 02394 808C3524 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
/* 02398 808C3528 3C0544FA */  lui     $a1, 0x44FA                ## $a1 = 44FA0000
/* 0239C 808C352C 46049181 */  sub.s   $f6, $f18, $f4
/* 023A0 808C3530 44812000 */  mtc1    $at, $f4                   ## $f4 = 80.00
/* 023A4 808C3534 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 023A8 808C3538 E7A60048 */  swc1    $f6, 0x0048($sp)
/* 023AC 808C353C C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 023B0 808C3540 C4480008 */  lwc1    $f8, 0x0008($v0)           ## 00000008
/* 023B4 808C3544 460A4401 */  sub.s   $f16, $f8, $f10
/* 023B8 808C3548 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 023BC 808C354C E7B00044 */  swc1    $f16, 0x0044($sp)
/* 023C0 808C3550 C61201EC */  lwc1    $f18, 0x01EC($s0)          ## 000001EC
/* 023C4 808C3554 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 023C8 808C3558 46049182 */  mul.s   $f6, $f18, $f4
/* 023CC 808C355C 44073000 */  mfc1    $a3, $f6
/* 023D0 808C3560 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 023D4 808C3564 00000000 */  nop
/* 023D8 808C3568 C7AC0048 */  lwc1    $f12, 0x0048($sp)
/* 023DC 808C356C 0C03F494 */  jal     Math_atan2f
/* 023E0 808C3570 C7AE0044 */  lwc1    $f14, 0x0044($sp)
/* 023E4 808C3574 3C01808D */  lui     $at, %hi(D_808CA6C8)       ## $at = 808D0000
/* 023E8 808C3578 C42AA6C8 */  lwc1    $f10, %lo(D_808CA6C8)($at)
/* 023EC 808C357C C60401EC */  lwc1    $f4, 0x01EC($s0)           ## 000001EC
/* 023F0 808C3580 C60601E8 */  lwc1    $f6, 0x01E8($s0)           ## 000001E8
/* 023F4 808C3584 460A0402 */  mul.s   $f16, $f0, $f10
/* 023F8 808C3588 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 023FC 808C358C AFAE0010 */  sw      $t6, 0x0010($sp)
/* 02400 808C3590 46062202 */  mul.s   $f8, $f4, $f6
/* 02404 808C3594 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 02408 808C3598 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 0240C 808C359C 4600848D */  trunc.w.s $f18, $f16
/* 02410 808C35A0 4600428D */  trunc.w.s $f10, $f8
/* 02414 808C35A4 44059000 */  mfc1    $a1, $f18
/* 02418 808C35A8 44075000 */  mfc1    $a3, $f10
/* 0241C 808C35AC 00052C00 */  sll     $a1, $a1, 16
/* 02420 808C35B0 00052C03 */  sra     $a1, $a1, 16
/* 02424 808C35B4 00073C00 */  sll     $a3, $a3, 16
/* 02428 808C35B8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 0242C 808C35BC 00073C03 */  sra     $a3, $a3, 16
/* 02430 808C35C0 260401C4 */  addiu   $a0, $s0, 0x01C4           ## $a0 = 000001C4
/* 02434 808C35C4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02438 808C35C8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 0243C 808C35CC 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 02440 808C35D0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 02444 808C35D4 AFA00010 */  sw      $zero, 0x0010($sp)
/* 02448 808C35D8 C7A00048 */  lwc1    $f0, 0x0048($sp)
/* 0244C 808C35DC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02450 808C35E0 44811000 */  mtc1    $at, $f2                   ## $f2 = 5.00
/* 02454 808C35E4 46000005 */  abs.s   $f0, $f0
/* 02458 808C35E8 4602003E */  c.le.s  $f0, $f2
/* 0245C 808C35EC C7A00044 */  lwc1    $f0, 0x0044($sp)
/* 02460 808C35F0 4502001E */  bc1fl   .L808C366C
/* 02464 808C35F4 860D01DA */  lh      $t5, 0x01DA($s0)           ## 000001DA
/* 02468 808C35F8 46000005 */  abs.s   $f0, $f0
/* 0246C 808C35FC 4602003E */  c.le.s  $f0, $f2
/* 02470 808C3600 00000000 */  nop
/* 02474 808C3604 45020019 */  bc1fl   .L808C366C
/* 02478 808C3608 860D01DA */  lh      $t5, 0x01DA($s0)           ## 000001DA
/* 0247C 808C360C 860F01A2 */  lh      $t7, 0x01A2($s0)           ## 000001A2
/* 02480 808C3610 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 02484 808C3614 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 02488 808C3618 E61001E8 */  swc1    $f16, 0x01E8($s0)          ## 000001E8
/* 0248C 808C361C 15E0000A */  bne     $t7, $zero, .L808C3648
/* 02490 808C3620 E61201E4 */  swc1    $f18, 0x01E4($s0)          ## 000001E4
/* 02494 808C3624 861801A0 */  lh      $t8, 0x01A0($s0)           ## 000001A0
/* 02498 808C3628 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 0249C 808C362C A61901A0 */  sh      $t9, 0x01A0($s0)           ## 000001A0
/* 024A0 808C3630 860801A0 */  lh      $t0, 0x01A0($s0)           ## 000001A0
/* 024A4 808C3634 29010004 */  slti    $at, $t0, 0x0004
/* 024A8 808C3638 5420000C */  bnel    $at, $zero, .L808C366C
/* 024AC 808C363C 860D01DA */  lh      $t5, 0x01DA($s0)           ## 000001DA
/* 024B0 808C3640 10000009 */  beq     $zero, $zero, .L808C3668
/* 024B4 808C3644 A60001A0 */  sh      $zero, 0x01A0($s0)         ## 000001A0
.L808C3648:
/* 024B8 808C3648 860901A0 */  lh      $t1, 0x01A0($s0)           ## 000001A0
/* 024BC 808C364C 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 024C0 808C3650 252AFFFF */  addiu   $t2, $t1, 0xFFFF           ## $t2 = FFFFFFFF
/* 024C4 808C3654 A60A01A0 */  sh      $t2, 0x01A0($s0)           ## 000001A0
/* 024C8 808C3658 860B01A0 */  lh      $t3, 0x01A0($s0)           ## 000001A0
/* 024CC 808C365C 05630003 */  bgezl   $t3, .L808C366C
/* 024D0 808C3660 860D01DA */  lh      $t5, 0x01DA($s0)           ## 000001DA
/* 024D4 808C3664 A60C01A0 */  sh      $t4, 0x01A0($s0)           ## 000001A0
.L808C3668:
/* 024D8 808C3668 860D01DA */  lh      $t5, 0x01DA($s0)           ## 000001DA
.L808C366C:
/* 024DC 808C366C 55A00021 */  bnel    $t5, $zero, .L808C36F4
/* 024E0 808C3670 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 024E4 808C3674 860E01BC */  lh      $t6, 0x01BC($s0)           ## 000001BC
/* 024E8 808C3678 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 024EC 808C367C 55C0001D */  bnel    $t6, $zero, .L808C36F4
/* 024F0 808C3680 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 024F4 808C3684 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 024F8 808C3688 44813000 */  mtc1    $at, $f6                   ## $f6 = 500.00
/* 024FC 808C368C 00000000 */  nop
/* 02500 808C3690 4606203C */  c.lt.s  $f4, $f6
/* 02504 808C3694 00000000 */  nop
/* 02508 808C3698 4502000E */  bc1fl   .L808C36D4
/* 0250C 808C369C 861901BA */  lh      $t9, 0x01BA($s0)           ## 000001BA
/* 02510 808C36A0 860F01A4 */  lh      $t7, 0x01A4($s0)           ## 000001A4
/* 02514 808C36A4 51E0000B */  beql    $t7, $zero, .L808C36D4
/* 02518 808C36A8 861901BA */  lh      $t9, 0x01BA($s0)           ## 000001BA
/* 0251C 808C36AC 861801BA */  lh      $t8, 0x01BA($s0)           ## 000001BA
/* 02520 808C36B0 57000008 */  bnel    $t8, $zero, .L808C36D4
/* 02524 808C36B4 861901BA */  lh      $t9, 0x01BA($s0)           ## 000001BA
/* 02528 808C36B8 0C230ACE */  jal     func_808C2B38
/* 0252C 808C36BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02530 808C36C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02534 808C36C4 8FA50054 */  lw      $a1, 0x0054($sp)
/* 02538 808C36C8 0C2314B8 */  jal     func_808C52E0
/* 0253C 808C36CC 2406FFFF */  addiu   $a2, $zero, 0xFFFF         ## $a2 = FFFFFFFF
/* 02540 808C36D0 861901BA */  lh      $t9, 0x01BA($s0)           ## 000001BA
.L808C36D4:
/* 02544 808C36D4 57200007 */  bnel    $t9, $zero, .L808C36F4
/* 02548 808C36D8 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 0254C 808C36DC 860801B8 */  lh      $t0, 0x01B8($s0)           ## 000001B8
/* 02550 808C36E0 55000004 */  bnel    $t0, $zero, .L808C36F4
/* 02554 808C36E4 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 02558 808C36E8 0C230A90 */  jal     func_808C2A40
/* 0255C 808C36EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02560 808C36F0 8FBF0034 */  lw      $ra, 0x0034($sp)
.L808C36F4:
/* 02564 808C36F4 8FB00030 */  lw      $s0, 0x0030($sp)
/* 02568 808C36F8 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 0256C 808C36FC 03E00008 */  jr      $ra
/* 02570 808C3700 00000000 */  nop


