.rdata
glabel D_8013BA58
    .asciz "../z_fcurve_data_skelanime.c"
    .balign 4

glabel D_8013BA78
    .asciz "../z_fcurve_data_skelanime.c"
    .balign 4

glabel D_8013BA98
    .asciz "../z_fcurve_data_skelanime.c"
    .balign 4

glabel D_8013BAB8
    .asciz "../z_fcurve_data_skelanime.c"
    .balign 4

glabel D_8013BAD8
    .asciz "FcSkeletonInfo_draw_child():未対応\n"
    # EUC-JP: 未対応 | Not compatible
    .balign 4

glabel D_8013BAFC
    .asciz "../z_fcurve_data_skelanime.c"
    .balign 4

.text
glabel func_8006CBAC
/* AE3D4C 8006CBAC 27BDFF68 */  addiu $sp, $sp, -0x98
/* AE3D50 8006CBB0 AFBF002C */  sw    $ra, 0x2c($sp)
/* AE3D54 8006CBB4 AFB00028 */  sw    $s0, 0x28($sp)
/* AE3D58 8006CBB8 AFA40098 */  sw    $a0, 0x98($sp)
/* AE3D5C 8006CBBC AFA5009C */  sw    $a1, 0x9c($sp)
/* AE3D60 8006CBC0 AFA600A0 */  sw    $a2, 0xa0($sp)
/* AE3D64 8006CBC4 AFA700A4 */  sw    $a3, 0xa4($sp)
/* AE3D68 8006CBC8 8CCF0004 */  lw    $t7, 4($a2)
/* AE3D6C 8006CBCC 0005C880 */  sll   $t9, $a1, 2
/* AE3D70 8006CBD0 3C0D8016 */  lui   $t5, %hi(gSegments)
/* AE3D74 8006CBD4 01F94021 */  addu  $t0, $t7, $t9
/* AE3D78 8006CBD8 8D020000 */  lw    $v0, ($t0)
/* AE3D7C 8006CBDC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* AE3D80 8006CBE0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* AE3D84 8006CBE4 00025100 */  sll   $t2, $v0, 4
/* AE3D88 8006CBE8 000A5F02 */  srl   $t3, $t2, 0x1c
/* AE3D8C 8006CBEC 000B6080 */  sll   $t4, $t3, 2
/* AE3D90 8006CBF0 01AC6821 */  addu  $t5, $t5, $t4
/* AE3D94 8006CBF4 8DAD6FA8 */  lw    $t5, %lo(gSegments)($t5)
/* AE3D98 8006CBF8 00414824 */  and   $t1, $v0, $at
/* AE3D9C 8006CBFC 3C018000 */  lui   $at, 0x8000
/* AE3DA0 8006CC00 012D7021 */  addu  $t6, $t1, $t5
/* AE3DA4 8006CC04 01C1C021 */  addu  $t8, $t6, $at
/* AE3DA8 8006CC08 AFB80094 */  sw    $t8, 0x94($sp)
/* AE3DAC 8006CC0C 8C850000 */  lw    $a1, ($a0)
/* AE3DB0 8006CC10 3C068014 */  lui   $a2, %hi(D_8013BA58) # $a2, 0x8014
/* AE3DB4 8006CC14 24C6BA58 */  addiu $a2, %lo(D_8013BA58) # addiu $a2, $a2, -0x45a8
/* AE3DB8 8006CC18 27A40080 */  addiu $a0, $sp, 0x80
/* AE3DBC 8006CC1C 24070117 */  li    $a3, 279
/* AE3DC0 8006CC20 0C031AB1 */  jal   Graph_OpenDisps
/* AE3DC4 8006CC24 00A08025 */   move  $s0, $a1
/* AE3DC8 8006CC28 0C034213 */  jal   Matrix_Push
/* AE3DCC 8006CC2C 00000000 */   nop
/* AE3DD0 8006CC30 8FB900A4 */  lw    $t9, 0xa4($sp)
/* AE3DD4 8006CC34 5320000A */  beql  $t9, $zero, .L8006CC60
/* AE3DD8 8006CC38 8FA800A0 */   lw    $t0, 0xa0($sp)
/* AE3DDC 8006CC3C 1320009A */  beqz  $t9, .L8006CEA8
/* AE3DE0 8006CC40 8FA40098 */   lw    $a0, 0x98($sp)
/* AE3DE4 8006CC44 8FA500A0 */  lw    $a1, 0xa0($sp)
/* AE3DE8 8006CC48 8FA6009C */  lw    $a2, 0x9c($sp)
/* AE3DEC 8006CC4C 0320F809 */  jalr  $t9
/* AE3DF0 8006CC50 8FA700B0 */  lw    $a3, 0xb0($sp)
/* AE3DF4 8006CC54 50400095 */  beql  $v0, $zero, .L8006CEAC
/* AE3DF8 8006CC58 8FB000A8 */   lw    $s0, 0xa8($sp)
/* AE3DFC 8006CC5C 8FA800A0 */  lw    $t0, 0xa0($sp)
.L8006CC60:
/* AE3E00 8006CC60 8FAB009C */  lw    $t3, 0x9c($sp)
/* AE3E04 8006CC64 3C013A80 */  li    $at, 0x3A800000 # 0.000000
/* AE3E08 8006CC68 8D0A001C */  lw    $t2, 0x1c($t0)
/* AE3E0C 8006CC6C 000B60C0 */  sll   $t4, $t3, 3
/* AE3E10 8006CC70 018B6021 */  addu  $t4, $t4, $t3
/* AE3E14 8006CC74 000C6040 */  sll   $t4, $t4, 1
/* AE3E18 8006CC78 014C1021 */  addu  $v0, $t2, $t4
/* AE3E1C 8006CC7C 84490000 */  lh    $t1, ($v0)
/* AE3E20 8006CC80 44810000 */  mtc1  $at, $f0
/* AE3E24 8006CC84 2442000C */  addiu $v0, $v0, 0xc
/* AE3E28 8006CC88 44892000 */  mtc1  $t1, $f4
/* AE3E2C 8006CC8C 27A40060 */  addiu $a0, $sp, 0x60
/* AE3E30 8006CC90 27A5006C */  addiu $a1, $sp, 0x6c
/* AE3E34 8006CC94 468021A0 */  cvt.s.w $f6, $f4
/* AE3E38 8006CC98 46003202 */  mul.s $f8, $f6, $f0
/* AE3E3C 8006CC9C E7A80074 */  swc1  $f8, 0x74($sp)
/* AE3E40 8006CCA0 844DFFF6 */  lh    $t5, -0xa($v0)
/* AE3E44 8006CCA4 448D5000 */  mtc1  $t5, $f10
/* AE3E48 8006CCA8 00000000 */  nop
/* AE3E4C 8006CCAC 46805420 */  cvt.s.w $f16, $f10
/* AE3E50 8006CCB0 46008482 */  mul.s $f18, $f16, $f0
/* AE3E54 8006CCB4 E7B20078 */  swc1  $f18, 0x78($sp)
/* AE3E58 8006CCB8 844EFFF8 */  lh    $t6, -8($v0)
/* AE3E5C 8006CCBC 448E2000 */  mtc1  $t6, $f4
/* AE3E60 8006CCC0 00000000 */  nop
/* AE3E64 8006CCC4 468021A0 */  cvt.s.w $f6, $f4
/* AE3E68 8006CCC8 46003202 */  mul.s $f8, $f6, $f0
/* AE3E6C 8006CCCC E7A8007C */  swc1  $f8, 0x7c($sp)
/* AE3E70 8006CCD0 8458FFFA */  lh    $t8, -6($v0)
/* AE3E74 8006CCD4 A7B8006C */  sh    $t8, 0x6c($sp)
/* AE3E78 8006CCD8 844FFFFC */  lh    $t7, -4($v0)
/* AE3E7C 8006CCDC A7AF006E */  sh    $t7, 0x6e($sp)
/* AE3E80 8006CCE0 8459FFFE */  lh    $t9, -2($v0)
/* AE3E84 8006CCE4 A7B90070 */  sh    $t9, 0x70($sp)
/* AE3E88 8006CCE8 84480000 */  lh    $t0, ($v0)
/* AE3E8C 8006CCEC 44885000 */  mtc1  $t0, $f10
/* AE3E90 8006CCF0 00000000 */  nop
/* AE3E94 8006CCF4 46805420 */  cvt.s.w $f16, $f10
/* AE3E98 8006CCF8 E7B00060 */  swc1  $f16, 0x60($sp)
/* AE3E9C 8006CCFC 844B0002 */  lh    $t3, 2($v0)
/* AE3EA0 8006CD00 448B9000 */  mtc1  $t3, $f18
/* AE3EA4 8006CD04 00000000 */  nop
/* AE3EA8 8006CD08 46809120 */  cvt.s.w $f4, $f18
/* AE3EAC 8006CD0C E7A40064 */  swc1  $f4, 0x64($sp)
/* AE3EB0 8006CD10 844A0004 */  lh    $t2, 4($v0)
/* AE3EB4 8006CD14 448A3000 */  mtc1  $t2, $f6
/* AE3EB8 8006CD18 00000000 */  nop
/* AE3EBC 8006CD1C 46803220 */  cvt.s.w $f8, $f6
/* AE3EC0 8006CD20 0C0344D0 */  jal   Matrix_TranslateThenRotateZYX
/* AE3EC4 8006CD24 E7A80068 */   swc1  $f8, 0x68($sp)
/* AE3EC8 8006CD28 C7AC0074 */  lwc1  $f12, 0x74($sp)
/* AE3ECC 8006CD2C C7AE0078 */  lwc1  $f14, 0x78($sp)
/* AE3ED0 8006CD30 8FA6007C */  lw    $a2, 0x7c($sp)
/* AE3ED4 8006CD34 0C0342A3 */  jal   Matrix_Scale
/* AE3ED8 8006CD38 24070001 */   li    $a3, 1
/* AE3EDC 8006CD3C 8FAC00AC */  lw    $t4, 0xac($sp)
/* AE3EE0 8006CD40 8FA90094 */  lw    $t1, 0x94($sp)
/* AE3EE4 8006CD44 8FA800AC */  lw    $t0, 0xac($sp)
/* AE3EE8 8006CD48 1580001C */  bnez  $t4, .L8006CDBC
/* AE3EEC 8006CD4C 24010001 */   li    $at, 1
/* AE3EF0 8006CD50 8D270004 */  lw    $a3, 4($t1)
/* AE3EF4 8006CD54 3C0EDA38 */  lui   $t6, (0xDA380003 >> 16) # lui $t6, 0xda38
/* AE3EF8 8006CD58 50E00054 */  beql  $a3, $zero, .L8006CEAC
/* AE3EFC 8006CD5C 8FB000A8 */   lw    $s0, 0xa8($sp)
/* AE3F00 8006CD60 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE3F04 8006CD64 35CE0003 */  ori   $t6, (0xDA380003 & 0xFFFF) # ori $t6, $t6, 3
/* AE3F08 8006CD68 3C058014 */  lui   $a1, %hi(D_8013BA78) # $a1, 0x8014
/* AE3F0C 8006CD6C 244D0008 */  addiu $t5, $v0, 8
/* AE3F10 8006CD70 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* AE3F14 8006CD74 AC4E0000 */  sw    $t6, ($v0)
/* AE3F18 8006CD78 8FB80098 */  lw    $t8, 0x98($sp)
/* AE3F1C 8006CD7C 24A5BA78 */  addiu $a1, %lo(D_8013BA78) # addiu $a1, $a1, -0x4588
/* AE3F20 8006CD80 24060141 */  li    $a2, 321
/* AE3F24 8006CD84 8F040000 */  lw    $a0, ($t8)
/* AE3F28 8006CD88 AFA7005C */  sw    $a3, 0x5c($sp)
/* AE3F2C 8006CD8C 0C0346A2 */  jal   Matrix_NewMtx
/* AE3F30 8006CD90 AFA20050 */   sw    $v0, 0x50($sp)
/* AE3F34 8006CD94 8FA30050 */  lw    $v1, 0x50($sp)
/* AE3F38 8006CD98 8FA7005C */  lw    $a3, 0x5c($sp)
/* AE3F3C 8006CD9C 3C19DE00 */  lui   $t9, 0xde00
/* AE3F40 8006CDA0 AC620004 */  sw    $v0, 4($v1)
/* AE3F44 8006CDA4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE3F48 8006CDA8 244F0008 */  addiu $t7, $v0, 8
/* AE3F4C 8006CDAC AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* AE3F50 8006CDB0 AC470004 */  sw    $a3, 4($v0)
/* AE3F54 8006CDB4 1000003C */  b     .L8006CEA8
/* AE3F58 8006CDB8 AC590000 */   sw    $t9, ($v0)
.L8006CDBC:
/* AE3F5C 8006CDBC 15010038 */  bne   $t0, $at, .L8006CEA0
/* AE3F60 8006CDC0 3C048014 */   lui   $a0, %hi(D_8013BAD8)
/* AE3F64 8006CDC4 8FAB0094 */  lw    $t3, 0x94($sp)
/* AE3F68 8006CDC8 3C0CDA38 */  lui   $t4, (0xDA380003 >> 16) # lui $t4, 0xda38
/* AE3F6C 8006CDCC 8D670004 */  lw    $a3, 4($t3)
/* AE3F70 8006CDD0 50E00018 */  beql  $a3, $zero, .L8006CE34
/* AE3F74 8006CDD4 8FB80094 */   lw    $t8, 0x94($sp)
/* AE3F78 8006CDD8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE3F7C 8006CDDC 358C0003 */  ori   $t4, (0xDA380003 & 0xFFFF) # ori $t4, $t4, 3
/* AE3F80 8006CDE0 3C058014 */  lui   $a1, %hi(D_8013BA98) # $a1, 0x8014
/* AE3F84 8006CDE4 244A0008 */  addiu $t2, $v0, 8
/* AE3F88 8006CDE8 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* AE3F8C 8006CDEC AC4C0000 */  sw    $t4, ($v0)
/* AE3F90 8006CDF0 8FA90098 */  lw    $t1, 0x98($sp)
/* AE3F94 8006CDF4 24A5BA98 */  addiu $a1, %lo(D_8013BA98) # addiu $a1, $a1, -0x4568
/* AE3F98 8006CDF8 2406014C */  li    $a2, 332
/* AE3F9C 8006CDFC 8D240000 */  lw    $a0, ($t1)
/* AE3FA0 8006CE00 AFA7005C */  sw    $a3, 0x5c($sp)
/* AE3FA4 8006CE04 0C0346A2 */  jal   Matrix_NewMtx
/* AE3FA8 8006CE08 AFA20044 */   sw    $v0, 0x44($sp)
/* AE3FAC 8006CE0C 8FA30044 */  lw    $v1, 0x44($sp)
/* AE3FB0 8006CE10 8FA7005C */  lw    $a3, 0x5c($sp)
/* AE3FB4 8006CE14 3C0EDE00 */  lui   $t6, 0xde00
/* AE3FB8 8006CE18 AC620004 */  sw    $v0, 4($v1)
/* AE3FBC 8006CE1C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE3FC0 8006CE20 244D0008 */  addiu $t5, $v0, 8
/* AE3FC4 8006CE24 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* AE3FC8 8006CE28 AC470004 */  sw    $a3, 4($v0)
/* AE3FCC 8006CE2C AC4E0000 */  sw    $t6, ($v0)
/* AE3FD0 8006CE30 8FB80094 */  lw    $t8, 0x94($sp)
.L8006CE34:
/* AE3FD4 8006CE34 3C19DA38 */  lui   $t9, (0xDA380003 >> 16) # lui $t9, 0xda38
/* AE3FD8 8006CE38 8F070008 */  lw    $a3, 8($t8)
/* AE3FDC 8006CE3C 50E0001B */  beql  $a3, $zero, .L8006CEAC
/* AE3FE0 8006CE40 8FB000A8 */   lw    $s0, 0xa8($sp)
/* AE3FE4 8006CE44 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE3FE8 8006CE48 37390003 */  ori   $t9, (0xDA380003 & 0xFFFF) # ori $t9, $t9, 3
/* AE3FEC 8006CE4C 3C058014 */  lui   $a1, %hi(D_8013BAB8) # $a1, 0x8014
/* AE3FF0 8006CE50 244F0008 */  addiu $t7, $v0, 8
/* AE3FF4 8006CE54 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* AE3FF8 8006CE58 AC590000 */  sw    $t9, ($v0)
/* AE3FFC 8006CE5C 8FA80098 */  lw    $t0, 0x98($sp)
/* AE4000 8006CE60 24A5BAB8 */  addiu $a1, %lo(D_8013BAB8) # addiu $a1, $a1, -0x4548
/* AE4004 8006CE64 24060152 */  li    $a2, 338
/* AE4008 8006CE68 8D040000 */  lw    $a0, ($t0)
/* AE400C 8006CE6C AFA7005C */  sw    $a3, 0x5c($sp)
/* AE4010 8006CE70 0C0346A2 */  jal   Matrix_NewMtx
/* AE4014 8006CE74 AFA2003C */   sw    $v0, 0x3c($sp)
/* AE4018 8006CE78 8FA3003C */  lw    $v1, 0x3c($sp)
/* AE401C 8006CE7C 8FA7005C */  lw    $a3, 0x5c($sp)
/* AE4020 8006CE80 3C0ADE00 */  lui   $t2, 0xde00
/* AE4024 8006CE84 AC620004 */  sw    $v0, 4($v1)
/* AE4028 8006CE88 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE402C 8006CE8C 244B0008 */  addiu $t3, $v0, 8
/* AE4030 8006CE90 AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* AE4034 8006CE94 AC470004 */  sw    $a3, 4($v0)
/* AE4038 8006CE98 10000003 */  b     .L8006CEA8
/* AE403C 8006CE9C AC4A0000 */   sw    $t2, ($v0)
.L8006CEA0:
/* AE4040 8006CEA0 0C00084C */  jal   osSyncPrintf
/* AE4044 8006CEA4 2484BAD8 */   addiu $a0, %lo(D_8013BAD8)
.L8006CEA8:
/* AE4048 8006CEA8 8FB000A8 */  lw    $s0, 0xa8($sp)
.L8006CEAC:
/* AE404C 8006CEAC 8FA40098 */  lw    $a0, 0x98($sp)
/* AE4050 8006CEB0 8FA500A0 */  lw    $a1, 0xa0($sp)
/* AE4054 8006CEB4 12000003 */  beqz  $s0, .L8006CEC4
/* AE4058 8006CEB8 8FA6009C */   lw    $a2, 0x9c($sp)
/* AE405C 8006CEBC 0200F809 */  jalr  $s0
/* AE4060 8006CEC0 8FA700B0 */  lw    $a3, 0xb0($sp)
.L8006CEC4:
/* AE4064 8006CEC4 8FAC0094 */  lw    $t4, 0x94($sp)
/* AE4068 8006CEC8 240100FF */  li    $at, 255
/* AE406C 8006CECC 8FA40098 */  lw    $a0, 0x98($sp)
/* AE4070 8006CED0 91850000 */  lbu   $a1, ($t4)
/* AE4074 8006CED4 8FA600A0 */  lw    $a2, 0xa0($sp)
/* AE4078 8006CED8 8FA700A4 */  lw    $a3, 0xa4($sp)
/* AE407C 8006CEDC 10A10007 */  beq   $a1, $at, .L8006CEFC
/* AE4080 8006CEE0 00000000 */   nop
/* AE4084 8006CEE4 8FA900AC */  lw    $t1, 0xac($sp)
/* AE4088 8006CEE8 8FAD00B0 */  lw    $t5, 0xb0($sp)
/* AE408C 8006CEEC AFB00010 */  sw    $s0, 0x10($sp)
/* AE4090 8006CEF0 AFA90014 */  sw    $t1, 0x14($sp)
/* AE4094 8006CEF4 0C01B2EB */  jal   func_8006CBAC
/* AE4098 8006CEF8 AFAD0018 */   sw    $t5, 0x18($sp)
.L8006CEFC:
/* AE409C 8006CEFC 0C034221 */  jal   Matrix_Pull
/* AE40A0 8006CF00 00000000 */   nop
/* AE40A4 8006CF04 8FAE0094 */  lw    $t6, 0x94($sp)
/* AE40A8 8006CF08 240100FF */  li    $at, 255
/* AE40AC 8006CF0C 8FA40098 */  lw    $a0, 0x98($sp)
/* AE40B0 8006CF10 91C50001 */  lbu   $a1, 1($t6)
/* AE40B4 8006CF14 8FA600A0 */  lw    $a2, 0xa0($sp)
/* AE40B8 8006CF18 8FA700A4 */  lw    $a3, 0xa4($sp)
/* AE40BC 8006CF1C 50A10008 */  beql  $a1, $at, .L8006CF40
/* AE40C0 8006CF20 8FB90098 */   lw    $t9, 0x98($sp)
/* AE40C4 8006CF24 8FB800AC */  lw    $t8, 0xac($sp)
/* AE40C8 8006CF28 8FAF00B0 */  lw    $t7, 0xb0($sp)
/* AE40CC 8006CF2C AFB00010 */  sw    $s0, 0x10($sp)
/* AE40D0 8006CF30 AFB80014 */  sw    $t8, 0x14($sp)
/* AE40D4 8006CF34 0C01B2EB */  jal   func_8006CBAC
/* AE40D8 8006CF38 AFAF0018 */   sw    $t7, 0x18($sp)
/* AE40DC 8006CF3C 8FB90098 */  lw    $t9, 0x98($sp)
.L8006CF40:
/* AE40E0 8006CF40 3C068014 */  lui   $a2, %hi(D_8013BAFC) # $a2, 0x8014
/* AE40E4 8006CF44 24C6BAFC */  addiu $a2, %lo(D_8013BAFC) # addiu $a2, $a2, -0x4504
/* AE40E8 8006CF48 27A40080 */  addiu $a0, $sp, 0x80
/* AE40EC 8006CF4C 24070173 */  li    $a3, 371
/* AE40F0 8006CF50 0C031AD5 */  jal   Graph_CloseDisps
/* AE40F4 8006CF54 8F250000 */   lw    $a1, ($t9)
/* AE40F8 8006CF58 8FBF002C */  lw    $ra, 0x2c($sp)
/* AE40FC 8006CF5C 8FB00028 */  lw    $s0, 0x28($sp)
/* AE4100 8006CF60 27BD0098 */  addiu $sp, $sp, 0x98
/* AE4104 8006CF64 03E00008 */  jr    $ra
/* AE4108 8006CF68 00000000 */   nop

