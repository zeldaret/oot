.late_rodata
glabel D_8013AD08
    .float 0.33333334

.text
glabel func_8005F39C
/* AD653C 8005F39C 27BDFF68 */  addiu $sp, $sp, -0x98
/* AD6540 8005F3A0 AFBF0054 */  sw    $ra, 0x54($sp)
/* AD6544 8005F3A4 AFBE0050 */  sw    $fp, 0x50($sp)
/* AD6548 8005F3A8 AFB7004C */  sw    $s7, 0x4c($sp)
/* AD654C 8005F3AC AFB60048 */  sw    $s6, 0x48($sp)
/* AD6550 8005F3B0 AFB50044 */  sw    $s5, 0x44($sp)
/* AD6554 8005F3B4 AFB40040 */  sw    $s4, 0x40($sp)
/* AD6558 8005F3B8 AFB3003C */  sw    $s3, 0x3c($sp)
/* AD655C 8005F3BC AFB20038 */  sw    $s2, 0x38($sp)
/* AD6560 8005F3C0 AFB10034 */  sw    $s1, 0x34($sp)
/* AD6564 8005F3C4 AFB00030 */  sw    $s0, 0x30($sp)
/* AD6568 8005F3C8 F7B40028 */  sdc1  $f20, 0x28($sp)
/* AD656C 8005F3CC AFA40098 */  sw    $a0, 0x98($sp)
/* AD6570 8005F3D0 AFA5009C */  sw    $a1, 0x9c($sp)
/* AD6574 8005F3D4 AFA7008C */  sw    $a3, 0x8c($sp)
/* AD6578 8005F3D8 8CE30018 */  lw    $v1, 0x18($a3)
/* AD657C 8005F3DC 00E0B025 */  move  $s6, $a3
/* AD6580 8005F3E0 00C0B825 */  move  $s7, $a2
/* AD6584 8005F3E4 58600066 */  blezl $v1, .L8005F580
/* AD6588 8005F3E8 8FBF0054 */   lw    $ra, 0x54($sp)
/* AD658C 8005F3EC 8CE2001C */  lw    $v0, 0x1c($a3)
/* AD6590 8005F3F0 50400063 */  beql  $v0, $zero, .L8005F580
/* AD6594 8005F3F4 8FBF0054 */   lw    $ra, 0x54($sp)
/* AD6598 8005F3F8 8CCE0018 */  lw    $t6, 0x18($a2)
/* AD659C 8005F3FC 59C00060 */  blezl $t6, .L8005F580
/* AD65A0 8005F400 8FBF0054 */   lw    $ra, 0x54($sp)
/* AD65A4 8005F404 8CCF001C */  lw    $t7, 0x1c($a2)
/* AD65A8 8005F408 0003C180 */  sll   $t8, $v1, 6
/* AD65AC 8005F40C 0058C821 */  addu  $t9, $v0, $t8
/* AD65B0 8005F410 11E0005A */  beqz  $t7, .L8005F57C
/* AD65B4 8005F414 0059082B */   sltu  $at, $v0, $t9
/* AD65B8 8005F418 10200058 */  beqz  $at, .L8005F57C
/* AD65BC 8005F41C 00409825 */   move  $s3, $v0
/* AD65C0 8005F420 3C018014 */  lui   $at, %hi(D_8013AD08)
/* AD65C4 8005F424 C434AD08 */  lwc1  $f20, %lo(D_8013AD08)($at)
/* AD65C8 8005F428 AFA600A0 */  sw    $a2, 0xa0($sp)
/* AD65CC 8005F42C 241E005C */  li    $fp, 92
/* AD65D0 8005F430 27B50064 */  addiu $s5, $sp, 0x64
/* AD65D4 8005F434 27B4007C */  addiu $s4, $sp, 0x7c
/* AD65D8 8005F438 24120001 */  li    $s2, 1
.L8005F43C:
/* AD65DC 8005F43C 0C0177D4 */  jal   func_8005DF50
/* AD65E0 8005F440 02602025 */   move  $a0, $s3
/* AD65E4 8005F444 10520044 */  beq   $v0, $s2, .L8005F558
/* AD65E8 8005F448 8FA800A0 */   lw    $t0, 0xa0($sp)
/* AD65EC 8005F44C 8D090018 */  lw    $t1, 0x18($t0)
/* AD65F0 8005F450 8D10001C */  lw    $s0, 0x1c($t0)
/* AD65F4 8005F454 013E0019 */  multu $t1, $fp
/* AD65F8 8005F458 00005012 */  mflo  $t2
/* AD65FC 8005F45C 020A5821 */  addu  $t3, $s0, $t2
/* AD6600 8005F460 020B082B */  sltu  $at, $s0, $t3
/* AD6604 8005F464 5020003D */  beql  $at, $zero, .L8005F55C
/* AD6608 8005F468 8FA2008C */   lw    $v0, 0x8c($sp)
.L8005F46C:
/* AD660C 8005F46C 0C0177CB */  jal   func_8005DF2C
/* AD6610 8005F470 02002025 */   move  $a0, $s0
/* AD6614 8005F474 1052002F */  beq   $v0, $s2, .L8005F534
/* AD6618 8005F478 02002025 */   move  $a0, $s0
/* AD661C 8005F47C 0C0177DD */  jal   func_8005DF74
/* AD6620 8005F480 02602825 */   move  $a1, $s3
/* AD6624 8005F484 1052002B */  beq   $v0, $s2, .L8005F534
/* AD6628 8005F488 26710030 */   addiu $s1, $s3, 0x30
/* AD662C 8005F48C 02202025 */  move  $a0, $s1
/* AD6630 8005F490 26050028 */  addiu $a1, $s0, 0x28
/* AD6634 8005F494 0C033A4D */  jal   func_800CE934
/* AD6638 8005F498 02803025 */   move  $a2, $s4
/* AD663C 8005F49C 14520025 */  bne   $v0, $s2, .L8005F534
/* AD6640 8005F4A0 02A02025 */   move  $a0, $s5
/* AD6644 8005F4A4 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* AD6648 8005F4A8 02202825 */   move  $a1, $s1
/* AD664C 8005F4AC C6040028 */  lwc1  $f4, 0x28($s0)
/* AD6650 8005F4B0 C6060034 */  lwc1  $f6, 0x34($s0)
/* AD6654 8005F4B4 C60A0040 */  lwc1  $f10, 0x40($s0)
/* AD6658 8005F4B8 8FA40098 */  lw    $a0, 0x98($sp)
/* AD665C 8005F4BC 46062200 */  add.s $f8, $f4, $f6
/* AD6660 8005F4C0 8FA500A0 */  lw    $a1, 0xa0($sp)
/* AD6664 8005F4C4 02003025 */  move  $a2, $s0
/* AD6668 8005F4C8 27A70070 */  addiu $a3, $sp, 0x70
/* AD666C 8005F4CC 46085400 */  add.s $f16, $f10, $f8
/* AD6670 8005F4D0 46148482 */  mul.s $f18, $f16, $f20
/* AD6674 8005F4D4 E7B20070 */  swc1  $f18, 0x70($sp)
/* AD6678 8005F4D8 C6060038 */  lwc1  $f6, 0x38($s0)
/* AD667C 8005F4DC C604002C */  lwc1  $f4, 0x2c($s0)
/* AD6680 8005F4E0 C6080044 */  lwc1  $f8, 0x44($s0)
/* AD6684 8005F4E4 46062280 */  add.s $f10, $f4, $f6
/* AD6688 8005F4E8 460A4400 */  add.s $f16, $f8, $f10
/* AD668C 8005F4EC 46148482 */  mul.s $f18, $f16, $f20
/* AD6690 8005F4F0 E7B20074 */  swc1  $f18, 0x74($sp)
/* AD6694 8005F4F4 C606003C */  lwc1  $f6, 0x3c($s0)
/* AD6698 8005F4F8 C6040030 */  lwc1  $f4, 0x30($s0)
/* AD669C 8005F4FC C60A0048 */  lwc1  $f10, 0x48($s0)
/* AD66A0 8005F500 AFB4001C */  sw    $s4, 0x1c($sp)
/* AD66A4 8005F504 46062200 */  add.s $f8, $f4, $f6
/* AD66A8 8005F508 AFB50018 */  sw    $s5, 0x18($sp)
/* AD66AC 8005F50C AFB30014 */  sw    $s3, 0x14($sp)
/* AD66B0 8005F510 AFB60010 */  sw    $s6, 0x10($sp)
/* AD66B4 8005F514 46085400 */  add.s $f16, $f10, $f8
/* AD66B8 8005F518 46148482 */  mul.s $f18, $f16, $f20
/* AD66BC 8005F51C 0C017A07 */  jal   func_8005E81C
/* AD66C0 8005F520 E7B20078 */   swc1  $f18, 0x78($sp)
/* AD66C4 8005F524 92CC0013 */  lbu   $t4, 0x13($s6)
/* AD66C8 8005F528 318D0040 */  andi  $t5, $t4, 0x40
/* AD66CC 8005F52C 51A00014 */  beql  $t5, $zero, .L8005F580
/* AD66D0 8005F530 8FBF0054 */   lw    $ra, 0x54($sp)
.L8005F534:
/* AD66D4 8005F534 8EEF0018 */  lw    $t7, 0x18($s7)
/* AD66D8 8005F538 8EEE001C */  lw    $t6, 0x1c($s7)
/* AD66DC 8005F53C 2610005C */  addiu $s0, $s0, 0x5c
/* AD66E0 8005F540 01FE0019 */  multu $t7, $fp
/* AD66E4 8005F544 0000C012 */  mflo  $t8
/* AD66E8 8005F548 01D8C821 */  addu  $t9, $t6, $t8
/* AD66EC 8005F54C 0219082B */  sltu  $at, $s0, $t9
/* AD66F0 8005F550 1420FFC6 */  bnez  $at, .L8005F46C
/* AD66F4 8005F554 00000000 */   nop   
.L8005F558:
/* AD66F8 8005F558 8FA2008C */  lw    $v0, 0x8c($sp)
.L8005F55C:
/* AD66FC 8005F55C 26730040 */  addiu $s3, $s3, 0x40
/* AD6700 8005F560 8C490018 */  lw    $t1, 0x18($v0)
/* AD6704 8005F564 8C48001C */  lw    $t0, 0x1c($v0)
/* AD6708 8005F568 00095180 */  sll   $t2, $t1, 6
/* AD670C 8005F56C 010A5821 */  addu  $t3, $t0, $t2
/* AD6710 8005F570 026B082B */  sltu  $at, $s3, $t3
/* AD6714 8005F574 1420FFB1 */  bnez  $at, .L8005F43C
/* AD6718 8005F578 00000000 */   nop   
.L8005F57C:
/* AD671C 8005F57C 8FBF0054 */  lw    $ra, 0x54($sp)
.L8005F580:
/* AD6720 8005F580 D7B40028 */  ldc1  $f20, 0x28($sp)
/* AD6724 8005F584 8FB00030 */  lw    $s0, 0x30($sp)
/* AD6728 8005F588 8FB10034 */  lw    $s1, 0x34($sp)
/* AD672C 8005F58C 8FB20038 */  lw    $s2, 0x38($sp)
/* AD6730 8005F590 8FB3003C */  lw    $s3, 0x3c($sp)
/* AD6734 8005F594 8FB40040 */  lw    $s4, 0x40($sp)
/* AD6738 8005F598 8FB50044 */  lw    $s5, 0x44($sp)
/* AD673C 8005F59C 8FB60048 */  lw    $s6, 0x48($sp)
/* AD6740 8005F5A0 8FB7004C */  lw    $s7, 0x4c($sp)
/* AD6744 8005F5A4 8FBE0050 */  lw    $fp, 0x50($sp)
/* AD6748 8005F5A8 03E00008 */  jr    $ra
/* AD674C 8005F5AC 27BD0098 */   addiu $sp, $sp, 0x98
