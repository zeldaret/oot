.rdata
glabel D_80140238
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014024C
    .asciz "out = %08x\n"
    .balign 4

glabel D_80140258
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014026C
    .asciz "ref_tbl = %08x\n"
    .balign 4

glabel D_8014027C
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140290
    .asciz "frame_tbl = %08x\n"
    .balign 4

glabel D_801402A4
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801402B8
    .asciz "tbl = %08x\n"
    .balign 4

.text
glabel func_800A1D8C
/* B18F2C 800A1D8C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B18F30 800A1D90 00047100 */  sll   $t6, $a0, 4
/* B18F34 800A1D94 3C098016 */  lui   $t1, %hi(gSegments) # $t1, 0x8016
/* B18F38 800A1D98 000E7F02 */  srl   $t7, $t6, 0x1c
/* B18F3C 800A1D9C 25296FA8 */  addiu $t1, %lo(gSegments) # addiu $t1, $t1, 0x6fa8
/* B18F40 800A1DA0 000FC080 */  sll   $t8, $t7, 2
/* B18F44 800A1DA4 0138C821 */  addu  $t9, $t1, $t8
/* B18F48 800A1DA8 8F2D0000 */  lw    $t5, ($t9)
/* B18F4C 800A1DAC 3C0A00FF */  lui   $t2, (0x00FFFFFF >> 16) # lui $t2, 0xff
/* B18F50 800A1DB0 354AFFFF */  ori   $t2, (0x00FFFFFF & 0xFFFF) # ori $t2, $t2, 0xffff
/* B18F54 800A1DB4 008A7024 */  and   $t6, $a0, $t2
/* B18F58 800A1DB8 3C0B8000 */  lui   $t3, 0x8000
/* B18F5C 800A1DBC 01AE7821 */  addu  $t7, $t5, $t6
/* B18F60 800A1DC0 AFBF003C */  sw    $ra, 0x3c($sp)
/* B18F64 800A1DC4 AFBE0038 */  sw    $fp, 0x38($sp)
/* B18F68 800A1DC8 AFB70034 */  sw    $s7, 0x34($sp)
/* B18F6C 800A1DCC AFB60030 */  sw    $s6, 0x30($sp)
/* B18F70 800A1DD0 AFB5002C */  sw    $s5, 0x2c($sp)
/* B18F74 800A1DD4 AFB40028 */  sw    $s4, 0x28($sp)
/* B18F78 800A1DD8 AFB30024 */  sw    $s3, 0x24($sp)
/* B18F7C 800A1DDC AFB20020 */  sw    $s2, 0x20($sp)
/* B18F80 800A1DE0 AFB1001C */  sw    $s1, 0x1c($sp)
/* B18F84 800A1DE4 AFB00018 */  sw    $s0, 0x18($sp)
/* B18F88 800A1DE8 01EB1021 */  addu  $v0, $t7, $t3
/* B18F8C 800A1DEC 8C430008 */  lw    $v1, 8($v0)
/* B18F90 800A1DF0 8C480004 */  lw    $t0, 4($v0)
/* B18F94 800A1DF4 00E08025 */  move  $s0, $a3
/* B18F98 800A1DF8 0003C100 */  sll   $t8, $v1, 4
/* B18F9C 800A1DFC 0018CF02 */  srl   $t9, $t8, 0x1c
/* B18FA0 800A1E00 00196880 */  sll   $t5, $t9, 2
/* B18FA4 800A1E04 012D7021 */  addu  $t6, $t1, $t5
/* B18FA8 800A1E08 8DCF0000 */  lw    $t7, ($t6)
/* B18FAC 800A1E0C 006AC024 */  and   $t8, $v1, $t2
/* B18FB0 800A1E10 00086900 */  sll   $t5, $t0, 4
/* B18FB4 800A1E14 01F8C821 */  addu  $t9, $t7, $t8
/* B18FB8 800A1E18 000D7702 */  srl   $t6, $t5, 0x1c
/* B18FBC 800A1E1C 000E7880 */  sll   $t7, $t6, 2
/* B18FC0 800A1E20 032B8821 */  addu  $s1, $t9, $t3
/* B18FC4 800A1E24 012FC021 */  addu  $t8, $t1, $t7
/* B18FC8 800A1E28 8F190000 */  lw    $t9, ($t8)
/* B18FCC 800A1E2C 010A6824 */  and   $t5, $t0, $t2
/* B18FD0 800A1E30 00C0B025 */  move  $s6, $a2
/* B18FD4 800A1E34 032D7021 */  addu  $t6, $t9, $t5
/* B18FD8 800A1E38 01CB9021 */  addu  $s2, $t6, $t3
/* B18FDC 800A1E3C 944C000C */  lhu   $t4, 0xc($v0)
/* B18FE0 800A1E40 18C00055 */  blez  $a2, .L800A1F98
/* B18FE4 800A1E44 0000A025 */   move  $s4, $zero
/* B18FE8 800A1E48 00057840 */  sll   $t7, $a1, 1
/* B18FEC 800A1E4C 3C1E8014 */  lui   $fp, %hi(D_8014024C) # $fp, 0x8014
/* B18FF0 800A1E50 3C178014 */  lui   $s7, %hi(D_80140238) # $s7, 0x8014
/* B18FF4 800A1E54 26F70238 */  addiu $s7, %lo(D_80140238) # addiu $s7, $s7, 0x238
/* B18FF8 800A1E58 27DE024C */  addiu $fp, %lo(D_8014024C) # addiu $fp, $fp, 0x24c
/* B18FFC 800A1E5C 01F29821 */  addu  $s3, $t7, $s2
/* B19000 800A1E60 0180A825 */  move  $s5, $t4
.L800A1E64:
/* B19004 800A1E64 12000007 */  beqz  $s0, .L800A1E84
/* B19008 800A1E68 02E02025 */   move  $a0, $s7
/* B1900C 800A1E6C 12200005 */  beqz  $s1, .L800A1E84
/* B19010 800A1E70 00000000 */   nop   
/* B19014 800A1E74 12600003 */  beqz  $s3, .L800A1E84
/* B19018 800A1E78 00000000 */   nop   
/* B1901C 800A1E7C 5640001F */  bnezl $s2, .L800A1EFC
/* B19020 800A1E80 96220000 */   lhu   $v0, ($s1)
.L800A1E84:
/* B19024 800A1E84 0C000B84 */  jal   LogUtils_LogThreadId
/* B19028 800A1E88 24050570 */   li    $a1, 1392
/* B1902C 800A1E8C 03C02025 */  move  $a0, $fp
/* B19030 800A1E90 0C00084C */  jal   osSyncPrintf
/* B19034 800A1E94 02002825 */   move  $a1, $s0
/* B19038 800A1E98 3C048014 */  lui   $a0, %hi(D_80140258) # $a0, 0x8014
/* B1903C 800A1E9C 24840258 */  addiu $a0, %lo(D_80140258) # addiu $a0, $a0, 0x258
/* B19040 800A1EA0 0C000B84 */  jal   LogUtils_LogThreadId
/* B19044 800A1EA4 24050571 */   li    $a1, 1393
/* B19048 800A1EA8 3C048014 */  lui   $a0, %hi(D_8014026C) # $a0, 0x8014
/* B1904C 800A1EAC 2484026C */  addiu $a0, %lo(D_8014026C) # addiu $a0, $a0, 0x26c
/* B19050 800A1EB0 0C00084C */  jal   osSyncPrintf
/* B19054 800A1EB4 02202825 */   move  $a1, $s1
/* B19058 800A1EB8 3C048014 */  lui   $a0, %hi(D_8014027C) # $a0, 0x8014
/* B1905C 800A1EBC 2484027C */  addiu $a0, %lo(D_8014027C) # addiu $a0, $a0, 0x27c
/* B19060 800A1EC0 0C000B84 */  jal   LogUtils_LogThreadId
/* B19064 800A1EC4 24050572 */   li    $a1, 1394
/* B19068 800A1EC8 3C048014 */  lui   $a0, %hi(D_80140290) # $a0, 0x8014
/* B1906C 800A1ECC 24840290 */  addiu $a0, %lo(D_80140290) # addiu $a0, $a0, 0x290
/* B19070 800A1ED0 0C00084C */  jal   osSyncPrintf
/* B19074 800A1ED4 02602825 */   move  $a1, $s3
/* B19078 800A1ED8 3C048014 */  lui   $a0, %hi(D_801402A4) # $a0, 0x8014
/* B1907C 800A1EDC 248402A4 */  addiu $a0, %lo(D_801402A4) # addiu $a0, $a0, 0x2a4
/* B19080 800A1EE0 0C000B84 */  jal   LogUtils_LogThreadId
/* B19084 800A1EE4 24050573 */   li    $a1, 1395
/* B19088 800A1EE8 3C048014 */  lui   $a0, %hi(D_801402B8) # $a0, 0x8014
/* B1908C 800A1EEC 248402B8 */  addiu $a0, %lo(D_801402B8) # addiu $a0, $a0, 0x2b8
/* B19090 800A1EF0 0C00084C */  jal   osSyncPrintf
/* B19094 800A1EF4 02402825 */   move  $a1, $s2
/* B19098 800A1EF8 96220000 */  lhu   $v0, ($s1)
.L800A1EFC:
/* B1909C 800A1EFC 26940001 */  addiu $s4, $s4, 1
/* B190A0 800A1F00 0055082A */  slt   $at, $v0, $s5
/* B190A4 800A1F04 14200006 */  bnez  $at, .L800A1F20
/* B190A8 800A1F08 00027040 */   sll   $t6, $v0, 1
/* B190AC 800A1F0C 0002C040 */  sll   $t8, $v0, 1
/* B190B0 800A1F10 0278C821 */  addu  $t9, $s3, $t8
/* B190B4 800A1F14 872D0000 */  lh    $t5, ($t9)
/* B190B8 800A1F18 10000004 */  b     .L800A1F2C
/* B190BC 800A1F1C A60D0000 */   sh    $t5, ($s0)
.L800A1F20:
/* B190C0 800A1F20 024E7821 */  addu  $t7, $s2, $t6
/* B190C4 800A1F24 85F80000 */  lh    $t8, ($t7)
/* B190C8 800A1F28 A6180000 */  sh    $t8, ($s0)
.L800A1F2C:
/* B190CC 800A1F2C 96220002 */  lhu   $v0, 2($s1)
/* B190D0 800A1F30 0055082A */  slt   $at, $v0, $s5
/* B190D4 800A1F34 14200006 */  bnez  $at, .L800A1F50
/* B190D8 800A1F38 00027840 */   sll   $t7, $v0, 1
/* B190DC 800A1F3C 0002C840 */  sll   $t9, $v0, 1
/* B190E0 800A1F40 02796821 */  addu  $t5, $s3, $t9
/* B190E4 800A1F44 85AE0000 */  lh    $t6, ($t5)
/* B190E8 800A1F48 10000004 */  b     .L800A1F5C
/* B190EC 800A1F4C A60E0002 */   sh    $t6, 2($s0)
.L800A1F50:
/* B190F0 800A1F50 024FC021 */  addu  $t8, $s2, $t7
/* B190F4 800A1F54 87190000 */  lh    $t9, ($t8)
/* B190F8 800A1F58 A6190002 */  sh    $t9, 2($s0)
.L800A1F5C:
/* B190FC 800A1F5C 96220004 */  lhu   $v0, 4($s1)
/* B19100 800A1F60 26310006 */  addiu $s1, $s1, 6
/* B19104 800A1F64 0055082A */  slt   $at, $v0, $s5
/* B19108 800A1F68 14200006 */  bnez  $at, .L800A1F84
/* B1910C 800A1F6C 0002C040 */   sll   $t8, $v0, 1
/* B19110 800A1F70 00026840 */  sll   $t5, $v0, 1
/* B19114 800A1F74 026D7021 */  addu  $t6, $s3, $t5
/* B19118 800A1F78 85CF0000 */  lh    $t7, ($t6)
/* B1911C 800A1F7C 10000004 */  b     .L800A1F90
/* B19120 800A1F80 A60F0004 */   sh    $t7, 4($s0)
.L800A1F84:
/* B19124 800A1F84 0258C821 */  addu  $t9, $s2, $t8
/* B19128 800A1F88 872D0000 */  lh    $t5, ($t9)
/* B1912C 800A1F8C A60D0004 */  sh    $t5, 4($s0)
.L800A1F90:
/* B19130 800A1F90 1696FFB4 */  bne   $s4, $s6, .L800A1E64
/* B19134 800A1F94 26100006 */   addiu $s0, $s0, 6
.L800A1F98:
/* B19138 800A1F98 8FBF003C */  lw    $ra, 0x3c($sp)
/* B1913C 800A1F9C 8FB00018 */  lw    $s0, 0x18($sp)
/* B19140 800A1FA0 8FB1001C */  lw    $s1, 0x1c($sp)
/* B19144 800A1FA4 8FB20020 */  lw    $s2, 0x20($sp)
/* B19148 800A1FA8 8FB30024 */  lw    $s3, 0x24($sp)
/* B1914C 800A1FAC 8FB40028 */  lw    $s4, 0x28($sp)
/* B19150 800A1FB0 8FB5002C */  lw    $s5, 0x2c($sp)
/* B19154 800A1FB4 8FB60030 */  lw    $s6, 0x30($sp)
/* B19158 800A1FB8 8FB70034 */  lw    $s7, 0x34($sp)
/* B1915C 800A1FBC 8FBE0038 */  lw    $fp, 0x38($sp)
/* B19160 800A1FC0 03E00008 */  jr    $ra
/* B19164 800A1FC4 27BD0040 */   addiu $sp, $sp, 0x40

