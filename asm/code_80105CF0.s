.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80105CF0
/* B7CE90 80105CF0 27BDFF98 */  addiu $sp, $sp, -0x68
/* B7CE94 80105CF4 8FAF0078 */  lw    $t7, 0x78($sp)
/* B7CE98 80105CF8 AFB5002C */  sw    $s5, 0x2c($sp)
/* B7CE9C 80105CFC AFB40028 */  sw    $s4, 0x28($sp)
/* B7CEA0 80105D00 AFB1001C */  sw    $s1, 0x1c($sp)
/* B7CEA4 80105D04 AFA60070 */  sw    $a2, 0x70($sp)
/* B7CEA8 80105D08 30CEFFFF */  andi  $t6, $a2, 0xffff
/* B7CEAC 80105D0C 24010001 */  li    $at, 1
/* B7CEB0 80105D10 01C03025 */  move  $a2, $t6
/* B7CEB4 80105D14 00A08825 */  move  $s1, $a1
/* B7CEB8 80105D18 0080A825 */  move  $s5, $a0
/* B7CEBC 80105D1C AFBF003C */  sw    $ra, 0x3c($sp)
/* B7CEC0 80105D20 AFBE0038 */  sw    $fp, 0x38($sp)
/* B7CEC4 80105D24 AFB70034 */  sw    $s7, 0x34($sp)
/* B7CEC8 80105D28 AFB60030 */  sw    $s6, 0x30($sp)
/* B7CECC 80105D2C AFB30024 */  sw    $s3, 0x24($sp)
/* B7CED0 80105D30 AFB20020 */  sw    $s2, 0x20($sp)
/* B7CED4 80105D34 AFB00018 */  sw    $s0, 0x18($sp)
/* B7CED8 80105D38 AFA70074 */  sw    $a3, 0x74($sp)
/* B7CEDC 80105D3C 11E10008 */  beq   $t7, $at, .L80105D60
/* B7CEE0 80105D40 24140002 */   li    $s4, 2
/* B7CEE4 80105D44 29C10007 */  slti  $at, $t6, 7
/* B7CEE8 80105D48 50200006 */  beql  $at, $zero, .L80105D64
/* B7CEEC 80105D4C 00C08025 */   move  $s0, $a2
/* B7CEF0 80105D50 51C00004 */  beql  $t6, $zero, .L80105D64
/* B7CEF4 80105D54 00C08025 */   move  $s0, $a2
/* B7CEF8 80105D58 1000006C */  b     .L80105F0C
/* B7CEFC 80105D5C 00001025 */   move  $v0, $zero
.L80105D60:
/* B7CF00 80105D60 00C08025 */  move  $s0, $a2
.L80105D64:
/* B7CF04 80105D64 0C0402E8 */  jal   __osSiGetAccess
/* B7CF08 80105D68 A7A60072 */   sh    $a2, 0x72($sp)
/* B7CF0C 80105D6C 0010C0C3 */  sra   $t8, $s0, 3
/* B7CF10 80105D70 0010C940 */  sll   $t9, $s0, 5
/* B7CF14 80105D74 3C178013 */  lui   $s7, %hi(__osPfsLastChannel) # $s7, 0x8013
/* B7CF18 80105D78 3C168017 */  lui   $s6, %hi(__osContLastPoll) # $s6, 0x8017
/* B7CF1C 80105D7C 3C138017 */  lui   $s3, %hi(pifMempakBuf) # $s3, 0x8017
/* B7CF20 80105D80 26735960 */  addiu $s3, %lo(pifMempakBuf) # addiu $s3, $s3, 0x5960
/* B7CF24 80105D84 26D65810 */  addiu $s6, %lo(__osContLastPoll) # addiu $s6, $s6, 0x5810
/* B7CF28 80105D88 26F74D20 */  addiu $s7, %lo(__osPfsLastChannel) # addiu $s7, $s7, 0x4d20
/* B7CF2C 80105D8C AFB90040 */  sw    $t9, 0x40($sp)
/* B7CF30 80105D90 AFB80044 */  sw    $t8, 0x44($sp)
/* B7CF34 80105D94 241E0003 */  li    $fp, 3
.L80105D98:
/* B7CF38 80105D98 92C80000 */  lbu   $t0, ($s6)
/* B7CF3C 80105D9C 24010003 */  li    $at, 3
/* B7CF40 80105DA0 02608025 */  move  $s0, $s3
/* B7CF44 80105DA4 15010004 */  bne   $t0, $at, .L80105DB8
/* B7CF48 80105DA8 00001025 */   move  $v0, $zero
/* B7CF4C 80105DAC 8EE90000 */  lw    $t1, ($s7)
/* B7CF50 80105DB0 52290022 */  beql  $s1, $t1, .L80105E3C
/* B7CF54 80105DB4 02718021 */   addu  $s0, $s3, $s1
.L80105DB8:
/* B7CF58 80105DB8 A2DE0000 */  sb    $fp, ($s6)
/* B7CF5C 80105DBC 1A200010 */  blez  $s1, .L80105E00
/* B7CF60 80105DC0 AEF10000 */   sw    $s1, ($s7)
/* B7CF64 80105DC4 32240003 */  andi  $a0, $s1, 3
/* B7CF68 80105DC8 10800006 */  beqz  $a0, .L80105DE4
/* B7CF6C 80105DCC 00801825 */   move  $v1, $a0
.L80105DD0:
/* B7CF70 80105DD0 24420001 */  addiu $v0, $v0, 1
/* B7CF74 80105DD4 A2000000 */  sb    $zero, ($s0)
/* B7CF78 80105DD8 1462FFFD */  bne   $v1, $v0, .L80105DD0
/* B7CF7C 80105DDC 26100001 */   addiu $s0, $s0, 1
/* B7CF80 80105DE0 10510007 */  beq   $v0, $s1, .L80105E00
.L80105DE4:
/* B7CF84 80105DE4 24420004 */   addiu $v0, $v0, 4
/* B7CF88 80105DE8 A2000000 */  sb    $zero, ($s0)
/* B7CF8C 80105DEC A2000001 */  sb    $zero, 1($s0)
/* B7CF90 80105DF0 A2000002 */  sb    $zero, 2($s0)
/* B7CF94 80105DF4 A2000003 */  sb    $zero, 3($s0)
/* B7CF98 80105DF8 1451FFFA */  bne   $v0, $s1, .L80105DE4
/* B7CF9C 80105DFC 26100004 */   addiu $s0, $s0, 4
.L80105E00:
/* B7CFA0 80105E00 240A0001 */  li    $t2, 1
/* B7CFA4 80105E04 AE6A003C */  sw    $t2, 0x3c($s3)
/* B7CFA8 80105E08 240B00FF */  li    $t3, 255
/* B7CFAC 80105E0C 240C0023 */  li    $t4, 35
/* B7CFB0 80105E10 240D0001 */  li    $t5, 1
/* B7CFB4 80105E14 240E00FF */  li    $t6, 255
/* B7CFB8 80105E18 240F00FE */  li    $t7, 254
/* B7CFBC 80105E1C A20B0000 */  sb    $t3, ($s0)
/* B7CFC0 80105E20 A20C0001 */  sb    $t4, 1($s0)
/* B7CFC4 80105E24 A20D0002 */  sb    $t5, 2($s0)
/* B7CFC8 80105E28 A21E0003 */  sb    $fp, 3($s0)
/* B7CFCC 80105E2C A20E0026 */  sb    $t6, 0x26($s0)
/* B7CFD0 80105E30 10000002 */  b     .L80105E3C
/* B7CFD4 80105E34 A20F0027 */   sb    $t7, 0x27($s0)
/* B7CFD8 80105E38 02718021 */  addu  $s0, $s3, $s1
.L80105E3C:
/* B7CFDC 80105E3C 8FB80044 */  lw    $t8, 0x44($sp)
/* B7CFE0 80105E40 A2180004 */  sb    $t8, 4($s0)
/* B7CFE4 80105E44 0C04185C */  jal   osMempakAddrCRC
/* B7CFE8 80105E48 97A40072 */   lhu   $a0, 0x72($sp)
/* B7CFEC 80105E4C 8FB90040 */  lw    $t9, 0x40($sp)
/* B7CFF0 80105E50 26050006 */  addiu $a1, $s0, 6
/* B7CFF4 80105E54 24060020 */  li    $a2, 32
/* B7CFF8 80105E58 00594025 */  or    $t0, $v0, $t9
/* B7CFFC 80105E5C A2080005 */  sb    $t0, 5($s0)
/* B7D000 80105E60 0C001BC4 */  jal   bcopy
/* B7D004 80105E64 8FA40074 */   lw    $a0, 0x74($sp)
/* B7D008 80105E68 24040001 */  li    $a0, 1
/* B7D00C 80105E6C 0C0404FC */  jal   __osSiRawStartDma /*(s32 dir, void *addr)*/
/* B7D010 80105E70 02602825 */   move  $a1, $s3
/* B7D014 80105E74 0C041890 */  jal   osMempakDataCRC
/* B7D018 80105E78 8FA40074 */   lw    $a0, 0x74($sp)
/* B7D01C 80105E7C 305200FF */  andi  $s2, $v0, 0xff
/* B7D020 80105E80 02A02025 */  move  $a0, $s5
/* B7D024 80105E84 00002825 */  move  $a1, $zero
/* B7D028 80105E88 0C000CA0 */  jal   osRecvMesg
/* B7D02C 80105E8C 24060001 */   li    $a2, 1
/* B7D030 80105E90 00002025 */  move  $a0, $zero
/* B7D034 80105E94 0C0404FC */  jal   __osSiRawStartDma /*(s32 dir, void *addr)*/
/* B7D038 80105E98 02602825 */   move  $a1, $s3
/* B7D03C 80105E9C 02A02025 */  move  $a0, $s5
/* B7D040 80105EA0 00002825 */  move  $a1, $zero
/* B7D044 80105EA4 0C000CA0 */  jal   osRecvMesg
/* B7D048 80105EA8 24060001 */   li    $a2, 1
/* B7D04C 80105EAC 92030002 */  lbu   $v1, 2($s0)
/* B7D050 80105EB0 306900C0 */  andi  $t1, $v1, 0xc0
/* B7D054 80105EB4 00091903 */  sra   $v1, $t1, 4
/* B7D058 80105EB8 5460000C */  bnezl $v1, .L80105EEC
/* B7D05C 80105EBC 24030001 */   li    $v1, 1
/* B7D060 80105EC0 920B0026 */  lbu   $t3, 0x26($s0)
/* B7D064 80105EC4 02A02025 */  move  $a0, $s5
/* B7D068 80105EC8 51720009 */  beql  $t3, $s2, .L80105EF0
/* B7D06C 80105ECC 24010004 */   li    $at, 4
/* B7D070 80105ED0 0C040644 */  jal   __osPfsGetStatus
/* B7D074 80105ED4 02202825 */   move  $a1, $s1
/* B7D078 80105ED8 14400009 */  bnez  $v0, .L80105F00
/* B7D07C 80105EDC 00401825 */   move  $v1, $v0
/* B7D080 80105EE0 10000002 */  b     .L80105EEC
/* B7D084 80105EE4 24030004 */   li    $v1, 4
/* B7D088 80105EE8 24030001 */  li    $v1, 1
.L80105EEC:
/* B7D08C 80105EEC 24010004 */  li    $at, 4
.L80105EF0:
/* B7D090 80105EF0 14610003 */  bne   $v1, $at, .L80105F00
/* B7D094 80105EF4 2A820000 */   slti  $v0, $s4, 0
/* B7D098 80105EF8 1040FFA7 */  beqz  $v0, .L80105D98
/* B7D09C 80105EFC 2694FFFF */   addiu $s4, $s4, -1
.L80105F00:
/* B7D0A0 80105F00 0C0402F9 */  jal   __osSiRelAccess
/* B7D0A4 80105F04 AFA30064 */   sw    $v1, 0x64($sp)
/* B7D0A8 80105F08 8FA20064 */  lw    $v0, 0x64($sp)
.L80105F0C:
/* B7D0AC 80105F0C 8FBF003C */  lw    $ra, 0x3c($sp)
/* B7D0B0 80105F10 8FB00018 */  lw    $s0, 0x18($sp)
/* B7D0B4 80105F14 8FB1001C */  lw    $s1, 0x1c($sp)
/* B7D0B8 80105F18 8FB20020 */  lw    $s2, 0x20($sp)
/* B7D0BC 80105F1C 8FB30024 */  lw    $s3, 0x24($sp)
/* B7D0C0 80105F20 8FB40028 */  lw    $s4, 0x28($sp)
/* B7D0C4 80105F24 8FB5002C */  lw    $s5, 0x2c($sp)
/* B7D0C8 80105F28 8FB60030 */  lw    $s6, 0x30($sp)
/* B7D0CC 80105F2C 8FB70034 */  lw    $s7, 0x34($sp)
/* B7D0D0 80105F30 8FBE0038 */  lw    $fp, 0x38($sp)
/* B7D0D4 80105F34 03E00008 */  jr    $ra
/* B7D0D8 80105F38 27BD0068 */   addiu $sp, $sp, 0x68
