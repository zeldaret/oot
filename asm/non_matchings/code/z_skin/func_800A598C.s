.rdata
glabel D_80140680
    .asciz "../z_skin.c"
    .balign 4

glabel D_8014068C
    .asciz "../z_skin.c"
    .balign 4

.late_rodata
glabel D_801406E0
    .float 0.01

.text
glabel func_800A598C
/* B1CB2C 800A598C 27BDFEE8 */  addiu $sp, $sp, -0x118
/* B1CB30 800A5990 AFB10054 */  sw    $s1, 0x54($sp)
/* B1CB34 800A5994 00C08825 */  move  $s1, $a2
/* B1CB38 800A5998 AFB00050 */  sw    $s0, 0x50($sp)
/* B1CB3C 800A599C 00A08025 */  move  $s0, $a1
/* B1CB40 800A59A0 AFBF0074 */  sw    $ra, 0x74($sp)
/* B1CB44 800A59A4 AFA40118 */  sw    $a0, 0x118($sp)
/* B1CB48 800A59A8 AFA70124 */  sw    $a3, 0x124($sp)
/* B1CB4C 800A59AC 3C068014 */  lui   $a2, %hi(D_80140680) # $a2, 0x8014
/* B1CB50 800A59B0 AFBE0070 */  sw    $fp, 0x70($sp)
/* B1CB54 800A59B4 AFB7006C */  sw    $s7, 0x6c($sp)
/* B1CB58 800A59B8 AFB60068 */  sw    $s6, 0x68($sp)
/* B1CB5C 800A59BC AFB50064 */  sw    $s5, 0x64($sp)
/* B1CB60 800A59C0 AFB40060 */  sw    $s4, 0x60($sp)
/* B1CB64 800A59C4 AFB3005C */  sw    $s3, 0x5c($sp)
/* B1CB68 800A59C8 AFB20058 */  sw    $s2, 0x58($sp)
/* B1CB6C 800A59CC F7BE0048 */  sdc1  $f30, 0x48($sp)
/* B1CB70 800A59D0 F7BC0040 */  sdc1  $f28, 0x40($sp)
/* B1CB74 800A59D4 F7BA0038 */  sdc1  $f26, 0x38($sp)
/* B1CB78 800A59D8 F7B80030 */  sdc1  $f24, 0x30($sp)
/* B1CB7C 800A59DC F7B60028 */  sdc1  $f22, 0x28($sp)
/* B1CB80 800A59E0 F7B40020 */  sdc1  $f20, 0x20($sp)
/* B1CB84 800A59E4 24C60680 */  addiu $a2, %lo(D_80140680) # addiu $a2, $a2, 0x680
/* B1CB88 800A59E8 240700FE */  li    $a3, 254
/* B1CB8C 800A59EC 8FA50118 */  lw    $a1, 0x118($sp)
/* B1CB90 800A59F0 0C031AB1 */  jal   Graph_OpenDisps
/* B1CB94 800A59F4 27A400B8 */   addiu $a0, $sp, 0xb8
/* B1CB98 800A59F8 8E0E0000 */  lw    $t6, ($s0)
/* B1CB9C 800A59FC 3C0A8016 */  lui   $t2, %hi(gSegments) # $t2, 0x8016
/* B1CBA0 800A5A00 254A6FA8 */  addiu $t2, %lo(gSegments) # addiu $t2, $t2, 0x6fa8
/* B1CBA4 800A5A04 8DC30000 */  lw    $v1, ($t6)
/* B1CBA8 800A5A08 3C0B00FF */  lui   $t3, (0x00FFFFFF >> 16) # lui $t3, 0xff
/* B1CBAC 800A5A0C 356BFFFF */  ori   $t3, (0x00FFFFFF & 0xFFFF) # ori $t3, $t3, 0xffff
/* B1CBB0 800A5A10 00037900 */  sll   $t7, $v1, 4
/* B1CBB4 800A5A14 000FC702 */  srl   $t8, $t7, 0x1c
/* B1CBB8 800A5A18 0018C880 */  sll   $t9, $t8, 2
/* B1CBBC 800A5A1C 01597021 */  addu  $t6, $t2, $t9
/* B1CBC0 800A5A20 8DCF0000 */  lw    $t7, ($t6)
/* B1CBC4 800A5A24 006BC024 */  and   $t8, $v1, $t3
/* B1CBC8 800A5A28 3C0C8000 */  lui   $t4, 0x8000
/* B1CBCC 800A5A2C 01F8C821 */  addu  $t9, $t7, $t8
/* B1CBD0 800A5A30 032C4021 */  addu  $t0, $t9, $t4
/* B1CBD4 800A5A34 00117080 */  sll   $t6, $s1, 2
/* B1CBD8 800A5A38 010E7821 */  addu  $t7, $t0, $t6
/* B1CBDC 800A5A3C 8DE50000 */  lw    $a1, ($t7)
/* B1CBE0 800A5A40 3C128016 */  lui   $s2, %hi(D_801600C0) # $s2, 0x8016
/* B1CBE4 800A5A44 265200C0 */  addiu $s2, %lo(D_801600C0) # addiu $s2, $s2, 0xc0
/* B1CBE8 800A5A48 0005C900 */  sll   $t9, $a1, 4
/* B1CBEC 800A5A4C 00197702 */  srl   $t6, $t9, 0x1c
/* B1CBF0 800A5A50 000E7880 */  sll   $t7, $t6, 2
/* B1CBF4 800A5A54 014FC821 */  addu  $t9, $t2, $t7
/* B1CBF8 800A5A58 8F2E0000 */  lw    $t6, ($t9)
/* B1CBFC 800A5A5C 00ABC024 */  and   $t8, $a1, $t3
/* B1CC00 800A5A60 27B700DC */  addiu $s7, $sp, 0xdc
/* B1CC04 800A5A64 030E7821 */  addu  $t7, $t8, $t6
/* B1CC08 800A5A68 01ECC821 */  addu  $t9, $t7, $t4
/* B1CC0C 800A5A6C 8F26000C */  lw    $a2, 0xc($t9)
/* B1CC10 800A5A70 27B500D0 */  addiu $s5, $sp, 0xd0
/* B1CC14 800A5A74 27B40088 */  addiu $s4, $sp, 0x88
/* B1CC18 800A5A78 00067100 */  sll   $t6, $a2, 4
/* B1CC1C 800A5A7C 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1CC20 800A5A80 000FC880 */  sll   $t9, $t7, 2
/* B1CC24 800A5A84 01597021 */  addu  $t6, $t2, $t9
/* B1CC28 800A5A88 8DCF0000 */  lw    $t7, ($t6)
/* B1CC2C 800A5A8C 00CBC024 */  and   $t8, $a2, $t3
/* B1CC30 800A5A90 030FC821 */  addu  $t9, $t8, $t7
/* B1CC34 800A5A94 032C2021 */  addu  $a0, $t9, $t4
/* B1CC38 800A5A98 8C870004 */  lw    $a3, 4($a0)
/* B1CC3C 800A5A9C 00077100 */  sll   $t6, $a3, 4
/* B1CC40 800A5AA0 000EC702 */  srl   $t8, $t6, 0x1c
/* B1CC44 800A5AA4 00187880 */  sll   $t7, $t8, 2
/* B1CC48 800A5AA8 014FC821 */  addu  $t9, $t2, $t7
/* B1CC4C 800A5AAC 8F2E0000 */  lw    $t6, ($t9)
/* B1CC50 800A5AB0 00EBC024 */  and   $t8, $a3, $t3
/* B1CC54 800A5AB4 8E190048 */  lw    $t9, 0x48($s0)
/* B1CC58 800A5AB8 01D87821 */  addu  $t7, $t6, $t8
/* B1CC5C 800A5ABC 00117080 */  sll   $t6, $s1, 2
/* B1CC60 800A5AC0 01D17023 */  subu  $t6, $t6, $s1
/* B1CC64 800A5AC4 000E7080 */  sll   $t6, $t6, 2
/* B1CC68 800A5AC8 032E6821 */  addu  $t5, $t9, $t6
/* B1CC6C 800A5ACC 91B80000 */  lbu   $t8, ($t5)
/* B1CC70 800A5AD0 01ECB021 */  addu  $s6, $t7, $t4
/* B1CC74 800A5AD4 00187880 */  sll   $t7, $t8, 2
/* B1CC78 800A5AD8 01AFC821 */  addu  $t9, $t5, $t7
/* B1CC7C 800A5ADC 8F2E0004 */  lw    $t6, 4($t9)
/* B1CC80 800A5AE0 AFAE00EC */  sw    $t6, 0xec($sp)
/* B1CC84 800A5AE4 94890002 */  lhu   $t1, 2($a0)
/* B1CC88 800A5AE8 0009C100 */  sll   $t8, $t1, 4
/* B1CC8C 800A5AEC 0316F821 */  addu  $ra, $t8, $s6
/* B1CC90 800A5AF0 02DF082B */  sltu  $at, $s6, $ra
/* B1CC94 800A5AF4 102000A2 */  beqz  $at, .L800A5D80
/* B1CC98 800A5AF8 3C018014 */   lui   $at, %hi(D_801406E0)
/* B1CC9C 800A5AFC 4480F000 */  mtc1  $zero, $f30
/* B1CCA0 800A5B00 C43C06E0 */  lwc1  $f28, %lo(D_801406E0)($at)
/* B1CCA4 800A5B04 AFAD0100 */  sw    $t5, 0x100($sp)
/* B1CCA8 800A5B08 AFBF0080 */  sw    $ra, 0x80($sp)
/* B1CCAC 800A5B0C 8EC20008 */  lw    $v0, 8($s6)
.L800A5B10:
/* B1CCB0 800A5B10 3C068016 */  lui   $a2, %hi(gSegments) # $a2, 0x8016
/* B1CCB4 800A5B14 24C66FA8 */  addiu $a2, %lo(gSegments) # addiu $a2, $a2, 0x6fa8
/* B1CCB8 800A5B18 00027900 */  sll   $t7, $v0, 4
/* B1CCBC 800A5B1C 000FCF02 */  srl   $t9, $t7, 0x1c
/* B1CCC0 800A5B20 00197080 */  sll   $t6, $t9, 2
/* B1CCC4 800A5B24 00CEC021 */  addu  $t8, $a2, $t6
/* B1CCC8 800A5B28 8F0F0000 */  lw    $t7, ($t8)
/* B1CCCC 800A5B2C 3C0700FF */  lui   $a3, (0x00FFFFFF >> 16) # lui $a3, 0xff
/* B1CCD0 800A5B30 8EC3000C */  lw    $v1, 0xc($s6)
/* B1CCD4 800A5B34 34E7FFFF */  ori   $a3, (0x00FFFFFF & 0xFFFF) # ori $a3, $a3, 0xffff
/* B1CCD8 800A5B38 0047C824 */  and   $t9, $v0, $a3
/* B1CCDC 800A5B3C 01F97021 */  addu  $t6, $t7, $t9
/* B1CCE0 800A5B40 0003C100 */  sll   $t8, $v1, 4
/* B1CCE4 800A5B44 3C088000 */  li    $t0, 0x80000000 # 0.000000
/* B1CCE8 800A5B48 00187F02 */  srl   $t7, $t8, 0x1c
/* B1CCEC 800A5B4C 01C8F021 */  addu  $fp, $t6, $t0
/* B1CCF0 800A5B50 000FC880 */  sll   $t9, $t7, 2
/* B1CCF4 800A5B54 00D97021 */  addu  $t6, $a2, $t9
/* B1CCF8 800A5B58 8DD80000 */  lw    $t8, ($t6)
/* B1CCFC 800A5B5C 96C40002 */  lhu   $a0, 2($s6)
/* B1CD00 800A5B60 00677824 */  and   $t7, $v1, $a3
/* B1CD04 800A5B64 24050001 */  li    $a1, 1
/* B1CD08 800A5B68 030FC821 */  addu  $t9, $t8, $t7
/* B1CD0C 800A5B6C 14850018 */  bne   $a0, $a1, .L800A5BD0
/* B1CD10 800A5B70 03289821 */   addu  $s3, $t9, $t0
/* B1CD14 800A5B74 866E0002 */  lh    $t6, 2($s3)
/* B1CD18 800A5B78 27A500AC */  addiu $a1, $sp, 0xac
/* B1CD1C 800A5B7C 02E03025 */  move  $a2, $s7
/* B1CD20 800A5B80 448E2000 */  mtc1  $t6, $f4
/* B1CD24 800A5B84 00000000 */  nop   
/* B1CD28 800A5B88 468021A0 */  cvt.s.w $f6, $f4
/* B1CD2C 800A5B8C E7A600AC */  swc1  $f6, 0xac($sp)
/* B1CD30 800A5B90 86780004 */  lh    $t8, 4($s3)
/* B1CD34 800A5B94 44984000 */  mtc1  $t8, $f8
/* B1CD38 800A5B98 00000000 */  nop   
/* B1CD3C 800A5B9C 468042A0 */  cvt.s.w $f10, $f8
/* B1CD40 800A5BA0 E7AA00B0 */  swc1  $f10, 0xb0($sp)
/* B1CD44 800A5BA4 866F0006 */  lh    $t7, 6($s3)
/* B1CD48 800A5BA8 448F8000 */  mtc1  $t7, $f16
/* B1CD4C 800A5BAC 00000000 */  nop   
/* B1CD50 800A5BB0 468084A0 */  cvt.s.w $f18, $f16
/* B1CD54 800A5BB4 E7B200B4 */  swc1  $f18, 0xb4($sp)
/* B1CD58 800A5BB8 92790000 */  lbu   $t9, ($s3)
/* B1CD5C 800A5BBC 00197180 */  sll   $t6, $t9, 6
/* B1CD60 800A5BC0 0C029BBD */  jal   func_800A6EF4
/* B1CD64 800A5BC4 024E2021 */   addu  $a0, $s2, $t6
/* B1CD68 800A5BC8 1000005B */  b     .L800A5D38
/* B1CD6C 800A5BCC 96CE0004 */   lhu   $t6, 4($s6)
.L800A5BD0:
/* B1CD70 800A5BD0 8FB80124 */  lw    $t8, 0x124($sp)
/* B1CD74 800A5BD4 02608025 */  move  $s0, $s3
/* B1CD78 800A5BD8 5705001E */  bnel  $t8, $a1, .L800A5C54
/* B1CD7C 800A5BDC 0004C080 */   sll   $t8, $a0, 2
/* B1CD80 800A5BE0 96CF0004 */  lhu   $t7, 4($s6)
/* B1CD84 800A5BE4 27A500A0 */  addiu $a1, $sp, 0xa0
/* B1CD88 800A5BE8 02E03025 */  move  $a2, $s7
/* B1CD8C 800A5BEC 000FC880 */  sll   $t9, $t7, 2
/* B1CD90 800A5BF0 032FC821 */  addu  $t9, $t9, $t7
/* B1CD94 800A5BF4 0019C840 */  sll   $t9, $t9, 1
/* B1CD98 800A5BF8 03338021 */  addu  $s0, $t9, $s3
/* B1CD9C 800A5BFC 860E0002 */  lh    $t6, 2($s0)
/* B1CDA0 800A5C00 448E2000 */  mtc1  $t6, $f4
/* B1CDA4 800A5C04 00000000 */  nop   
/* B1CDA8 800A5C08 468021A0 */  cvt.s.w $f6, $f4
/* B1CDAC 800A5C0C E7A600A0 */  swc1  $f6, 0xa0($sp)
/* B1CDB0 800A5C10 86180004 */  lh    $t8, 4($s0)
/* B1CDB4 800A5C14 44984000 */  mtc1  $t8, $f8
/* B1CDB8 800A5C18 00000000 */  nop   
/* B1CDBC 800A5C1C 468042A0 */  cvt.s.w $f10, $f8
/* B1CDC0 800A5C20 E7AA00A4 */  swc1  $f10, 0xa4($sp)
/* B1CDC4 800A5C24 860F0006 */  lh    $t7, 6($s0)
/* B1CDC8 800A5C28 448F8000 */  mtc1  $t7, $f16
/* B1CDCC 800A5C2C 00000000 */  nop   
/* B1CDD0 800A5C30 468084A0 */  cvt.s.w $f18, $f16
/* B1CDD4 800A5C34 E7B200A8 */  swc1  $f18, 0xa8($sp)
/* B1CDD8 800A5C38 92190000 */  lbu   $t9, ($s0)
/* B1CDDC 800A5C3C 00197180 */  sll   $t6, $t9, 6
/* B1CDE0 800A5C40 0C029BBD */  jal   func_800A6EF4
/* B1CDE4 800A5C44 024E2021 */   addu  $a0, $s2, $t6
/* B1CDE8 800A5C48 1000003B */  b     .L800A5D38
/* B1CDEC 800A5C4C 96CE0004 */   lhu   $t6, 4($s6)
/* B1CDF0 800A5C50 0004C080 */  sll   $t8, $a0, 2
.L800A5C54:
/* B1CDF4 800A5C54 0304C021 */  addu  $t8, $t8, $a0
/* B1CDF8 800A5C58 0018C040 */  sll   $t8, $t8, 1
/* B1CDFC 800A5C5C 03138821 */  addu  $s1, $t8, $s3
/* B1CE00 800A5C60 0271082B */  sltu  $at, $s3, $s1
/* B1CE04 800A5C64 4600F586 */  mov.s $f22, $f30
/* B1CE08 800A5C68 4600F606 */  mov.s $f24, $f30
/* B1CE0C 800A5C6C 1020002E */  beqz  $at, .L800A5D28
/* B1CE10 800A5C70 4600F686 */   mov.s $f26, $f30
.L800A5C74:
/* B1CE14 800A5C74 920F0008 */  lbu   $t7, 8($s0)
/* B1CE18 800A5C78 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B1CE1C 800A5C7C 448F2000 */  mtc1  $t7, $f4
/* B1CE20 800A5C80 05E10004 */  bgez  $t7, .L800A5C94
/* B1CE24 800A5C84 468021A0 */   cvt.s.w $f6, $f4
/* B1CE28 800A5C88 44814000 */  mtc1  $at, $f8
/* B1CE2C 800A5C8C 00000000 */  nop   
/* B1CE30 800A5C90 46083180 */  add.s $f6, $f6, $f8
.L800A5C94:
/* B1CE34 800A5C94 86190002 */  lh    $t9, 2($s0)
/* B1CE38 800A5C98 461C3502 */  mul.s $f20, $f6, $f28
/* B1CE3C 800A5C9C 02802825 */  move  $a1, $s4
/* B1CE40 800A5CA0 44995000 */  mtc1  $t9, $f10
/* B1CE44 800A5CA4 02A03025 */  move  $a2, $s5
/* B1CE48 800A5CA8 46805420 */  cvt.s.w $f16, $f10
/* B1CE4C 800A5CAC E7B00088 */  swc1  $f16, 0x88($sp)
/* B1CE50 800A5CB0 860E0004 */  lh    $t6, 4($s0)
/* B1CE54 800A5CB4 448E9000 */  mtc1  $t6, $f18
/* B1CE58 800A5CB8 00000000 */  nop   
/* B1CE5C 800A5CBC 46809120 */  cvt.s.w $f4, $f18
/* B1CE60 800A5CC0 E7A4008C */  swc1  $f4, 0x8c($sp)
/* B1CE64 800A5CC4 86180006 */  lh    $t8, 6($s0)
/* B1CE68 800A5CC8 44984000 */  mtc1  $t8, $f8
/* B1CE6C 800A5CCC 00000000 */  nop   
/* B1CE70 800A5CD0 468041A0 */  cvt.s.w $f6, $f8
/* B1CE74 800A5CD4 E7A60090 */  swc1  $f6, 0x90($sp)
/* B1CE78 800A5CD8 920F0000 */  lbu   $t7, ($s0)
/* B1CE7C 800A5CDC 000FC980 */  sll   $t9, $t7, 6
/* B1CE80 800A5CE0 0C029BBD */  jal   func_800A6EF4
/* B1CE84 800A5CE4 02592021 */   addu  $a0, $s2, $t9
/* B1CE88 800A5CE8 C7A000D0 */  lwc1  $f0, 0xd0($sp)
/* B1CE8C 800A5CEC C7A200D4 */  lwc1  $f2, 0xd4($sp)
/* B1CE90 800A5CF0 C7AC00D8 */  lwc1  $f12, 0xd8($sp)
/* B1CE94 800A5CF4 46140002 */  mul.s $f0, $f0, $f20
/* B1CE98 800A5CF8 2610000A */  addiu $s0, $s0, 0xa
/* B1CE9C 800A5CFC 0211082B */  sltu  $at, $s0, $s1
/* B1CEA0 800A5D00 46141082 */  mul.s $f2, $f2, $f20
/* B1CEA4 800A5D04 00000000 */  nop   
/* B1CEA8 800A5D08 46146302 */  mul.s $f12, $f12, $f20
/* B1CEAC 800A5D0C E7A000D0 */  swc1  $f0, 0xd0($sp)
/* B1CEB0 800A5D10 4600D680 */  add.s $f26, $f26, $f0
/* B1CEB4 800A5D14 E7A200D4 */  swc1  $f2, 0xd4($sp)
/* B1CEB8 800A5D18 4602C600 */  add.s $f24, $f24, $f2
/* B1CEBC 800A5D1C E7AC00D8 */  swc1  $f12, 0xd8($sp)
/* B1CEC0 800A5D20 1420FFD4 */  bnez  $at, .L800A5C74
/* B1CEC4 800A5D24 460CB580 */   add.s $f22, $f22, $f12
.L800A5D28:
/* B1CEC8 800A5D28 E7BA00DC */  swc1  $f26, 0xdc($sp)
/* B1CECC 800A5D2C E7B800E0 */  swc1  $f24, 0xe0($sp)
/* B1CED0 800A5D30 E7B600E4 */  swc1  $f22, 0xe4($sp)
/* B1CED4 800A5D34 96CE0004 */  lhu   $t6, 4($s6)
.L800A5D38:
/* B1CED8 800A5D38 03C02825 */  move  $a1, $fp
/* B1CEDC 800A5D3C 02C03025 */  move  $a2, $s6
/* B1CEE0 800A5D40 000EC080 */  sll   $t8, $t6, 2
/* B1CEE4 800A5D44 030EC021 */  addu  $t8, $t8, $t6
/* B1CEE8 800A5D48 0018C040 */  sll   $t8, $t8, 1
/* B1CEEC 800A5D4C 02787821 */  addu  $t7, $s3, $t8
/* B1CEF0 800A5D50 91F90000 */  lbu   $t9, ($t7)
/* B1CEF4 800A5D54 AFB70010 */  sw    $s7, 0x10($sp)
/* B1CEF8 800A5D58 8FA700EC */  lw    $a3, 0xec($sp)
/* B1CEFC 800A5D5C 00197180 */  sll   $t6, $t9, 6
/* B1CF00 800A5D60 0C0295F0 */  jal   func_800A57C0
/* B1CF04 800A5D64 024E2021 */   addu  $a0, $s2, $t6
/* B1CF08 800A5D68 8FB80080 */  lw    $t8, 0x80($sp)
/* B1CF0C 800A5D6C 26D60010 */  addiu $s6, $s6, 0x10
/* B1CF10 800A5D70 02D8082B */  sltu  $at, $s6, $t8
/* B1CF14 800A5D74 5420FF66 */  bnezl $at, .L800A5B10
/* B1CF18 800A5D78 8EC20008 */   lw    $v0, 8($s6)
/* B1CF1C 800A5D7C 8FAD0100 */  lw    $t5, 0x100($sp)
.L800A5D80:
/* B1CF20 800A5D80 8FA50118 */  lw    $a1, 0x118($sp)
/* B1CF24 800A5D84 3C19DB06 */  lui   $t9, (0xDB060020 >> 16) # lui $t9, 0xdb06
/* B1CF28 800A5D88 37390020 */  ori   $t9, (0xDB060020 & 0xFFFF) # ori $t9, $t9, 0x20
/* B1CF2C 800A5D8C 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B1CF30 800A5D90 3C068014 */  lui   $a2, %hi(D_8014068C) # $a2, 0x8014
/* B1CF34 800A5D94 24C6068C */  addiu $a2, %lo(D_8014068C) # addiu $a2, $a2, 0x68c
/* B1CF38 800A5D98 246F0008 */  addiu $t7, $v1, 8
/* B1CF3C 800A5D9C ACAF02C0 */  sw    $t7, 0x2c0($a1)
/* B1CF40 800A5DA0 AC790000 */  sw    $t9, ($v1)
/* B1CF44 800A5DA4 91AE0000 */  lbu   $t6, ($t5)
/* B1CF48 800A5DA8 27A400B8 */  addiu $a0, $sp, 0xb8
/* B1CF4C 800A5DAC 000EC080 */  sll   $t8, $t6, 2
/* B1CF50 800A5DB0 01B87821 */  addu  $t7, $t5, $t8
/* B1CF54 800A5DB4 8DF90004 */  lw    $t9, 4($t7)
/* B1CF58 800A5DB8 24180001 */  li    $t8, 1
/* B1CF5C 800A5DBC AC790004 */  sw    $t9, 4($v1)
/* B1CF60 800A5DC0 91AE0000 */  lbu   $t6, ($t5)
/* B1CF64 800A5DC4 55C00004 */  bnezl $t6, .L800A5DD8
/* B1CF68 800A5DC8 A1A00000 */   sb    $zero, ($t5)
/* B1CF6C 800A5DCC 10000002 */  b     .L800A5DD8
/* B1CF70 800A5DD0 A1B80000 */   sb    $t8, ($t5)
/* B1CF74 800A5DD4 A1A00000 */  sb    $zero, ($t5)
.L800A5DD8:
/* B1CF78 800A5DD8 0C031AD5 */  jal   Graph_CloseDisps
/* B1CF7C 800A5DDC 24070158 */   li    $a3, 344
/* B1CF80 800A5DE0 8FBF0074 */  lw    $ra, 0x74($sp)
/* B1CF84 800A5DE4 D7B40020 */  ldc1  $f20, 0x20($sp)
/* B1CF88 800A5DE8 D7B60028 */  ldc1  $f22, 0x28($sp)
/* B1CF8C 800A5DEC D7B80030 */  ldc1  $f24, 0x30($sp)
/* B1CF90 800A5DF0 D7BA0038 */  ldc1  $f26, 0x38($sp)
/* B1CF94 800A5DF4 D7BC0040 */  ldc1  $f28, 0x40($sp)
/* B1CF98 800A5DF8 D7BE0048 */  ldc1  $f30, 0x48($sp)
/* B1CF9C 800A5DFC 8FB00050 */  lw    $s0, 0x50($sp)
/* B1CFA0 800A5E00 8FB10054 */  lw    $s1, 0x54($sp)
/* B1CFA4 800A5E04 8FB20058 */  lw    $s2, 0x58($sp)
/* B1CFA8 800A5E08 8FB3005C */  lw    $s3, 0x5c($sp)
/* B1CFAC 800A5E0C 8FB40060 */  lw    $s4, 0x60($sp)
/* B1CFB0 800A5E10 8FB50064 */  lw    $s5, 0x64($sp)
/* B1CFB4 800A5E14 8FB60068 */  lw    $s6, 0x68($sp)
/* B1CFB8 800A5E18 8FB7006C */  lw    $s7, 0x6c($sp)
/* B1CFBC 800A5E1C 8FBE0070 */  lw    $fp, 0x70($sp)
/* B1CFC0 800A5E20 03E00008 */  jr    $ra
/* B1CFC4 800A5E24 27BD0118 */   addiu $sp, $sp, 0x118

