glabel func_80A5F414
/* 04124 80A5F414 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 04128 80A5F418 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0412C 80A5F41C AFBF002C */  sw      $ra, 0x002C($sp)
/* 04130 80A5F420 AFB00028 */  sw      $s0, 0x0028($sp)
/* 04134 80A5F424 AFA5003C */  sw      $a1, 0x003C($sp)
/* 04138 80A5F428 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 0413C 80A5F42C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04140 80A5F430 0C296F1A */  jal     func_80A5BC68
/* 04144 80A5F434 8FA5003C */  lw      $a1, 0x003C($sp)
/* 04148 80A5F438 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 0414C 80A5F43C 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 04150 80A5F440 844E05BE */  lh      $t6, 0x05BE($v0)           ## 801605BE
/* 04154 80A5F444 11C00041 */  beq     $t6, $zero, .L80A5F54C
/* 04158 80A5F448 00000000 */  nop
/* 0415C 80A5F44C 8E0F0158 */  lw      $t7, 0x0158($s0)           ## 00000158
/* 04160 80A5F450 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 04164 80A5F454 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 04168 80A5F458 15E0003C */  bne     $t7, $zero, .L80A5F54C
/* 0416C 80A5F45C 00000000 */  nop
/* 04170 80A5F460 A44005BE */  sh      $zero, 0x05BE($v0)         ## 801605BE
/* 04174 80A5F464 0C296EEF */  jal     func_80A5BBBC
/* 04178 80A5F468 8FA4003C */  lw      $a0, 0x003C($sp)
/* 0417C 80A5F46C 14400028 */  bne     $v0, $zero, .L80A5F510
/* 04180 80A5F470 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 04184 80A5F474 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04188 80A5F478 0C296F65 */  jal     func_80A5BD94
/* 0418C 80A5F47C 8FA5003C */  lw      $a1, 0x003C($sp)
/* 04190 80A5F480 10400032 */  beq     $v0, $zero, .L80A5F54C
/* 04194 80A5F484 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 04198 80A5F488 3C188013 */  lui     $t8, %hi(D_801333E8)
/* 0419C 80A5F48C 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 041A0 80A5F490 271833E8 */  addiu   $t8, %lo(D_801333E8)
/* 041A4 80A5F494 AFB80014 */  sw      $t8, 0x0014($sp)
/* 041A8 80A5F498 AFA70010 */  sw      $a3, 0x0010($sp)
/* 041AC 80A5F49C 24042805 */  addiu   $a0, $zero, 0x2805         ## $a0 = 00002805
/* 041B0 80A5F4A0 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 041B4 80A5F4A4 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 041B8 80A5F4A8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 041BC 80A5F4AC A6000250 */  sh      $zero, 0x0250($s0)         ## 00000250
/* 041C0 80A5F4B0 8FA5003C */  lw      $a1, 0x003C($sp)
/* 041C4 80A5F4B4 0C297DD8 */  jal     func_80A5F760
/* 041C8 80A5F4B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 041CC 80A5F4BC 8FB9003C */  lw      $t9, 0x003C($sp)
/* 041D0 80A5F4C0 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 041D4 80A5F4C4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 041D8 80A5F4C8 0C016AA4 */  jal     Camera_SetParam
/* 041DC 80A5F4CC 8F240790 */  lw      $a0, 0x0790($t9)           ## 00000790
/* 041E0 80A5F4D0 8FA8003C */  lw      $t0, 0x003C($sp)
/* 041E4 80A5F4D4 24050038 */  addiu   $a1, $zero, 0x0038         ## $a1 = 00000038
/* 041E8 80A5F4D8 0C0169DF */  jal     func_8005A77C
/* 041EC 80A5F4DC 8D040790 */  lw      $a0, 0x0790($t0)           ## 00000790
/* 041F0 80A5F4E0 8FA9003C */  lw      $t1, 0x003C($sp)
/* 041F4 80A5F4E4 240A0051 */  addiu   $t2, $zero, 0x0051         ## $t2 = 00000051
/* 041F8 80A5F4E8 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 041FC 80A5F4EC 8D240790 */  lw      $a0, 0x0790($t1)           ## 00000790
/* 04200 80A5F4F0 AFA00018 */  sw      $zero, 0x0018($sp)
/* 04204 80A5F4F4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 04208 80A5F4F8 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 0420C 80A5F4FC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 04210 80A5F500 0C016BF5 */  jal     Camera_SetCameraData
              ## setCameraData
/* 04214 80A5F504 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 04218 80A5F508 10000010 */  beq     $zero, $zero, .L80A5F54C
/* 0421C 80A5F50C 00000000 */  nop
.L80A5F510:
/* 04220 80A5F510 3C0B8013 */  lui     $t3, %hi(D_801333E8)
/* 04224 80A5F514 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 04228 80A5F518 256B33E8 */  addiu   $t3, %lo(D_801333E8)
/* 0422C 80A5F51C AFAB0014 */  sw      $t3, 0x0014($sp)
/* 04230 80A5F520 AFA70010 */  sw      $a3, 0x0010($sp)
/* 04234 80A5F524 24042805 */  addiu   $a0, $zero, 0x2805         ## $a0 = 00002805
/* 04238 80A5F528 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 0423C 80A5F52C 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 04240 80A5F530 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 04244 80A5F534 A6000250 */  sh      $zero, 0x0250($s0)         ## 00000250
/* 04248 80A5F538 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0424C 80A5F53C 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 04250 80A5F540 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 04254 80A5F544 0C297D7E */  jal     func_80A5F5F8
/* 04258 80A5F548 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
.L80A5F54C:
/* 0425C 80A5F54C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 04260 80A5F550 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 04264 80A5F554 50400024 */  beql    $v0, $zero, .L80A5F5E8
/* 04268 80A5F558 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0426C 80A5F55C 8E020210 */  lw      $v0, 0x0210($s0)           ## 00000210
/* 04270 80A5F560 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 04274 80A5F564 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 04278 80A5F568 10400009 */  beq     $v0, $zero, .L80A5F590
/* 0427C 80A5F56C 00000000 */  nop
/* 04280 80A5F570 54410004 */  bnel    $v0, $at, .L80A5F584
/* 04284 80A5F574 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 04288 80A5F578 10000005 */  beq     $zero, $zero, .L80A5F590
/* 0428C 80A5F57C 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 04290 80A5F580 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L80A5F584:
/* 04294 80A5F584 14410002 */  bne     $v0, $at, .L80A5F590
/* 04298 80A5F588 00000000 */  nop
/* 0429C 80A5F58C 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
.L80A5F590:
/* 042A0 80A5F590 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 042A4 80A5F594 AFA30034 */  sw      $v1, 0x0034($sp)
/* 042A8 80A5F598 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 042AC 80A5F59C 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 042B0 80A5F5A0 8FA30034 */  lw      $v1, 0x0034($sp)
/* 042B4 80A5F5A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 042B8 80A5F5A8 4600303C */  c.lt.s  $f6, $f0
/* 042BC 80A5F5AC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 042C0 80A5F5B0 3C0580A6 */  lui     $a1, %hi(D_80A66678)       ## $a1 = 80A60000
/* 042C4 80A5F5B4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 042C8 80A5F5B8 45000003 */  bc1f    .L80A5F5C8
/* 042CC 80A5F5BC 000370C0 */  sll     $t6, $v1,  3
/* 042D0 80A5F5C0 10000001 */  beq     $zero, $zero, .L80A5F5C8
/* 042D4 80A5F5C4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A5F5C8:
/* 042D8 80A5F5C8 00026080 */  sll     $t4, $v0,  2
/* 042DC 80A5F5CC 018E7821 */  addu    $t7, $t4, $t6
/* 042E0 80A5F5D0 00AF2821 */  addu    $a1, $a1, $t7
/* 042E4 80A5F5D4 44060000 */  mfc1    $a2, $f0
/* 042E8 80A5F5D8 44070000 */  mfc1    $a3, $f0
/* 042EC 80A5F5DC 0C297C6C */  jal     func_80A5F1B0
/* 042F0 80A5F5E0 8CA56678 */  lw      $a1, %lo(D_80A66678)($a1)
/* 042F4 80A5F5E4 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A5F5E8:
/* 042F8 80A5F5E8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 042FC 80A5F5EC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 04300 80A5F5F0 03E00008 */  jr      $ra
/* 04304 80A5F5F4 00000000 */  nop
