.rdata
glabel D_8013BEB8
    .asciz "worksize >= sizeof(JPEGWork) + MB_SIZE * (PROC_OF_MBS - 1)"
    .balign 4

glabel D_8013BEF4
    .asciz "../z_jpeg.c"
    .balign 4

glabel D_8013BF00
    .asciz "*** fifoバッファの同期待ち time = %6.3f ms ***\n"
    # EUC-JP: fifoバッファの同期待ち | Wait for synchronization of fifo buffer
    .balign 4

glabel D_8013BF30
    .asciz "*** 各セグメントのマーカーのチェック time = %6.3f ms ***\n"
    # EUC-JP: 各セグメントのマーカーのチェック | Check markers for each segment
    .balign 4

glabel D_8013BF6C
    .asciz "*** 量子化テーブル作成 time = %6.3f ms ***\n"
    # EUC-JP: 量子化テーブル作成 | Create quantization table
    .balign 4

glabel D_8013BF98
    .asciz "Error : Cant' make huffman table.\n"
    .balign 4

glabel D_8013BFBC
    .asciz "Error : Cant' make huffman table.\n"
    .balign 4

glabel D_8013BFE0
    .asciz "Error : Cant' make huffman table.\n"
    .balign 4

glabel D_8013C004
    .asciz "Error : Cant' make huffman table.\n"
    .balign 4

glabel D_8013C028
    .asciz "Error : Cant' make huffman table.\n"
    .balign 4

glabel D_8013C04C
    .asciz "*** ハフマンテーブル作成 time = %6.3f ms ***\n"
    # EUC-JP: ハフマンテーブル作成 | Huffman table creation
    .balign 4

glabel D_8013C07C
    .asciz "\x1b[31m"   
    .balign 4

glabel D_8013C084
    .asciz "Error : Can't decode jpeg\n"
    .balign 4

glabel D_8013C0A0
    .asciz "\x1b[m"   
    .balign 4

glabel D_8013C0A4
    .asciz "*** 展開 & 描画 time = %6.3f ms ***\n"
    # EUC-JP: 展開 & 描画 | Unfold & draw
    .balign 4

.text
glabel Jpeg_Decode
/* AE55B8 8006E418 27BDFD30 */  addiu $sp, $sp, -0x2d0
/* AE55BC 8006E41C AFBF003C */  sw    $ra, 0x3c($sp)
/* AE55C0 8006E420 AFB70038 */  sw    $s7, 0x38($sp)
/* AE55C4 8006E424 AFB60034 */  sw    $s6, 0x34($sp)
/* AE55C8 8006E428 AFB10020 */  sw    $s1, 0x20($sp)
/* AE55CC 8006E42C AFB0001C */  sw    $s0, 0x1c($sp)
/* AE55D0 8006E430 00E08025 */  move  $s0, $a3
/* AE55D4 8006E434 00808825 */  move  $s1, $a0
/* AE55D8 8006E438 00C0B025 */  move  $s6, $a2
/* AE55DC 8006E43C 00A0B825 */  move  $s7, $a1
/* AE55E0 8006E440 AFB50030 */  sw    $s5, 0x30($sp)
/* AE55E4 8006E444 AFB4002C */  sw    $s4, 0x2c($sp)
/* AE55E8 8006E448 AFB30028 */  sw    $s3, 0x28($sp)
/* AE55EC 8006E44C 0C001A78 */  jal   osGetTime
/* AE55F0 8006E450 AFB20024 */   sw    $s2, 0x24($sp)
/* AE55F4 8006E454 2E0112C0 */  sltiu $at, $s0, 0x12c0
/* AE55F8 8006E458 AFA20070 */  sw    $v0, 0x70($sp)
/* AE55FC 8006E45C 10200007 */  beqz  $at, .L8006E47C
/* AE5600 8006E460 AFA30074 */   sw    $v1, 0x74($sp)
/* AE5604 8006E464 3C048014 */  lui   $a0, %hi(D_8013BEB8) # $a0, 0x8014
/* AE5608 8006E468 3C058014 */  lui   $a1, %hi(D_8013BEF4) # $a1, 0x8014
/* AE560C 8006E46C 24A5BEF4 */  addiu $a1, %lo(D_8013BEF4) # addiu $a1, $a1, -0x410c
/* AE5610 8006E470 2484BEB8 */  addiu $a0, %lo(D_8013BEB8) # addiu $a0, $a0, -0x4148
/* AE5614 8006E474 0C0007FC */  jal   __assert
/* AE5618 8006E478 2406020F */   li    $a2, 527
.L8006E47C:
/* AE561C 8006E47C 27A402A0 */  addiu $a0, $sp, 0x2a0
/* AE5620 8006E480 27A502B8 */  addiu $a1, $sp, 0x2b8
/* AE5624 8006E484 0C001874 */  jal   osCreateMesgQueue
/* AE5628 8006E488 24060001 */   li    $a2, 1
/* AE562C 8006E48C 0C01EFC4 */  jal   MsgEvent_SendNullTask
/* AE5630 8006E490 00000000 */   nop   
/* AE5634 8006E494 0C001A78 */  jal   osGetTime
/* AE5638 8006E498 00000000 */   nop   
/* AE563C 8006E49C 8FAE0070 */  lw    $t6, 0x70($sp)
/* AE5640 8006E4A0 8FAF0074 */  lw    $t7, 0x74($sp)
/* AE5644 8006E4A4 AFA30074 */  sw    $v1, 0x74($sp)
/* AE5648 8006E4A8 004EC023 */  subu  $t8, $v0, $t6
/* AE564C 8006E4AC 006F082B */  sltu  $at, $v1, $t7
/* AE5650 8006E4B0 03012023 */  subu  $a0, $t8, $at
/* AE5654 8006E4B4 006F2823 */  subu  $a1, $v1, $t7
/* AE5658 8006E4B8 AFA5007C */  sw    $a1, 0x7c($sp)
/* AE565C 8006E4BC AFA40078 */  sw    $a0, 0x78($sp)
/* AE5660 8006E4C0 AFA20070 */  sw    $v0, 0x70($sp)
/* AE5664 8006E4C4 24060000 */  li    $a2, 0
/* AE5668 8006E4C8 0C000E1E */  jal   __ll_mul
/* AE566C 8006E4CC 24070040 */   li    $a3, 64
/* AE5670 8006E4D0 00402025 */  move  $a0, $v0
/* AE5674 8006E4D4 00602825 */  move  $a1, $v1
/* AE5678 8006E4D8 24060000 */  li    $a2, 0
/* AE567C 8006E4DC 0C000DDE */  jal   __ull_div
/* AE5680 8006E4E0 24070BB8 */   li    $a3, 3000
/* AE5684 8006E4E4 00402025 */  move  $a0, $v0
/* AE5688 8006E4E8 0C0419CA */  jal   __ull_to_f
/* AE568C 8006E4EC 00602825 */   move  $a1, $v1
/* AE5690 8006E4F0 3C01447A */  li    $at, 0x447A0000 # 0.000000
/* AE5694 8006E4F4 44812000 */  mtc1  $at, $f4
/* AE5698 8006E4F8 3C048014 */  lui   $a0, %hi(D_8013BF00) # $a0, 0x8014
/* AE569C 8006E4FC 2484BF00 */  addiu $a0, %lo(D_8013BF00) # addiu $a0, $a0, -0x4100
/* AE56A0 8006E500 46040183 */  div.s $f6, $f0, $f4
/* AE56A4 8006E504 46003221 */  cvt.d.s $f8, $f6
/* AE56A8 8006E508 44074000 */  mfc1  $a3, $f8
/* AE56AC 8006E50C 44064800 */  mfc1  $a2, $f9
/* AE56B0 8006E510 0C00084C */  jal   osSyncPrintf
/* AE56B4 8006E514 00000000 */   nop   
/* AE56B8 8006E518 AFB602BC */  sw    $s6, 0x2bc($sp)
/* AE56BC 8006E51C 02202025 */  move  $a0, $s1
/* AE56C0 8006E520 0C01B83B */  jal   Jpeg_ParseMarkers
/* AE56C4 8006E524 27A50208 */   addiu $a1, $sp, 0x208
/* AE56C8 8006E528 0C001A78 */  jal   osGetTime
/* AE56CC 8006E52C 00000000 */   nop   
/* AE56D0 8006E530 8FA80070 */  lw    $t0, 0x70($sp)
/* AE56D4 8006E534 8FA90074 */  lw    $t1, 0x74($sp)
/* AE56D8 8006E538 AFA30074 */  sw    $v1, 0x74($sp)
/* AE56DC 8006E53C 00485023 */  subu  $t2, $v0, $t0
/* AE56E0 8006E540 0069082B */  sltu  $at, $v1, $t1
/* AE56E4 8006E544 01412023 */  subu  $a0, $t2, $at
/* AE56E8 8006E548 00692823 */  subu  $a1, $v1, $t1
/* AE56EC 8006E54C AFA5007C */  sw    $a1, 0x7c($sp)
/* AE56F0 8006E550 AFA40078 */  sw    $a0, 0x78($sp)
/* AE56F4 8006E554 AFA20070 */  sw    $v0, 0x70($sp)
/* AE56F8 8006E558 24060000 */  li    $a2, 0
/* AE56FC 8006E55C 0C000E1E */  jal   __ll_mul
/* AE5700 8006E560 24070040 */   li    $a3, 64
/* AE5704 8006E564 00402025 */  move  $a0, $v0
/* AE5708 8006E568 00602825 */  move  $a1, $v1
/* AE570C 8006E56C 24060000 */  li    $a2, 0
/* AE5710 8006E570 0C000DDE */  jal   __ull_div
/* AE5714 8006E574 24070BB8 */   li    $a3, 3000
/* AE5718 8006E578 00402025 */  move  $a0, $v0
/* AE571C 8006E57C 0C0419CA */  jal   __ull_to_f
/* AE5720 8006E580 00602825 */   move  $a1, $v1
/* AE5724 8006E584 3C01447A */  li    $at, 0x447A0000 # 0.000000
/* AE5728 8006E588 44815000 */  mtc1  $at, $f10
/* AE572C 8006E58C 3C048014 */  lui   $a0, %hi(D_8013BF30) # $a0, 0x8014
/* AE5730 8006E590 2484BF30 */  addiu $a0, %lo(D_8013BF30) # addiu $a0, $a0, -0x40d0
/* AE5734 8006E594 460A0403 */  div.s $f16, $f0, $f10
/* AE5738 8006E598 460084A1 */  cvt.d.s $f18, $f16
/* AE573C 8006E59C 44079000 */  mfc1  $a3, $f18
/* AE5740 8006E5A0 44069800 */  mfc1  $a2, $f19
/* AE5744 8006E5A4 0C00084C */  jal   osSyncPrintf
/* AE5748 8006E5A8 00000000 */   nop   
/* AE574C 8006E5AC 93A20208 */  lbu   $v0, 0x208($sp)
/* AE5750 8006E5B0 24100001 */  li    $s0, 1
/* AE5754 8006E5B4 12020008 */  beq   $s0, $v0, .L8006E5D8
/* AE5758 8006E5B8 24010002 */   li    $at, 2
/* AE575C 8006E5BC 1041000C */  beq   $v0, $at, .L8006E5F0
/* AE5760 8006E5C0 8FA4020C */   lw    $a0, 0x20c($sp)
/* AE5764 8006E5C4 24010003 */  li    $at, 3
/* AE5768 8006E5C8 10410016 */  beq   $v0, $at, .L8006E624
/* AE576C 8006E5CC 8FA4020C */   lw    $a0, 0x20c($sp)
/* AE5770 8006E5D0 1000010C */  b     .L8006EA04
/* AE5774 8006E5D4 2402FFFF */   li    $v0, -1
.L8006E5D8:
/* AE5778 8006E5D8 8FA4020C */  lw    $a0, 0x20c($sp)
/* AE577C 8006E5DC 26C50220 */  addiu $a1, $s6, 0x220
/* AE5780 8006E5E0 0C03FD50 */  jal   JpegUtils_ProcessQuantizationTable
/* AE5784 8006E5E4 24060003 */   li    $a2, 3
/* AE5788 8006E5E8 1000001D */  b     .L8006E660
/* AE578C 8006E5EC 00000000 */   nop   
.L8006E5F0:
/* AE5790 8006E5F0 26C50220 */  addiu $a1, $s6, 0x220
/* AE5794 8006E5F4 0C03FD50 */  jal   JpegUtils_ProcessQuantizationTable
/* AE5798 8006E5F8 24060001 */   li    $a2, 1
/* AE579C 8006E5FC 8FA40210 */  lw    $a0, 0x210($sp)
/* AE57A0 8006E600 26C502A0 */  addiu $a1, $s6, 0x2a0
/* AE57A4 8006E604 0C03FD50 */  jal   JpegUtils_ProcessQuantizationTable
/* AE57A8 8006E608 24060001 */   li    $a2, 1
/* AE57AC 8006E60C 8FA40210 */  lw    $a0, 0x210($sp)
/* AE57B0 8006E610 26C50320 */  addiu $a1, $s6, 0x320
/* AE57B4 8006E614 0C03FD50 */  jal   JpegUtils_ProcessQuantizationTable
/* AE57B8 8006E618 24060001 */   li    $a2, 1
/* AE57BC 8006E61C 10000010 */  b     .L8006E660
/* AE57C0 8006E620 00000000 */   nop   
.L8006E624:
/* AE57C4 8006E624 26C50220 */  addiu $a1, $s6, 0x220
/* AE57C8 8006E628 0C03FD50 */  jal   JpegUtils_ProcessQuantizationTable
/* AE57CC 8006E62C 24060001 */   li    $a2, 1
/* AE57D0 8006E630 8FA40210 */  lw    $a0, 0x210($sp)
/* AE57D4 8006E634 26C502A0 */  addiu $a1, $s6, 0x2a0
/* AE57D8 8006E638 0C03FD50 */  jal   JpegUtils_ProcessQuantizationTable
/* AE57DC 8006E63C 24060001 */   li    $a2, 1
/* AE57E0 8006E640 8FA40214 */  lw    $a0, 0x214($sp)
/* AE57E4 8006E644 26C50320 */  addiu $a1, $s6, 0x320
/* AE57E8 8006E648 0C03FD50 */  jal   JpegUtils_ProcessQuantizationTable
/* AE57EC 8006E64C 24060001 */   li    $a2, 1
/* AE57F0 8006E650 10000003 */  b     .L8006E660
/* AE57F4 8006E654 00000000 */   nop   
/* AE57F8 8006E658 100000EA */  b     .L8006EA04
/* AE57FC 8006E65C 2402FFFF */   li    $v0, -1
.L8006E660:
/* AE5800 8006E660 0C001A78 */  jal   osGetTime
/* AE5804 8006E664 00000000 */   nop   
/* AE5808 8006E668 8FAC0070 */  lw    $t4, 0x70($sp)
/* AE580C 8006E66C 8FAD0074 */  lw    $t5, 0x74($sp)
/* AE5810 8006E670 AFA30074 */  sw    $v1, 0x74($sp)
/* AE5814 8006E674 004C7023 */  subu  $t6, $v0, $t4
/* AE5818 8006E678 006D082B */  sltu  $at, $v1, $t5
/* AE581C 8006E67C 01C12023 */  subu  $a0, $t6, $at
/* AE5820 8006E680 006D2823 */  subu  $a1, $v1, $t5
/* AE5824 8006E684 AFA5007C */  sw    $a1, 0x7c($sp)
/* AE5828 8006E688 AFA40078 */  sw    $a0, 0x78($sp)
/* AE582C 8006E68C AFA20070 */  sw    $v0, 0x70($sp)
/* AE5830 8006E690 24060000 */  li    $a2, 0
/* AE5834 8006E694 0C000E1E */  jal   __ll_mul
/* AE5838 8006E698 24070040 */   li    $a3, 64
/* AE583C 8006E69C 00402025 */  move  $a0, $v0
/* AE5840 8006E6A0 00602825 */  move  $a1, $v1
/* AE5844 8006E6A4 24060000 */  li    $a2, 0
/* AE5848 8006E6A8 0C000DDE */  jal   __ull_div
/* AE584C 8006E6AC 24070BB8 */   li    $a3, 3000
/* AE5850 8006E6B0 00402025 */  move  $a0, $v0
/* AE5854 8006E6B4 0C0419CA */  jal   __ull_to_f
/* AE5858 8006E6B8 00602825 */   move  $a1, $v1
/* AE585C 8006E6BC 3C01447A */  li    $at, 0x447A0000 # 0.000000
/* AE5860 8006E6C0 44812000 */  mtc1  $at, $f4
/* AE5864 8006E6C4 3C048014 */  lui   $a0, %hi(D_8013BF6C) # $a0, 0x8014
/* AE5868 8006E6C8 2484BF6C */  addiu $a0, %lo(D_8013BF6C) # addiu $a0, $a0, -0x4094
/* AE586C 8006E6CC 46040183 */  div.s $f6, $f0, $f4
/* AE5870 8006E6D0 46003221 */  cvt.d.s $f8, $f6
/* AE5874 8006E6D4 44074000 */  mfc1  $a3, $f8
/* AE5878 8006E6D8 44064800 */  mfc1  $a2, $f9
/* AE587C 8006E6DC 0C00084C */  jal   osSyncPrintf
/* AE5880 8006E6E0 00000000 */   nop   
/* AE5884 8006E6E4 93A20218 */  lbu   $v0, 0x218($sp)
/* AE5888 8006E6E8 12020005 */  beq   $s0, $v0, .L8006E700
/* AE588C 8006E6EC 24010004 */   li    $at, 4
/* AE5890 8006E6F0 10410011 */  beq   $v0, $at, .L8006E738
/* AE5894 8006E6F4 27B400B8 */   addiu $s4, $sp, 0xb8
/* AE5898 8006E6F8 100000C2 */  b     .L8006EA04
/* AE589C 8006E6FC 2402FFFF */   li    $v0, -1
.L8006E700:
/* AE58A0 8006E700 27B400B8 */  addiu $s4, $sp, 0xb8
/* AE58A4 8006E704 24180004 */  li    $t8, 4
/* AE58A8 8006E708 AFB80010 */  sw    $t8, 0x10($sp)
/* AE58AC 8006E70C 02802825 */  move  $a1, $s4
/* AE58B0 8006E710 8FA4021C */  lw    $a0, 0x21c($sp)
/* AE58B4 8006E714 26C603A0 */  addiu $a2, $s6, 0x3a0
/* AE58B8 8006E718 0C03FDFF */  jal   JpegUtils_ProcessHuffmanTable
/* AE58BC 8006E71C 26C704B0 */   addiu $a3, $s6, 0x4b0
/* AE58C0 8006E720 10400037 */  beqz  $v0, .L8006E800
/* AE58C4 8006E724 3C048014 */   lui   $a0, %hi(D_8013BF98) # $a0, 0x8014
/* AE58C8 8006E728 0C00084C */  jal   osSyncPrintf
/* AE58CC 8006E72C 2484BF98 */   addiu $a0, %lo(D_8013BF98) # addiu $a0, $a0, -0x4068
/* AE58D0 8006E730 10000033 */  b     .L8006E800
/* AE58D4 8006E734 00000000 */   nop   
.L8006E738:
/* AE58D8 8006E738 26D003A0 */  addiu $s0, $s6, 0x3a0
/* AE58DC 8006E73C 26D104B0 */  addiu $s1, $s6, 0x4b0
/* AE58E0 8006E740 24190001 */  li    $t9, 1
/* AE58E4 8006E744 AFB90010 */  sw    $t9, 0x10($sp)
/* AE58E8 8006E748 02203825 */  move  $a3, $s1
/* AE58EC 8006E74C 02003025 */  move  $a2, $s0
/* AE58F0 8006E750 8FA4021C */  lw    $a0, 0x21c($sp)
/* AE58F4 8006E754 0C03FDFF */  jal   JpegUtils_ProcessHuffmanTable
/* AE58F8 8006E758 02802825 */   move  $a1, $s4
/* AE58FC 8006E75C 10400003 */  beqz  $v0, .L8006E76C
/* AE5900 8006E760 3C048014 */   lui   $a0, %hi(D_8013BFBC) # $a0, 0x8014
/* AE5904 8006E764 0C00084C */  jal   osSyncPrintf
/* AE5908 8006E768 2484BFBC */   addiu $a0, %lo(D_8013BFBC) # addiu $a0, $a0, -0x4044
.L8006E76C:
/* AE590C 8006E76C 24080001 */  li    $t0, 1
/* AE5910 8006E770 AFA80010 */  sw    $t0, 0x10($sp)
/* AE5914 8006E774 8FA40220 */  lw    $a0, 0x220($sp)
/* AE5918 8006E778 27A5010C */  addiu $a1, $sp, 0x10c
/* AE591C 8006E77C 02003025 */  move  $a2, $s0
/* AE5920 8006E780 0C03FDFF */  jal   JpegUtils_ProcessHuffmanTable
/* AE5924 8006E784 02203825 */   move  $a3, $s1
/* AE5928 8006E788 10400003 */  beqz  $v0, .L8006E798
/* AE592C 8006E78C 3C048014 */   lui   $a0, %hi(D_8013BFE0) # $a0, 0x8014
/* AE5930 8006E790 0C00084C */  jal   osSyncPrintf
/* AE5934 8006E794 2484BFE0 */   addiu $a0, %lo(D_8013BFE0) # addiu $a0, $a0, -0x4020
.L8006E798:
/* AE5938 8006E798 24090001 */  li    $t1, 1
/* AE593C 8006E79C AFA90010 */  sw    $t1, 0x10($sp)
/* AE5940 8006E7A0 8FA40224 */  lw    $a0, 0x224($sp)
/* AE5944 8006E7A4 27A50160 */  addiu $a1, $sp, 0x160
/* AE5948 8006E7A8 02003025 */  move  $a2, $s0
/* AE594C 8006E7AC 0C03FDFF */  jal   JpegUtils_ProcessHuffmanTable
/* AE5950 8006E7B0 02203825 */   move  $a3, $s1
/* AE5954 8006E7B4 10400003 */  beqz  $v0, .L8006E7C4
/* AE5958 8006E7B8 3C048014 */   lui   $a0, %hi(D_8013C004) # $a0, 0x8014
/* AE595C 8006E7BC 0C00084C */  jal   osSyncPrintf
/* AE5960 8006E7C0 2484C004 */   addiu $a0, %lo(D_8013C004) # addiu $a0, $a0, -0x3ffc
.L8006E7C4:
/* AE5964 8006E7C4 240A0001 */  li    $t2, 1
/* AE5968 8006E7C8 AFAA0010 */  sw    $t2, 0x10($sp)
/* AE596C 8006E7CC 8FA40228 */  lw    $a0, 0x228($sp)
/* AE5970 8006E7D0 27A501B4 */  addiu $a1, $sp, 0x1b4
/* AE5974 8006E7D4 02003025 */  move  $a2, $s0
/* AE5978 8006E7D8 0C03FDFF */  jal   JpegUtils_ProcessHuffmanTable
/* AE597C 8006E7DC 02203825 */   move  $a3, $s1
/* AE5980 8006E7E0 10400007 */  beqz  $v0, .L8006E800
/* AE5984 8006E7E4 3C048014 */   lui   $a0, %hi(D_8013C028) # $a0, 0x8014
/* AE5988 8006E7E8 0C00084C */  jal   osSyncPrintf
/* AE598C 8006E7EC 2484C028 */   addiu $a0, %lo(D_8013C028) # addiu $a0, $a0, -0x3fd8
/* AE5990 8006E7F0 10000003 */  b     .L8006E800
/* AE5994 8006E7F4 00000000 */   nop   
/* AE5998 8006E7F8 10000082 */  b     .L8006EA04
/* AE599C 8006E7FC 2402FFFF */   li    $v0, -1
.L8006E800:
/* AE59A0 8006E800 0C001A78 */  jal   osGetTime
/* AE59A4 8006E804 00000000 */   nop   
/* AE59A8 8006E808 8FAC0070 */  lw    $t4, 0x70($sp)
/* AE59AC 8006E80C 8FAD0074 */  lw    $t5, 0x74($sp)
/* AE59B0 8006E810 AFA30074 */  sw    $v1, 0x74($sp)
/* AE59B4 8006E814 004C7023 */  subu  $t6, $v0, $t4
/* AE59B8 8006E818 006D082B */  sltu  $at, $v1, $t5
/* AE59BC 8006E81C 01C12023 */  subu  $a0, $t6, $at
/* AE59C0 8006E820 006D2823 */  subu  $a1, $v1, $t5
/* AE59C4 8006E824 AFA5007C */  sw    $a1, 0x7c($sp)
/* AE59C8 8006E828 AFA40078 */  sw    $a0, 0x78($sp)
/* AE59CC 8006E82C AFA20070 */  sw    $v0, 0x70($sp)
/* AE59D0 8006E830 24060000 */  li    $a2, 0
/* AE59D4 8006E834 0C000E1E */  jal   __ll_mul
/* AE59D8 8006E838 24070040 */   li    $a3, 64
/* AE59DC 8006E83C 00402025 */  move  $a0, $v0
/* AE59E0 8006E840 00602825 */  move  $a1, $v1
/* AE59E4 8006E844 24060000 */  li    $a2, 0
/* AE59E8 8006E848 0C000DDE */  jal   __ull_div
/* AE59EC 8006E84C 24070BB8 */   li    $a3, 3000
/* AE59F0 8006E850 00402025 */  move  $a0, $v0
/* AE59F4 8006E854 0C0419CA */  jal   __ull_to_f
/* AE59F8 8006E858 00602825 */   move  $a1, $v1
/* AE59FC 8006E85C 3C01447A */  li    $at, 0x447A0000 # 0.000000
/* AE5A00 8006E860 44815000 */  mtc1  $at, $f10
/* AE5A04 8006E864 3C048014 */  lui   $a0, %hi(D_8013C04C) # $a0, 0x8014
/* AE5A08 8006E868 2484C04C */  addiu $a0, %lo(D_8013C04C) # addiu $a0, $a0, -0x3fb4
/* AE5A0C 8006E86C 460A0403 */  div.s $f16, $f0, $f10
/* AE5A10 8006E870 460084A1 */  cvt.d.s $f18, $f16
/* AE5A14 8006E874 44079000 */  mfc1  $a3, $f18
/* AE5A18 8006E878 44069800 */  mfc1  $a2, $f19
/* AE5A1C 8006E87C 0C00084C */  jal   osSyncPrintf
/* AE5A20 8006E880 00000000 */   nop   
/* AE5A24 8006E884 8FAB022C */  lw    $t3, 0x22c($sp)
/* AE5A28 8006E888 8FB80230 */  lw    $t8, 0x230($sp)
/* AE5A2C 8006E88C 24190002 */  li    $t9, 2
/* AE5A30 8006E890 AFB400A4 */  sw    $s4, 0xa4($sp)
/* AE5A34 8006E894 27A8010C */  addiu $t0, $sp, 0x10c
/* AE5A38 8006E898 27A90160 */  addiu $t1, $sp, 0x160
/* AE5A3C 8006E89C 27AA01B4 */  addiu $t2, $sp, 0x1b4
/* AE5A40 8006E8A0 26C506C0 */  addiu $a1, $s6, 0x6c0
/* AE5A44 8006E8A4 A3B900A1 */  sb    $t9, 0xa1($sp)
/* AE5A48 8006E8A8 AFA800A8 */  sw    $t0, 0xa8($sp)
/* AE5A4C 8006E8AC AFA900AC */  sw    $t1, 0xac($sp)
/* AE5A50 8006E8B0 AFAA00B0 */  sw    $t2, 0xb0($sp)
/* AE5A54 8006E8B4 A3A000B4 */  sb    $zero, 0xb4($sp)
/* AE5A58 8006E8B8 00009825 */  move  $s3, $zero
/* AE5A5C 8006E8BC 00009025 */  move  $s2, $zero
/* AE5A60 8006E8C0 AFA50040 */  sw    $a1, 0x40($sp)
/* AE5A64 8006E8C4 24140C00 */  li    $s4, 3072
/* AE5A68 8006E8C8 0000A825 */  move  $s5, $zero
/* AE5A6C 8006E8CC AFAB009C */  sw    $t3, 0x9c($sp)
/* AE5A70 8006E8D0 A3B800A0 */  sb    $t8, 0xa0($sp)
/* AE5A74 8006E8D4 0015382B */  sltu  $a3, $zero, $s5
.L8006E8D8:
/* AE5A78 8006E8D8 27AC0088 */  addiu $t4, $sp, 0x88
/* AE5A7C 8006E8DC 8FA50040 */  lw    $a1, 0x40($sp)
/* AE5A80 8006E8E0 AFAC0010 */  sw    $t4, 0x10($sp)
/* AE5A84 8006E8E4 30E700FF */  andi  $a3, $a3, 0xff
/* AE5A88 8006E8E8 27A4009C */  addiu $a0, $sp, 0x9c
/* AE5A8C 8006E8EC 0C03FE94 */  jal   JpegDecoder_Decode
/* AE5A90 8006E8F0 24060004 */   li    $a2, 4
/* AE5A94 8006E8F4 1040000B */  beqz  $v0, .L8006E924
/* AE5A98 8006E8F8 3C048014 */   lui   $a0, %hi(D_8013C07C) # $a0, 0x8014
/* AE5A9C 8006E8FC 0C00084C */  jal   osSyncPrintf
/* AE5AA0 8006E900 2484C07C */   addiu $a0, %lo(D_8013C07C) # addiu $a0, $a0, -0x3f84
/* AE5AA4 8006E904 3C048014 */  lui   $a0, %hi(D_8013C084) # $a0, 0x8014
/* AE5AA8 8006E908 0C00084C */  jal   osSyncPrintf
/* AE5AAC 8006E90C 2484C084 */   addiu $a0, %lo(D_8013C084) # addiu $a0, $a0, -0x3f7c
/* AE5AB0 8006E910 3C048014 */  lui   $a0, %hi(D_8013C0A0) # $a0, 0x8014
/* AE5AB4 8006E914 0C00084C */  jal   osSyncPrintf
/* AE5AB8 8006E918 2484C0A0 */   addiu $a0, %lo(D_8013C0A0) # addiu $a0, $a0, -0x3f60
/* AE5ABC 8006E91C 10000016 */  b     .L8006E978
/* AE5AC0 8006E920 26B50004 */   addiu $s5, $s5, 4
.L8006E924:
/* AE5AC4 8006E924 0C01B78C */  jal   Jpeg_SendTask
/* AE5AC8 8006E928 27A40208 */   addiu $a0, $sp, 0x208
/* AE5ACC 8006E92C 8FA40040 */  lw    $a0, 0x40($sp)
/* AE5AD0 8006E930 0C001880 */  jal   osInvalDCache
/* AE5AD4 8006E934 24050300 */   li    $a1, 768
/* AE5AD8 8006E938 00008025 */  move  $s0, $zero
/* AE5ADC 8006E93C 26D106C0 */  addiu $s1, $s6, 0x6c0
.L8006E940:
/* AE5AE0 8006E940 02202025 */  move  $a0, $s1
/* AE5AE4 8006E944 02E02825 */  move  $a1, $s7
/* AE5AE8 8006E948 02403025 */  move  $a2, $s2
/* AE5AEC 8006E94C 0C01B7DA */  jal   Jpeg_CopyToZbuffer
/* AE5AF0 8006E950 02603825 */   move  $a3, $s3
/* AE5AF4 8006E954 26520001 */  addiu $s2, $s2, 1
/* AE5AF8 8006E958 2A410014 */  slti  $at, $s2, 0x14
/* AE5AFC 8006E95C 14200003 */  bnez  $at, .L8006E96C
/* AE5B00 8006E960 26100300 */   addiu $s0, $s0, 0x300
/* AE5B04 8006E964 00009025 */  move  $s2, $zero
/* AE5B08 8006E968 26730001 */  addiu $s3, $s3, 1
.L8006E96C:
/* AE5B0C 8006E96C 1614FFF4 */  bne   $s0, $s4, .L8006E940
/* AE5B10 8006E970 26310300 */   addiu $s1, $s1, 0x300
/* AE5B14 8006E974 26B50004 */  addiu $s5, $s5, 4
.L8006E978:
/* AE5B18 8006E978 2401012C */  li    $at, 300
/* AE5B1C 8006E97C 56A1FFD6 */  bnel  $s5, $at, .L8006E8D8
/* AE5B20 8006E980 0015382B */   sltu  $a3, $zero, $s5
/* AE5B24 8006E984 0C001A78 */  jal   osGetTime
/* AE5B28 8006E988 00000000 */   nop   
/* AE5B2C 8006E98C 8FAE0070 */  lw    $t6, 0x70($sp)
/* AE5B30 8006E990 8FAF0074 */  lw    $t7, 0x74($sp)
/* AE5B34 8006E994 24060000 */  li    $a2, 0
/* AE5B38 8006E998 004EC023 */  subu  $t8, $v0, $t6
/* AE5B3C 8006E99C 006F082B */  sltu  $at, $v1, $t7
/* AE5B40 8006E9A0 03012023 */  subu  $a0, $t8, $at
/* AE5B44 8006E9A4 006F2823 */  subu  $a1, $v1, $t7
/* AE5B48 8006E9A8 AFA5007C */  sw    $a1, 0x7c($sp)
/* AE5B4C 8006E9AC AFA40078 */  sw    $a0, 0x78($sp)
/* AE5B50 8006E9B0 0C000E1E */  jal   __ll_mul
/* AE5B54 8006E9B4 24070040 */   li    $a3, 64
/* AE5B58 8006E9B8 00402025 */  move  $a0, $v0
/* AE5B5C 8006E9BC 00602825 */  move  $a1, $v1
/* AE5B60 8006E9C0 24060000 */  li    $a2, 0
/* AE5B64 8006E9C4 0C000DDE */  jal   __ull_div
/* AE5B68 8006E9C8 24070BB8 */   li    $a3, 3000
/* AE5B6C 8006E9CC 00402025 */  move  $a0, $v0
/* AE5B70 8006E9D0 0C0419CA */  jal   __ull_to_f
/* AE5B74 8006E9D4 00602825 */   move  $a1, $v1
/* AE5B78 8006E9D8 3C01447A */  li    $at, 0x447A0000 # 0.000000
/* AE5B7C 8006E9DC 44812000 */  mtc1  $at, $f4
/* AE5B80 8006E9E0 3C048014 */  lui   $a0, %hi(D_8013C0A4) # $a0, 0x8014
/* AE5B84 8006E9E4 2484C0A4 */  addiu $a0, %lo(D_8013C0A4) # addiu $a0, $a0, -0x3f5c
/* AE5B88 8006E9E8 46040183 */  div.s $f6, $f0, $f4
/* AE5B8C 8006E9EC 46003221 */  cvt.d.s $f8, $f6
/* AE5B90 8006E9F0 44074000 */  mfc1  $a3, $f8
/* AE5B94 8006E9F4 44064800 */  mfc1  $a2, $f9
/* AE5B98 8006E9F8 0C00084C */  jal   osSyncPrintf
/* AE5B9C 8006E9FC 00000000 */   nop   
/* AE5BA0 8006EA00 00001025 */  move  $v0, $zero
.L8006EA04:
/* AE5BA4 8006EA04 8FBF003C */  lw    $ra, 0x3c($sp)
/* AE5BA8 8006EA08 8FB0001C */  lw    $s0, 0x1c($sp)
/* AE5BAC 8006EA0C 8FB10020 */  lw    $s1, 0x20($sp)
/* AE5BB0 8006EA10 8FB20024 */  lw    $s2, 0x24($sp)
/* AE5BB4 8006EA14 8FB30028 */  lw    $s3, 0x28($sp)
/* AE5BB8 8006EA18 8FB4002C */  lw    $s4, 0x2c($sp)
/* AE5BBC 8006EA1C 8FB50030 */  lw    $s5, 0x30($sp)
/* AE5BC0 8006EA20 8FB60034 */  lw    $s6, 0x34($sp)
/* AE5BC4 8006EA24 8FB70038 */  lw    $s7, 0x38($sp)
/* AE5BC8 8006EA28 03E00008 */  jr    $ra
/* AE5BCC 8006EA2C 27BD02D0 */   addiu $sp, $sp, 0x2d0

