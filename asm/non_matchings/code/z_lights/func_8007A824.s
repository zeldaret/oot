glabel func_8007A824
/* AF19C4 8007A824 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AF19C8 8007A828 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF19CC 8007A82C AFA50024 */  sw    $a1, 0x24($sp)
/* AF19D0 8007A830 AFA40020 */  sw    $a0, 0x20($sp)
/* AF19D4 8007A834 AFA60028 */  sw    $a2, 0x28($sp)
/* AF19D8 8007A838 AFA7002C */  sw    $a3, 0x2c($sp)
/* AF19DC 8007A83C 0C031A73 */  jal   Graph_Alloc
/* AF19E0 8007A840 24050080 */   li    $a1, 128
/* AF19E4 8007A844 93AF0027 */  lbu   $t7, 0x27($sp)
/* AF19E8 8007A848 93A30033 */  lbu   $v1, 0x33($sp)
/* AF19EC 8007A84C AFA2001C */  sw    $v0, 0x1c($sp)
/* AF19F0 8007A850 A04F0008 */  sb    $t7, 8($v0)
/* AF19F4 8007A854 A04F000C */  sb    $t7, 0xc($v0)
/* AF19F8 8007A858 93B9002B */  lbu   $t9, 0x2b($sp)
/* AF19FC 8007A85C 00002025 */  move  $a0, $zero
/* AF1A00 8007A860 00605825 */  move  $t3, $v1
/* AF1A04 8007A864 A059000D */  sb    $t9, 0xd($v0)
/* AF1A08 8007A868 A0590009 */  sb    $t9, 9($v0)
/* AF1A0C 8007A86C 93AD002F */  lbu   $t5, 0x2f($sp)
/* AF1A10 8007A870 A0430000 */  sb    $v1, ($v0)
/* AF1A14 8007A874 A04D000E */  sb    $t5, 0xe($v0)
/* AF1A18 8007A878 18600031 */  blez  $v1, .L8007A940
/* AF1A1C 8007A87C A04D000A */   sb    $t5, 0xa($v0)
/* AF1A20 8007A880 30630001 */  andi  $v1, $v1, 1
/* AF1A24 8007A884 10600011 */  beqz  $v1, .L8007A8CC
/* AF1A28 8007A888 93AE0037 */   lbu   $t6, 0x37($sp)
/* AF1A2C 8007A88C 93AF003B */  lbu   $t7, 0x3b($sp)
/* AF1A30 8007A890 93B8003F */  lbu   $t8, 0x3f($sp)
/* AF1A34 8007A894 83A80043 */  lb    $t0, 0x43($sp)
/* AF1A38 8007A898 83A90047 */  lb    $t1, 0x47($sp)
/* AF1A3C 8007A89C 83AA004B */  lb    $t2, 0x4b($sp)
/* AF1A40 8007A8A0 24040001 */  li    $a0, 1
/* AF1A44 8007A8A4 A04E0010 */  sb    $t6, 0x10($v0)
/* AF1A48 8007A8A8 A04E0014 */  sb    $t6, 0x14($v0)
/* AF1A4C 8007A8AC A04F0011 */  sb    $t7, 0x11($v0)
/* AF1A50 8007A8B0 A04F0015 */  sb    $t7, 0x15($v0)
/* AF1A54 8007A8B4 A0580012 */  sb    $t8, 0x12($v0)
/* AF1A58 8007A8B8 A0580016 */  sb    $t8, 0x16($v0)
/* AF1A5C 8007A8BC A0480018 */  sb    $t0, 0x18($v0)
/* AF1A60 8007A8C0 A0490019 */  sb    $t1, 0x19($v0)
/* AF1A64 8007A8C4 108B001E */  beq   $a0, $t3, .L8007A940
/* AF1A68 8007A8C8 A04A001A */   sb    $t2, 0x1a($v0)
.L8007A8CC:
/* AF1A6C 8007A8CC 0004C900 */  sll   $t9, $a0, 4
/* AF1A70 8007A8D0 00591821 */  addu  $v1, $v0, $t9
/* AF1A74 8007A8D4 93A50037 */  lbu   $a1, 0x37($sp)
/* AF1A78 8007A8D8 93A6003B */  lbu   $a2, 0x3b($sp)
/* AF1A7C 8007A8DC 93A7003F */  lbu   $a3, 0x3f($sp)
/* AF1A80 8007A8E0 83A80043 */  lb    $t0, 0x43($sp)
/* AF1A84 8007A8E4 83A90047 */  lb    $t1, 0x47($sp)
/* AF1A88 8007A8E8 83AA004B */  lb    $t2, 0x4b($sp)
.L8007A8EC:
/* AF1A8C 8007A8EC 24840002 */  addiu $a0, $a0, 2
/* AF1A90 8007A8F0 A0650024 */  sb    $a1, 0x24($v1)
/* AF1A94 8007A8F4 A0650020 */  sb    $a1, 0x20($v1)
/* AF1A98 8007A8F8 A0660025 */  sb    $a2, 0x25($v1)
/* AF1A9C 8007A8FC A0660021 */  sb    $a2, 0x21($v1)
/* AF1AA0 8007A900 A0670026 */  sb    $a3, 0x26($v1)
/* AF1AA4 8007A904 A0670022 */  sb    $a3, 0x22($v1)
/* AF1AA8 8007A908 A0680028 */  sb    $t0, 0x28($v1)
/* AF1AAC 8007A90C A0690029 */  sb    $t1, 0x29($v1)
/* AF1AB0 8007A910 A06A002A */  sb    $t2, 0x2a($v1)
/* AF1AB4 8007A914 24630020 */  addiu $v1, $v1, 0x20
/* AF1AB8 8007A918 A065FFF4 */  sb    $a1, -0xc($v1)
/* AF1ABC 8007A91C A065FFF0 */  sb    $a1, -0x10($v1)
/* AF1AC0 8007A920 A066FFF5 */  sb    $a2, -0xb($v1)
/* AF1AC4 8007A924 A066FFF1 */  sb    $a2, -0xf($v1)
/* AF1AC8 8007A928 A067FFF6 */  sb    $a3, -0xa($v1)
/* AF1ACC 8007A92C A067FFF2 */  sb    $a3, -0xe($v1)
/* AF1AD0 8007A930 A068FFF8 */  sb    $t0, -8($v1)
/* AF1AD4 8007A934 A069FFF9 */  sb    $t1, -7($v1)
/* AF1AD8 8007A938 148BFFEC */  bne   $a0, $t3, .L8007A8EC
/* AF1ADC 8007A93C A06AFFFA */   sb    $t2, -6($v1)
.L8007A940:
/* AF1AE0 8007A940 8FA4001C */  lw    $a0, 0x1c($sp)
/* AF1AE4 8007A944 0C01E7BF */  jal   func_80079EFC
/* AF1AE8 8007A948 8FA50020 */   lw    $a1, 0x20($sp)
/* AF1AEC 8007A94C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF1AF0 8007A950 8FA2001C */  lw    $v0, 0x1c($sp)
/* AF1AF4 8007A954 27BD0020 */  addiu $sp, $sp, 0x20
/* AF1AF8 8007A958 03E00008 */  jr    $ra
/* AF1AFC 8007A95C 00000000 */   nop   

