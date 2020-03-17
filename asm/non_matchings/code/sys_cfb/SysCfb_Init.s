.rdata
glabel D_801462D0
    .asciz "８Ｍバイト以上のメモリが搭載されています\n"
    # EUC-JP: ８Ｍバイト以上のメモリが搭載されています | 8MB or more memory is installed
    .balign 4

glabel D_801462FC
    .asciz "RAM 8M mode (N64DD対応)\n"
    # EUC-JP: 対応 | Correspondence
    .balign 4

glabel D_80146318
    .asciz "このバージョンのマージンは %dK バイトです\n"
    # EUC-JP: このバージョンのマージンは %dK バイトです | The margin for this version is% dK bytes
    .balign 4

glabel D_80146344
    .asciz "RAM4M mode\n"
    .balign 4

glabel D_80146350
    .asciz "../sys_cfb.c"
    .balign 4

glabel D_80146360
    .asciz "システムが使用する最終アドレスは %08x です\n"
    # EUC-JP: システムが使用する最終アドレスは %08x です | The final address used by the system is% 08x
    .balign 4

glabel D_8014638C
    .asciz "フレームバッファのアドレスは %08x と %08x です\n"
    # EUC-JP: フレームバッファのアドレスは %08x と %08x です | Frame buffer addresses are% 08x and% 08x
    .balign 4

.text
glabel SysCfb_Init
/* B41540 800CA3A0 3C028000 */  lui   $v0, %hi(osMemSize) # $v0, 0x8000
/* B41544 800CA3A4 8C420318 */  lw    $v0, %lo(osMemSize)($v0)
/* B41548 800CA3A8 3C010080 */  lui   $at, 0x80
/* B4154C 800CA3AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B41550 800CA3B0 0041082B */  sltu  $at, $v0, $at
/* B41554 800CA3B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B41558 800CA3B8 1420001C */  bnez  $at, .L800CA42C
/* B4155C 800CA3BC AFA40018 */   sw    $a0, 0x18($sp)
/* B41560 800CA3C0 3C048014 */  lui   $a0, %hi(D_801462D0) # $a0, 0x8014
/* B41564 800CA3C4 0C00084C */  jal   osSyncPrintf
/* B41568 800CA3C8 248462D0 */   addiu $a0, %lo(D_801462D0) # addiu $a0, $a0, 0x62d0
/* B4156C 800CA3CC 8FAE0018 */  lw    $t6, 0x18($sp)
/* B41570 800CA3D0 24010001 */  li    $at, 1
/* B41574 800CA3D4 3C048014 */  lui   $a0, %hi(D_801462FC) # $a0, 0x8014
/* B41578 800CA3D8 15C10009 */  bne   $t6, $at, .L800CA400
/* B4157C 800CA3DC 00000000 */   nop   
/* B41580 800CA3E0 0C00084C */  jal   osSyncPrintf
/* B41584 800CA3E4 248462FC */   addiu $a0, %lo(D_801462FC) # addiu $a0, $a0, 0x62fc
/* B41588 800CA3E8 3C028017 */  lui   $v0, %hi(sSysCfbEnd) # $v0, 0x8017
/* B4158C 800CA3EC 3C0F805F */  lui   $t7, (0x805FB000 >> 16) # lui $t7, 0x805f
/* B41590 800CA3F0 2442A598 */  addiu $v0, %lo(sSysCfbEnd) # addiu $v0, $v0, -0x5a68
/* B41594 800CA3F4 35EFB000 */  ori   $t7, (0x805FB000 & 0xFFFF) # ori $t7, $t7, 0xb000
/* B41598 800CA3F8 1000001E */  b     .L800CA474
/* B4159C 800CA3FC AC4F0000 */   sw    $t7, ($v0)
.L800CA400:
/* B415A0 800CA400 3C048014 */  lui   $a0, %hi(D_80146318) # $a0, 0x8014
/* B415A4 800CA404 24846318 */  addiu $a0, %lo(D_80146318) # addiu $a0, $a0, 0x6318
/* B415A8 800CA408 0C00084C */  jal   osSyncPrintf
/* B415AC 800CA40C 2405012F */   li    $a1, 303
/* B415B0 800CA410 3C188044 */  lui   $t8, (0x8044BE80 >> 16) # lui $t8, 0x8044
/* B415B4 800CA414 3718BE80 */  ori   $t8, (0x8044BE80 & 0xFFFF) # ori $t8, $t8, 0xbe80
/* B415B8 800CA418 3C018017 */  lui   $at, %hi(sSysCfbEnd) # $at, 0x8017
/* B415BC 800CA41C 3C028017 */  lui   $v0, %hi(sSysCfbEnd) # $v0, 0x8017
/* B415C0 800CA420 2442A598 */  addiu $v0, %lo(sSysCfbEnd) # addiu $v0, $v0, -0x5a68
/* B415C4 800CA424 10000013 */  b     .L800CA474
/* B415C8 800CA428 AC38A598 */   sw    $t8, %lo(sSysCfbEnd)($at)
.L800CA42C:
/* B415CC 800CA42C 3C010040 */  lui   $at, 0x40
/* B415D0 800CA430 0041082B */  sltu  $at, $v0, $at
/* B415D4 800CA434 1420000A */  bnez  $at, .L800CA460
/* B415D8 800CA438 3C048014 */   lui   $a0, %hi(D_80146350)
/* B415DC 800CA43C 3C048014 */  lui   $a0, %hi(D_80146344) # $a0, 0x8014
/* B415E0 800CA440 0C00084C */  jal   osSyncPrintf
/* B415E4 800CA444 24846344 */   addiu $a0, %lo(D_80146344) # addiu $a0, $a0, 0x6344
/* B415E8 800CA448 3C198040 */  lui   $t9, 0x8040
/* B415EC 800CA44C 3C018017 */  lui   $at, %hi(sSysCfbEnd) # $at, 0x8017
/* B415F0 800CA450 3C028017 */  lui   $v0, %hi(sSysCfbEnd) # $v0, 0x8017
/* B415F4 800CA454 2442A598 */  addiu $v0, %lo(sSysCfbEnd) # addiu $v0, $v0, -0x5a68
/* B415F8 800CA458 10000006 */  b     .L800CA474
/* B415FC 800CA45C AC39A598 */   sw    $t9, %lo(sSysCfbEnd)($at)
.L800CA460:
/* B41600 800CA460 24846350 */  addiu $a0, %lo(D_80146350)
/* B41604 800CA464 0C000B94 */  jal   LogUtils_HungupThread
/* B41608 800CA468 24050162 */   li    $a1, 354
/* B4160C 800CA46C 3C028017 */  lui   $v0, %hi(sSysCfbEnd) # $v0, 0x8017
/* B41610 800CA470 2442A598 */  addiu $v0, %lo(sSysCfbEnd) # addiu $v0, $v0, -0x5a68
.L800CA474:
/* B41614 800CA474 8C480000 */  lw    $t0, ($v0)
/* B41618 800CA478 2401FFC0 */  li    $at, -64
/* B4161C 800CA47C 3C048014 */  lui   $a0, %hi(D_80146360) # $a0, 0x8014
/* B41620 800CA480 01012824 */  and   $a1, $t0, $at
/* B41624 800CA484 AC450000 */  sw    $a1, ($v0)
/* B41628 800CA488 0C00084C */  jal   osSyncPrintf
/* B4162C 800CA48C 24846360 */   addiu $a0, %lo(D_80146360) # addiu $a0, $a0, 0x6360
/* B41630 800CA490 3C028017 */  lui   $v0, %hi(sSysCfbEnd) # $v0, 0x8017
/* B41634 800CA494 8C42A598 */  lw    $v0, %lo(sSysCfbEnd)($v0)
/* B41638 800CA498 3C01FFFB */  lui   $at, (0xFFFB5000 >> 16) # lui $at, 0xfffb
/* B4163C 800CA49C 34215000 */  ori   $at, (0xFFFB5000 & 0xFFFF) # ori $at, $at, 0x5000
/* B41640 800CA4A0 00415021 */  addu  $t2, $v0, $at
/* B41644 800CA4A4 3C018017 */  lui   $at, %hi(sSysCfbFbPtr) # $at, 0x8017
/* B41648 800CA4A8 AC2AA590 */  sw    $t2, %lo(sSysCfbFbPtr)($at)
/* B4164C 800CA4AC 3C01FFFD */  lui   $at, (0xFFFDA800 >> 16) # lui $at, 0xfffd
/* B41650 800CA4B0 3421A800 */  ori   $at, (0xFFFDA800 & 0xFFFF) # ori $at, $at, 0xa800
/* B41654 800CA4B4 00415821 */  addu  $t3, $v0, $at
/* B41658 800CA4B8 3C038017 */  lui   $v1, %hi(sSysCfbFbPtr) # $v1, 0x8017
/* B4165C 800CA4BC 3C018017 */  lui   $at, %hi(sSysCfbFbPtr+4) # $at, 0x8017
/* B41660 800CA4C0 2463A590 */  addiu $v1, %lo(sSysCfbFbPtr) # addiu $v1, $v1, -0x5a70
/* B41664 800CA4C4 AC2BA594 */  sw    $t3, %lo(sSysCfbFbPtr+4)($at)
/* B41668 800CA4C8 3C048014 */  lui   $a0, %hi(D_8014638C) # $a0, 0x8014
/* B4166C 800CA4CC 2484638C */  addiu $a0, %lo(D_8014638C) # addiu $a0, $a0, 0x638c
/* B41670 800CA4D0 8C660004 */  lw    $a2, 4($v1)
/* B41674 800CA4D4 0C00084C */  jal   osSyncPrintf
/* B41678 800CA4D8 8C650000 */   lw    $a1, ($v1)
/* B4167C 800CA4DC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B41680 800CA4E0 27BD0018 */  addiu $sp, $sp, 0x18
/* B41684 800CA4E4 03E00008 */  jr    $ra
/* B41688 800CA4E8 00000000 */   nop   
