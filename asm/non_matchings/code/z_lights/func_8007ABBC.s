.rdata
glabel D_8013C8C0
    .asciz "../z_lights.c"
    .balign 4

glabel D_8013C8D0
    .asciz "../z_lights.c"
    .balign 4

glabel D_8013C8E0
    .asciz "../z_lights.c"
    .balign 4

.late_rodata
glabel D_8013C8F4
    .float 2.6E-6

.text
glabel func_8007ABBC
/* AF1D5C 8007ABBC 27BDFF50 */  addiu $sp, $sp, -0xb0
/* AF1D60 8007ABC0 AFB00028 */  sw    $s0, 0x28($sp)
/* AF1D64 8007ABC4 AFBF004C */  sw    $ra, 0x4c($sp)
/* AF1D68 8007ABC8 AFBE0048 */  sw    $fp, 0x48($sp)
/* AF1D6C 8007ABCC AFB70044 */  sw    $s7, 0x44($sp)
/* AF1D70 8007ABD0 AFB60040 */  sw    $s6, 0x40($sp)
/* AF1D74 8007ABD4 AFB5003C */  sw    $s5, 0x3c($sp)
/* AF1D78 8007ABD8 AFB40038 */  sw    $s4, 0x38($sp)
/* AF1D7C 8007ABDC AFB30034 */  sw    $s3, 0x34($sp)
/* AF1D80 8007ABE0 AFB20030 */  sw    $s2, 0x30($sp)
/* AF1D84 8007ABE4 AFB1002C */  sw    $s1, 0x2c($sp)
/* AF1D88 8007ABE8 F7B60020 */  sdc1  $f22, 0x20($sp)
/* AF1D8C 8007ABEC F7B40018 */  sdc1  $f20, 0x18($sp)
/* AF1D90 8007ABF0 8C850000 */  lw    $a1, ($a0)
/* AF1D94 8007ABF4 00808025 */  move  $s0, $a0
/* AF1D98 8007ABF8 8C9307A8 */  lw    $s3, 0x7a8($a0)
/* AF1D9C 8007ABFC 3C068014 */  lui   $a2, %hi(D_8013C8C0) # $a2, 0x8014
/* AF1DA0 8007AC00 24C6C8C0 */  addiu $a2, %lo(D_8013C8C0) # addiu $a2, $a2, -0x3740
/* AF1DA4 8007AC04 AFB000B0 */  sw    $s0, 0xb0($sp)
/* AF1DA8 8007AC08 27A40094 */  addiu $a0, $sp, 0x94
/* AF1DAC 8007AC0C 24070377 */  li    $a3, 887
/* AF1DB0 8007AC10 0C031AB1 */  jal   func_800C6AC4
/* AF1DB4 8007AC14 00A08825 */   move  $s1, $a1
/* AF1DB8 8007AC18 8E2702D0 */  lw    $a3, 0x2d0($s1)
/* AF1DBC 8007AC1C 24EE0008 */  addiu $t6, $a3, 8
/* AF1DC0 8007AC20 AE2E02D0 */  sw    $t6, 0x2d0($s1)
/* AF1DC4 8007AC24 0C0251EB */  jal   func_800947AC
/* AF1DC8 8007AC28 00E02025 */   move  $a0, $a3
/* AF1DCC 8007AC2C AE2202D0 */  sw    $v0, 0x2d0($s1)
/* AF1DD0 8007AC30 244F0008 */  addiu $t7, $v0, 8
/* AF1DD4 8007AC34 AE2F02D0 */  sw    $t7, 0x2d0($s1)
/* AF1DD8 8007AC38 3C18E300 */  lui   $t8, (0xE3001A01 >> 16) # lui $t8, 0xe300
/* AF1DDC 8007AC3C 37181A01 */  ori   $t8, (0xE3001A01 & 0xFFFF) # ori $t8, $t8, 0x1a01
/* AF1DE0 8007AC40 24190020 */  li    $t9, 32
/* AF1DE4 8007AC44 AC590004 */  sw    $t9, 4($v0)
/* AF1DE8 8007AC48 AC580000 */  sw    $t8, ($v0)
/* AF1DEC 8007AC4C 8E2702D0 */  lw    $a3, 0x2d0($s1)
/* AF1DF0 8007AC50 3C09E300 */  lui   $t1, (0xE3001801 >> 16) # lui $t1, 0xe300
/* AF1DF4 8007AC54 35291801 */  ori   $t1, (0xE3001801 & 0xFFFF) # ori $t1, $t1, 0x1801
/* AF1DF8 8007AC58 24E80008 */  addiu $t0, $a3, 8
/* AF1DFC 8007AC5C AE2802D0 */  sw    $t0, 0x2d0($s1)
/* AF1E00 8007AC60 ACE00004 */  sw    $zero, 4($a3)
/* AF1E04 8007AC64 ACE90000 */  sw    $t1, ($a3)
/* AF1E08 8007AC68 8E2702D0 */  lw    $a3, 0x2d0($s1)
/* AF1E0C 8007AC6C 3C0B0401 */  lui   $t3, %hi(D_04015720) # $t3, 0x401
/* AF1E10 8007AC70 256B5720 */  addiu $t3, %lo(D_04015720) # addiu $t3, $t3, 0x5720
/* AF1E14 8007AC74 24EA0008 */  addiu $t2, $a3, 8
/* AF1E18 8007AC78 AE2A02D0 */  sw    $t2, 0x2d0($s1)
/* AF1E1C 8007AC7C 3C1EDE00 */  lui   $fp, 0xde00
/* AF1E20 8007AC80 ACFE0000 */  sw    $fp, ($a3)
/* AF1E24 8007AC84 1260004A */  beqz  $s3, .L8007ADB0
/* AF1E28 8007AC88 ACEB0004 */   sw    $t3, 4($a3)
/* AF1E2C 8007AC8C 3C018014 */  lui   $at, %hi(D_8013C8F4)
/* AF1E30 8007AC90 3C178014 */  lui   $s7, %hi(D_8013C8D0) # $s7, 0x8014
/* AF1E34 8007AC94 3C16DA38 */  lui   $s6, (0xDA380003 >> 16) # lui $s6, 0xda38
/* AF1E38 8007AC98 36D60003 */  ori   $s6, (0xDA380003 & 0xFFFF) # ori $s6, $s6, 3
/* AF1E3C 8007AC9C 26F7C8D0 */  addiu $s7, %lo(D_8013C8D0) # addiu $s7, $s7, -0x3730
/* AF1E40 8007ACA0 C436C8F4 */  lwc1  $f22, %lo(D_8013C8F4)($at)
/* AF1E44 8007ACA4 3C15FA00 */  lui   $s5, 0xfa00
/* AF1E48 8007ACA8 24140002 */  li    $s4, 2
/* AF1E4C 8007ACAC 8E630000 */  lw    $v1, ($s3)
.L8007ACB0:
/* AF1E50 8007ACB0 906C0000 */  lbu   $t4, ($v1)
/* AF1E54 8007ACB4 24620002 */  addiu $v0, $v1, 2
/* AF1E58 8007ACB8 568C003B */  bnel  $s4, $t4, .L8007ADA8
/* AF1E5C 8007ACBC 8E730008 */   lw    $s3, 8($s3)
/* AF1E60 8007ACC0 904D0009 */  lbu   $t5, 9($v0)
/* AF1E64 8007ACC4 51A00038 */  beql  $t5, $zero, .L8007ADA8
/* AF1E68 8007ACC8 8E730008 */   lw    $s3, 8($s3)
/* AF1E6C 8007ACCC 8443000A */  lh    $v1, 0xa($v0)
/* AF1E70 8007ACD0 8E2702D0 */  lw    $a3, 0x2d0($s1)
/* AF1E74 8007ACD4 3C120401 */  li    $s2, 0x04010000 # 0.000000
/* AF1E78 8007ACD8 00630019 */  multu $v1, $v1
/* AF1E7C 8007ACDC 24EF0008 */  addiu $t7, $a3, 8
/* AF1E80 8007ACE0 AE2F02D0 */  sw    $t7, 0x2d0($s1)
/* AF1E84 8007ACE4 ACF50000 */  sw    $s5, ($a3)
/* AF1E88 8007ACE8 904A0006 */  lbu   $t2, 6($v0)
/* AF1E8C 8007ACEC 90590008 */  lbu   $t9, 8($v0)
/* AF1E90 8007ACF0 26525760 */  addiu $s2, %lo(D_04015760) # addiu $s2, $s2, 0x5760
/* AF1E94 8007ACF4 000A5E00 */  sll   $t3, $t2, 0x18
/* AF1E98 8007ACF8 00194200 */  sll   $t0, $t9, 8
/* AF1E9C 8007ACFC 010B6025 */  or    $t4, $t0, $t3
/* AF1EA0 8007AD00 00007012 */  mflo  $t6
/* AF1EA4 8007AD04 448E2000 */  mtc1  $t6, $f4
/* AF1EA8 8007AD08 904E0007 */  lbu   $t6, 7($v0)
/* AF1EAC 8007AD0C 468021A0 */  cvt.s.w $f6, $f4
/* AF1EB0 8007AD10 000E7C00 */  sll   $t7, $t6, 0x10
/* AF1EB4 8007AD14 018FC025 */  or    $t8, $t4, $t7
/* AF1EB8 8007AD18 37190032 */  ori   $t9, $t8, 0x32
/* AF1EBC 8007AD1C ACF90004 */  sw    $t9, 4($a3)
/* AF1EC0 8007AD20 84480004 */  lh    $t0, 4($v0)
/* AF1EC4 8007AD24 844A0002 */  lh    $t2, 2($v0)
/* AF1EC8 8007AD28 84490000 */  lh    $t1, ($v0)
/* AF1ECC 8007AD2C 44888000 */  mtc1  $t0, $f16
/* AF1ED0 8007AD30 448A5000 */  mtc1  $t2, $f10
/* AF1ED4 8007AD34 44894000 */  mtc1  $t1, $f8
/* AF1ED8 8007AD38 46808420 */  cvt.s.w $f16, $f16
/* AF1EDC 8007AD3C 46163502 */  mul.s $f20, $f6, $f22
/* AF1EE0 8007AD40 00003825 */  move  $a3, $zero
/* AF1EE4 8007AD44 44068000 */  mfc1  $a2, $f16
/* AF1EE8 8007AD48 468053A0 */  cvt.s.w $f14, $f10
/* AF1EEC 8007AD4C 0C034261 */  jal   Matrix_Translate
/* AF1EF0 8007AD50 46804320 */   cvt.s.w $f12, $f8
/* AF1EF4 8007AD54 4406A000 */  mfc1  $a2, $f20
/* AF1EF8 8007AD58 4600A306 */  mov.s $f12, $f20
/* AF1EFC 8007AD5C 4600A386 */  mov.s $f14, $f20
/* AF1F00 8007AD60 0C0342A3 */  jal   Matrix_Scale
/* AF1F04 8007AD64 24070001 */   li    $a3, 1
/* AF1F08 8007AD68 8E3002D0 */  lw    $s0, 0x2d0($s1)
/* AF1F0C 8007AD6C 02E02825 */  move  $a1, $s7
/* AF1F10 8007AD70 24060396 */  li    $a2, 918
/* AF1F14 8007AD74 260B0008 */  addiu $t3, $s0, 8
/* AF1F18 8007AD78 AE2B02D0 */  sw    $t3, 0x2d0($s1)
/* AF1F1C 8007AD7C AE160000 */  sw    $s6, ($s0)
/* AF1F20 8007AD80 8FAD00B0 */  lw    $t5, 0xb0($sp)
/* AF1F24 8007AD84 0C0346A2 */  jal   Matrix_NewMtx
/* AF1F28 8007AD88 8DA40000 */   lw    $a0, ($t5)
/* AF1F2C 8007AD8C AE020004 */  sw    $v0, 4($s0)
/* AF1F30 8007AD90 8E2702D0 */  lw    $a3, 0x2d0($s1)
/* AF1F34 8007AD94 24EE0008 */  addiu $t6, $a3, 8
/* AF1F38 8007AD98 AE2E02D0 */  sw    $t6, 0x2d0($s1)
/* AF1F3C 8007AD9C ACF20004 */  sw    $s2, 4($a3)
/* AF1F40 8007ADA0 ACFE0000 */  sw    $fp, ($a3)
/* AF1F44 8007ADA4 8E730008 */  lw    $s3, 8($s3)
.L8007ADA8:
/* AF1F48 8007ADA8 5660FFC1 */  bnezl $s3, .L8007ACB0
/* AF1F4C 8007ADAC 8E630000 */   lw    $v1, ($s3)
.L8007ADB0:
/* AF1F50 8007ADB0 8FAC00B0 */  lw    $t4, 0xb0($sp)
/* AF1F54 8007ADB4 3C068014 */  lui   $a2, %hi(D_8013C8E0) # $a2, 0x8014
/* AF1F58 8007ADB8 24C6C8E0 */  addiu $a2, %lo(D_8013C8E0) # addiu $a2, $a2, -0x3720
/* AF1F5C 8007ADBC 27A40094 */  addiu $a0, $sp, 0x94
/* AF1F60 8007ADC0 2407039F */  li    $a3, 927
/* AF1F64 8007ADC4 0C031AD5 */  jal   func_800C6B54
/* AF1F68 8007ADC8 8D850000 */   lw    $a1, ($t4)
/* AF1F6C 8007ADCC 8FBF004C */  lw    $ra, 0x4c($sp)
/* AF1F70 8007ADD0 D7B40018 */  ldc1  $f20, 0x18($sp)
/* AF1F74 8007ADD4 D7B60020 */  ldc1  $f22, 0x20($sp)
/* AF1F78 8007ADD8 8FB00028 */  lw    $s0, 0x28($sp)
/* AF1F7C 8007ADDC 8FB1002C */  lw    $s1, 0x2c($sp)
/* AF1F80 8007ADE0 8FB20030 */  lw    $s2, 0x30($sp)
/* AF1F84 8007ADE4 8FB30034 */  lw    $s3, 0x34($sp)
/* AF1F88 8007ADE8 8FB40038 */  lw    $s4, 0x38($sp)
/* AF1F8C 8007ADEC 8FB5003C */  lw    $s5, 0x3c($sp)
/* AF1F90 8007ADF0 8FB60040 */  lw    $s6, 0x40($sp)
/* AF1F94 8007ADF4 8FB70044 */  lw    $s7, 0x44($sp)
/* AF1F98 8007ADF8 8FBE0048 */  lw    $fp, 0x48($sp)
/* AF1F9C 8007ADFC 03E00008 */  jr    $ra
/* AF1FA0 8007AE00 27BD00B0 */   addiu $sp, $sp, 0xb0
