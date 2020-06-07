glabel GfxPrint_PrintCharImpl
/* B725F8 800FB458 AFA50004 */  sw    $a1, 4($sp)
/* B725FC 800FB45C 9083000F */  lbu   $v1, 0xf($a0)
/* B72600 800FB460 30A500FF */  andi  $a1, $a1, 0xff
/* B72604 800FB464 306E0008 */  andi  $t6, $v1, 8
/* B72608 800FB468 11C0004F */  beqz  $t6, .L800FB5A8
/* B7260C 800FB46C 306FFFF7 */   andi  $t7, $v1, 0xfff7
/* B72610 800FB470 8C820004 */  lw    $v0, 4($a0)
/* B72614 800FB474 A08F000F */  sb    $t7, 0xf($a0)
/* B72618 800FB478 3C19E700 */  lui   $t9, 0xe700
/* B7261C 800FB47C 24580008 */  addiu $t8, $v0, 8
/* B72620 800FB480 AC980004 */  sw    $t8, 4($a0)
/* B72624 800FB484 AC400004 */  sw    $zero, 4($v0)
/* B72628 800FB488 AC590000 */  sw    $t9, ($v0)
/* B7262C 800FB48C 908B000F */  lbu   $t3, 0xf($a0)
/* B72630 800FB490 3C0FE300 */  lui   $t7, (0xE3000A01 >> 16) # lui $t7, 0xe300
/* B72634 800FB494 340DC000 */  li    $t5, 49152
/* B72638 800FB498 316C0002 */  andi  $t4, $t3, 2
/* B7263C 800FB49C 11800024 */  beqz  $t4, .L800FB530
/* B72640 800FB4A0 35EF0A01 */   ori   $t7, (0xE3000A01 & 0xFFFF) # ori $t7, $t7, 0xa01
/* B72644 800FB4A4 8C820004 */  lw    $v0, 4($a0)
/* B72648 800FB4A8 3C0EE300 */  lui   $t6, (0xE3001001 >> 16) # lui $t6, 0xe300
/* B7264C 800FB4AC 35CE1001 */  ori   $t6, (0xE3001001 & 0xFFFF) # ori $t6, $t6, 0x1001
/* B72650 800FB4B0 244D0008 */  addiu $t5, $v0, 8
/* B72654 800FB4B4 AC8D0004 */  sw    $t5, 4($a0)
/* B72658 800FB4B8 340F8000 */  li    $t7, 32768
/* B7265C 800FB4BC AC4F0004 */  sw    $t7, 4($v0)
/* B72660 800FB4C0 AC4E0000 */  sw    $t6, ($v0)
/* B72664 800FB4C4 8C820004 */  lw    $v0, 4($a0)
/* B72668 800FB4C8 3C19E300 */  lui   $t9, (0xE3000A01 >> 16) # lui $t9, 0xe300
/* B7266C 800FB4CC 37390A01 */  ori   $t9, (0xE3000A01 & 0xFFFF) # ori $t9, $t9, 0xa01
/* B72670 800FB4D0 24580008 */  addiu $t8, $v0, 8
/* B72674 800FB4D4 AC980004 */  sw    $t8, 4($a0)
/* B72678 800FB4D8 3C0B0010 */  lui   $t3, 0x10
/* B7267C 800FB4DC AC4B0004 */  sw    $t3, 4($v0)
/* B72680 800FB4E0 AC590000 */  sw    $t9, ($v0)
/* B72684 800FB4E4 8C820004 */  lw    $v0, 4($a0)
/* B72688 800FB4E8 3C0E0C18 */  lui   $t6, (0x0C184240 >> 16) # lui $t6, 0xc18
/* B7268C 800FB4EC 3C0DE200 */  lui   $t5, (0xE200001C >> 16) # lui $t5, 0xe200
/* B72690 800FB4F0 244C0008 */  addiu $t4, $v0, 8
/* B72694 800FB4F4 AC8C0004 */  sw    $t4, 4($a0)
/* B72698 800FB4F8 35AD001C */  ori   $t5, (0xE200001C & 0xFFFF) # ori $t5, $t5, 0x1c
/* B7269C 800FB4FC 35CE4240 */  ori   $t6, (0x0C184240 & 0xFFFF) # ori $t6, $t6, 0x4240
/* B726A0 800FB500 AC4E0004 */  sw    $t6, 4($v0)
/* B726A4 800FB504 AC4D0000 */  sw    $t5, ($v0)
/* B726A8 800FB508 8C820004 */  lw    $v0, 4($a0)
/* B726AC 800FB50C 3C18FC11 */  lui   $t8, (0xFC1115FF >> 16) # lui $t8, 0xfc11
/* B726B0 800FB510 371815FF */  ori   $t8, (0xFC1115FF & 0xFFFF) # ori $t8, $t8, 0x15ff
/* B726B4 800FB514 244F0008 */  addiu $t7, $v0, 8
/* B726B8 800FB518 AC8F0004 */  sw    $t7, 4($a0)
/* B726BC 800FB51C 2419FE38 */  li    $t9, -456
/* B726C0 800FB520 AC590004 */  sw    $t9, 4($v0)
/* B726C4 800FB524 AC580000 */  sw    $t8, ($v0)
/* B726C8 800FB528 1000001F */  b     .L800FB5A8
/* B726CC 800FB52C 9083000F */   lbu   $v1, 0xf($a0)
.L800FB530:
/* B726D0 800FB530 8C820004 */  lw    $v0, 4($a0)
/* B726D4 800FB534 3C0CE300 */  lui   $t4, (0xE3001001 >> 16) # lui $t4, 0xe300
/* B726D8 800FB538 358C1001 */  ori   $t4, (0xE3001001 & 0xFFFF) # ori $t4, $t4, 0x1001
/* B726DC 800FB53C 244B0008 */  addiu $t3, $v0, 8
/* B726E0 800FB540 AC8B0004 */  sw    $t3, 4($a0)
/* B726E4 800FB544 AC4D0004 */  sw    $t5, 4($v0)
/* B726E8 800FB548 AC4C0000 */  sw    $t4, ($v0)
/* B726EC 800FB54C 8C820004 */  lw    $v0, 4($a0)
/* B726F0 800FB550 3C0B0050 */  lui   $t3, (0x00504240 >> 16) # lui $t3, 0x50
/* B726F4 800FB554 3C19E200 */  lui   $t9, (0xE200001C >> 16) # lui $t9, 0xe200
/* B726F8 800FB558 244E0008 */  addiu $t6, $v0, 8
/* B726FC 800FB55C AC8E0004 */  sw    $t6, 4($a0)
/* B72700 800FB560 AC400004 */  sw    $zero, 4($v0)
/* B72704 800FB564 AC4F0000 */  sw    $t7, ($v0)
/* B72708 800FB568 8C820004 */  lw    $v0, 4($a0)
/* B7270C 800FB56C 3739001C */  ori   $t9, (0xE200001C & 0xFFFF) # ori $t9, $t9, 0x1c
/* B72710 800FB570 356B4240 */  ori   $t3, (0x00504240 & 0xFFFF) # ori $t3, $t3, 0x4240
/* B72714 800FB574 24580008 */  addiu $t8, $v0, 8
/* B72718 800FB578 AC980004 */  sw    $t8, 4($a0)
/* B7271C 800FB57C AC4B0004 */  sw    $t3, 4($v0)
/* B72720 800FB580 AC590000 */  sw    $t9, ($v0)
/* B72724 800FB584 8C820004 */  lw    $v0, 4($a0)
/* B72728 800FB588 3C0DFC11 */  lui   $t5, (0xFC11FE23 >> 16) # lui $t5, 0xfc11
/* B7272C 800FB58C 35ADFE23 */  ori   $t5, (0xFC11FE23 & 0xFFFF) # ori $t5, $t5, 0xfe23
/* B72730 800FB590 244C0008 */  addiu $t4, $v0, 8
/* B72734 800FB594 AC8C0004 */  sw    $t4, 4($a0)
/* B72738 800FB598 240EF3F9 */  li    $t6, -3079
/* B7273C 800FB59C AC4E0004 */  sw    $t6, 4($v0)
/* B72740 800FB5A0 AC4D0000 */  sw    $t5, ($v0)
/* B72744 800FB5A4 9083000F */  lbu   $v1, 0xf($a0)
.L800FB5A8:
/* B72748 800FB5A8 306F0004 */  andi  $t7, $v1, 4
/* B7274C 800FB5AC 51E00076 */  beql  $t7, $zero, .L800FB788
/* B72750 800FB5B0 000578C3 */   sra   $t7, $a1, 3
/* B72754 800FB5B4 8C820004 */  lw    $v0, 4($a0)
/* B72758 800FB5B8 3C07FA00 */  lui   $a3, 0xfa00
/* B7275C 800FB5BC 3C08E400 */  lui   $t0, 0xe400
/* B72760 800FB5C0 24580008 */  addiu $t8, $v0, 8
/* B72764 800FB5C4 AC980004 */  sw    $t8, 4($a0)
/* B72768 800FB5C8 AC400004 */  sw    $zero, 4($v0)
/* B7276C 800FB5CC AC470000 */  sw    $a3, ($v0)
/* B72770 800FB5D0 9099000F */  lbu   $t9, 0xf($a0)
/* B72774 800FB5D4 3C09E100 */  lui   $t1, 0xe100
/* B72778 800FB5D8 3C0AF100 */  lui   $t2, 0xf100
/* B7277C 800FB5DC 332B0040 */  andi  $t3, $t9, 0x40
/* B72780 800FB5E0 51600036 */  beql  $t3, $zero, .L800FB6BC
/* B72784 800FB5E4 8C820004 */   lw    $v0, 4($a0)
/* B72788 800FB5E8 8C820004 */  lw    $v0, 4($a0)
/* B7278C 800FB5EC 948D0008 */  lhu   $t5, 8($a0)
/* B72790 800FB5F0 3C08E400 */  lui   $t0, 0xe400
/* B72794 800FB5F4 244C0008 */  addiu $t4, $v0, 8
/* B72798 800FB5F8 AC8C0004 */  sw    $t4, 4($a0)
/* B7279C 800FB5FC 948C000A */  lhu   $t4, 0xa($a0)
/* B727A0 800FB600 25AE0024 */  addiu $t6, $t5, 0x24
/* B727A4 800FB604 000E7840 */  sll   $t7, $t6, 1
/* B727A8 800FB608 31F80FFF */  andi  $t8, $t7, 0xfff
/* B727AC 800FB60C 258D0024 */  addiu $t5, $t4, 0x24
/* B727B0 800FB610 000D7040 */  sll   $t6, $t5, 1
/* B727B4 800FB614 0018CB00 */  sll   $t9, $t8, 0xc
/* B727B8 800FB618 03285825 */  or    $t3, $t9, $t0
/* B727BC 800FB61C 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B727C0 800FB620 016FC025 */  or    $t8, $t3, $t7
/* B727C4 800FB624 AC580000 */  sw    $t8, ($v0)
/* B727C8 800FB628 948B0008 */  lhu   $t3, 8($a0)
/* B727CC 800FB62C 00056040 */  sll   $t4, $a1, 1
/* B727D0 800FB630 318D0007 */  andi  $t5, $t4, 7
/* B727D4 800FB634 256F0004 */  addiu $t7, $t3, 4
/* B727D8 800FB638 948B000A */  lhu   $t3, 0xa($a0)
/* B727DC 800FB63C 000FC040 */  sll   $t8, $t7, 1
/* B727E0 800FB640 33190FFF */  andi  $t9, $t8, 0xfff
/* B727E4 800FB644 00196300 */  sll   $t4, $t9, 0xc
/* B727E8 800FB648 256F0004 */  addiu $t7, $t3, 4
/* B727EC 800FB64C 000FC040 */  sll   $t8, $t7, 1
/* B727F0 800FB650 000D7600 */  sll   $t6, $t5, 0x18
/* B727F4 800FB654 01CC6825 */  or    $t5, $t6, $t4
/* B727F8 800FB658 33190FFF */  andi  $t9, $t8, 0xfff
/* B727FC 800FB65C 01B97025 */  or    $t6, $t5, $t9
/* B72800 800FB660 AC4E0004 */  sw    $t6, 4($v0)
/* B72804 800FB664 8C820004 */  lw    $v0, 4($a0)
/* B72808 800FB668 30AD0004 */  andi  $t5, $a1, 4
/* B7280C 800FB66C 000DCD80 */  sll   $t9, $t5, 0x16
/* B72810 800FB670 244C0008 */  addiu $t4, $v0, 8
/* B72814 800FB674 AC8C0004 */  sw    $t4, 4($a0)
/* B72818 800FB678 000560C3 */  sra   $t4, $a1, 3
/* B7281C 800FB67C 000C5A00 */  sll   $t3, $t4, 8
/* B72820 800FB680 316FFFFF */  andi  $t7, $t3, 0xffff
/* B72824 800FB684 032FC025 */  or    $t8, $t9, $t7
/* B72828 800FB688 3C09E100 */  lui   $t1, 0xe100
/* B7282C 800FB68C AC490000 */  sw    $t1, ($v0)
/* B72830 800FB690 AC580004 */  sw    $t8, 4($v0)
/* B72834 800FB694 8C820004 */  lw    $v0, 4($a0)
/* B72838 800FB698 3C0E0200 */  lui   $t6, (0x02000200 >> 16) # lui $t6, 0x200
/* B7283C 800FB69C 35CE0200 */  ori   $t6, (0x02000200 & 0xFFFF) # ori $t6, $t6, 0x200
/* B72840 800FB6A0 244D0008 */  addiu $t5, $v0, 8
/* B72844 800FB6A4 AC8D0004 */  sw    $t5, 4($a0)
/* B72848 800FB6A8 3C0AF100 */  lui   $t2, 0xf100
/* B7284C 800FB6AC AC4A0000 */  sw    $t2, ($v0)
/* B72850 800FB6B0 1000002D */  b     .L800FB768
/* B72854 800FB6B4 AC4E0004 */   sw    $t6, 4($v0)
/* B72858 800FB6B8 8C820004 */  lw    $v0, 4($a0)
.L800FB6BC:
/* B7285C 800FB6BC 948B0008 */  lhu   $t3, 8($a0)
/* B72860 800FB6C0 948E000A */  lhu   $t6, 0xa($a0)
/* B72864 800FB6C4 244C0008 */  addiu $t4, $v0, 8
/* B72868 800FB6C8 25790024 */  addiu $t9, $t3, 0x24
/* B7286C 800FB6CC 332F0FFF */  andi  $t7, $t9, 0xfff
/* B72870 800FB6D0 AC8C0004 */  sw    $t4, 4($a0)
/* B72874 800FB6D4 000FC300 */  sll   $t8, $t7, 0xc
/* B72878 800FB6D8 25CC0024 */  addiu $t4, $t6, 0x24
/* B7287C 800FB6DC 318B0FFF */  andi  $t3, $t4, 0xfff
/* B72880 800FB6E0 03086825 */  or    $t5, $t8, $t0
/* B72884 800FB6E4 01ABC825 */  or    $t9, $t5, $t3
/* B72888 800FB6E8 0005C040 */  sll   $t8, $a1, 1
/* B7288C 800FB6EC AC590000 */  sw    $t9, ($v0)
/* B72890 800FB6F0 948D0008 */  lhu   $t5, 8($a0)
/* B72894 800FB6F4 330E0007 */  andi  $t6, $t8, 7
/* B72898 800FB6F8 000E6600 */  sll   $t4, $t6, 0x18
/* B7289C 800FB6FC 948E000A */  lhu   $t6, 0xa($a0)
/* B728A0 800FB700 25AB0004 */  addiu $t3, $t5, 4
/* B728A4 800FB704 31790FFF */  andi  $t9, $t3, 0xfff
/* B728A8 800FB708 00197B00 */  sll   $t7, $t9, 0xc
/* B728AC 800FB70C 25CD0004 */  addiu $t5, $t6, 4
/* B728B0 800FB710 31AB0FFF */  andi  $t3, $t5, 0xfff
/* B728B4 800FB714 018FC025 */  or    $t8, $t4, $t7
/* B728B8 800FB718 030BC825 */  or    $t9, $t8, $t3
/* B728BC 800FB71C AC590004 */  sw    $t9, 4($v0)
/* B728C0 800FB720 8C820004 */  lw    $v0, 4($a0)
/* B728C4 800FB724 30B80004 */  andi  $t8, $a1, 4
/* B728C8 800FB728 00185D80 */  sll   $t3, $t8, 0x16
/* B728CC 800FB72C 244C0008 */  addiu $t4, $v0, 8
/* B728D0 800FB730 AC8C0004 */  sw    $t4, 4($a0)
/* B728D4 800FB734 000560C3 */  sra   $t4, $a1, 3
/* B728D8 800FB738 000C7A00 */  sll   $t7, $t4, 8
/* B728DC 800FB73C 31EEFFFF */  andi  $t6, $t7, 0xffff
/* B728E0 800FB740 016E6825 */  or    $t5, $t3, $t6
/* B728E4 800FB744 AC4D0004 */  sw    $t5, 4($v0)
/* B728E8 800FB748 AC490000 */  sw    $t1, ($v0)
/* B728EC 800FB74C 8C820004 */  lw    $v0, 4($a0)
/* B728F0 800FB750 3C190400 */  lui   $t9, (0x04000400 >> 16) # lui $t9, 0x400
/* B728F4 800FB754 37390400 */  ori   $t9, (0x04000400 & 0xFFFF) # ori $t9, $t9, 0x400
/* B728F8 800FB758 24580008 */  addiu $t8, $v0, 8
/* B728FC 800FB75C AC980004 */  sw    $t8, 4($a0)
/* B72900 800FB760 AC590004 */  sw    $t9, 4($v0)
/* B72904 800FB764 AC4A0000 */  sw    $t2, ($v0)
.L800FB768:
/* B72908 800FB768 8C820004 */  lw    $v0, 4($a0)
/* B7290C 800FB76C 244C0008 */  addiu $t4, $v0, 8
/* B72910 800FB770 AC8C0004 */  sw    $t4, 4($a0)
/* B72914 800FB774 AC470000 */  sw    $a3, ($v0)
/* B72918 800FB778 8C8F0010 */  lw    $t7, 0x10($a0)
/* B7291C 800FB77C AC4F0004 */  sw    $t7, 4($v0)
/* B72920 800FB780 9083000F */  lbu   $v1, 0xf($a0)
/* B72924 800FB784 000578C3 */  sra   $t7, $a1, 3
.L800FB788:
/* B72928 800FB788 00A03825 */  move  $a3, $a1
/* B7292C 800FB78C 00073840 */  sll   $a3, $a3, 1
/* B72930 800FB790 000F5A00 */  sll   $t3, $t7, 8
/* B72934 800FB794 30B80004 */  andi  $t8, $a1, 4
/* B72938 800FB798 0018CD80 */  sll   $t9, $t8, 0x16
/* B7293C 800FB79C 316EFFFF */  andi  $t6, $t3, 0xffff
/* B72940 800FB7A0 30E70007 */  andi  $a3, $a3, 7
/* B72944 800FB7A4 306D0040 */  andi  $t5, $v1, 0x40
/* B72948 800FB7A8 3C08E400 */  lui   $t0, 0xe400
/* B7294C 800FB7AC 3C09E100 */  lui   $t1, 0xe100
/* B72950 800FB7B0 3C0AF100 */  lui   $t2, 0xf100
/* B72954 800FB7B4 00073E00 */  sll   $a3, $a3, 0x18
/* B72958 800FB7B8 11A00027 */  beqz  $t5, .L800FB858
/* B7295C 800FB7BC 032E3025 */   or    $a2, $t9, $t6
/* B72960 800FB7C0 8C820004 */  lw    $v0, 4($a0)
/* B72964 800FB7C4 948C0008 */  lhu   $t4, 8($a0)
/* B72968 800FB7C8 24580008 */  addiu $t8, $v0, 8
/* B7296C 800FB7CC AC980004 */  sw    $t8, 4($a0)
/* B72970 800FB7D0 9498000A */  lhu   $t8, 0xa($a0)
/* B72974 800FB7D4 258F0020 */  addiu $t7, $t4, 0x20
/* B72978 800FB7D8 000F5840 */  sll   $t3, $t7, 1
/* B7297C 800FB7DC 31790FFF */  andi  $t9, $t3, 0xfff
/* B72980 800FB7E0 270C0020 */  addiu $t4, $t8, 0x20
/* B72984 800FB7E4 000C7840 */  sll   $t7, $t4, 1
/* B72988 800FB7E8 00197300 */  sll   $t6, $t9, 0xc
/* B7298C 800FB7EC 01C86825 */  or    $t5, $t6, $t0
/* B72990 800FB7F0 31EB0FFF */  andi  $t3, $t7, 0xfff
/* B72994 800FB7F4 01ABC825 */  or    $t9, $t5, $t3
/* B72998 800FB7F8 AC590000 */  sw    $t9, ($v0)
/* B7299C 800FB7FC 948E0008 */  lhu   $t6, 8($a0)
/* B729A0 800FB800 948B000A */  lhu   $t3, 0xa($a0)
/* B729A4 800FB804 000EC040 */  sll   $t8, $t6, 1
/* B729A8 800FB808 330C0FFF */  andi  $t4, $t8, 0xfff
/* B729AC 800FB80C 000C7B00 */  sll   $t7, $t4, 0xc
/* B729B0 800FB810 000BC840 */  sll   $t9, $t3, 1
/* B729B4 800FB814 332E0FFF */  andi  $t6, $t9, 0xfff
/* B729B8 800FB818 00EF6825 */  or    $t5, $a3, $t7
/* B729BC 800FB81C 01AEC025 */  or    $t8, $t5, $t6
/* B729C0 800FB820 AC580004 */  sw    $t8, 4($v0)
/* B729C4 800FB824 8C820004 */  lw    $v0, 4($a0)
/* B729C8 800FB828 3C0B0200 */  lui   $t3, (0x02000200 >> 16) # lui $t3, 0x200
/* B729CC 800FB82C 356B0200 */  ori   $t3, (0x02000200 & 0xFFFF) # ori $t3, $t3, 0x200
/* B729D0 800FB830 244C0008 */  addiu $t4, $v0, 8
/* B729D4 800FB834 AC8C0004 */  sw    $t4, 4($a0)
/* B729D8 800FB838 AC460004 */  sw    $a2, 4($v0)
/* B729DC 800FB83C AC490000 */  sw    $t1, ($v0)
/* B729E0 800FB840 8C820004 */  lw    $v0, 4($a0)
/* B729E4 800FB844 244F0008 */  addiu $t7, $v0, 8
/* B729E8 800FB848 AC8F0004 */  sw    $t7, 4($a0)
/* B729EC 800FB84C AC4B0004 */  sw    $t3, 4($v0)
/* B729F0 800FB850 10000022 */  b     .L800FB8DC
/* B729F4 800FB854 AC4A0000 */   sw    $t2, ($v0)
.L800FB858:
/* B729F8 800FB858 8C820004 */  lw    $v0, 4($a0)
/* B729FC 800FB85C 948D0008 */  lhu   $t5, 8($a0)
/* B72A00 800FB860 948B000A */  lhu   $t3, 0xa($a0)
/* B72A04 800FB864 24590008 */  addiu $t9, $v0, 8
/* B72A08 800FB868 25AE0020 */  addiu $t6, $t5, 0x20
/* B72A0C 800FB86C 31D80FFF */  andi  $t8, $t6, 0xfff
/* B72A10 800FB870 AC990004 */  sw    $t9, 4($a0)
/* B72A14 800FB874 00186300 */  sll   $t4, $t8, 0xc
/* B72A18 800FB878 25790020 */  addiu $t9, $t3, 0x20
/* B72A1C 800FB87C 332D0FFF */  andi  $t5, $t9, 0xfff
/* B72A20 800FB880 01887825 */  or    $t7, $t4, $t0
/* B72A24 800FB884 01ED7025 */  or    $t6, $t7, $t5
/* B72A28 800FB888 AC4E0000 */  sw    $t6, ($v0)
/* B72A2C 800FB88C 94980008 */  lhu   $t8, 8($a0)
/* B72A30 800FB890 948F000A */  lhu   $t7, 0xa($a0)
/* B72A34 800FB894 330C0FFF */  andi  $t4, $t8, 0xfff
/* B72A38 800FB898 000C5B00 */  sll   $t3, $t4, 0xc
/* B72A3C 800FB89C 00EBC825 */  or    $t9, $a3, $t3
/* B72A40 800FB8A0 31ED0FFF */  andi  $t5, $t7, 0xfff
/* B72A44 800FB8A4 032D7025 */  or    $t6, $t9, $t5
/* B72A48 800FB8A8 AC4E0004 */  sw    $t6, 4($v0)
/* B72A4C 800FB8AC 8C820004 */  lw    $v0, 4($a0)
/* B72A50 800FB8B0 3C0B0400 */  lui   $t3, (0x04000400 >> 16) # lui $t3, 0x400
/* B72A54 800FB8B4 356B0400 */  ori   $t3, (0x04000400 & 0xFFFF) # ori $t3, $t3, 0x400
/* B72A58 800FB8B8 24580008 */  addiu $t8, $v0, 8
/* B72A5C 800FB8BC AC980004 */  sw    $t8, 4($a0)
/* B72A60 800FB8C0 AC460004 */  sw    $a2, 4($v0)
/* B72A64 800FB8C4 AC490000 */  sw    $t1, ($v0)
/* B72A68 800FB8C8 8C820004 */  lw    $v0, 4($a0)
/* B72A6C 800FB8CC 244C0008 */  addiu $t4, $v0, 8
/* B72A70 800FB8D0 AC8C0004 */  sw    $t4, 4($a0)
/* B72A74 800FB8D4 AC4B0004 */  sw    $t3, 4($v0)
/* B72A78 800FB8D8 AC4A0000 */  sw    $t2, ($v0)
.L800FB8DC:
/* B72A7C 800FB8DC 948F0008 */  lhu   $t7, 8($a0)
/* B72A80 800FB8E0 25F90020 */  addiu $t9, $t7, 0x20
/* B72A84 800FB8E4 03E00008 */  jr    $ra
/* B72A88 800FB8E8 A4990008 */   sh    $t9, 8($a0)