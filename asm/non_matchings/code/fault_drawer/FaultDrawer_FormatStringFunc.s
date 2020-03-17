.rdata


glabel D_80147998
    .asciz "\n"
    .balign 4
glabel D_8014799C
    .asciz "%c"
    .balign 4

.text
glabel FaultDrawer_FormatStringFunc
/* B4DF8C 800D6DEC 3C09FFFA */  lui   $t1, (0xFFFA5A5A >> 16) # lui $t1, 0xfffa
/* B4DF90 800D6DF0 03A05025 */  move  $t2, $sp
/* B4DF94 800D6DF4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B4DF98 800D6DF8 35295A5A */  ori   $t1, (0xFFFA5A5A & 0xFFFF) # ori $t1, $t1, 0x5a5a
.L800D6DFC:
/* B4DF9C 800D6DFC 254AFFF8 */  addiu $t2, $t2, -8
/* B4DFA0 800D6E00 AD490000 */  sw    $t1, ($t2)
/* B4DFA4 800D6E04 155DFFFD */  bne   $t2, $sp, .L800D6DFC
/* B4DFA8 800D6E08 AD490004 */   sw    $t1, 4($t2)
/* B4DFAC 800D6E0C AFB2001C */  sw    $s2, 0x1c($sp)
/* B4DFB0 800D6E10 AFB10018 */  sw    $s1, 0x18($sp)
/* B4DFB4 800D6E14 00A08825 */  move  $s1, $a1
/* B4DFB8 800D6E18 00C09025 */  move  $s2, $a2
/* B4DFBC 800D6E1C AFBF0034 */  sw    $ra, 0x34($sp)
/* B4DFC0 800D6E20 AFB70030 */  sw    $s7, 0x30($sp)
/* B4DFC4 800D6E24 AFB6002C */  sw    $s6, 0x2c($sp)
/* B4DFC8 800D6E28 AFB50028 */  sw    $s5, 0x28($sp)
/* B4DFCC 800D6E2C AFB40024 */  sw    $s4, 0x24($sp)
/* B4DFD0 800D6E30 AFB30020 */  sw    $s3, 0x20($sp)
/* B4DFD4 800D6E34 AFB00014 */  sw    $s0, 0x14($sp)
/* B4DFD8 800D6E38 AFA40038 */  sw    $a0, 0x38($sp)
/* B4DFDC 800D6E3C 12400060 */  beqz  $s2, .L800D6FC0
/* B4DFE0 800D6E40 3C178014 */   lui   $s7, %hi(D_80147998) # $s7, 0x8014
/* B4DFE4 800D6E44 3C158014 */  lui   $s5, %hi(D_8014799C) # $s5, 0x8014
/* B4DFE8 800D6E48 3C108017 */  lui   $s0, %hi(sFaultDrawerStruct) # $s0, 0x8017
/* B4DFEC 800D6E4C 2610B680 */  addiu $s0, %lo(sFaultDrawerStruct) # addiu $s0, $s0, -0x4980
/* B4DFF0 800D6E50 26B5799C */  addiu $s5, %lo(D_8014799C) # addiu $s5, $s5, 0x799c
/* B4DFF4 800D6E54 26F77998 */  addiu $s7, %lo(D_80147998) # addiu $s7, $s7, 0x7998
/* B4DFF8 800D6E58 24160001 */  li    $s6, 1
/* B4DFFC 800D6E5C 2414001A */  li    $s4, 26
/* B4E000 800D6E60 2413000A */  li    $s3, 10
.L800D6E64:
/* B4E004 800D6E64 920E0034 */  lbu   $t6, 0x34($s0)
/* B4E008 800D6E68 51C00011 */  beql  $t6, $zero, .L800D6EB0
/* B4E00C 800D6E6C 92240000 */   lbu   $a0, ($s1)
/* B4E010 800D6E70 A2000034 */  sb    $zero, 0x34($s0)
/* B4E014 800D6E74 92250000 */  lbu   $a1, ($s1)
/* B4E018 800D6E78 28A10031 */  slti  $at, $a1, 0x31
/* B4E01C 800D6E7C 14200006 */  bnez  $at, .L800D6E98
/* B4E020 800D6E80 28A1003A */   slti  $at, $a1, 0x3a
/* B4E024 800D6E84 10200004 */  beqz  $at, .L800D6E98
/* B4E028 800D6E88 00057840 */   sll   $t7, $a1, 1
/* B4E02C 800D6E8C 020FC021 */  addu  $t8, $s0, $t7
/* B4E030 800D6E90 0C035AD7 */  jal   FaultDrawer_SetForeColor
/* B4E034 800D6E94 9704FFC0 */   lhu   $a0, -0x40($t8)
.L800D6E98:
/* B4E038 800D6E98 9619000E */  lhu   $t9, 0xe($s0)
/* B4E03C 800D6E9C 9208001C */  lbu   $t0, 0x1c($s0)
/* B4E040 800D6EA0 96030014 */  lhu   $v1, 0x14($s0)
/* B4E044 800D6EA4 1000002A */  b     .L800D6F50
/* B4E048 800D6EA8 03282023 */   subu  $a0, $t9, $t0
/* B4E04C 800D6EAC 92240000 */  lbu   $a0, ($s1)
.L800D6EB0:
/* B4E050 800D6EB0 10930005 */  beq   $a0, $s3, .L800D6EC8
/* B4E054 800D6EB4 00802825 */   move  $a1, $a0
/* B4E058 800D6EB8 50940010 */  beql  $a0, $s4, .L800D6EFC
/* B4E05C 800D6EBC 960D000E */   lhu   $t5, 0xe($s0)
/* B4E060 800D6EC0 10000013 */  b     .L800D6F10
/* B4E064 800D6EC4 92020035 */   lbu   $v0, 0x35($s0)
.L800D6EC8:
/* B4E068 800D6EC8 92090035 */  lbu   $t1, 0x35($s0)
/* B4E06C 800D6ECC 51200004 */  beql  $t1, $zero, .L800D6EE0
/* B4E070 800D6ED0 960A0004 */   lhu   $t2, 4($s0)
/* B4E074 800D6ED4 0C00084C */  jal   osSyncPrintf
/* B4E078 800D6ED8 02E02025 */   move  $a0, $s7
/* B4E07C 800D6EDC 960A0004 */  lhu   $t2, 4($s0)
.L800D6EE0:
/* B4E080 800D6EE0 960B000E */  lhu   $t3, 0xe($s0)
/* B4E084 800D6EE4 920C001C */  lbu   $t4, 0x1c($s0)
/* B4E088 800D6EE8 A60A0014 */  sh    $t2, 0x14($s0)
/* B4E08C 800D6EEC 3143FFFF */  andi  $v1, $t2, 0xffff
/* B4E090 800D6EF0 10000017 */  b     .L800D6F50
/* B4E094 800D6EF4 016C2023 */   subu  $a0, $t3, $t4
/* B4E098 800D6EF8 960D000E */  lhu   $t5, 0xe($s0)
.L800D6EFC:
/* B4E09C 800D6EFC 920E001C */  lbu   $t6, 0x1c($s0)
/* B4E0A0 800D6F00 A2160034 */  sb    $s6, 0x34($s0)
/* B4E0A4 800D6F04 96030014 */  lhu   $v1, 0x14($s0)
/* B4E0A8 800D6F08 10000011 */  b     .L800D6F50
/* B4E0AC 800D6F0C 01AE2023 */   subu  $a0, $t5, $t6
.L800D6F10:
/* B4E0B0 800D6F10 10400004 */  beqz  $v0, .L800D6F24
/* B4E0B4 800D6F14 00000000 */   nop   
/* B4E0B8 800D6F18 0C00084C */  jal   osSyncPrintf
/* B4E0BC 800D6F1C 02A02025 */   move  $a0, $s5
/* B4E0C0 800D6F20 92240000 */  lbu   $a0, ($s1)
.L800D6F24:
/* B4E0C4 800D6F24 0C035A27 */  jal   FaultDrawer_DrawChar
/* B4E0C8 800D6F28 00000000 */   nop   
/* B4E0CC 800D6F2C 9202001C */  lbu   $v0, 0x1c($s0)
/* B4E0D0 800D6F30 960F0014 */  lhu   $t7, 0x14($s0)
/* B4E0D4 800D6F34 8219001E */  lb    $t9, 0x1e($s0)
/* B4E0D8 800D6F38 9609000E */  lhu   $t1, 0xe($s0)
/* B4E0DC 800D6F3C 01E2C021 */  addu  $t8, $t7, $v0
/* B4E0E0 800D6F40 03194021 */  addu  $t0, $t8, $t9
/* B4E0E4 800D6F44 A6080014 */  sh    $t0, 0x14($s0)
/* B4E0E8 800D6F48 3103FFFF */  andi  $v1, $t0, 0xffff
/* B4E0EC 800D6F4C 01222023 */  subu  $a0, $t1, $v0
.L800D6F50:
/* B4E0F0 800D6F50 0064082A */  slt   $at, $v1, $a0
/* B4E0F4 800D6F54 54200018 */  bnezl $at, .L800D6FB8
/* B4E0F8 800D6F58 2652FFFF */   addiu $s2, $s2, -1
/* B4E0FC 800D6F5C 9202001D */  lbu   $v0, 0x1d($s0)
/* B4E100 800D6F60 960B0016 */  lhu   $t3, 0x16($s0)
/* B4E104 800D6F64 820D001F */  lb    $t5, 0x1f($s0)
/* B4E108 800D6F68 9618000A */  lhu   $t8, 0xa($s0)
/* B4E10C 800D6F6C 01626021 */  addu  $t4, $t3, $v0
/* B4E110 800D6F70 018D7021 */  addu  $t6, $t4, $t5
/* B4E114 800D6F74 960A000C */  lhu   $t2, 0xc($s0)
/* B4E118 800D6F78 31CFFFFF */  andi  $t7, $t6, 0xffff
/* B4E11C 800D6F7C 0302C823 */  subu  $t9, $t8, $v0
/* B4E120 800D6F80 01F9082A */  slt   $at, $t7, $t9
/* B4E124 800D6F84 A60E0016 */  sh    $t6, 0x16($s0)
/* B4E128 800D6F88 1420000A */  bnez  $at, .L800D6FB4
/* B4E12C 800D6F8C A60A0014 */   sh    $t2, 0x14($s0)
/* B4E130 800D6F90 8E020038 */  lw    $v0, 0x38($s0)
/* B4E134 800D6F94 50400006 */  beql  $v0, $zero, .L800D6FB0
/* B4E138 800D6F98 96080008 */   lhu   $t0, 8($s0)
/* B4E13C 800D6F9C 0040F809 */  jalr  $v0
/* B4E140 800D6FA0 00000000 */  nop   
/* B4E144 800D6FA4 0C035B57 */  jal   FaultDrawer_FillScreen
/* B4E148 800D6FA8 00000000 */   nop   
/* B4E14C 800D6FAC 96080008 */  lhu   $t0, 8($s0)
.L800D6FB0:
/* B4E150 800D6FB0 A6080016 */  sh    $t0, 0x16($s0)
.L800D6FB4:
/* B4E154 800D6FB4 2652FFFF */  addiu $s2, $s2, -1
.L800D6FB8:
/* B4E158 800D6FB8 1640FFAA */  bnez  $s2, .L800D6E64
/* B4E15C 800D6FBC 26310001 */   addiu $s1, $s1, 1
.L800D6FC0:
/* B4E160 800D6FC0 0C041924 */  jal   osWritebackDCacheAll
/* B4E164 800D6FC4 00000000 */   nop   
/* B4E168 800D6FC8 8FA20038 */  lw    $v0, 0x38($sp)
/* B4E16C 800D6FCC 8FBF0034 */  lw    $ra, 0x34($sp)
/* B4E170 800D6FD0 8FB00014 */  lw    $s0, 0x14($sp)
/* B4E174 800D6FD4 8FB10018 */  lw    $s1, 0x18($sp)
/* B4E178 800D6FD8 8FB2001C */  lw    $s2, 0x1c($sp)
/* B4E17C 800D6FDC 8FB30020 */  lw    $s3, 0x20($sp)
/* B4E180 800D6FE0 8FB40024 */  lw    $s4, 0x24($sp)
/* B4E184 800D6FE4 8FB50028 */  lw    $s5, 0x28($sp)
/* B4E188 800D6FE8 8FB6002C */  lw    $s6, 0x2c($sp)
/* B4E18C 800D6FEC 8FB70030 */  lw    $s7, 0x30($sp)
/* B4E190 800D6FF0 03E00008 */  jr    $ra
/* B4E194 800D6FF4 27BD0038 */   addiu $sp, $sp, 0x38