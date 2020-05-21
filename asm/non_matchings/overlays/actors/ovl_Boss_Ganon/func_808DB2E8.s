glabel func_808DB2E8
/* 04A78 808DB2E8 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 04A7C 808DB2EC AFB10048 */  sw      $s1, 0x0048($sp)
/* 04A80 808DB2F0 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 04A84 808DB2F4 AFBF004C */  sw      $ra, 0x004C($sp)
/* 04A88 808DB2F8 24840150 */  addiu   $a0, $a0, 0x0150           ## $a0 = 00000150
/* 04A8C 808DB2FC AFB00044 */  sw      $s0, 0x0044($sp)
/* 04A90 808DB300 F7B60038 */  sdc1    $f22, 0x0038($sp)
/* 04A94 808DB304 F7B40030 */  sdc1    $f20, 0x0030($sp)
/* 04A98 808DB308 AFA5009C */  sw      $a1, 0x009C($sp)
/* 04A9C 808DB30C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 04AA0 808DB310 AFA4005C */  sw      $a0, 0x005C($sp)
/* 04AA4 808DB314 862401A2 */  lh      $a0, 0x01A2($s1)           ## 000001A2
/* 04AA8 808DB318 00800821 */  addu    $at, $a0, $zero
/* 04AAC 808DB31C 00042080 */  sll     $a0, $a0,  2
/* 04AB0 808DB320 00812021 */  addu    $a0, $a0, $at
/* 04AB4 808DB324 00042200 */  sll     $a0, $a0,  8
/* 04AB8 808DB328 00042400 */  sll     $a0, $a0, 16
/* 04ABC 808DB32C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 04AC0 808DB330 00042403 */  sra     $a0, $a0, 16
/* 04AC4 808DB334 862401A2 */  lh      $a0, 0x01A2($s1)           ## 000001A2
/* 04AC8 808DB338 C62401D0 */  lwc1    $f4, 0x01D0($s1)           ## 000001D0
/* 04ACC 808DB33C 00800821 */  addu    $at, $a0, $zero
/* 04AD0 808DB340 000420C0 */  sll     $a0, $a0,  3
/* 04AD4 808DB344 00812023 */  subu    $a0, $a0, $at
/* 04AD8 808DB348 00042200 */  sll     $a0, $a0,  8
/* 04ADC 808DB34C 00042400 */  sll     $a0, $a0, 16
/* 04AE0 808DB350 46002502 */  mul.s   $f20, $f4, $f0
/* 04AE4 808DB354 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 04AE8 808DB358 00042403 */  sra     $a0, $a0, 16
/* 04AEC 808DB35C C62601D0 */  lwc1    $f6, 0x01D0($s1)           ## 000001D0
/* 04AF0 808DB360 4405A000 */  mfc1    $a1, $f20
/* 04AF4 808DB364 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 04AF8 808DB368 46003582 */  mul.s   $f22, $f6, $f0
/* 04AFC 808DB36C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 04B00 808DB370 26240024 */  addiu   $a0, $s1, 0x0024           ## $a0 = 00000024
/* 04B04 808DB374 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 04B08 808DB378 8E2701C8 */  lw      $a3, 0x01C8($s1)           ## 000001C8
/* 04B0C 808DB37C 4405B000 */  mfc1    $a1, $f22
/* 04B10 808DB380 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 04B14 808DB384 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 04B18 808DB388 2624002C */  addiu   $a0, $s1, 0x002C           ## $a0 = 0000002C
/* 04B1C 808DB38C 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 04B20 808DB390 8E2701C8 */  lw      $a3, 0x01C8($s1)           ## 000001C8
/* 04B24 808DB394 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04B28 808DB398 4481A000 */  mtc1    $at, $f20                  ## $f20 = 1.00
/* 04B2C 808DB39C 4480B000 */  mtc1    $zero, $f22                ## $f22 = 0.00
/* 04B30 808DB3A0 262401D0 */  addiu   $a0, $s1, 0x01D0           ## $a0 = 000001D0
/* 04B34 808DB3A4 4406A000 */  mfc1    $a2, $f20
/* 04B38 808DB3A8 4405B000 */  mfc1    $a1, $f22
/* 04B3C 808DB3AC 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 04B40 808DB3B0 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 04B44 808DB3B4 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 04B48 808DB3B8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 04B4C 808DB3BC 26240028 */  addiu   $a0, $s1, 0x0028           ## $a0 = 00000028
/* 04B50 808DB3C0 3C054348 */  lui     $a1, 0x4348                ## $a1 = 43480000
/* 04B54 808DB3C4 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 04B58 808DB3C8 8E270060 */  lw      $a3, 0x0060($s1)           ## 00000060
/* 04B5C 808DB3CC 4406A000 */  mfc1    $a2, $f20
/* 04B60 808DB3D0 4407A000 */  mfc1    $a3, $f20
/* 04B64 808DB3D4 26240060 */  addiu   $a0, $s1, 0x0060           ## $a0 = 00000060
/* 04B68 808DB3D8 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 04B6C 808DB3DC 3C0541A0 */  lui     $a1, 0x41A0                ## $a1 = 41A00000
/* 04B70 808DB3E0 962E01C2 */  lhu     $t6, 0x01C2($s1)           ## 000001C2
/* 04B74 808DB3E4 2DC10006 */  sltiu   $at, $t6, 0x0006
/* 04B78 808DB3E8 102001BA */  beq     $at, $zero, .L808DBAD4
/* 04B7C 808DB3EC 000E7080 */  sll     $t6, $t6,  2
/* 04B80 808DB3F0 3C01808F */  lui     $at, %hi(jtbl_808F7FD0)       ## $at = 808F0000
/* 04B84 808DB3F4 002E0821 */  addu    $at, $at, $t6
/* 04B88 808DB3F8 8C2E7FD0 */  lw      $t6, %lo(jtbl_808F7FD0)($at)
/* 04B8C 808DB3FC 01C00008 */  jr      $t6
/* 04B90 808DB400 00000000 */  nop
glabel L808DB404
/* 04B94 808DB404 862F01B6 */  lh      $t7, 0x01B6($s1)           ## 000001B6
/* 04B98 808DB408 3C100600 */  lui     $s0, 0x0600                ## $s0 = 06000000
/* 04B9C 808DB40C 26101B0C */  addiu   $s0, $s0, 0x1B0C           ## $s0 = 06001B0C
/* 04BA0 808DB410 55E001B1 */  bnel    $t7, $zero, .L808DBAD8
/* 04BA4 808DB414 8FBF004C */  lw      $ra, 0x004C($sp)
/* 04BA8 808DB418 0C028800 */  jal     SkelAnime_GetFrameCount

/* 04BAC 808DB41C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 06001B0C
/* 04BB0 808DB420 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 04BB4 808DB424 4406B000 */  mfc1    $a2, $f22
/* 04BB8 808DB428 02002825 */  or      $a1, $s0, $zero            ## $a1 = 06001B0C
/* 04BBC 808DB42C 468042A0 */  cvt.s.w $f10, $f8
/* 04BC0 808DB430 E62A01CC */  swc1    $f10, 0x01CC($s1)          ## 000001CC
/* 04BC4 808DB434 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 04BC8 808DB438 8FA4005C */  lw      $a0, 0x005C($sp)
/* 04BCC 808DB43C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 04BD0 808DB440 100001A4 */  beq     $zero, $zero, .L808DBAD4
/* 04BD4 808DB444 A63801C2 */  sh      $t8, 0x01C2($s1)           ## 000001C2
glabel L808DB448
/* 04BD8 808DB448 8FA4005C */  lw      $a0, 0x005C($sp)
/* 04BDC 808DB44C 0C0295B2 */  jal     func_800A56C8
/* 04BE0 808DB450 8E2501CC */  lw      $a1, 0x01CC($s1)           ## 000001CC
/* 04BE4 808DB454 1040019F */  beq     $v0, $zero, .L808DBAD4
/* 04BE8 808DB458 3C100600 */  lui     $s0, 0x0600                ## $s0 = 06000000
/* 04BEC 808DB45C 26101FF8 */  addiu   $s0, $s0, 0x1FF8           ## $s0 = 06001FF8
/* 04BF0 808DB460 0C028800 */  jal     SkelAnime_GetFrameCount

/* 04BF4 808DB464 02002025 */  or      $a0, $s0, $zero            ## $a0 = 06001FF8
/* 04BF8 808DB468 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 04BFC 808DB46C 4406B000 */  mfc1    $a2, $f22
/* 04C00 808DB470 02002825 */  or      $a1, $s0, $zero            ## $a1 = 06001FF8
/* 04C04 808DB474 468084A0 */  cvt.s.w $f18, $f16
/* 04C08 808DB478 E63201CC */  swc1    $f18, 0x01CC($s1)          ## 000001CC
/* 04C0C 808DB47C 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 04C10 808DB480 8FA4005C */  lw      $a0, 0x005C($sp)
/* 04C14 808DB484 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 04C18 808DB488 24080064 */  addiu   $t0, $zero, 0x0064         ## $t0 = 00000064
/* 04C1C 808DB48C A63901C2 */  sh      $t9, 0x01C2($s1)           ## 000001C2
/* 04C20 808DB490 10000190 */  beq     $zero, $zero, .L808DBAD4
/* 04C24 808DB494 A62801B6 */  sh      $t0, 0x01B6($s1)           ## 000001B6
glabel L808DB498
/* 04C28 808DB498 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 04C2C 808DB49C A22901A0 */  sb      $t1, 0x01A0($s1)           ## 000001A0
/* 04C30 808DB4A0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 04C34 808DB4A4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 04C38 808DB4A8 2405316C */  addiu   $a1, $zero, 0x316C         ## $a1 = 0000316C
/* 04C3C 808DB4AC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 04C40 808DB4B0 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 04C44 808DB4B4 C62602F0 */  lwc1    $f6, 0x02F0($s1)           ## 000002F0
/* 04C48 808DB4B8 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 04C4C 808DB4BC C62402EC */  lwc1    $f4, 0x02EC($s1)           ## 000002EC
/* 04C50 808DB4C0 46083280 */  add.s   $f10, $f6, $f8
/* 04C54 808DB4C4 44818000 */  mtc1    $at, $f16                  ## $f16 = 30.00
/* 04C58 808DB4C8 E6240278 */  swc1    $f4, 0x0278($s1)           ## 00000278
/* 04C5C 808DB4CC C62402F4 */  lwc1    $f4, 0x02F4($s1)           ## 000002F4
/* 04C60 808DB4D0 46105480 */  add.s   $f18, $f10, $f16
/* 04C64 808DB4D4 26240284 */  addiu   $a0, $s1, 0x0284           ## $a0 = 00000284
/* 04C68 808DB4D8 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 04C6C 808DB4DC 3C073BC4 */  lui     $a3, 0x3BC4                ## $a3 = 3BC40000
/* 04C70 808DB4E0 E632027C */  swc1    $f18, 0x027C($s1)          ## 0000027C
/* 04C74 808DB4E4 E6240280 */  swc1    $f4, 0x0280($s1)           ## 00000280
/* 04C78 808DB4E8 AFA40054 */  sw      $a0, 0x0054($sp)
/* 04C7C 808DB4EC 34E79BA6 */  ori     $a3, $a3, 0x9BA6           ## $a3 = 3BC49BA6
/* 04C80 808DB4F0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 04C84 808DB4F4 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 04C88 808DB4F8 3C053E80 */  lui     $a1, 0x3E80                ## $a1 = 3E800000
/* 04C8C 808DB4FC 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 04C90 808DB500 44810000 */  mtc1    $at, $f0                   ## $f0 = 255.00
/* 04C94 808DB504 4406A000 */  mfc1    $a2, $f20
/* 04C98 808DB508 26240288 */  addiu   $a0, $s1, 0x0288           ## $a0 = 00000288
/* 04C9C 808DB50C 44050000 */  mfc1    $a1, $f0
/* 04CA0 808DB510 44070000 */  mfc1    $a3, $f0
/* 04CA4 808DB514 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 04CA8 808DB518 00000000 */  nop
/* 04CAC 808DB51C 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 04CB0 808DB520 3C073BC4 */  lui     $a3, 0x3BC4                ## $a3 = 3BC40000
/* 04CB4 808DB524 34E79BA6 */  ori     $a3, $a3, 0x9BA6           ## $a3 = 3BC49BA6
/* 04CB8 808DB528 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 04CBC 808DB52C 2624028C */  addiu   $a0, $s1, 0x028C           ## $a0 = 0000028C
/* 04CC0 808DB530 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 04CC4 808DB534 3C053E80 */  lui     $a1, 0x3E80                ## $a1 = 3E800000
/* 04CC8 808DB538 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
/* 04CCC 808DB53C 28410015 */  slti    $at, $v0, 0x0015
/* 04CD0 808DB540 14200008 */  bne     $at, $zero, .L808DB564
/* 04CD4 808DB544 2841003C */  slti    $at, $v0, 0x003C
/* 04CD8 808DB548 10200006 */  beq     $at, $zero, .L808DB564
/* 04CDC 808DB54C 26240290 */  addiu   $a0, $s1, 0x0290           ## $a0 = 00000290
/* 04CE0 808DB550 4406A000 */  mfc1    $a2, $f20
/* 04CE4 808DB554 3C05437F */  lui     $a1, 0x437F                ## $a1 = 437F0000
/* 04CE8 808DB558 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 04CEC 808DB55C 3C074170 */  lui     $a3, 0x4170                ## $a3 = 41700000
/* 04CF0 808DB560 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
.L808DB564:
/* 04CF4 808DB564 14400017 */  bne     $v0, $zero, .L808DB5C4
/* 04CF8 808DB568 262400B6 */  addiu   $a0, $s1, 0x00B6           ## $a0 = 000000B6
/* 04CFC 808DB56C 3C100600 */  lui     $s0, 0x0600                ## $s0 = 06000000
/* 04D00 808DB570 26100540 */  addiu   $s0, $s0, 0x0540           ## $s0 = 06000540
/* 04D04 808DB574 0C028800 */  jal     SkelAnime_GetFrameCount

/* 04D08 808DB578 02002025 */  or      $a0, $s0, $zero            ## $a0 = 06000540
/* 04D0C 808DB57C 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 04D10 808DB580 4406B000 */  mfc1    $a2, $f22
/* 04D14 808DB584 02002825 */  or      $a1, $s0, $zero            ## $a1 = 06000540
/* 04D18 808DB588 46803220 */  cvt.s.w $f8, $f6
/* 04D1C 808DB58C E62801CC */  swc1    $f8, 0x01CC($s1)           ## 000001CC
/* 04D20 808DB590 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 04D24 808DB594 8FA4005C */  lw      $a0, 0x005C($sp)
/* 04D28 808DB598 240A0003 */  addiu   $t2, $zero, 0x0003         ## $t2 = 00000003
/* 04D2C 808DB59C 240B0006 */  addiu   $t3, $zero, 0x0006         ## $t3 = 00000006
/* 04D30 808DB5A0 240C000F */  addiu   $t4, $zero, 0x000F         ## $t4 = 0000000F
/* 04D34 808DB5A4 A62A01C2 */  sh      $t2, 0x01C2($s1)           ## 000001C2
/* 04D38 808DB5A8 A62B01B6 */  sh      $t3, 0x01B6($s1)           ## 000001B6
/* 04D3C 808DB5AC A62C01B8 */  sh      $t4, 0x01B8($s1)           ## 000001B8
/* 04D40 808DB5B0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 04D44 808DB5B4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 04D48 808DB5B8 240539D5 */  addiu   $a1, $zero, 0x39D5         ## $a1 = 000039D5
/* 04D4C 808DB5BC 10000146 */  beq     $zero, $zero, .L808DBAD8
/* 04D50 808DB5C0 8FBF004C */  lw      $ra, 0x004C($sp)
.L808DB5C4:
/* 04D54 808DB5C4 8625008A */  lh      $a1, 0x008A($s1)           ## 0000008A
/* 04D58 808DB5C8 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 04D5C 808DB5CC 0C01E1EF */  jal     Math_SmoothScaleMaxS

/* 04D60 808DB5D0 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 04D64 808DB5D4 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
/* 04D68 808DB5D8 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 04D6C 808DB5DC 2841FFFC */  slti    $at, $v0, 0xFFFC
/* 04D70 808DB5E0 1020000F */  beq     $at, $zero, .L808DB620
/* 04D74 808DB5E4 00106880 */  sll     $t5, $s0,  2
.L808DB5E8:
/* 04D78 808DB5E8 022D2021 */  addu    $a0, $s1, $t5
/* 04D7C 808DB5EC 4405B000 */  mfc1    $a1, $f22
/* 04D80 808DB5F0 4406A000 */  mfc1    $a2, $f20
/* 04D84 808DB5F4 24840294 */  addiu   $a0, $a0, 0x0294           ## $a0 = 00000294
/* 04D88 808DB5F8 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 04D8C 808DB5FC 3C074220 */  lui     $a3, 0x4220                ## $a3 = 42200000
/* 04D90 808DB600 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 04D94 808DB604 00108400 */  sll     $s0, $s0, 16
/* 04D98 808DB608 00108403 */  sra     $s0, $s0, 16
/* 04D9C 808DB60C 2A01000F */  slti    $at, $s0, 0x000F
/* 04DA0 808DB610 5420FFF5 */  bnel    $at, $zero, .L808DB5E8
/* 04DA4 808DB614 00106880 */  sll     $t5, $s0,  2
/* 04DA8 808DB618 1000001D */  beq     $zero, $zero, .L808DB690
/* 04DAC 808DB61C 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
.L808DB620:
/* 04DB0 808DB620 28410007 */  slti    $at, $v0, 0x0007
/* 04DB4 808DB624 14200019 */  bne     $at, $zero, .L808DB68C
/* 04DB8 808DB628 2841001A */  slti    $at, $v0, 0x001A
/* 04DBC 808DB62C 50200018 */  beql    $at, $zero, .L808DB690
/* 04DC0 808DB630 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
/* 04DC4 808DB634 862201AC */  lh      $v0, 0x01AC($s1)           ## 000001AC
/* 04DC8 808DB638 2841000F */  slti    $at, $v0, 0x000F
/* 04DCC 808DB63C 10200003 */  beq     $at, $zero, .L808DB64C
/* 04DD0 808DB640 244E0001 */  addiu   $t6, $v0, 0x0001           ## $t6 = 00000001
/* 04DD4 808DB644 A62E01AC */  sh      $t6, 0x01AC($s1)           ## 000001AC
/* 04DD8 808DB648 862201AC */  lh      $v0, 0x01AC($s1)           ## 000001AC
.L808DB64C:
/* 04DDC 808DB64C 1840000F */  blez    $v0, .L808DB68C
/* 04DE0 808DB650 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 04DE4 808DB654 00107880 */  sll     $t7, $s0,  2
.L808DB658:
/* 04DE8 808DB658 022F2021 */  addu    $a0, $s1, $t7
/* 04DEC 808DB65C 4406A000 */  mfc1    $a2, $f20
/* 04DF0 808DB660 24840294 */  addiu   $a0, $a0, 0x0294           ## $a0 = 00000294
/* 04DF4 808DB664 3C054348 */  lui     $a1, 0x4348                ## $a1 = 43480000
/* 04DF8 808DB668 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 04DFC 808DB66C 3C074220 */  lui     $a3, 0x4220                ## $a3 = 42200000
/* 04E00 808DB670 863801AC */  lh      $t8, 0x01AC($s1)           ## 000001AC
/* 04E04 808DB674 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 04E08 808DB678 00108400 */  sll     $s0, $s0, 16
/* 04E0C 808DB67C 00108403 */  sra     $s0, $s0, 16
/* 04E10 808DB680 0218082A */  slt     $at, $s0, $t8
/* 04E14 808DB684 5420FFF4 */  bnel    $at, $zero, .L808DB658
/* 04E18 808DB688 00107880 */  sll     $t7, $s0,  2
.L808DB68C:
/* 04E1C 808DB68C 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
.L808DB690:
/* 04E20 808DB690 8FA40054 */  lw      $a0, 0x0054($sp)
/* 04E24 808DB694 3C053ECC */  lui     $a1, 0x3ECC                ## $a1 = 3ECC0000
/* 04E28 808DB698 2841001F */  slti    $at, $v0, 0x001F
/* 04E2C 808DB69C 1020000A */  beq     $at, $zero, .L808DB6C8
/* 04E30 808DB6A0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 04E34 808DB6A4 4481A000 */  mtc1    $at, $f20                  ## $f20 = 0.50
/* 04E38 808DB6A8 3C073C8B */  lui     $a3, 0x3C8B                ## $a3 = 3C8B0000
/* 04E3C 808DB6AC 34E74396 */  ori     $a3, $a3, 0x4396           ## $a3 = 3C8B4396
/* 04E40 808DB6B0 4406A000 */  mfc1    $a2, $f20
/* 04E44 808DB6B4 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 04E48 808DB6B8 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3ECCCCCD
/* 04E4C 808DB6BC C62A0284 */  lwc1    $f10, 0x0284($s1)          ## 00000284
/* 04E50 808DB6C0 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
/* 04E54 808DB6C4 E62A028C */  swc1    $f10, 0x028C($s1)          ## 0000028C
.L808DB6C8:
/* 04E58 808DB6C8 2841001F */  slti    $at, $v0, 0x001F
/* 04E5C 808DB6CC 10200013 */  beq     $at, $zero, .L808DB71C
/* 04E60 808DB6D0 262402D0 */  addiu   $a0, $s1, 0x02D0           ## $a0 = 000002D0
/* 04E64 808DB6D4 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 04E68 808DB6D8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 04E6C 808DB6DC 3C054234 */  lui     $a1, 0x4234                ## $a1 = 42340000
/* 04E70 808DB6E0 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 04E74 808DB6E4 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 04E78 808DB6E8 8E2B0278 */  lw      $t3, 0x0278($s1)           ## 00000278
/* 04E7C 808DB6EC 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 04E80 808DB6F0 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 04E84 808DB6F4 3C098016 */  lui     $t1, %hi(D_8015FCF8)
/* 04E88 808DB6F8 A639066E */  sh      $t9, 0x066E($s1)           ## 0000066E
/* 04E8C 808DB6FC A228066C */  sb      $t0, 0x066C($s1)           ## 0000066C
/* 04E90 808DB700 2529FCF8 */  addiu   $t1, %lo(D_8015FCF8)
/* 04E94 808DB704 AD2B0000 */  sw      $t3, 0x0000($t1)           ## 8015FCF8
/* 04E98 808DB708 8E2A027C */  lw      $t2, 0x027C($s1)           ## 0000027C
/* 04E9C 808DB70C AD2A0004 */  sw      $t2, 0x0004($t1)           ## 8015FCFC
/* 04EA0 808DB710 8E2B0280 */  lw      $t3, 0x0280($s1)           ## 00000280
/* 04EA4 808DB714 AD2B0008 */  sw      $t3, 0x0008($t1)           ## 8015FD00
/* 04EA8 808DB718 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
.L808DB71C:
/* 04EAC 808DB71C 2401002F */  addiu   $at, $zero, 0x002F         ## $at = 0000002F
/* 04EB0 808DB720 14410003 */  bne     $v0, $at, .L808DB730
/* 04EB4 808DB724 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 04EB8 808DB728 A22C0274 */  sb      $t4, 0x0274($s1)           ## 00000274
/* 04EBC 808DB72C 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
.L808DB730:
/* 04EC0 808DB730 2401002E */  addiu   $at, $zero, 0x002E         ## $at = 0000002E
/* 04EC4 808DB734 14410003 */  bne     $v0, $at, .L808DB744
/* 04EC8 808DB738 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 04ECC 808DB73C A22D0274 */  sb      $t5, 0x0274($s1)           ## 00000274
/* 04ED0 808DB740 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
.L808DB744:
/* 04ED4 808DB744 2401002D */  addiu   $at, $zero, 0x002D         ## $at = 0000002D
/* 04ED8 808DB748 14410003 */  bne     $v0, $at, .L808DB758
/* 04EDC 808DB74C 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 04EE0 808DB750 A22E0274 */  sb      $t6, 0x0274($s1)           ## 00000274
/* 04EE4 808DB754 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
.L808DB758:
/* 04EE8 808DB758 2401002C */  addiu   $at, $zero, 0x002C         ## $at = 0000002C
/* 04EEC 808DB75C 14410003 */  bne     $v0, $at, .L808DB76C
/* 04EF0 808DB760 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 04EF4 808DB764 A22F0274 */  sb      $t7, 0x0274($s1)           ## 00000274
/* 04EF8 808DB768 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
.L808DB76C:
/* 04EFC 808DB76C 2401002B */  addiu   $at, $zero, 0x002B         ## $at = 0000002B
/* 04F00 808DB770 14410003 */  bne     $v0, $at, .L808DB780
/* 04F04 808DB774 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 04F08 808DB778 A2380274 */  sb      $t8, 0x0274($s1)           ## 00000274
/* 04F0C 808DB77C 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
.L808DB780:
/* 04F10 808DB780 2401002A */  addiu   $at, $zero, 0x002A         ## $at = 0000002A
/* 04F14 808DB784 14410003 */  bne     $v0, $at, .L808DB794
/* 04F18 808DB788 24190006 */  addiu   $t9, $zero, 0x0006         ## $t9 = 00000006
/* 04F1C 808DB78C A2390274 */  sb      $t9, 0x0274($s1)           ## 00000274
/* 04F20 808DB790 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
.L808DB794:
/* 04F24 808DB794 2841001F */  slti    $at, $v0, 0x001F
/* 04F28 808DB798 142000CE */  bne     $at, $zero, .L808DBAD4
/* 04F2C 808DB79C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 04F30 808DB7A0 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 04F34 808DB7A4 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 04F38 808DB7A8 E7B60074 */  swc1    $f22, 0x0074($sp)
/* 04F3C 808DB7AC 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 04F40 808DB7B0 44818000 */  mtc1    $at, $f16                  ## $f16 = 150.00
/* 04F44 808DB7B4 E7B6007C */  swc1    $f22, 0x007C($sp)
/* 04F48 808DB7B8 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 04F4C 808DB7BC 46100480 */  add.s   $f18, $f0, $f16
/* 04F50 808DB7C0 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 04F54 808DB7C4 3C01808F */  lui     $at, %hi(D_808F7FE8)       ## $at = 808F0000
/* 04F58 808DB7C8 C4307FE8 */  lwc1    $f16, %lo(D_808F7FE8)($at)
/* 04F5C 808DB7CC E7B20078 */  swc1    $f18, 0x0078($sp)
/* 04F60 808DB7D0 8628008A */  lh      $t0, 0x008A($s1)           ## 0000008A
/* 04F64 808DB7D4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 04F68 808DB7D8 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 04F6C 808DB7DC 00000000 */  nop
/* 04F70 808DB7E0 468021A0 */  cvt.s.w $f6, $f4
/* 04F74 808DB7E4 46083283 */  div.s   $f10, $f6, $f8
/* 04F78 808DB7E8 46105302 */  mul.s   $f12, $f10, $f16
/* 04F7C 808DB7EC 0C034348 */  jal     Matrix_RotateY
/* 04F80 808DB7F0 00000000 */  nop
/* 04F84 808DB7F4 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 04F88 808DB7F8 44816000 */  mtc1    $at, $f12                  ## $f12 = 65536.00
/* 04F8C 808DB7FC 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 04F90 808DB800 00000000 */  nop
/* 04F94 808DB804 46000306 */  mov.s   $f12, $f0
/* 04F98 808DB808 0C0343B5 */  jal     Matrix_RotateZ
/* 04F9C 808DB80C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04FA0 808DB810 27A40074 */  addiu   $a0, $sp, 0x0074           ## $a0 = FFFFFFDC
/* 04FA4 808DB814 0C0346BD */  jal     Matrix_MultVec3f
/* 04FA8 808DB818 27A50068 */  addiu   $a1, $sp, 0x0068           ## $a1 = FFFFFFD0
/* 04FAC 808DB81C C6320278 */  lwc1    $f18, 0x0278($s1)          ## 00000278
/* 04FB0 808DB820 C7A40068 */  lwc1    $f4, 0x0068($sp)
/* 04FB4 808DB824 C7AA006C */  lwc1    $f10, 0x006C($sp)
/* 04FB8 808DB828 8FA4009C */  lw      $a0, 0x009C($sp)
/* 04FBC 808DB82C 46049180 */  add.s   $f6, $f18, $f4
/* 04FC0 808DB830 C7A40070 */  lwc1    $f4, 0x0070($sp)
/* 04FC4 808DB834 27A50080 */  addiu   $a1, $sp, 0x0080           ## $a1 = FFFFFFE8
/* 04FC8 808DB838 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 04FCC 808DB83C E7A60080 */  swc1    $f6, 0x0080($sp)
/* 04FD0 808DB840 C628027C */  lwc1    $f8, 0x027C($s1)           ## 0000027C
/* 04FD4 808DB844 460A4400 */  add.s   $f16, $f8, $f10
/* 04FD8 808DB848 E7B00084 */  swc1    $f16, 0x0084($sp)
/* 04FDC 808DB84C C6320280 */  lwc1    $f18, 0x0280($s1)          ## 00000280
/* 04FE0 808DB850 46049180 */  add.s   $f6, $f18, $f4
/* 04FE4 808DB854 0C235C0D */  jal     func_808D7034
/* 04FE8 808DB858 E7A60088 */  swc1    $f6, 0x0088($sp)
/* 04FEC 808DB85C 1000009E */  beq     $zero, $zero, .L808DBAD8
/* 04FF0 808DB860 8FBF004C */  lw      $ra, 0x004C($sp)
glabel L808DB864
/* 04FF4 808DB864 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 04FF8 808DB868 A22901A0 */  sb      $t1, 0x01A0($s1)           ## 000001A0
/* 04FFC 808DB86C 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 05000 808DB870 00105080 */  sll     $t2, $s0,  2
.L808DB874:
/* 05004 808DB874 022A2021 */  addu    $a0, $s1, $t2
/* 05008 808DB878 4405B000 */  mfc1    $a1, $f22
/* 0500C 808DB87C 4406A000 */  mfc1    $a2, $f20
/* 05010 808DB880 24840294 */  addiu   $a0, $a0, 0x0294           ## $a0 = 00000294
/* 05014 808DB884 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 05018 808DB888 3C074220 */  lui     $a3, 0x4220                ## $a3 = 42200000
/* 0501C 808DB88C 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 05020 808DB890 00108400 */  sll     $s0, $s0, 16
/* 05024 808DB894 00108403 */  sra     $s0, $s0, 16
/* 05028 808DB898 2A01000F */  slti    $at, $s0, 0x000F
/* 0502C 808DB89C 5420FFF5 */  bnel    $at, $zero, .L808DB874
/* 05030 808DB8A0 00105080 */  sll     $t2, $s0,  2
/* 05034 808DB8A4 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
/* 05038 808DB8A8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0503C 808DB8AC 3C0B8090 */  lui     $t3, %hi(D_808F93C0)       ## $t3 = 80900000
/* 05040 808DB8B0 14410008 */  bne     $v0, $at, .L808DB8D4
/* 05044 808DB8B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 05048 808DB8B8 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 0504C 808DB8BC 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.00
/* 05050 808DB8C0 8D6B93C0 */  lw      $t3, %lo(D_808F93C0)($t3)
/* 05054 808DB8C4 240528C7 */  addiu   $a1, $zero, 0x28C7         ## $a1 = 000028C7
/* 05058 808DB8C8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0505C 808DB8CC E56816C0 */  swc1    $f8, 0x16C0($t3)           ## 809016C0
/* 05060 808DB8D0 862201B6 */  lh      $v0, 0x01B6($s1)           ## 000001B6
.L808DB8D4:
/* 05064 808DB8D4 1440001C */  bne     $v0, $zero, .L808DB948
/* 05068 808DB8D8 26240284 */  addiu   $a0, $s1, 0x0284           ## $a0 = 00000284
/* 0506C 808DB8DC 4405A000 */  mfc1    $a1, $f20
/* 05070 808DB8E0 3C063DA3 */  lui     $a2, 0x3DA3                ## $a2 = 3DA30000
/* 05074 808DB8E4 0C01E123 */  jal     Math_SmoothDownscaleMaxF

/* 05078 808DB8E8 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3DA3D70A
/* 0507C 808DB8EC C62A0284 */  lwc1    $f10, 0x0284($s1)          ## 00000284
/* 05080 808DB8F0 4405A000 */  mfc1    $a1, $f20
/* 05084 808DB8F4 262402D0 */  addiu   $a0, $s1, 0x02D0           ## $a0 = 000002D0
/* 05088 808DB8F8 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 0508C 808DB8FC 0C01E123 */  jal     Math_SmoothDownscaleMaxF

/* 05090 808DB900 E62A028C */  swc1    $f10, 0x028C($s1)          ## 0000028C
/* 05094 808DB904 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 05098 808DB908 4481A000 */  mtc1    $at, $f20                  ## $f20 = 0.50
/* 0509C 808DB90C 26240278 */  addiu   $a0, $s1, 0x0278           ## $a0 = 00000278
/* 050A0 808DB910 8E2501FC */  lw      $a1, 0x01FC($s1)           ## 000001FC
/* 050A4 808DB914 4406A000 */  mfc1    $a2, $f20
/* 050A8 808DB918 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 050AC 808DB91C 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 050B0 808DB920 4406A000 */  mfc1    $a2, $f20
/* 050B4 808DB924 2624027C */  addiu   $a0, $s1, 0x027C           ## $a0 = 0000027C
/* 050B8 808DB928 8E250200 */  lw      $a1, 0x0200($s1)           ## 00000200
/* 050BC 808DB92C 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 050C0 808DB930 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 050C4 808DB934 4406A000 */  mfc1    $a2, $f20
/* 050C8 808DB938 26240280 */  addiu   $a0, $s1, 0x0280           ## $a0 = 00000280
/* 050CC 808DB93C 8E250204 */  lw      $a1, 0x0204($s1)           ## 00000204
/* 050D0 808DB940 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 050D4 808DB944 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
.L808DB948:
/* 050D8 808DB948 862C01B8 */  lh      $t4, 0x01B8($s1)           ## 000001B8
/* 050DC 808DB94C 3C100600 */  lui     $s0, 0x0600                ## $s0 = 06000000
/* 050E0 808DB950 26100FE8 */  addiu   $s0, $s0, 0x0FE8           ## $s0 = 06000FE8
/* 050E4 808DB954 55800060 */  bnel    $t4, $zero, .L808DBAD8
/* 050E8 808DB958 8FBF004C */  lw      $ra, 0x004C($sp)
/* 050EC 808DB95C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 050F0 808DB960 02002025 */  or      $a0, $s0, $zero            ## $a0 = 06000FE8
/* 050F4 808DB964 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 050F8 808DB968 4406B000 */  mfc1    $a2, $f22
/* 050FC 808DB96C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 06000FE8
/* 05100 808DB970 468084A0 */  cvt.s.w $f18, $f16
/* 05104 808DB974 E63201CC */  swc1    $f18, 0x01CC($s1)          ## 000001CC
/* 05108 808DB978 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 0510C 808DB97C 8FA4005C */  lw      $a0, 0x005C($sp)
/* 05110 808DB980 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 05114 808DB984 A62D01C2 */  sh      $t5, 0x01C2($s1)           ## 000001C2
/* 05118 808DB988 E6360288 */  swc1    $f22, 0x0288($s1)          ## 00000288
/* 0511C 808DB98C E6360290 */  swc1    $f22, 0x0290($s1)          ## 00000290
/* 05120 808DB990 E6360284 */  swc1    $f22, 0x0284($s1)          ## 00000284
/* 05124 808DB994 1000004F */  beq     $zero, $zero, .L808DBAD4
/* 05128 808DB998 E636028C */  swc1    $f22, 0x028C($s1)          ## 0000028C
glabel L808DB99C
/* 0512C 808DB99C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 05130 808DB9A0 A22E01A0 */  sb      $t6, 0x01A0($s1)           ## 000001A0
/* 05134 808DB9A4 8FA4005C */  lw      $a0, 0x005C($sp)
/* 05138 808DB9A8 0C0295B2 */  jal     func_800A56C8
/* 0513C 808DB9AC 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 05140 808DB9B0 10400021 */  beq     $v0, $zero, .L808DBA38
/* 05144 808DB9B4 8FA6009C */  lw      $a2, 0x009C($sp)
/* 05148 808DB9B8 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 0514C 808DB9BC AFA40058 */  sw      $a0, 0x0058($sp)
/* 05150 808DB9C0 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 05154 808DB9C4 C62401FC */  lwc1    $f4, 0x01FC($s1)           ## 000001FC
.L808DB9C8:
/* 05158 808DB9C8 26180104 */  addiu   $t8, $s0, 0x0104           ## $t8 = 00000104
/* 0515C 808DB9CC 8FA40058 */  lw      $a0, 0x0058($sp)
/* 05160 808DB9D0 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 05164 808DB9D4 C6260200 */  lwc1    $f6, 0x0200($s1)           ## 00000200
/* 05168 808DB9D8 8FA6009C */  lw      $a2, 0x009C($sp)
/* 0516C 808DB9DC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05170 808DB9E0 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 05174 808DB9E4 C6280204 */  lwc1    $f8, 0x0204($s1)           ## 00000204
/* 05178 808DB9E8 AFA0001C */  sw      $zero, 0x001C($sp)
/* 0517C 808DB9EC 240700E8 */  addiu   $a3, $zero, 0x00E8         ## $a3 = 000000E8
/* 05180 808DB9F0 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 05184 808DB9F4 862F008A */  lh      $t7, 0x008A($s1)           ## 0000008A
/* 05188 808DB9F8 AFB80028 */  sw      $t8, 0x0028($sp)
/* 0518C 808DB9FC AFA00024 */  sw      $zero, 0x0024($sp)
/* 05190 808DBA00 0C00C916 */  jal     Actor_SpawnAttached

/* 05194 808DBA04 AFAF0020 */  sw      $t7, 0x0020($sp)
/* 05198 808DBA08 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 0519C 808DBA0C 00108400 */  sll     $s0, $s0, 16
/* 051A0 808DBA10 00108403 */  sra     $s0, $s0, 16
/* 051A4 808DBA14 2A010005 */  slti    $at, $s0, 0x0005
/* 051A8 808DBA18 5420FFEB */  bnel    $at, $zero, .L808DB9C8
/* 051AC 808DBA1C C62401FC */  lwc1    $f4, 0x01FC($s1)           ## 000001FC
/* 051B0 808DBA20 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 051B4 808DBA24 0C00BE0A */  jal     Audio_PlayActorSound2

/* 051B8 808DBA28 240539D4 */  addiu   $a1, $zero, 0x39D4         ## $a1 = 000039D4
/* 051BC 808DBA2C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 051C0 808DBA30 0C00BE0A */  jal     Audio_PlayActorSound2

/* 051C4 808DBA34 2405396D */  addiu   $a1, $zero, 0x396D         ## $a1 = 0000396D
.L808DBA38:
/* 051C8 808DBA38 8FA4005C */  lw      $a0, 0x005C($sp)
/* 051CC 808DBA3C 0C0295B2 */  jal     func_800A56C8
/* 051D0 808DBA40 3C054040 */  lui     $a1, 0x4040                ## $a1 = 40400000
/* 051D4 808DBA44 10400008 */  beq     $v0, $zero, .L808DBA68
/* 051D8 808DBA48 3C0141D0 */  lui     $at, 0x41D0                ## $at = 41D00000
/* 051DC 808DBA4C 3C198090 */  lui     $t9, %hi(D_808F93C0)       ## $t9 = 80900000
/* 051E0 808DBA50 8F3993C0 */  lw      $t9, %lo(D_808F93C0)($t9)
/* 051E4 808DBA54 44815000 */  mtc1    $at, $f10                  ## $f10 = 26.00
/* 051E8 808DBA58 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 051EC 808DBA5C 240528C7 */  addiu   $a1, $zero, 0x28C7         ## $a1 = 000028C7
/* 051F0 808DBA60 0C00BE0A */  jal     Audio_PlayActorSound2

/* 051F4 808DBA64 E72A16C4 */  swc1    $f10, 0x16C4($t9)          ## 809016C4
.L808DBA68:
/* 051F8 808DBA68 8FA4005C */  lw      $a0, 0x005C($sp)
/* 051FC 808DBA6C 0C0295B2 */  jal     func_800A56C8
/* 05200 808DBA70 8E2501CC */  lw      $a1, 0x01CC($s1)           ## 000001CC
/* 05204 808DBA74 10400017 */  beq     $v0, $zero, .L808DBAD4
/* 05208 808DBA78 3C100600 */  lui     $s0, 0x0600                ## $s0 = 06000000
/* 0520C 808DBA7C 26101440 */  addiu   $s0, $s0, 0x1440           ## $s0 = 06001440
/* 05210 808DBA80 0C028800 */  jal     SkelAnime_GetFrameCount

/* 05214 808DBA84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 06001440
/* 05218 808DBA88 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 0521C 808DBA8C 4406B000 */  mfc1    $a2, $f22
/* 05220 808DBA90 02002825 */  or      $a1, $s0, $zero            ## $a1 = 06001440
/* 05224 808DBA94 468084A0 */  cvt.s.w $f18, $f16
/* 05228 808DBA98 E63201CC */  swc1    $f18, 0x01CC($s1)          ## 000001CC
/* 0522C 808DBA9C 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 05230 808DBAA0 8FA4005C */  lw      $a0, 0x005C($sp)
/* 05234 808DBAA4 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 05238 808DBAA8 1000000A */  beq     $zero, $zero, .L808DBAD4
/* 0523C 808DBAAC A62801C2 */  sh      $t0, 0x01C2($s1)           ## 000001C2
glabel L808DBAB0
/* 05240 808DBAB0 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 05244 808DBAB4 A22901A0 */  sb      $t1, 0x01A0($s1)           ## 000001A0
/* 05248 808DBAB8 8FA4005C */  lw      $a0, 0x005C($sp)
/* 0524C 808DBABC 0C0295B2 */  jal     func_800A56C8
/* 05250 808DBAC0 8E2501CC */  lw      $a1, 0x01CC($s1)           ## 000001CC
/* 05254 808DBAC4 10400003 */  beq     $v0, $zero, .L808DBAD4
/* 05258 808DBAC8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0525C 808DBACC 0C236EBC */  jal     func_808DBAF0
/* 05260 808DBAD0 8FA5009C */  lw      $a1, 0x009C($sp)
.L808DBAD4:
/* 05264 808DBAD4 8FBF004C */  lw      $ra, 0x004C($sp)
.L808DBAD8:
/* 05268 808DBAD8 D7B40030 */  ldc1    $f20, 0x0030($sp)
/* 0526C 808DBADC D7B60038 */  ldc1    $f22, 0x0038($sp)
/* 05270 808DBAE0 8FB00044 */  lw      $s0, 0x0044($sp)
/* 05274 808DBAE4 8FB10048 */  lw      $s1, 0x0048($sp)
/* 05278 808DBAE8 03E00008 */  jr      $ra
/* 0527C 808DBAEC 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
