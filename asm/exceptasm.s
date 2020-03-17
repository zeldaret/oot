.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel __osHwIntTable
    .word 0, 0
    .word 0, 0
    .word 0, 0
    .word 0, 0
    .word 0, 0

glabel __osPiIntTable
    .word 0
    .word 0

.section .rodata

glabel __osIntOffTable
	.byte 0x00 /* redispatch */
	.byte 0x14 /* prenmi */
	.byte 0x18 /* IP6_Hdlr */
	.byte 0x18 /* IP6_Hdlr */
	.byte 0x1c /* IP7_Hdlr */
	.byte 0x1c /* IP7_Hdlr */
	.byte 0x1c /* IP7_Hdlr */
	.byte 0x1c /* IP7_Hdlr */
	.byte 0x20 /* counter */
	.byte 0x20 /* counter */
	.byte 0x20 /* counter */
	.byte 0x20 /* counter */
	.byte 0x20 /* counter */
	.byte 0x20 /* counter */
	.byte 0x20 /* counter */
	.byte 0x20 /* counter */
	.byte 0x00 /* redispatch */
	.byte 0x04 /* sw1 */
	.byte 0x08 /* sw2 */
	.byte 0x08 /* sw2 */
	.byte 0x0c /* rcp */
	.byte 0x0c /* rcp */
	.byte 0x0c /* rcp */
	.byte 0x0c /* rcp */
	.byte 0x10 /* cart */
	.byte 0x10 /* cart */
	.byte 0x10 /* cart */
	.byte 0x10 /* cart */
	.byte 0x10 /* cart */
	.byte 0x10 /* cart */
	.byte 0x10 /* cart */
	.byte 0x10 /* cart */

glabel __osIntTable
    .word redispatch
    .word sw1
    .word sw2
    .word rcp
    .word cart
    .word prenmi
    .word IP6_Hdlr
    .word IP7_Hdlr
    .word counter

.section .text

.align 4

glabel __osExceptionPreamble
/* 0045D0 800039D0 3C1A8000 */  lui   $k0, %hi(__osException) # $k0, 0x8000
/* 0045D4 800039D4 275A39E0 */  addiu $k0, %lo(__osException) # addiu $k0, $k0, 0x39e0
/* 0045D8 800039D8 03400008 */  jr    $k0
/* 0045DC 800039DC 00000000 */   nop   

glabel __osException
/* 0045E0 800039E0 3C1A8001 */  lui   $k0, %hi(__osThreadSave) # $k0, 0x8001
/* 0045E4 800039E4 275A5890 */  addiu $k0, %lo(__osThreadSave) # addiu $k0, $k0, 0x5890
/* 0045E8 800039E8 FF410020 */  sd    $at, 0x20($k0)
/* 0045EC 800039EC 401B6000 */  mfc0  $k1, $12
/* 0045F0 800039F0 AF5B0118 */  sw    $k1, 0x118($k0)
/* 0045F4 800039F4 2401FFFC */  li    $at, -4
/* 0045F8 800039F8 0361D824 */  and   $k1, $k1, $at
/* 0045FC 800039FC 409B6000 */  mtc0  $k1, $12
/* 004600 80003A00 FF480058 */  sd    $t0, 0x58($k0)
/* 004604 80003A04 FF490060 */  sd    $t1, 0x60($k0)
/* 004608 80003A08 FF4A0068 */  sd    $t2, 0x68($k0)
/* 00460C 80003A0C AF400018 */  sw    $zero, 0x18($k0)
/* 004610 80003A10 40086800 */  mfc0  $t0, $13
/* 004614 80003A14 03404025 */  move  $t0, $k0
/* 004618 80003A18 3C1A8001 */  lui   $k0, %hi(__osRunningThread) # $k0, 0x8001
/* 00461C 80003A1C 8F5AAD50 */  lw    $k0, %lo(__osRunningThread)($k0)
/* 004620 80003A20 DD090020 */  ld    $t1, 0x20($t0)
/* 004624 80003A24 FF490020 */  sd    $t1, 0x20($k0)
/* 004628 80003A28 DD090118 */  ld    $t1, 0x118($t0)
/* 00462C 80003A2C FF490118 */  sd    $t1, 0x118($k0)
/* 004630 80003A30 DD090058 */  ld    $t1, 0x58($t0)
/* 004634 80003A34 FF490058 */  sd    $t1, 0x58($k0)
/* 004638 80003A38 DD090060 */  ld    $t1, 0x60($t0)
/* 00463C 80003A3C FF490060 */  sd    $t1, 0x60($k0)
/* 004640 80003A40 DD090068 */  ld    $t1, 0x68($t0)
/* 004644 80003A44 FF490068 */  sd    $t1, 0x68($k0)
/* 004648 80003A48 8F5B0118 */  lw    $k1, 0x118($k0)
/* 00464C 80003A4C 00004012 */  mflo  $t0
/* 004650 80003A50 FF480108 */  sd    $t0, 0x108($k0)
/* 004654 80003A54 00004010 */  mfhi  $t0
/* 004658 80003A58 3369FF00 */  andi  $t1, $k1, 0xff00
/* 00465C 80003A5C FF420028 */  sd    $v0, 0x28($k0)
/* 004660 80003A60 FF430030 */  sd    $v1, 0x30($k0)
/* 004664 80003A64 FF440038 */  sd    $a0, 0x38($k0)
/* 004668 80003A68 FF450040 */  sd    $a1, 0x40($k0)
/* 00466C 80003A6C FF460048 */  sd    $a2, 0x48($k0)
/* 004670 80003A70 FF470050 */  sd    $a3, 0x50($k0)
/* 004674 80003A74 FF4B0070 */  sd    $t3, 0x70($k0)
/* 004678 80003A78 FF4C0078 */  sd    $t4, 0x78($k0)
/* 00467C 80003A7C FF4D0080 */  sd    $t5, 0x80($k0)
/* 004680 80003A80 FF4E0088 */  sd    $t6, 0x88($k0)
/* 004684 80003A84 FF4F0090 */  sd    $t7, 0x90($k0)
/* 004688 80003A88 FF500098 */  sd    $s0, 0x98($k0)
/* 00468C 80003A8C FF5100A0 */  sd    $s1, 0xa0($k0)
/* 004690 80003A90 FF5200A8 */  sd    $s2, 0xa8($k0)
/* 004694 80003A94 FF5300B0 */  sd    $s3, 0xb0($k0)
/* 004698 80003A98 FF5400B8 */  sd    $s4, 0xb8($k0)
/* 00469C 80003A9C FF5500C0 */  sd    $s5, 0xc0($k0)
/* 0046A0 80003AA0 FF5600C8 */  sd    $s6, 0xc8($k0)
/* 0046A4 80003AA4 FF5700D0 */  sd    $s7, 0xd0($k0)
/* 0046A8 80003AA8 FF5800D8 */  sd    $t8, 0xd8($k0)
/* 0046AC 80003AAC FF5900E0 */  sd    $t9, 0xe0($k0)
/* 0046B0 80003AB0 FF5C00E8 */  sd    $gp, 0xe8($k0)
/* 0046B4 80003AB4 FF5D00F0 */  sd    $sp, 0xf0($k0)
/* 0046B8 80003AB8 FF5E00F8 */  sd    $fp, 0xf8($k0)
/* 0046BC 80003ABC FF5F0100 */  sd    $ra, 0x100($k0)
/* 0046C0 80003AC0 11200011 */  beqz  $t1, savercp
/* 0046C4 80003AC4 FF480110 */   sd    $t0, 0x110($k0)
/* 0046C8 80003AC8 3C088001 */  lui   $t0, %hi(__OSGlobalIntMask) # $t0, 0x8001
/* 0046CC 80003ACC 2508AD00 */  addiu $t0, %lo(__OSGlobalIntMask) # addiu $t0, $t0, -0x5300
/* 0046D0 80003AD0 8D080000 */  lw    $t0, ($t0)
/* 0046D4 80003AD4 2401FFFF */  li    $at, -1
/* 0046D8 80003AD8 01015026 */  xor   $t2, $t0, $at
/* 0046DC 80003ADC 3C01FFFF */  lui   $at, (0xFFFF00FF >> 16) # lui $at, 0xffff
/* 0046E0 80003AE0 314AFF00 */  andi  $t2, $t2, 0xff00
/* 0046E4 80003AE4 342100FF */  ori   $at, (0xFFFF00FF & 0xFFFF) # ori $at, $at, 0xff
/* 0046E8 80003AE8 012A6025 */  or    $t4, $t1, $t2
/* 0046EC 80003AEC 03615824 */  and   $t3, $k1, $at
/* 0046F0 80003AF0 3108FF00 */  andi  $t0, $t0, 0xff00
/* 0046F4 80003AF4 016C5825 */  or    $t3, $t3, $t4
/* 0046F8 80003AF8 01284824 */  and   $t1, $t1, $t0
/* 0046FC 80003AFC 0361D824 */  and   $k1, $k1, $at
/* 004700 80003B00 AF4B0118 */  sw    $t3, 0x118($k0)
/* 004704 80003B04 0369D825 */  or    $k1, $k1, $t1
savercp:
/* 004708 80003B08 3C09A430 */  lui   $t1, %hi(D_A430000C) # $t1, 0xa430
/* 00470C 80003B0C 8D29000C */  lw    $t1, %lo(D_A430000C)($t1)
/* 004710 80003B10 1120000B */  beqz  $t1, endrcp
/* 004714 80003B14 00000000 */   nop   
/* 004718 80003B18 3C088001 */  lui   $t0, %hi(__OSGlobalIntMask) # $t0, 0x8001
/* 00471C 80003B1C 2508AD00 */  addiu $t0, %lo(__OSGlobalIntMask) # addiu $t0, $t0, -0x5300
/* 004720 80003B20 8D080000 */  lw    $t0, ($t0)
/* 004724 80003B24 8F4C0128 */  lw    $t4, 0x128($k0)
/* 004728 80003B28 2401FFFF */  li    $at, -1
/* 00472C 80003B2C 00084402 */  srl   $t0, $t0, 0x10
/* 004730 80003B30 01014026 */  xor   $t0, $t0, $at
/* 004734 80003B34 3108003F */  andi  $t0, $t0, 0x3f
/* 004738 80003B38 010C4024 */  and   $t0, $t0, $t4
/* 00473C 80003B3C 01284825 */  or    $t1, $t1, $t0
endrcp:
/* 004740 80003B40 AF490128 */  sw    $t1, 0x128($k0)
/* 004744 80003B44 40087000 */  mfc0  $t0, $14
/* 004748 80003B48 AF48011C */  sw    $t0, 0x11c($k0)
/* 00474C 80003B4C 8F480018 */  lw    $t0, 0x18($k0)
/* 004750 80003B50 11000014 */  beqz  $t0, no_rdb_mesg
/* 004754 80003B54 00000000 */   nop   
/* 004758 80003B58 4448F800 */  cfc1  $t0, $31
/* 00475C 80003B5C 00000000 */  nop   
/* 004760 80003B60 AF48012C */  sw    $t0, 0x12c($k0)
/* 004764 80003B64 F7400130 */  sdc1  $f0, 0x130($k0)
/* 004768 80003B68 F7420138 */  sdc1  $f2, 0x138($k0)
/* 00476C 80003B6C F7440140 */  sdc1  $f4, 0x140($k0)
/* 004770 80003B70 F7460148 */  sdc1  $f6, 0x148($k0)
/* 004774 80003B74 F7480150 */  sdc1  $f8, 0x150($k0)
/* 004778 80003B78 F74A0158 */  sdc1  $f10, 0x158($k0)
/* 00477C 80003B7C F74C0160 */  sdc1  $f12, 0x160($k0)
/* 004780 80003B80 F74E0168 */  sdc1  $f14, 0x168($k0)
/* 004784 80003B84 F7500170 */  sdc1  $f16, 0x170($k0)
/* 004788 80003B88 F7520178 */  sdc1  $f18, 0x178($k0)
/* 00478C 80003B8C F7540180 */  sdc1  $f20, 0x180($k0)
/* 004790 80003B90 F7560188 */  sdc1  $f22, 0x188($k0)
/* 004794 80003B94 F7580190 */  sdc1  $f24, 0x190($k0)
/* 004798 80003B98 F75A0198 */  sdc1  $f26, 0x198($k0)
/* 00479C 80003B9C F75C01A0 */  sdc1  $f28, 0x1a0($k0)
/* 0047A0 80003BA0 F75E01A8 */  sdc1  $f30, 0x1a8($k0)
no_rdb_mesg:
/* 0047A4 80003BA4 40086800 */  mfc0  $t0, $13
/* 0047A8 80003BA8 AF480120 */  sw    $t0, 0x120($k0)
/* 0047AC 80003BAC 24090002 */  li    $t1, 2
/* 0047B0 80003BB0 A7490010 */  sh    $t1, 0x10($k0)
/* 0047B4 80003BB4 3109007C */  andi  $t1, $t0, 0x7c
/* 0047B8 80003BB8 240A0024 */  li    $t2, 36
/* 0047BC 80003BBC 112A00B6 */  beq   $t1, $t2, handle_break
/* 0047C0 80003BC0 00000000 */   nop   
/* 0047C4 80003BC4 240A002C */  li    $t2, 44
/* 0047C8 80003BC8 112A0105 */  beq   $t1, $t2, handle_CpU
/* 0047CC 80003BCC 00000000 */   nop   
/* 0047D0 80003BD0 240A0000 */  li    $t2, 0
/* 0047D4 80003BD4 152A00C9 */  bne   $t1, $t2, panic
/* 0047D8 80003BD8 00000000 */   nop   
/* 0047DC 80003BDC 03688024 */  and   $s0, $k1, $t0
next_interrupt:
/* 0047E0 80003BE0 3209FF00 */  andi  $t1, $s0, 0xff00
/* 0047E4 80003BE4 00095302 */  srl   $t2, $t1, 0xc
/* 0047E8 80003BE8 15400003 */  bnez  $t2, .L80003BF8
/* 0047EC 80003BEC 00000000 */   nop   
/* 0047F0 80003BF0 00095202 */  srl   $t2, $t1, 8
/* 0047F4 80003BF4 214A0010 */  addi  $t2, $t2, 0x10
.L80003BF8:
/* 0047F8 80003BF8 3C018001 */  lui   $at, %hi(__osIntOffTable)
/* 0047FC 80003BFC 002A0821 */  addu  $at, $at, $t2
/* 004800 80003C00 902A20F0 */  lbu   $t2, %lo(__osIntOffTable)($at)
/* 004804 80003C04 3C018001 */  lui   $at, %hi(__osIntTable)
/* 004808 80003C08 002A0821 */  addu  $at, $at, $t2
/* 00480C 80003C0C 8C2A2110 */  lw    $t2, %lo(__osIntTable)($at)
/* 004810 80003C10 01400008 */  jr    $t2
/* 004814 80003C14 00000000 */   nop   
IP6_Hdlr:
/* 004818 80003C18 2401DFFF */  li    $at, -8193
/* 00481C 80003C1C 1000FFF0 */  b     next_interrupt
/* 004820 80003C20 02018024 */   and   $s0, $s0, $at
IP7_Hdlr:
/* 004824 80003C24 2401BFFF */  li    $at, -16385
/* 004828 80003C28 1000FFED */  b     next_interrupt
/* 00482C 80003C2C 02018024 */   and   $s0, $s0, $at
counter:
/* 004830 80003C30 40095800 */  mfc0  $t1, $11
/* 004834 80003C34 40895800 */  mtc0  $t1, $11
/* 004838 80003C38 0C000FCB */  jal   send_mesg
/* 00483C 80003C3C 24040018 */   li    $a0, 24
/* 004840 80003C40 3C01FFFF */  lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
/* 004844 80003C44 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* 004848 80003C48 1000FFE5 */  b     next_interrupt
/* 00484C 80003C4C 02018024 */   and   $s0, $s0, $at
cart:
/* 004850 80003C50 3C098001 */  lui   $t1, %hi(__osHwIntTable) # $t1, 0x8001
/* 004854 80003C54 2529AD10 */  addiu $t1, %lo(__osHwIntTable) # addiu $t1, $t1, -0x52f0
/* 004858 80003C58 8D2A0008 */  lw    $t2, 8($t1)
/* 00485C 80003C5C 2401F7FF */  li    $at, -2049
/* 004860 80003C60 02018024 */  and   $s0, $s0, $at
/* 004864 80003C64 11400007 */  beqz  $t2, .L80003C84
/* 004868 80003C68 21290008 */   addi  $t1, $t1, 8
/* 00486C 80003C6C 0140F809 */  jalr  $t2
/* 004870 80003C70 8D3D0004 */  lw    $sp, 4($t1)
/* 004874 80003C74 10400003 */  beqz  $v0, .L80003C84
/* 004878 80003C78 00000000 */   nop   
/* 00487C 80003C7C 1000008C */  b     redispatch
/* 004880 80003C80 00000000 */   nop   
.L80003C84:
/* 004884 80003C84 0C000FCB */  jal   send_mesg
/* 004888 80003C88 24040010 */   li    $a0, 16
/* 00488C 80003C8C 1000FFD4 */  b     next_interrupt
/* 004890 80003C90 00000000 */   nop   
rcp:
/* 004894 80003C94 3C088001 */  lui   $t0, %hi(__OSGlobalIntMask) # $t0, 0x8001
/* 004898 80003C98 2508AD00 */  addiu $t0, %lo(__OSGlobalIntMask) # addiu $t0, $t0, -0x5300
/* 00489C 80003C9C 8D080000 */  lw    $t0, ($t0)
/* 0048A0 80003CA0 3C11A430 */  lui   $s1, %hi(D_A4300008) # $s1, 0xa430
/* 0048A4 80003CA4 8E310008 */  lw    $s1, %lo(D_A4300008)($s1)
/* 0048A8 80003CA8 00084402 */  srl   $t0, $t0, 0x10
/* 0048AC 80003CAC 02288824 */  and   $s1, $s1, $t0
/* 0048B0 80003CB0 32290001 */  andi  $t1, $s1, 1
/* 0048B4 80003CB4 11200013 */  beqz  $t1, vi
/* 0048B8 80003CB8 00000000 */   nop   
/* 0048BC 80003CBC 3C0CA404 */  lui   $t4, %hi(D_A4040010) # $t4, 0xa404
/* 0048C0 80003CC0 8D8C0010 */  lw    $t4, %lo(D_A4040010)($t4)
/* 0048C4 80003CC4 34098008 */  li    $t1, 32776
/* 0048C8 80003CC8 3C01A404 */  lui   $at, %hi(D_A4040010) # $at, 0xa404
/* 0048CC 80003CCC 318C0300 */  andi  $t4, $t4, 0x300
/* 0048D0 80003CD0 3231003E */  andi  $s1, $s1, 0x3e
/* 0048D4 80003CD4 11800007 */  beqz  $t4, sp_other_break
/* 0048D8 80003CD8 AC290010 */   sw    $t1, %lo(D_A4040010)($at)
/* 0048DC 80003CDC 0C000FCB */  jal   send_mesg
/* 0048E0 80003CE0 24040020 */   li    $a0, 32
/* 0048E4 80003CE4 12200042 */  beqz  $s1, NoMoreRcpInts
/* 0048E8 80003CE8 00000000 */   nop   
/* 0048EC 80003CEC 10000005 */  b     vi
/* 0048F0 80003CF0 00000000 */   nop   
sp_other_break:
/* 0048F4 80003CF4 0C000FCB */  jal   send_mesg
/* 0048F8 80003CF8 24040058 */   li    $a0, 88
/* 0048FC 80003CFC 1220003C */  beqz  $s1, NoMoreRcpInts
/* 004900 80003D00 00000000 */   nop   
vi:
/* 004904 80003D04 32290008 */  andi  $t1, $s1, 8
/* 004908 80003D08 11200007 */  beqz  $t1, ai
/* 00490C 80003D0C 3C01A440 */   lui   $at, %hi(D_A4400010) # $at, 0xa440
/* 004910 80003D10 32310037 */  andi  $s1, $s1, 0x37
/* 004914 80003D14 AC200010 */  sw    $zero, %lo(D_A4400010)($at)
/* 004918 80003D18 0C000FCB */  jal   send_mesg
/* 00491C 80003D1C 24040038 */   li    $a0, 56
/* 004920 80003D20 12200033 */  beqz  $s1, NoMoreRcpInts
/* 004924 80003D24 00000000 */   nop   
ai:
/* 004928 80003D28 32290004 */  andi  $t1, $s1, 4
/* 00492C 80003D2C 11200009 */  beqz  $t1, si
/* 004930 80003D30 00000000 */   nop   
/* 004934 80003D34 24090001 */  li    $t1, 1
/* 004938 80003D38 3C01A450 */  lui   $at, %hi(D_A450000C) # $at, 0xa450
/* 00493C 80003D3C 3231003B */  andi  $s1, $s1, 0x3b
/* 004940 80003D40 AC29000C */  sw    $t1, %lo(D_A450000C)($at)
/* 004944 80003D44 0C000FCB */  jal   send_mesg
/* 004948 80003D48 24040030 */   li    $a0, 48
/* 00494C 80003D4C 12200028 */  beqz  $s1, NoMoreRcpInts
/* 004950 80003D50 00000000 */   nop   
si:
/* 004954 80003D54 32290002 */  andi  $t1, $s1, 2
/* 004958 80003D58 11200007 */  beqz  $t1, pi
/* 00495C 80003D5C 3C01A480 */   lui   $at, %hi(D_A4800018) # $at, 0xa480
/* 004960 80003D60 3231003D */  andi  $s1, $s1, 0x3d
/* 004964 80003D64 AC200018 */  sw    $zero, %lo(D_A4800018)($at)
/* 004968 80003D68 0C000FCB */  jal   send_mesg
/* 00496C 80003D6C 24040028 */   li    $a0, 40
/* 004970 80003D70 1220001F */  beqz  $s1, NoMoreRcpInts
/* 004974 80003D74 00000000 */   nop   
pi:
/* 004978 80003D78 32290010 */  andi  $t1, $s1, 0x10
/* 00497C 80003D7C 11200013 */  beqz  $t1, dp
/* 004980 80003D80 00000000 */   nop   
/* 004984 80003D84 24090002 */  li    $t1, 2
/* 004988 80003D88 3C01A460 */  lui   $at, %hi(D_A4600010) # $at, 0xa460
/* 00498C 80003D8C AC290010 */  sw    $t1, %lo(D_A4600010)($at)
/* 004990 80003D90 3C098001 */  lui   $t1, %hi(__osPiIntTable) # $t1, 0x8001
/* 004994 80003D94 2529AD38 */  addiu $t1, %lo(__osPiIntTable) # addiu $t1, $t1, -0x52c8
/* 004998 80003D98 8D2A0000 */  lw    $t2, ($t1)
/* 00499C 80003D9C 3231002F */  andi  $s1, $s1, 0x2f
/* 0049A0 80003DA0 11400006 */  beqz  $t2, .L80003DBC
/* 0049A4 80003DA4 00000000 */   nop   
/* 0049A8 80003DA8 8D3D0004 */  lw    $sp, 4($t1)
/* 0049AC 80003DAC 0140F809 */  jalr  $t2
/* 0049B0 80003DB0 00402025 */  move  $a0, $v0
/* 0049B4 80003DB4 14400003 */  bnez  $v0, .L80003DC4
/* 0049B8 80003DB8 00000000 */   nop   
.L80003DBC:
/* 0049BC 80003DBC 0C000FCB */  jal   send_mesg
/* 0049C0 80003DC0 24040040 */   li    $a0, 64
.L80003DC4:
/* 0049C4 80003DC4 1220000A */  beqz  $s1, NoMoreRcpInts
/* 0049C8 80003DC8 00000000 */   nop   
dp:
/* 0049CC 80003DCC 32290020 */  andi  $t1, $s1, 0x20
/* 0049D0 80003DD0 11200007 */  beqz  $t1, NoMoreRcpInts
/* 0049D4 80003DD4 00000000 */   nop   
/* 0049D8 80003DD8 24090800 */  li    $t1, 2048
/* 0049DC 80003DDC 3C01A430 */  lui   $at, 0xa430
/* 0049E0 80003DE0 3231001F */  andi  $s1, $s1, 0x1f
/* 0049E4 80003DE4 AC290000 */  sw    $t1, ($at)
/* 0049E8 80003DE8 0C000FCB */  jal   send_mesg
/* 0049EC 80003DEC 24040048 */   li    $a0, 72
NoMoreRcpInts:
/* 0049F0 80003DF0 2401FBFF */  li    $at, -1025
/* 0049F4 80003DF4 1000FF7A */  b     next_interrupt
/* 0049F8 80003DF8 02018024 */   and   $s0, $s0, $at
prenmi:
/* 0049FC 80003DFC 8F5B0118 */  lw    $k1, 0x118($k0)
/* 004A00 80003E00 2401EFFF */  li    $at, -4097
/* 004A04 80003E04 3C098001 */  lui   $t1, %hi(__osShutdown) # $t1, 0x8001
/* 004A08 80003E08 0361D824 */  and   $k1, $k1, $at
/* 004A0C 80003E0C AF5B0118 */  sw    $k1, 0x118($k0)
/* 004A10 80003E10 2529ACFC */  addiu $t1, %lo(__osShutdown) # addiu $t1, $t1, -0x5304
/* 004A14 80003E14 8D2A0000 */  lw    $t2, ($t1)
/* 004A18 80003E18 11400003 */  beqz  $t2, firstnmi
/* 004A1C 80003E1C 2401EFFF */   li    $at, -4097
/* 004A20 80003E20 10000023 */  b     redispatch
/* 004A24 80003E24 02018024 */   and   $s0, $s0, $at
firstnmi:
/* 004A28 80003E28 240A0001 */  li    $t2, 1
/* 004A2C 80003E2C AD2A0000 */  sw    $t2, ($t1)
/* 004A30 80003E30 0C000FCB */  jal   send_mesg
/* 004A34 80003E34 24040070 */   li    $a0, 112
/* 004A38 80003E38 3C0A8001 */  lui   $t2, %hi(__osRunQueue) # $t2, 0x8001
/* 004A3C 80003E3C 8D4AAD48 */  lw    $t2, %lo(__osRunQueue)($t2)
/* 004A40 80003E40 2401EFFF */  li    $at, -4097
/* 004A44 80003E44 02018024 */  and   $s0, $s0, $at
/* 004A48 80003E48 8D5B0118 */  lw    $k1, 0x118($t2)
/* 004A4C 80003E4C 0361D824 */  and   $k1, $k1, $at
/* 004A50 80003E50 10000017 */  b     redispatch
/* 004A54 80003E54 AD5B0118 */   sw    $k1, 0x118($t2)
sw2:
/* 004A58 80003E58 2401FDFF */  li    $at, -513
/* 004A5C 80003E5C 01014024 */  and   $t0, $t0, $at
/* 004A60 80003E60 40886800 */  mtc0  $t0, $13
/* 004A64 80003E64 0C000FCB */  jal   send_mesg
/* 004A68 80003E68 24040008 */   li    $a0, 8
/* 004A6C 80003E6C 2401FDFF */  li    $at, -513
/* 004A70 80003E70 1000FF5B */  b     next_interrupt
/* 004A74 80003E74 02018024 */   and   $s0, $s0, $at
sw1:
/* 004A78 80003E78 2401FEFF */  li    $at, -257
/* 004A7C 80003E7C 01014024 */  and   $t0, $t0, $at
/* 004A80 80003E80 40886800 */  mtc0  $t0, $13
/* 004A84 80003E84 0C000FCB */  jal   send_mesg
/* 004A88 80003E88 24040000 */   li    $a0, 0
/* 004A8C 80003E8C 2401FEFF */  li    $at, -257
/* 004A90 80003E90 1000FF53 */  b     next_interrupt
/* 004A94 80003E94 02018024 */   and   $s0, $s0, $at
handle_break:
/* 004A98 80003E98 24090001 */  li    $t1, 1
/* 004A9C 80003E9C A7490012 */  sh    $t1, 0x12($k0)
/* 004AA0 80003EA0 0C000FCB */  jal   send_mesg
/* 004AA4 80003EA4 24040050 */   li    $a0, 80
/* 004AA8 80003EA8 10000001 */  b     redispatch
/* 004AAC 80003EAC 00000000 */   nop   
redispatch:
/* 004AB0 80003EB0 3C0A8001 */  lui   $t2, %hi(__osRunQueue) # $t2, 0x8001
/* 004AB4 80003EB4 8D4AAD48 */  lw    $t2, %lo(__osRunQueue)($t2)
/* 004AB8 80003EB8 8F490004 */  lw    $t1, 4($k0)
/* 004ABC 80003EBC 8D4B0004 */  lw    $t3, 4($t2)
/* 004AC0 80003EC0 012B082A */  slt   $at, $t1, $t3
/* 004AC4 80003EC4 10200007 */  beqz  $at, enqueueRunning
/* 004AC8 80003EC8 00000000 */   nop   
/* 004ACC 80003ECC 3C048001 */  lui   $a0, %hi(__osRunQueue) # $a0, 0x8001
/* 004AD0 80003ED0 03402825 */  move  $a1, $k0
/* 004AD4 80003ED4 0C001045 */  jal   __osEnqueueThread
/* 004AD8 80003ED8 2484AD48 */   addiu $a0, %lo(__osRunQueue) # addiu $a0, $a0, -0x52b8
/* 004ADC 80003EDC 0800105D */  j     __osDispatchThread
/* 004AE0 80003EE0 00000000 */   nop   

enqueueRunning:
/* 004AE4 80003EE4 3C098001 */  lui   $t1, %hi(__osRunQueue) # $t1, 0x8001
/* 004AE8 80003EE8 2529AD48 */  addiu $t1, %lo(__osRunQueue) # addiu $t1, $t1, -0x52b8
/* 004AEC 80003EEC 8D2A0000 */  lw    $t2, ($t1)
/* 004AF0 80003EF0 AF4A0000 */  sw    $t2, ($k0)
/* 004AF4 80003EF4 0800105D */  j     __osDispatchThread
/* 004AF8 80003EF8 AD3A0000 */   sw    $k0, ($t1)

panic:
/* 004AFC 80003EFC 3C018001 */  lui   $at, %hi(__osFaultedThread) # $at, 0x8001
/* 004B00 80003F00 AC3AAD54 */  sw    $k0, %lo(__osFaultedThread)($at)
/* 004B04 80003F04 24090001 */  li    $t1, 1
/* 004B08 80003F08 A7490010 */  sh    $t1, 0x10($k0)
/* 004B0C 80003F0C 24090002 */  li    $t1, 2
/* 004B10 80003F10 A7490012 */  sh    $t1, 0x12($k0)
/* 004B14 80003F14 400A4000 */  mfc0  $t2, $8
/* 004B18 80003F18 AF4A0124 */  sw    $t2, 0x124($k0)
/* 004B1C 80003F1C 0C000FCB */  jal   send_mesg
/* 004B20 80003F20 24040060 */   li    $a0, 96
/* 004B24 80003F24 0800105D */  j     __osDispatchThread
/* 004B28 80003F28 00000000 */   nop   

glabel send_mesg
/* 004B2C 80003F2C 3C0A8001 */  lui   $t2, %hi(__osEventStateTab) # $t2, 0x8001
/* 004B30 80003F30 254A5A40 */  addiu $t2, %lo(__osEventStateTab) # addiu $t2, $t2, 0x5a40
/* 004B34 80003F34 01445021 */  addu  $t2, $t2, $a0
/* 004B38 80003F38 8D490000 */  lw    $t1, ($t2)
/* 004B3C 80003F3C 03E09025 */  move  $s2, $ra
/* 004B40 80003F40 11200025 */  beqz  $t1, send_done
/* 004B44 80003F44 00000000 */   nop   
/* 004B48 80003F48 8D2B0008 */  lw    $t3, 8($t1)
/* 004B4C 80003F4C 8D2C0010 */  lw    $t4, 0x10($t1)
/* 004B50 80003F50 016C082A */  slt   $at, $t3, $t4
/* 004B54 80003F54 10200020 */  beqz  $at, send_done
/* 004B58 80003F58 00000000 */   nop   
/* 004B5C 80003F5C 8D2D000C */  lw    $t5, 0xc($t1)
/* 004B60 80003F60 01AB6821 */  addu  $t5, $t5, $t3
/* 004B64 80003F64 01AC001A */  div   $zero, $t5, $t4
/* 004B68 80003F68 15800002 */  bnez  $t4, .L80003F74
/* 004B6C 80003F6C 00000000 */   nop   
/* 004B70 80003F70 0007000D */  break 7
.L80003F74:
/* 004B74 80003F74 2401FFFF */  li    $at, -1
/* 004B78 80003F78 15810004 */  bne   $t4, $at, .L80003F8C
/* 004B7C 80003F7C 3C018000 */   lui   $at, 0x8000
/* 004B80 80003F80 15A10002 */  bne   $t5, $at, .L80003F8C
/* 004B84 80003F84 00000000 */   nop   
/* 004B88 80003F88 0006000D */  break 6
.L80003F8C:
/* 004B8C 80003F8C 8D2C0014 */  lw    $t4, 0x14($t1)
/* 004B90 80003F90 00006810 */  mfhi  $t5
/* 004B94 80003F94 000D6880 */  sll   $t5, $t5, 2
/* 004B98 80003F98 018D6021 */  addu  $t4, $t4, $t5
/* 004B9C 80003F9C 8D4D0004 */  lw    $t5, 4($t2)
/* 004BA0 80003FA0 256A0001 */  addiu $t2, $t3, 1
/* 004BA4 80003FA4 AD8D0000 */  sw    $t5, ($t4)
/* 004BA8 80003FA8 AD2A0008 */  sw    $t2, 8($t1)
/* 004BAC 80003FAC 8D2A0000 */  lw    $t2, ($t1)
/* 004BB0 80003FB0 8D4B0000 */  lw    $t3, ($t2)
/* 004BB4 80003FB4 11600008 */  beqz  $t3, send_done
/* 004BB8 80003FB8 00000000 */   nop   
/* 004BBC 80003FBC 0C001057 */  jal   __osPopThread
/* 004BC0 80003FC0 01202025 */   move  $a0, $t1
/* 004BC4 80003FC4 00405025 */  move  $t2, $v0
/* 004BC8 80003FC8 3C048001 */  lui   $a0, %hi(__osRunQueue) # $a0, 0x8001
/* 004BCC 80003FCC 01402825 */  move  $a1, $t2
/* 004BD0 80003FD0 0C001045 */  jal   __osEnqueueThread
/* 004BD4 80003FD4 2484AD48 */   addiu $a0, %lo(__osRunQueue) # addiu $a0, $a0, -0x52b8
send_done:
/* 004BD8 80003FD8 02400008 */  jr    $s2
/* 004BDC 80003FDC 00000000 */   nop   
handle_CpU:
/* 004BE0 80003FE0 3C013000 */  lui   $at, 0x3000
/* 004BE4 80003FE4 01014824 */  and   $t1, $t0, $at
/* 004BE8 80003FE8 00094F02 */  srl   $t1, $t1, 0x1c
/* 004BEC 80003FEC 240A0001 */  li    $t2, 1
/* 004BF0 80003FF0 152AFFC2 */  bne   $t1, $t2, panic
/* 004BF4 80003FF4 00000000 */   nop   
/* 004BF8 80003FF8 8F5B0118 */  lw    $k1, 0x118($k0)
/* 004BFC 80003FFC 3C012000 */  lui   $at, 0x2000
glabel func_80004000
/* 004C00 80004000 24090001 */  li    $t1, 1
/* 004C04 80004004 0361D825 */  or    $k1, $k1, $at
/* 004C08 80004008 AF490018 */  sw    $t1, 0x18($k0)
/* 004C0C 8000400C 1000FFB5 */  b     enqueueRunning
/* 004C10 80004010 AF5B0118 */   sw    $k1, 0x118($k0)
glabel __osEnqueueAndYield
/* 004C14 80004014 3C058001 */  lui   $a1, %hi(__osRunningThread) # $a1, 0x8001
/* 004C18 80004018 8CA5AD50 */  lw    $a1, %lo(__osRunningThread)($a1)
/* 004C1C 8000401C 40086000 */  mfc0  $t0, $12
/* 004C20 80004020 8CBB0018 */  lw    $k1, 0x18($a1)
/* 004C24 80004024 35080002 */  ori   $t0, $t0, 2
/* 004C28 80004028 ACA80118 */  sw    $t0, 0x118($a1)
/* 004C2C 8000402C FCB00098 */  sd    $s0, 0x98($a1)
/* 004C30 80004030 FCB100A0 */  sd    $s1, 0xa0($a1)
/* 004C34 80004034 FCB200A8 */  sd    $s2, 0xa8($a1)
/* 004C38 80004038 FCB300B0 */  sd    $s3, 0xb0($a1)
/* 004C3C 8000403C FCB400B8 */  sd    $s4, 0xb8($a1)
/* 004C40 80004040 FCB500C0 */  sd    $s5, 0xc0($a1)
/* 004C44 80004044 FCB600C8 */  sd    $s6, 0xc8($a1)
/* 004C48 80004048 FCB700D0 */  sd    $s7, 0xd0($a1)
/* 004C4C 8000404C FCBC00E8 */  sd    $gp, 0xe8($a1)
/* 004C50 80004050 FCBD00F0 */  sd    $sp, 0xf0($a1)
/* 004C54 80004054 FCBE00F8 */  sd    $fp, 0xf8($a1)
/* 004C58 80004058 FCBF0100 */  sd    $ra, 0x100($a1)
/* 004C5C 8000405C 13600009 */  beqz  $k1, .L80004084
/* 004C60 80004060 ACBF011C */   sw    $ra, 0x11c($a1)
/* 004C64 80004064 445BF800 */  cfc1  $k1, $31
/* 004C68 80004068 F4B40180 */  sdc1  $f20, 0x180($a1)
/* 004C6C 8000406C F4B60188 */  sdc1  $f22, 0x188($a1)
/* 004C70 80004070 F4B80190 */  sdc1  $f24, 0x190($a1)
/* 004C74 80004074 F4BA0198 */  sdc1  $f26, 0x198($a1)
/* 004C78 80004078 F4BC01A0 */  sdc1  $f28, 0x1a0($a1)
/* 004C7C 8000407C F4BE01A8 */  sdc1  $f30, 0x1a8($a1)
/* 004C80 80004080 ACBB012C */  sw    $k1, 0x12c($a1)
.L80004084:
/* 004C84 80004084 8CBB0118 */  lw    $k1, 0x118($a1)
/* 004C88 80004088 3369FF00 */  andi  $t1, $k1, 0xff00
/* 004C8C 8000408C 1120000D */  beqz  $t1, .L800040C4
/* 004C90 80004090 00000000 */   nop   
/* 004C94 80004094 3C088001 */  lui   $t0, %hi(__OSGlobalIntMask) # $t0, 0x8001
/* 004C98 80004098 2508AD00 */  addiu $t0, %lo(__OSGlobalIntMask) # addiu $t0, $t0, -0x5300
/* 004C9C 8000409C 8D080000 */  lw    $t0, ($t0)
/* 004CA0 800040A0 2401FFFF */  li    $at, -1
/* 004CA4 800040A4 01014026 */  xor   $t0, $t0, $at
/* 004CA8 800040A8 3C01FFFF */  lui   $at, (0xFFFF00FF >> 16) # lui $at, 0xffff
/* 004CAC 800040AC 3108FF00 */  andi  $t0, $t0, 0xff00
/* 004CB0 800040B0 342100FF */  ori   $at, (0xFFFF00FF & 0xFFFF) # ori $at, $at, 0xff
/* 004CB4 800040B4 01284825 */  or    $t1, $t1, $t0
/* 004CB8 800040B8 0361D824 */  and   $k1, $k1, $at
/* 004CBC 800040BC 0369D825 */  or    $k1, $k1, $t1
/* 004CC0 800040C0 ACBB0118 */  sw    $k1, 0x118($a1)
.L800040C4:
/* 004CC4 800040C4 3C1BA430 */  lui   $k1, %hi(D_A430000C) # $k1, 0xa430
/* 004CC8 800040C8 8F7B000C */  lw    $k1, %lo(D_A430000C)($k1)
/* 004CCC 800040CC 1360000B */  beqz  $k1, .L800040FC
/* 004CD0 800040D0 00000000 */   nop   
/* 004CD4 800040D4 3C1A8001 */  lui   $k0, %hi(__OSGlobalIntMask) # $k0, 0x8001
/* 004CD8 800040D8 275AAD00 */  addiu $k0, %lo(__OSGlobalIntMask) # addiu $k0, $k0, -0x5300
/* 004CDC 800040DC 8F5A0000 */  lw    $k0, ($k0)
/* 004CE0 800040E0 8CA80128 */  lw    $t0, 0x128($a1)
/* 004CE4 800040E4 2401FFFF */  li    $at, -1
/* 004CE8 800040E8 001AD402 */  srl   $k0, $k0, 0x10
/* 004CEC 800040EC 0341D026 */  xor   $k0, $k0, $at
/* 004CF0 800040F0 335A003F */  andi  $k0, $k0, 0x3f
/* 004CF4 800040F4 0348D024 */  and   $k0, $k0, $t0
/* 004CF8 800040F8 037AD825 */  or    $k1, $k1, $k0
.L800040FC:
/* 004CFC 800040FC 10800003 */  beqz  $a0, .L8000410C
/* 004D00 80004100 ACBB0128 */   sw    $k1, 0x128($a1)
/* 004D04 80004104 0C001045 */  jal   __osEnqueueThread
/* 004D08 80004108 00000000 */   nop   
.L8000410C:
/* 004D0C 8000410C 0800105D */  j     __osDispatchThread
/* 004D10 80004110 00000000 */   nop   

glabel __osEnqueueThread
/* 004D14 80004114 8C980000 */  lw    $t8, ($a0)
/* 004D18 80004118 8CAF0004 */  lw    $t7, 4($a1)
/* 004D1C 8000411C 0080C825 */  move  $t9, $a0
/* 004D20 80004120 8F0E0004 */  lw    $t6, 4($t8)
/* 004D24 80004124 01CF082A */  slt   $at, $t6, $t7
/* 004D28 80004128 14200007 */  bnez  $at, .L80004148
/* 004D2C 8000412C 00000000 */   nop   
.L80004130:
/* 004D30 80004130 0300C825 */  move  $t9, $t8
/* 004D34 80004134 8F180000 */  lw    $t8, ($t8)
/* 004D38 80004138 8F0E0004 */  lw    $t6, 4($t8)
/* 004D3C 8000413C 01CF082A */  slt   $at, $t6, $t7
/* 004D40 80004140 1020FFFB */  beqz  $at, .L80004130
/* 004D44 80004144 00000000 */   nop   
.L80004148:
/* 004D48 80004148 8F380000 */  lw    $t8, ($t9)
/* 004D4C 8000414C ACB80000 */  sw    $t8, ($a1)
/* 004D50 80004150 AF250000 */  sw    $a1, ($t9)
/* 004D54 80004154 03E00008 */  jr    $ra
/* 004D58 80004158 ACA40008 */   sw    $a0, 8($a1)

glabel __osPopThread
/* 004D5C 8000415C 8C820000 */  lw    $v0, ($a0)
/* 004D60 80004160 8C590000 */  lw    $t9, ($v0)
/* 004D64 80004164 03E00008 */  jr    $ra
/* 004D68 80004168 AC990000 */   sw    $t9, ($a0)

glabel __osNop
/* 004D6C 8000416C 03E00008 */  jr    $ra
/* 004D70 80004170 00000000 */   nop   

glabel __osDispatchThread
/* 004D74 80004174 3C048001 */  lui   $a0, %hi(__osRunQueue) # $a0, 0x8001
/* 004D78 80004178 0C001057 */  jal   __osPopThread
/* 004D7C 8000417C 2484AD48 */   addiu $a0, %lo(__osRunQueue) # addiu $a0, $a0, -0x52b8
/* 004D80 80004180 3C018001 */  lui   $at, %hi(__osRunningThread) # $at, 0x8001
/* 004D84 80004184 AC22AD50 */  sw    $v0, %lo(__osRunningThread)($at)
/* 004D88 80004188 24080004 */  li    $t0, 4
/* 004D8C 8000418C A4480010 */  sh    $t0, 0x10($v0)
/* 004D90 80004190 0040D025 */  move  $k0, $v0
/* 004D94 80004194 3C088001 */  lui   $t0, %hi(__OSGlobalIntMask) # $t0, 0x8001
/* 004D98 80004198 8F5B0118 */  lw    $k1, 0x118($k0)
/* 004D9C 8000419C 2508AD00 */  addiu $t0, %lo(__OSGlobalIntMask) # addiu $t0, $t0, -0x5300
/* 004DA0 800041A0 8D080000 */  lw    $t0, ($t0)
/* 004DA4 800041A4 3C01FFFF */  lui   $at, (0xFFFF00FF >> 16) # lui $at, 0xffff
/* 004DA8 800041A8 3369FF00 */  andi  $t1, $k1, 0xff00
/* 004DAC 800041AC 342100FF */  ori   $at, (0xFFFF00FF & 0xFFFF) # ori $at, $at, 0xff
/* 004DB0 800041B0 3108FF00 */  andi  $t0, $t0, 0xff00
/* 004DB4 800041B4 01284824 */  and   $t1, $t1, $t0
/* 004DB8 800041B8 0361D824 */  and   $k1, $k1, $at
/* 004DBC 800041BC 0369D825 */  or    $k1, $k1, $t1
/* 004DC0 800041C0 409B6000 */  mtc0  $k1, $12
/* 004DC4 800041C4 DF5B0108 */  ld    $k1, 0x108($k0)
/* 004DC8 800041C8 DF410020 */  ld    $at, 0x20($k0)
/* 004DCC 800041CC DF420028 */  ld    $v0, 0x28($k0)
/* 004DD0 800041D0 03600013 */  mtlo  $k1
/* 004DD4 800041D4 DF5B0110 */  ld    $k1, 0x110($k0)
/* 004DD8 800041D8 DF430030 */  ld    $v1, 0x30($k0)
/* 004DDC 800041DC DF440038 */  ld    $a0, 0x38($k0)
/* 004DE0 800041E0 DF450040 */  ld    $a1, 0x40($k0)
/* 004DE4 800041E4 DF460048 */  ld    $a2, 0x48($k0)
/* 004DE8 800041E8 DF470050 */  ld    $a3, 0x50($k0)
/* 004DEC 800041EC DF480058 */  ld    $t0, 0x58($k0)
/* 004DF0 800041F0 DF490060 */  ld    $t1, 0x60($k0)
/* 004DF4 800041F4 DF4A0068 */  ld    $t2, 0x68($k0)
/* 004DF8 800041F8 DF4B0070 */  ld    $t3, 0x70($k0)
/* 004DFC 800041FC DF4C0078 */  ld    $t4, 0x78($k0)
/* 004E00 80004200 DF4D0080 */  ld    $t5, 0x80($k0)
/* 004E04 80004204 DF4E0088 */  ld    $t6, 0x88($k0)
/* 004E08 80004208 DF4F0090 */  ld    $t7, 0x90($k0)
/* 004E0C 8000420C DF500098 */  ld    $s0, 0x98($k0)
/* 004E10 80004210 DF5100A0 */  ld    $s1, 0xa0($k0)
/* 004E14 80004214 DF5200A8 */  ld    $s2, 0xa8($k0)
/* 004E18 80004218 DF5300B0 */  ld    $s3, 0xb0($k0)
/* 004E1C 8000421C DF5400B8 */  ld    $s4, 0xb8($k0)
/* 004E20 80004220 DF5500C0 */  ld    $s5, 0xc0($k0)
/* 004E24 80004224 DF5600C8 */  ld    $s6, 0xc8($k0)
/* 004E28 80004228 DF5700D0 */  ld    $s7, 0xd0($k0)
/* 004E2C 8000422C DF5800D8 */  ld    $t8, 0xd8($k0)
/* 004E30 80004230 DF5900E0 */  ld    $t9, 0xe0($k0)
/* 004E34 80004234 DF5C00E8 */  ld    $gp, 0xe8($k0)
/* 004E38 80004238 03600011 */  mthi  $k1
/* 004E3C 8000423C DF5D00F0 */  ld    $sp, 0xf0($k0)
/* 004E40 80004240 DF5E00F8 */  ld    $fp, 0xf8($k0)
/* 004E44 80004244 DF5F0100 */  ld    $ra, 0x100($k0)
/* 004E48 80004248 8F5B011C */  lw    $k1, 0x11c($k0)
/* 004E4C 8000424C 409B7000 */  mtc0  $k1, $14
/* 004E50 80004250 8F5B0018 */  lw    $k1, 0x18($k0)
/* 004E54 80004254 13600013 */  beqz  $k1, .L800042A4
/* 004E58 80004258 00000000 */   nop   
/* 004E5C 8000425C 8F5B012C */  lw    $k1, 0x12c($k0)
/* 004E60 80004260 44DBF800 */  ctc1  $k1, $31
/* 004E64 80004264 D7400130 */  ldc1  $f0, 0x130($k0)
/* 004E68 80004268 D7420138 */  ldc1  $f2, 0x138($k0)
/* 004E6C 8000426C D7440140 */  ldc1  $f4, 0x140($k0)
/* 004E70 80004270 D7460148 */  ldc1  $f6, 0x148($k0)
/* 004E74 80004274 D7480150 */  ldc1  $f8, 0x150($k0)
/* 004E78 80004278 D74A0158 */  ldc1  $f10, 0x158($k0)
/* 004E7C 8000427C D74C0160 */  ldc1  $f12, 0x160($k0)
/* 004E80 80004280 D74E0168 */  ldc1  $f14, 0x168($k0)
/* 004E84 80004284 D7500170 */  ldc1  $f16, 0x170($k0)
/* 004E88 80004288 D7520178 */  ldc1  $f18, 0x178($k0)
/* 004E8C 8000428C D7540180 */  ldc1  $f20, 0x180($k0)
/* 004E90 80004290 D7560188 */  ldc1  $f22, 0x188($k0)
/* 004E94 80004294 D7580190 */  ldc1  $f24, 0x190($k0)
/* 004E98 80004298 D75A0198 */  ldc1  $f26, 0x198($k0)
/* 004E9C 8000429C D75C01A0 */  ldc1  $f28, 0x1a0($k0)
/* 004EA0 800042A0 D75E01A8 */  ldc1  $f30, 0x1a8($k0)
.L800042A4:
/* 004EA4 800042A4 8F5B0128 */  lw    $k1, 0x128($k0)
/* 004EA8 800042A8 3C1A8001 */  lui   $k0, %hi(__OSGlobalIntMask) # $k0, 0x8001
/* 004EAC 800042AC 275AAD00 */  addiu $k0, %lo(__OSGlobalIntMask) # addiu $k0, $k0, -0x5300
/* 004EB0 800042B0 8F5A0000 */  lw    $k0, ($k0)
/* 004EB4 800042B4 001AD402 */  srl   $k0, $k0, 0x10
/* 004EB8 800042B8 037AD824 */  and   $k1, $k1, $k0
/* 004EBC 800042BC 001BD840 */  sll   $k1, $k1, 1
/* 004EC0 800042C0 3C1A8001 */  lui   $k0, %hi(__osRcpImTable) # $k0, 0x8001
/* 004EC4 800042C4 275A2160 */  addiu $k0, %lo(__osRcpImTable) # addiu $k0, $k0, 0x2160
/* 004EC8 800042C8 037AD821 */  addu  $k1, $k1, $k0
/* 004ECC 800042CC 977B0000 */  lhu   $k1, ($k1)
/* 004ED0 800042D0 3C1AA430 */  lui   $k0, %hi(D_A430000C) # $k0, 0xa430
/* 004ED4 800042D4 275A000C */  addiu $k0, %lo(D_A430000C) # addiu $k0, $k0, 0xc
/* 004ED8 800042D8 AF5B0000 */  sw    $k1, ($k0)
/* 004EDC 800042DC 00000000 */  nop   
/* 004EE0 800042E0 00000000 */  nop   
/* 004EE4 800042E4 00000000 */  nop   
/* 004EE8 800042E8 00000000 */  nop   
/* 004EEC 800042EC 42000018 */  eret  
glabel __osCleanupThread
/* 004EF0 800042F0 0C0010D0 */  jal   osDestroyThread
/* 004EF4 800042F4 00002025 */   move  $a0, $zero
