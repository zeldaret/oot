
glabel JpegDecoder_ParseNextSymbol
/* B76FB4 800FFE14 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B76FB8 800FFE18 AFB00018 */  sw    $s0, 0x18($sp)
/* B76FBC 800FFE1C 00808025 */  move  $s0, $a0
/* B76FC0 800FFE20 AFBF001C */  sw    $ra, 0x1c($sp)
/* B76FC4 800FFE24 AFA5002C */  sw    $a1, 0x2c($sp)
/* B76FC8 800FFE28 AFA60030 */  sw    $a2, 0x30($sp)
/* B76FCC 800FFE2C 24040010 */  li    $a0, 16
/* B76FD0 800FFE30 0C03FFD4 */  jal   JpegDecoder_ReadBits
/* B76FD4 800FFE34 A7A00024 */   sh    $zero, 0x24($sp)
/* B76FD8 800FFE38 97A90024 */  lhu   $t1, 0x24($sp)
/* B76FDC 800FFE3C 8FAA002C */  lw    $t2, 0x2c($sp)
/* B76FE0 800FFE40 00003025 */  move  $a2, $zero
/* B76FE4 800FFE44 2408000F */  li    $t0, 15
/* B76FE8 800FFE48 3407FFFF */  li    $a3, 65535
.L800FFE4C:
/* B76FEC 800FFE4C 00067040 */  sll   $t6, $a2, 1
/* B76FF0 800FFE50 020E7821 */  addu  $t7, $s0, $t6
/* B76FF4 800FFE54 95E40030 */  lhu   $a0, 0x30($t7)
/* B76FF8 800FFE58 0106C023 */  subu  $t8, $t0, $a2
/* B76FFC 800FFE5C 03021807 */  srav  $v1, $v0, $t8
/* B77000 800FFE60 10E40005 */  beq   $a3, $a0, .L800FFE78
/* B77004 800FFE64 00C02825 */   move  $a1, $a2
/* B77008 800FFE68 3079FFFF */  andi  $t9, $v1, 0xffff
/* B7700C 800FFE6C 0099082A */  slt   $at, $a0, $t9
/* B77010 800FFE70 10200006 */  beqz  $at, .L800FFE8C
/* B77014 800FFE74 3069FFFF */   andi  $t1, $v1, 0xffff
.L800FFE78:
/* B77018 800FFE78 24C60001 */  addiu $a2, $a2, 1
/* B7701C 800FFE7C 30C500FF */  andi  $a1, $a2, 0xff
/* B77020 800FFE80 28A10010 */  slti  $at, $a1, 0x10
/* B77024 800FFE84 1420FFF1 */  bnez  $at, .L800FFE4C
/* B77028 800FFE88 00A03025 */   move  $a2, $a1
.L800FFE8C:
/* B7702C 800FFE8C 28A10010 */  slti  $at, $a1, 0x10
/* B77030 800FFE90 14200003 */  bnez  $at, .L800FFEA0
/* B77034 800FFE94 3C028017 */   lui   $v0, %hi(sJpegBitStreamBitIdx) # $v0, 0x8017
/* B77038 800FFE98 10000028 */  b     .L800FFF3C
/* B7703C 800FFE9C 24020001 */   li    $v0, 1
.L800FFEA0:
/* B77040 800FFEA0 02066021 */  addu  $t4, $s0, $a2
/* B77044 800FFEA4 00067840 */  sll   $t7, $a2, 1
/* B77048 800FFEA8 918D0000 */  lbu   $t5, ($t4)
/* B7704C 800FFEAC 020FC021 */  addu  $t8, $s0, $t7
/* B77050 800FFEB0 97190010 */  lhu   $t9, 0x10($t8)
/* B77054 800FFEB4 8E0C0050 */  lw    $t4, 0x50($s0)
/* B77058 800FFEB8 01A97021 */  addu  $t6, $t5, $t1
/* B7705C 800FFEBC 01D95823 */  subu  $t3, $t6, $t9
/* B77060 800FFEC0 016C6821 */  addu  $t5, $t3, $t4
/* B77064 800FFEC4 91A40000 */  lbu   $a0, ($t5)
/* B77068 800FFEC8 8FB80030 */  lw    $t8, 0x30($sp)
/* B7706C 800FFECC 24425668 */  addiu $v0, %lo(sJpegBitStreamBitIdx) # addiu $v0, $v0, 0x5668
/* B77070 800FFED0 00047903 */  sra   $t7, $a0, 4
/* B77074 800FFED4 A30F0000 */  sb    $t7, ($t8)
/* B77078 800FFED8 90590000 */  lbu   $t9, ($v0)
/* B7707C 800FFEDC 308E000F */  andi  $t6, $a0, 0xf
/* B77080 800FFEE0 01C02025 */  move  $a0, $t6
/* B77084 800FFEE4 03255821 */  addu  $t3, $t9, $a1
/* B77088 800FFEE8 256CFFF1 */  addiu $t4, $t3, -0xf
/* B7708C 800FFEEC A04C0000 */  sb    $t4, ($v0)
/* B77090 800FFEF0 11C00011 */  beqz  $t6, .L800FFF38
/* B77094 800FFEF4 A5400000 */   sh    $zero, ($t2)
/* B77098 800FFEF8 0C03FFD4 */  jal   JpegDecoder_ReadBits
/* B7709C 800FFEFC A3AE0026 */   sb    $t6, 0x26($sp)
/* B770A0 800FFF00 8FAA002C */  lw    $t2, 0x2c($sp)
/* B770A4 800FFF04 93A40026 */  lbu   $a0, 0x26($sp)
/* B770A8 800FFF08 240F0001 */  li    $t7, 1
/* B770AC 800FFF0C A5420000 */  sh    $v0, ($t2)
/* B770B0 800FFF10 85450000 */  lh    $a1, ($t2)
/* B770B4 800FFF14 248D001F */  addiu $t5, $a0, 0x1f
/* B770B8 800FFF18 01AFC004 */  sllv  $t8, $t7, $t5
/* B770BC 800FFF1C 00B8082A */  slt   $at, $a1, $t8
/* B770C0 800FFF20 10200005 */  beqz  $at, .L800FFF38
/* B770C4 800FFF24 240EFFFF */   li    $t6, -1
/* B770C8 800FFF28 008EC804 */  sllv  $t9, $t6, $a0
/* B770CC 800FFF2C 00B95821 */  addu  $t3, $a1, $t9
/* B770D0 800FFF30 256C0001 */  addiu $t4, $t3, 1
/* B770D4 800FFF34 A54C0000 */  sh    $t4, ($t2)
.L800FFF38:
/* B770D8 800FFF38 00001025 */  move  $v0, $zero
.L800FFF3C:
/* B770DC 800FFF3C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B770E0 800FFF40 8FB00018 */  lw    $s0, 0x18($sp)
/* B770E4 800FFF44 27BD0028 */  addiu $sp, $sp, 0x28
/* B770E8 800FFF48 03E00008 */  jr    $ra
/* B770EC 800FFF4C 00000000 */   nop   
