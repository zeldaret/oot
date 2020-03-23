.rdata
glabel D_8013FFF8
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014000C
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140020
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140034
    .asciz "../z_skelanime.c"
    .balign 4

.text
glabel func_800A0D94
/* B17F34 800A0D94 27BDFF90 */  addiu $sp, $sp, -0x70
/* B17F38 800A0D98 AFBF002C */  sw    $ra, 0x2c($sp)
/* B17F3C 800A0D9C AFA40070 */  sw    $a0, 0x70($sp)
/* B17F40 800A0DA0 AFA50074 */  sw    $a1, 0x74($sp)
/* B17F44 800A0DA4 AFA60078 */  sw    $a2, 0x78($sp)
/* B17F48 800A0DA8 0C034213 */  jal   Matrix_Push
/* B17F4C 800A0DAC AFA7007C */   sw    $a3, 0x7c($sp)
/* B17F50 800A0DB0 8FAF0074 */  lw    $t7, 0x74($sp)
/* B17F54 800A0DB4 8FAE0078 */  lw    $t6, 0x78($sp)
/* B17F58 800A0DB8 3C0D8016 */  lui   $t5, %hi(gSegments)
/* B17F5C 800A0DBC 000FC080 */  sll   $t8, $t7, 2
/* B17F60 800A0DC0 01D8C821 */  addu  $t9, $t6, $t8
/* B17F64 800A0DC4 8F220000 */  lw    $v0, ($t9)
/* B17F68 800A0DC8 25EE0001 */  addiu $t6, $t7, 1
/* B17F6C 800A0DCC 8FB9007C */  lw    $t9, 0x7c($sp)
/* B17F70 800A0DD0 00025100 */  sll   $t2, $v0, 4
/* B17F74 800A0DD4 000A5F02 */  srl   $t3, $t2, 0x1c
/* B17F78 800A0DD8 000B6080 */  sll   $t4, $t3, 2
/* B17F7C 800A0DDC 01AC6821 */  addu  $t5, $t5, $t4
/* B17F80 800A0DE0 8DAD6FA8 */  lw    $t5, %lo(gSegments)($t5)
/* B17F84 800A0DE4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B17F88 800A0DE8 000E5080 */  sll   $t2, $t6, 2
/* B17F8C 800A0DEC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B17F90 800A0DF0 014E5023 */  subu  $t2, $t2, $t6
/* B17F94 800A0DF4 000A5040 */  sll   $t2, $t2, 1
/* B17F98 800A0DF8 00414824 */  and   $t1, $v0, $at
/* B17F9C 800A0DFC AFAE0074 */  sw    $t6, 0x74($sp)
/* B17FA0 800A0E00 032A5821 */  addu  $t3, $t9, $t2
/* B17FA4 800A0E04 012D1821 */  addu  $v1, $t1, $t5
/* B17FA8 800A0E08 89690000 */  lwl   $t1, ($t3)
/* B17FAC 800A0E0C 99690003 */  lwr   $t1, 3($t3)
/* B17FB0 800A0E10 27B80050 */  addiu $t8, $sp, 0x50
/* B17FB4 800A0E14 3C018000 */  lui   $at, 0x8000
/* B17FB8 800A0E18 AF090000 */  sw    $t1, ($t8)
/* B17FBC 800A0E1C 95690004 */  lhu   $t1, 4($t3)
/* B17FC0 800A0E20 00611821 */  addu  $v1, $v1, $at
/* B17FC4 800A0E24 27A60068 */  addiu $a2, $sp, 0x68
/* B17FC8 800A0E28 A7090004 */  sh    $t1, 4($t8)
/* B17FCC 800A0E2C 846D0000 */  lh    $t5, ($v1)
/* B17FD0 800A0E30 8FB9008C */  lw    $t9, 0x8c($sp)
/* B17FD4 800A0E34 8FAC0080 */  lw    $t4, 0x80($sp)
/* B17FD8 800A0E38 448D2000 */  mtc1  $t5, $f4
/* B17FDC 800A0E3C 00195080 */  sll   $t2, $t9, 2
/* B17FE0 800A0E40 006AC021 */  addu  $t8, $v1, $t2
/* B17FE4 800A0E44 468021A0 */  cvt.s.w $f6, $f4
/* B17FE8 800A0E48 8FA50074 */  lw    $a1, 0x74($sp)
/* B17FEC 800A0E4C 8FA40070 */  lw    $a0, 0x70($sp)
/* B17FF0 800A0E50 27A90050 */  addiu $t1, $sp, 0x50
/* B17FF4 800A0E54 27A70058 */  addiu $a3, $sp, 0x58
/* B17FF8 800A0E58 E7A60058 */  swc1  $f6, 0x58($sp)
/* B17FFC 800A0E5C 846F0002 */  lh    $t7, 2($v1)
/* B18000 800A0E60 448F4000 */  mtc1  $t7, $f8
/* B18004 800A0E64 00000000 */  nop
/* B18008 800A0E68 468042A0 */  cvt.s.w $f10, $f8
/* B1800C 800A0E6C E7AA005C */  swc1  $f10, 0x5c($sp)
/* B18010 800A0E70 846E0004 */  lh    $t6, 4($v1)
/* B18014 800A0E74 448E8000 */  mtc1  $t6, $f16
/* B18018 800A0E78 00000000 */  nop
/* B1801C 800A0E7C 468084A0 */  cvt.s.w $f18, $f16
/* B18020 800A0E80 E7B20060 */  swc1  $f18, 0x60($sp)
/* B18024 800A0E84 8F0B0008 */  lw    $t3, 8($t8)
/* B18028 800A0E88 AFA3006C */  sw    $v1, 0x6c($sp)
/* B1802C 800A0E8C AFAB0064 */  sw    $t3, 0x64($sp)
/* B18030 800A0E90 11800007 */  beqz  $t4, .L800A0EB0
/* B18034 800A0E94 AFAB0068 */   sw    $t3, 0x68($sp)
/* B18038 800A0E98 8FAD0088 */  lw    $t5, 0x88($sp)
/* B1803C 800A0E9C AFA90010 */  sw    $t1, 0x10($sp)
/* B18040 800A0EA0 AFA3006C */  sw    $v1, 0x6c($sp)
/* B18044 800A0EA4 0180F809 */  jalr  $t4
/* B18048 800A0EA8 AFAD0014 */  sw    $t5, 0x14($sp)
/* B1804C 800A0EAC 1440003C */  bnez  $v0, .L800A0FA0
.L800A0EB0:
/* B18050 800A0EB0 27A40058 */   addiu $a0, $sp, 0x58
/* B18054 800A0EB4 0C0344D0 */  jal   Matrix_TranslateThenRotateZYX
/* B18058 800A0EB8 27A50050 */   addiu $a1, $sp, 0x50
/* B1805C 800A0EBC 8FAF0068 */  lw    $t7, 0x68($sp)
/* B18060 800A0EC0 8FAE0090 */  lw    $t6, 0x90($sp)
/* B18064 800A0EC4 3C058014 */  lui   $a1, %hi(D_8013FFF8) # $a1, 0x8014
/* B18068 800A0EC8 11E0002A */  beqz  $t7, .L800A0F74
/* B1806C 800A0ECC 8FAB0064 */   lw    $t3, 0x64($sp)
/* B18070 800A0ED0 8DC40000 */  lw    $a0, ($t6)
/* B18074 800A0ED4 24A5FFF8 */  addiu $a1, %lo(D_8013FFF8) # addiu $a1, $a1, -8
/* B18078 800A0ED8 0C034695 */  jal   Matrix_ToMtx
/* B1807C 800A0EDC 240603B1 */   li    $a2, 945
/* B18080 800A0EE0 8FB90070 */  lw    $t9, 0x70($sp)
/* B18084 800A0EE4 3C068014 */  lui   $a2, %hi(D_8014000C) # $a2, 0x8014
/* B18088 800A0EE8 24C6000C */  addiu $a2, %lo(D_8014000C) # addiu $a2, $a2, 0xc
/* B1808C 800A0EEC 8F250000 */  lw    $a1, ($t9)
/* B18090 800A0EF0 27A4003C */  addiu $a0, $sp, 0x3c
/* B18094 800A0EF4 240703B2 */  li    $a3, 946
/* B18098 800A0EF8 0C031AB1 */  jal   func_800C6AC4
/* B1809C 800A0EFC AFA5004C */   sw    $a1, 0x4c($sp)
/* B180A0 800A0F00 8FA8004C */  lw    $t0, 0x4c($sp)
/* B180A4 800A0F04 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* B180A8 800A0F08 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* B180AC 800A0F0C 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B180B0 800A0F10 3C0CDE00 */  lui   $t4, 0xde00
/* B180B4 800A0F14 3C068014 */  lui   $a2, %hi(D_80140020) # $a2, 0x8014
/* B180B8 800A0F18 246A0008 */  addiu $t2, $v1, 8
/* B180BC 800A0F1C AD0A02C0 */  sw    $t2, 0x2c0($t0)
/* B180C0 800A0F20 AC780000 */  sw    $t8, ($v1)
/* B180C4 800A0F24 8FAB0090 */  lw    $t3, 0x90($sp)
/* B180C8 800A0F28 24C60020 */  addiu $a2, %lo(D_80140020) # addiu $a2, $a2, 0x20
/* B180CC 800A0F2C 27A4003C */  addiu $a0, $sp, 0x3c
/* B180D0 800A0F30 8D690000 */  lw    $t1, ($t3)
/* B180D4 800A0F34 240703B5 */  li    $a3, 949
/* B180D8 800A0F38 AC690004 */  sw    $t1, 4($v1)
/* B180DC 800A0F3C 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B180E0 800A0F40 246D0008 */  addiu $t5, $v1, 8
/* B180E4 800A0F44 AD0D02C0 */  sw    $t5, 0x2c0($t0)
/* B180E8 800A0F48 AC6C0000 */  sw    $t4, ($v1)
/* B180EC 800A0F4C 8FAF0068 */  lw    $t7, 0x68($sp)
/* B180F0 800A0F50 AC6F0004 */  sw    $t7, 4($v1)
/* B180F4 800A0F54 8FAE0070 */  lw    $t6, 0x70($sp)
/* B180F8 800A0F58 0C031AD5 */  jal   func_800C6B54
/* B180FC 800A0F5C 8DC50000 */   lw    $a1, ($t6)
/* B18100 800A0F60 8FB90090 */  lw    $t9, 0x90($sp)
/* B18104 800A0F64 8F2A0000 */  lw    $t2, ($t9)
/* B18108 800A0F68 25580040 */  addiu $t8, $t2, 0x40
/* B1810C 800A0F6C 1000000C */  b     .L800A0FA0
/* B18110 800A0F70 AF380000 */   sw    $t8, ($t9)
.L800A0F74:
/* B18114 800A0F74 1160000A */  beqz  $t3, .L800A0FA0
/* B18118 800A0F78 8FA90090 */   lw    $t1, 0x90($sp)
/* B1811C 800A0F7C 3C058014 */  lui   $a1, %hi(D_80140034) # $a1, 0x8014
/* B18120 800A0F80 24A50034 */  addiu $a1, %lo(D_80140034) # addiu $a1, $a1, 0x34
/* B18124 800A0F84 8D240000 */  lw    $a0, ($t1)
/* B18128 800A0F88 0C034695 */  jal   Matrix_ToMtx
/* B1812C 800A0F8C 240603BA */   li    $a2, 954
/* B18130 800A0F90 8FAD0090 */  lw    $t5, 0x90($sp)
/* B18134 800A0F94 8DAC0000 */  lw    $t4, ($t5)
/* B18138 800A0F98 258F0040 */  addiu $t7, $t4, 0x40
/* B1813C 800A0F9C ADAF0000 */  sw    $t7, ($t5)
.L800A0FA0:
/* B18140 800A0FA0 8FAE0084 */  lw    $t6, 0x84($sp)
/* B18144 800A0FA4 8FA40070 */  lw    $a0, 0x70($sp)
/* B18148 800A0FA8 8FA50074 */  lw    $a1, 0x74($sp)
/* B1814C 800A0FAC 11C00005 */  beqz  $t6, .L800A0FC4
/* B18150 800A0FB0 27A60064 */   addiu $a2, $sp, 0x64
/* B18154 800A0FB4 8FAA0088 */  lw    $t2, 0x88($sp)
/* B18158 800A0FB8 27A70050 */  addiu $a3, $sp, 0x50
/* B1815C 800A0FBC 01C0F809 */  jalr  $t6
/* B18160 800A0FC0 AFAA0010 */  sw    $t2, 0x10($sp)
.L800A0FC4:
/* B18164 800A0FC4 8FB8006C */  lw    $t8, 0x6c($sp)
/* B18168 800A0FC8 240100FF */  li    $at, 255
/* B1816C 800A0FCC 8FA40070 */  lw    $a0, 0x70($sp)
/* B18170 800A0FD0 93050006 */  lbu   $a1, 6($t8)
/* B18174 800A0FD4 8FA60078 */  lw    $a2, 0x78($sp)
/* B18178 800A0FD8 8FA7007C */  lw    $a3, 0x7c($sp)
/* B1817C 800A0FDC 10A1000B */  beq   $a1, $at, .L800A100C
/* B18180 800A0FE0 8FB90080 */   lw    $t9, 0x80($sp)
/* B18184 800A0FE4 8FAB0084 */  lw    $t3, 0x84($sp)
/* B18188 800A0FE8 8FA90088 */  lw    $t1, 0x88($sp)
/* B1818C 800A0FEC 8FAC008C */  lw    $t4, 0x8c($sp)
/* B18190 800A0FF0 8FAF0090 */  lw    $t7, 0x90($sp)
/* B18194 800A0FF4 AFB90010 */  sw    $t9, 0x10($sp)
/* B18198 800A0FF8 AFAB0014 */  sw    $t3, 0x14($sp)
/* B1819C 800A0FFC AFA90018 */  sw    $t1, 0x18($sp)
/* B181A0 800A1000 AFAC001C */  sw    $t4, 0x1c($sp)
/* B181A4 800A1004 0C028365 */  jal   func_800A0D94
/* B181A8 800A1008 AFAF0020 */   sw    $t7, 0x20($sp)
.L800A100C:
/* B181AC 800A100C 0C034221 */  jal   Matrix_Pull
/* B181B0 800A1010 00000000 */   nop
/* B181B4 800A1014 8FAD006C */  lw    $t5, 0x6c($sp)
/* B181B8 800A1018 240100FF */  li    $at, 255
/* B181BC 800A101C 8FA40070 */  lw    $a0, 0x70($sp)
/* B181C0 800A1020 91A50007 */  lbu   $a1, 7($t5)
/* B181C4 800A1024 8FA60078 */  lw    $a2, 0x78($sp)
/* B181C8 800A1028 8FA7007C */  lw    $a3, 0x7c($sp)
/* B181CC 800A102C 10A1000B */  beq   $a1, $at, .L800A105C
/* B181D0 800A1030 8FAA0080 */   lw    $t2, 0x80($sp)
/* B181D4 800A1034 8FAE0084 */  lw    $t6, 0x84($sp)
/* B181D8 800A1038 8FB80088 */  lw    $t8, 0x88($sp)
/* B181DC 800A103C 8FB9008C */  lw    $t9, 0x8c($sp)
/* B181E0 800A1040 8FAB0090 */  lw    $t3, 0x90($sp)
/* B181E4 800A1044 AFAA0010 */  sw    $t2, 0x10($sp)
/* B181E8 800A1048 AFAE0014 */  sw    $t6, 0x14($sp)
/* B181EC 800A104C AFB80018 */  sw    $t8, 0x18($sp)
/* B181F0 800A1050 AFB9001C */  sw    $t9, 0x1c($sp)
/* B181F4 800A1054 0C028365 */  jal   func_800A0D94
/* B181F8 800A1058 AFAB0020 */   sw    $t3, 0x20($sp)
.L800A105C:
/* B181FC 800A105C 8FBF002C */  lw    $ra, 0x2c($sp)
/* B18200 800A1060 27BD0070 */  addiu $sp, $sp, 0x70
/* B18204 800A1064 03E00008 */  jr    $ra
/* B18208 800A1068 00000000 */   nop

