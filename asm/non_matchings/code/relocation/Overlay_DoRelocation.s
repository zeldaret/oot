.rdata
glabel D_8014A900
    .asciz  "DoRelocation(%08x, %08x, %08x)\n"
    .balign 4

glabel D_8014A920
    .asciz  "text=%08x, data=%08x, rodata=%08x, bss=%08x\n"
    .balign 4

glabel D_8014A950
    .asciz  "%02d %08x %08x %08x "
    .balign 4

glabel D_8014A968
    .asciz  " %08x %08x %08x %08x\n"
    .balign 4

.text
glabel Overlay_DoRelocation
/* B73460 800FC2C0 27BDFE58 */  addiu $sp, $sp, -0x1a8
/* B73464 800FC2C4 3C0E8013 */  lui   $t6, %hi(gOverlayLogSeverity) # $t6, 0x8013
/* B73468 800FC2C8 8DCE3BC0 */  lw    $t6, %lo(gOverlayLogSeverity)($t6)
/* B7346C 800FC2CC AFBE0040 */  sw    $fp, 0x40($sp)
/* B73470 800FC2D0 AFB7003C */  sw    $s7, 0x3c($sp)
/* B73474 800FC2D4 AFB60038 */  sw    $s6, 0x38($sp)
/* B73478 800FC2D8 AFB40030 */  sw    $s4, 0x30($sp)
/* B7347C 800FC2DC AFB3002C */  sw    $s3, 0x2c($sp)
/* B73480 800FC2E0 AFB10024 */  sw    $s1, 0x24($sp)
/* B73484 800FC2E4 AFB00020 */  sw    $s0, 0x20($sp)
/* B73488 800FC2E8 29C10003 */  slti  $at, $t6, 3
/* B7348C 800FC2EC 00A08025 */  move  $s0, $a1
/* B73490 800FC2F0 0080A025 */  move  $s4, $a0
/* B73494 800FC2F4 00C0F025 */  move  $fp, $a2
/* B73498 800FC2F8 AFBF0044 */  sw    $ra, 0x44($sp)
/* B7349C 800FC2FC AFB50034 */  sw    $s5, 0x34($sp)
/* B734A0 800FC300 AFB20028 */  sw    $s2, 0x28($sp)
/* B734A4 800FC304 00009825 */  move  $s3, $zero
/* B734A8 800FC308 00008825 */  move  $s1, $zero
/* B734AC 800FC30C 0000B025 */  move  $s6, $zero
/* B734B0 800FC310 14200012 */  bnez  $at, .L800FC35C
/* B734B4 800FC314 0000B825 */   move  $s7, $zero
/* B734B8 800FC318 3C048015 */  lui   $a0, %hi(D_8014A900) # $a0, 0x8015
/* B734BC 800FC31C 2484A900 */  addiu $a0, %lo(D_8014A900) # addiu $a0, $a0, -0x5700
/* B734C0 800FC320 02802825 */  move  $a1, $s4
/* B734C4 800FC324 02003025 */  move  $a2, $s0
/* B734C8 800FC328 03C03825 */  move  $a3, $fp
/* B734CC 800FC32C 0C00084C */  jal   osSyncPrintf
/* B734D0 800FC330 AFB001AC */   sw    $s0, 0x1ac($sp)
/* B734D4 800FC334 8FA201AC */  lw    $v0, 0x1ac($sp)
/* B734D8 800FC338 3C048015 */  lui   $a0, %hi(D_8014A920) # $a0, 0x8015
/* B734DC 800FC33C 2484A920 */  addiu $a0, %lo(D_8014A920) # addiu $a0, $a0, -0x56e0
/* B734E0 800FC340 8C4F000C */  lw    $t7, 0xc($v0)
/* B734E4 800FC344 8C450000 */  lw    $a1, ($v0)
/* B734E8 800FC348 8C460004 */  lw    $a2, 4($v0)
/* B734EC 800FC34C 8C470008 */  lw    $a3, 8($v0)
/* B734F0 800FC350 0C00084C */  jal   osSyncPrintf
/* B734F4 800FC354 AFAF0010 */   sw    $t7, 0x10($sp)
/* B734F8 800FC358 8FB001AC */  lw    $s0, 0x1ac($sp)
.L800FC35C:
/* B734FC 800FC35C AFA00198 */  sw    $zero, 0x198($sp)
/* B73500 800FC360 AFB4019C */  sw    $s4, 0x19c($sp)
/* B73504 800FC364 8E180000 */  lw    $t8, ($s0)
/* B73508 800FC368 00004025 */  move  $t0, $zero
/* B7350C 800FC36C 02004825 */  move  $t1, $s0
/* B73510 800FC370 0314C821 */  addu  $t9, $t8, $s4
/* B73514 800FC374 AFB901A0 */  sw    $t9, 0x1a0($sp)
/* B73518 800FC378 8E0B0004 */  lw    $t3, 4($s0)
/* B7351C 800FC37C 032B6021 */  addu  $t4, $t9, $t3
/* B73520 800FC380 AFAC01A4 */  sw    $t4, 0x1a4($sp)
/* B73524 800FC384 8E0D0010 */  lw    $t5, 0x10($s0)
/* B73528 800FC388 51A00099 */  beql  $t5, $zero, .L800FC5F0
/* B7352C 800FC38C 8FBF0044 */   lw    $ra, 0x44($sp)
/* B73530 800FC390 AFB001AC */  sw    $s0, 0x1ac($sp)
/* B73534 800FC394 8D220014 */  lw    $v0, 0x14($t1)
.L800FC398:
/* B73538 800FC398 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B7353C 800FC39C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B73540 800FC3A0 00027782 */  srl   $t6, $v0, 0x1e
/* B73544 800FC3A4 000E7880 */  sll   $t7, $t6, 2
/* B73548 800FC3A8 03AFC021 */  addu  $t8, $sp, $t7
/* B7354C 800FC3AC 8F180198 */  lw    $t8, 0x198($t8)
/* B73550 800FC3B0 0041C824 */  and   $t9, $v0, $at
/* B73554 800FC3B4 3C013F00 */  lui   $at, 0x3f00
/* B73558 800FC3B8 03198021 */  addu  $s0, $t8, $t9
/* B7355C 800FC3BC 8E030000 */  lw    $v1, ($s0)
/* B73560 800FC3C0 00413824 */  and   $a3, $v0, $at
/* B73564 800FC3C4 3C010200 */  lui   $at, 0x200
/* B73568 800FC3C8 24120010 */  li    $s2, 16
/* B7356C 800FC3CC 10E1000C */  beq   $a3, $at, .L800FC400
/* B73570 800FC3D0 0060A825 */   move  $s5, $v1
/* B73574 800FC3D4 3C010400 */  lui   $at, 0x400
/* B73578 800FC3D8 10E10013 */  beq   $a3, $at, .L800FC428
/* B7357C 800FC3DC 3C0403FF */   lui   $a0, (0x03FFFFFF >> 16) # lui $a0, 0x3ff
/* B73580 800FC3E0 3C010500 */  lui   $at, 0x500
/* B73584 800FC3E4 10E10023 */  beq   $a3, $at, .L800FC474
/* B73588 800FC3E8 00035C02 */   srl   $t3, $v1, 0x10
/* B7358C 800FC3EC 3C010600 */  lui   $at, 0x600
/* B73590 800FC3F0 10E1002B */  beq   $a3, $at, .L800FC4A0
/* B73594 800FC3F4 00031542 */   srl   $v0, $v1, 0x15
/* B73598 800FC3F8 10000054 */  b     .L800FC54C
/* B7359C 800FC3FC 3C010200 */   lui   $at, 0x200
.L800FC400:
/* B735A0 800FC400 3C010F00 */  lui   $at, 0xf00
/* B735A4 800FC404 00615024 */  and   $t2, $v1, $at
/* B735A8 800FC408 55400050 */  bnezl $t2, .L800FC54C
/* B735AC 800FC40C 3C010200 */   lui   $at, 0x200
/* B735B0 800FC410 007E9823 */  subu  $s3, $v1, $fp
/* B735B4 800FC414 0274B821 */  addu  $s7, $s3, $s4
/* B735B8 800FC418 02E08825 */  move  $s1, $s7
/* B735BC 800FC41C 02A0B025 */  move  $s6, $s5
/* B735C0 800FC420 10000049 */  b     .L800FC548
/* B735C4 800FC424 AE170000 */   sw    $s7, ($s0)
.L800FC428:
/* B735C8 800FC428 3484FFFF */  ori   $a0, (0x03FFFFFF & 0xFFFF) # ori $a0, $a0, 0xffff
/* B735CC 800FC42C 00645824 */  and   $t3, $v1, $a0
/* B735D0 800FC430 3C058000 */  lui   $a1, 0x8000
/* B735D4 800FC434 000B6080 */  sll   $t4, $t3, 2
/* B735D8 800FC438 3C01FC00 */  lui   $at, 0xfc00
/* B735DC 800FC43C 0185B025 */  or    $s6, $t4, $a1
/* B735E0 800FC440 00616824 */  and   $t5, $v1, $at
/* B735E4 800FC444 02DE9823 */  subu  $s3, $s6, $fp
/* B735E8 800FC448 3C010FFF */  lui   $at, (0x0FFFFFFF >> 16) # lui $at, 0xfff
/* B735EC 800FC44C 3421FFFF */  ori   $at, (0x0FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B735F0 800FC450 02937021 */  addu  $t6, $s4, $s3
/* B735F4 800FC454 01C17824 */  and   $t7, $t6, $at
/* B735F8 800FC458 000FC082 */  srl   $t8, $t7, 2
/* B735FC 800FC45C 01B88825 */  or    $s1, $t5, $t8
/* B73600 800FC460 0224C824 */  and   $t9, $s1, $a0
/* B73604 800FC464 00195080 */  sll   $t2, $t9, 2
/* B73608 800FC468 0145B825 */  or    $s7, $t2, $a1
/* B7360C 800FC46C 10000036 */  b     .L800FC548
/* B73610 800FC470 AE110000 */   sw    $s1, ($s0)
.L800FC474:
/* B73614 800FC474 316C001F */  andi  $t4, $t3, 0x1f
/* B73618 800FC478 000C7080 */  sll   $t6, $t4, 2
/* B7361C 800FC47C 03AE7821 */  addu  $t7, $sp, $t6
/* B73620 800FC480 ADF000FC */  sw    $s0, 0xfc($t7)
/* B73624 800FC484 8E030000 */  lw    $v1, ($s0)
/* B73628 800FC488 00036C02 */  srl   $t5, $v1, 0x10
/* B7362C 800FC48C 31B8001F */  andi  $t8, $t5, 0x1f
/* B73630 800FC490 0018C880 */  sll   $t9, $t8, 2
/* B73634 800FC494 03B95021 */  addu  $t2, $sp, $t9
/* B73638 800FC498 1000002B */  b     .L800FC548
/* B7363C 800FC49C AD43007C */   sw    $v1, 0x7c($t2)
.L800FC4A0:
/* B73640 800FC4A0 3042001F */  andi  $v0, $v0, 0x1f
/* B73644 800FC4A4 00021080 */  sll   $v0, $v0, 2
/* B73648 800FC4A8 27AB007C */  addiu $t3, $sp, 0x7c
/* B7364C 800FC4AC 004B2821 */  addu  $a1, $v0, $t3
/* B73650 800FC4B0 8CAF0000 */  lw    $t7, ($a1)
/* B73654 800FC4B4 00036400 */  sll   $t4, $v1, 0x10
/* B73658 800FC4B8 000C7403 */  sra   $t6, $t4, 0x10
/* B7365C 800FC4BC 000F6C00 */  sll   $t5, $t7, 0x10
/* B73660 800FC4C0 01CD3021 */  addu  $a2, $t6, $t5
/* B73664 800FC4C4 3C010F00 */  lui   $at, 0xf00
/* B73668 800FC4C8 03A22021 */  addu  $a0, $sp, $v0
/* B7366C 800FC4CC 00C1C024 */  and   $t8, $a2, $at
/* B73670 800FC4D0 1700001D */  bnez  $t8, .L800FC548
/* B73674 800FC4D4 8C8400FC */   lw    $a0, 0xfc($a0)
/* B73678 800FC4D8 00DE9823 */  subu  $s3, $a2, $fp
/* B7367C 800FC4DC 02741021 */  addu  $v0, $s3, $s4
/* B73680 800FC4E0 30598000 */  andi  $t9, $v0, 0x8000
/* B73684 800FC4E4 13200003 */  beqz  $t9, .L800FC4F4
/* B73688 800FC4E8 3C06FFFF */   lui   $a2, 0xffff
/* B7368C 800FC4EC 10000002 */  b     .L800FC4F8
/* B73690 800FC4F0 24050001 */   li    $a1, 1
.L800FC4F4:
/* B73694 800FC4F4 00002825 */  move  $a1, $zero
.L800FC4F8:
/* B73698 800FC4F8 8C830000 */  lw    $v1, ($a0)
/* B7369C 800FC4FC 00027402 */  srl   $t6, $v0, 0x10
/* B736A0 800FC500 31CDFFFF */  andi  $t5, $t6, 0xffff
/* B736A4 800FC504 01A5C021 */  addu  $t8, $t5, $a1
/* B736A8 800FC508 00667824 */  and   $t7, $v1, $a2
/* B736AC 800FC50C 00155C00 */  sll   $t3, $s5, 0x10
/* B736B0 800FC510 01F8C825 */  or    $t9, $t7, $t8
/* B736B4 800FC514 000B6403 */  sra   $t4, $t3, 0x10
/* B736B8 800FC518 AC990000 */  sw    $t9, ($a0)
/* B736BC 800FC51C 8E0B0000 */  lw    $t3, ($s0)
/* B736C0 800FC520 00035400 */  sll   $t2, $v1, 0x10
/* B736C4 800FC524 014CB021 */  addu  $s6, $t2, $t4
/* B736C8 800FC528 304CFFFF */  andi  $t4, $v0, 0xffff
/* B736CC 800FC52C 01665024 */  and   $t2, $t3, $a2
/* B736D0 800FC530 014C8825 */  or    $s1, $t2, $t4
/* B736D4 800FC534 00117C00 */  sll   $t7, $s1, 0x10
/* B736D8 800FC538 000FC403 */  sra   $t8, $t7, 0x10
/* B736DC 800FC53C 00196C00 */  sll   $t5, $t9, 0x10
/* B736E0 800FC540 01B8B821 */  addu  $s7, $t5, $t8
/* B736E4 800FC544 AE110000 */  sw    $s1, ($s0)
.L800FC548:
/* B736E8 800FC548 3C010200 */  lui   $at, 0x200
.L800FC54C:
/* B736EC 800FC54C 10E10008 */  beq   $a3, $at, .L800FC570
/* B736F0 800FC550 3C198013 */   lui   $t9, %hi(gOverlayLogSeverity) # $t9, 0x8013
/* B736F4 800FC554 3C010400 */  lui   $at, 0x400
/* B736F8 800FC558 10E10006 */  beq   $a3, $at, .L800FC574
/* B736FC 800FC55C 3C010600 */   lui   $at, 0x600
/* B73700 800FC560 10E10005 */  beq   $a3, $at, .L800FC578
/* B73704 800FC564 00000000 */   nop
/* B73708 800FC568 1000001A */  b     .L800FC5D4
/* B7370C 800FC56C 8FAA01AC */   lw    $t2, 0x1ac($sp)
.L800FC570:
/* B73710 800FC570 24120016 */  li    $s2, 22
.L800FC574:
/* B73714 800FC574 2652000A */  addiu $s2, $s2, 0xa
.L800FC578:
/* B73718 800FC578 8F393BC0 */  lw    $t9, %lo(gOverlayLogSeverity)($t9)
/* B7371C 800FC57C 3C048015 */  lui   $a0, %hi(D_8014A950) # $a0, 0x8015
/* B73720 800FC580 2484A950 */  addiu $a0, %lo(D_8014A950) # addiu $a0, $a0, -0x56b0
/* B73724 800FC584 2B210003 */  slti  $at, $t9, 3
/* B73728 800FC588 14200011 */  bnez  $at, .L800FC5D0
/* B7372C 800FC58C 02402825 */   move  $a1, $s2
/* B73730 800FC590 02003025 */  move  $a2, $s0
/* B73734 800FC594 02203825 */  move  $a3, $s1
/* B73738 800FC598 AFB70010 */  sw    $s7, 0x10($sp)
/* B7373C 800FC59C AFA80180 */  sw    $t0, 0x180($sp)
/* B73740 800FC5A0 0C00084C */  jal   osSyncPrintf
/* B73744 800FC5A4 AFA90058 */   sw    $t1, 0x58($sp)
/* B73748 800FC5A8 3C048015 */  lui   $a0, %hi(D_8014A968) # $a0, 0x8015
/* B7374C 800FC5AC 021E5821 */  addu  $t3, $s0, $fp
/* B73750 800FC5B0 01742823 */  subu  $a1, $t3, $s4
/* B73754 800FC5B4 2484A968 */  addiu $a0, %lo(D_8014A968) # addiu $a0, $a0, -0x5698
/* B73758 800FC5B8 02A03025 */  move  $a2, $s5
/* B7375C 800FC5BC 02C03825 */  move  $a3, $s6
/* B73760 800FC5C0 0C00084C */  jal   osSyncPrintf
/* B73764 800FC5C4 AFB30010 */   sw    $s3, 0x10($sp)
/* B73768 800FC5C8 8FA80180 */  lw    $t0, 0x180($sp)
/* B7376C 800FC5CC 8FA90058 */  lw    $t1, 0x58($sp)
.L800FC5D0:
/* B73770 800FC5D0 8FAA01AC */  lw    $t2, 0x1ac($sp)
.L800FC5D4:
/* B73774 800FC5D4 25080001 */  addiu $t0, $t0, 1
/* B73778 800FC5D8 25290004 */  addiu $t1, $t1, 4
/* B7377C 800FC5DC 8D4C0010 */  lw    $t4, 0x10($t2)
/* B73780 800FC5E0 010C082B */  sltu  $at, $t0, $t4
/* B73784 800FC5E4 5420FF6C */  bnezl $at, .L800FC398
/* B73788 800FC5E8 8D220014 */   lw    $v0, 0x14($t1)
/* B7378C 800FC5EC 8FBF0044 */  lw    $ra, 0x44($sp)
.L800FC5F0:
/* B73790 800FC5F0 8FB00020 */  lw    $s0, 0x20($sp)
/* B73794 800FC5F4 8FB10024 */  lw    $s1, 0x24($sp)
/* B73798 800FC5F8 8FB20028 */  lw    $s2, 0x28($sp)
/* B7379C 800FC5FC 8FB3002C */  lw    $s3, 0x2c($sp)
/* B737A0 800FC600 8FB40030 */  lw    $s4, 0x30($sp)
/* B737A4 800FC604 8FB50034 */  lw    $s5, 0x34($sp)
/* B737A8 800FC608 8FB60038 */  lw    $s6, 0x38($sp)
/* B737AC 800FC60C 8FB7003C */  lw    $s7, 0x3c($sp)
/* B737B0 800FC610 8FBE0040 */  lw    $fp, 0x40($sp)
/* B737B4 800FC614 03E00008 */  jr    $ra
/* B737B8 800FC618 27BD01A8 */   addiu $sp, $sp, 0x1a8
