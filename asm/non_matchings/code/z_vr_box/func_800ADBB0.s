.late_rodata
glabel jtbl_80142D90
    .word L800ADC10
    .word L800ADD10
    .word L800ADC10
    .word L800ADD10
    .word L800ADE10
    .word L800ADE10

.text
glabel func_800ADBB0
/* B24D50 800ADBB0 27BDFBD0 */  addiu $sp, $sp, -0x430
/* B24D54 800ADBB4 AFB70024 */  sw    $s7, 0x24($sp)
/* B24D58 800ADBB8 8FB70450 */  lw    $s7, 0x450($sp)
/* B24D5C 800ADBBC AFB20010 */  sw    $s2, 0x10($sp)
/* B24D60 800ADBC0 AFB00008 */  sw    $s0, 8($sp)
/* B24D64 800ADBC4 2EE10006 */  sltiu $at, $s7, 6
/* B24D68 800ADBC8 00808025 */  move  $s0, $a0
/* B24D6C 800ADBCC 00E09025 */  move  $s2, $a3
/* B24D70 800ADBD0 AFBF002C */  sw    $ra, 0x2c($sp)
/* B24D74 800ADBD4 AFBE0028 */  sw    $fp, 0x28($sp)
/* B24D78 800ADBD8 AFB60020 */  sw    $s6, 0x20($sp)
/* B24D7C 800ADBDC AFB5001C */  sw    $s5, 0x1c($sp)
/* B24D80 800ADBE0 AFB40018 */  sw    $s4, 0x18($sp)
/* B24D84 800ADBE4 AFB30014 */  sw    $s3, 0x14($sp)
/* B24D88 800ADBE8 AFB1000C */  sw    $s1, 0xc($sp)
/* B24D8C 800ADBEC AFA50434 */  sw    $a1, 0x434($sp)
/* B24D90 800ADBF0 102000C5 */  beqz  $at, .L800ADF08
/* B24D94 800ADBF4 AFA60438 */   sw    $a2, 0x438($sp)
/* B24D98 800ADBF8 00177080 */  sll   $t6, $s7, 2
/* B24D9C 800ADBFC 3C018014 */  lui   $at, %hi(jtbl_80142D90)
/* B24DA0 800ADC00 002E0821 */  addu  $at, $at, $t6
/* B24DA4 800ADC04 8C2E2D90 */  lw    $t6, %lo(jtbl_80142D90)($at)
/* B24DA8 800ADC08 01C00008 */  jr    $t6
/* B24DAC 800ADC0C 00000000 */   nop   

glabel L800ADC10
/* B24DB0 800ADC10 8FAB0448 */  lw    $t3, 0x448($sp)
/* B24DB4 800ADC14 3C148013 */  lui   $s4, %hi(D_8012AD2C) # $s4, 0x8013
/* B24DB8 800ADC18 3C138013 */  lui   $s3, %hi(D_8012AD20) # $s3, 0x8013
/* B24DBC 800ADC1C 8FAA0440 */  lw    $t2, 0x440($sp)
/* B24DC0 800ADC20 2673AD20 */  addiu $s3, %lo(D_8012AD20) # addiu $s3, $s3, -0x52e0
/* B24DC4 800ADC24 2694AD2C */  addiu $s4, %lo(D_8012AD2C) # addiu $s4, $s4, -0x52d4
/* B24DC8 800ADC28 27A501F0 */  addiu $a1, $sp, 0x1f0
/* B24DCC 800ADC2C 27A60358 */  addiu $a2, $sp, 0x358
/* B24DD0 800ADC30 27A702A4 */  addiu $a3, $sp, 0x2a4
/* B24DD4 800ADC34 27A8013C */  addiu $t0, $sp, 0x13c
/* B24DD8 800ADC38 27A40088 */  addiu $a0, $sp, 0x88
/* B24DDC 800ADC3C 8FB5044C */  lw    $s5, 0x44c($sp)
/* B24DE0 800ADC40 8FB10444 */  lw    $s1, 0x444($sp)
/* B24DE4 800ADC44 27AC013C */  addiu $t4, $sp, 0x13c
/* B24DE8 800ADC48 024BB021 */  addu  $s6, $s2, $t3
.L800ADC4C:
/* B24DEC 800ADC4C ACB10000 */  sw    $s1, ($a1)
/* B24DF0 800ADC50 ACD20000 */  sw    $s2, ($a2)
/* B24DF4 800ADC54 ACEA0000 */  sw    $t2, ($a3)
/* B24DF8 800ADC58 3C0F8013 */  lui   $t7, %hi(D_8012AD20) # $t7, 0x8013
/* B24DFC 800ADC5C 85EFAD20 */  lh    $t7, %lo(D_8012AD20)($t7)
/* B24E00 800ADC60 240D0001 */  li    $t5, 1
/* B24E04 800ADC64 000DC040 */  sll   $t8, $t5, 1
/* B24E08 800ADC68 86890000 */  lh    $t1, ($s4)
/* B24E0C 800ADC6C 02781821 */  addu  $v1, $s3, $t8
/* B24E10 800ADC70 02CB1021 */  addu  $v0, $s6, $t3
/* B24E14 800ADC74 ACC20008 */  sw    $v0, 8($a2)
/* B24E18 800ADC78 004B1021 */  addu  $v0, $v0, $t3
/* B24E1C 800ADC7C AD0F0000 */  sw    $t7, ($t0)
/* B24E20 800ADC80 846F0004 */  lh    $t7, 4($v1)
/* B24E24 800ADC84 846E0002 */  lh    $t6, 2($v1)
/* B24E28 800ADC88 84780006 */  lh    $t8, 6($v1)
/* B24E2C 800ADC8C 84790000 */  lh    $t9, ($v1)
/* B24E30 800ADC90 ACC2000C */  sw    $v0, 0xc($a2)
/* B24E34 800ADC94 24840014 */  addiu $a0, $a0, 0x14
/* B24E38 800ADC98 008C082B */  sltu  $at, $a0, $t4
/* B24E3C 800ADC9C 004B1021 */  addu  $v0, $v0, $t3
/* B24E40 800ADCA0 ACEA0010 */  sw    $t2, 0x10($a3)
/* B24E44 800ADCA4 ACEA000C */  sw    $t2, 0xc($a3)
/* B24E48 800ADCA8 ACEA0008 */  sw    $t2, 8($a3)
/* B24E4C 800ADCAC ACEA0004 */  sw    $t2, 4($a3)
/* B24E50 800ADCB0 26940002 */  addiu $s4, $s4, 2
/* B24E54 800ADCB4 ACC20010 */  sw    $v0, 0x10($a2)
/* B24E58 800ADCB8 ACB10010 */  sw    $s1, 0x10($a1)
/* B24E5C 800ADCBC ACB1000C */  sw    $s1, 0xc($a1)
/* B24E60 800ADCC0 ACB10008 */  sw    $s1, 8($a1)
/* B24E64 800ADCC4 24A50014 */  addiu $a1, $a1, 0x14
/* B24E68 800ADCC8 24C60014 */  addiu $a2, $a2, 0x14
/* B24E6C 800ADCCC 24E70014 */  addiu $a3, $a3, 0x14
/* B24E70 800ADCD0 25080014 */  addiu $t0, $t0, 0x14
/* B24E74 800ADCD4 ACB1FFF0 */  sw    $s1, -0x10($a1)
/* B24E78 800ADCD8 ACD6FFF0 */  sw    $s6, -0x10($a2)
/* B24E7C 800ADCDC 01555021 */  addu  $t2, $t2, $s5
/* B24E80 800ADCE0 AC89FFEC */  sw    $t1, -0x14($a0)
/* B24E84 800ADCE4 AC89FFF4 */  sw    $t1, -0xc($a0)
/* B24E88 800ADCE8 AC89FFF8 */  sw    $t1, -8($a0)
/* B24E8C 800ADCEC AC89FFFC */  sw    $t1, -4($a0)
/* B24E90 800ADCF0 AC89FFF0 */  sw    $t1, -0x10($a0)
/* B24E94 800ADCF4 AD0FFFF8 */  sw    $t7, -8($t0)
/* B24E98 800ADCF8 AD0EFFF4 */  sw    $t6, -0xc($t0)
/* B24E9C 800ADCFC AD18FFFC */  sw    $t8, -4($t0)
/* B24EA0 800ADD00 1420FFD2 */  bnez  $at, .L800ADC4C
/* B24EA4 800ADD04 AD19FFF0 */   sw    $t9, -0x10($t0)
/* B24EA8 800ADD08 1000007F */  b     .L800ADF08
/* B24EAC 800ADD0C 00000000 */   nop   

glabel L800ADD10
/* B24EB0 800ADD10 8FAB0448 */  lw    $t3, 0x448($sp)
/* B24EB4 800ADD14 8FB10444 */  lw    $s1, 0x444($sp)
/* B24EB8 800ADD18 3C148013 */  lui   $s4, %hi(D_8012AD2C) # $s4, 0x8013
/* B24EBC 800ADD1C 3C138013 */  lui   $s3, %hi(D_8012AD20) # $s3, 0x8013
/* B24EC0 800ADD20 8FAA0440 */  lw    $t2, 0x440($sp)
/* B24EC4 800ADD24 2673AD20 */  addiu $s3, %lo(D_8012AD20) # addiu $s3, $s3, -0x52e0
/* B24EC8 800ADD28 2694AD2C */  addiu $s4, %lo(D_8012AD2C) # addiu $s4, $s4, -0x52d4
/* B24ECC 800ADD2C 27A501F0 */  addiu $a1, $sp, 0x1f0
/* B24ED0 800ADD30 27A60358 */  addiu $a2, $sp, 0x358
/* B24ED4 800ADD34 27A702A4 */  addiu $a3, $sp, 0x2a4
/* B24ED8 800ADD38 27A8013C */  addiu $t0, $sp, 0x13c
/* B24EDC 800ADD3C 27A40088 */  addiu $a0, $sp, 0x88
/* B24EE0 800ADD40 8FB5044C */  lw    $s5, 0x44c($sp)
/* B24EE4 800ADD44 27AC013C */  addiu $t4, $sp, 0x13c
/* B24EE8 800ADD48 022BB021 */  addu  $s6, $s1, $t3
.L800ADD4C:
/* B24EEC 800ADD4C ACD20000 */  sw    $s2, ($a2)
/* B24EF0 800ADD50 ACEA0000 */  sw    $t2, ($a3)
/* B24EF4 800ADD54 ACB10000 */  sw    $s1, ($a1)
/* B24EF8 800ADD58 3C198013 */  lui   $t9, %hi(D_8012AD20) # $t9, 0x8013
/* B24EFC 800ADD5C 8739AD20 */  lh    $t9, %lo(D_8012AD20)($t9)
/* B24F00 800ADD60 240D0001 */  li    $t5, 1
/* B24F04 800ADD64 000D7040 */  sll   $t6, $t5, 1
/* B24F08 800ADD68 86890000 */  lh    $t1, ($s4)
/* B24F0C 800ADD6C 026E1821 */  addu  $v1, $s3, $t6
/* B24F10 800ADD70 02CB1021 */  addu  $v0, $s6, $t3
/* B24F14 800ADD74 ACA20008 */  sw    $v0, 8($a1)
/* B24F18 800ADD78 004B1021 */  addu  $v0, $v0, $t3
/* B24F1C 800ADD7C AD190000 */  sw    $t9, ($t0)
/* B24F20 800ADD80 84790004 */  lh    $t9, 4($v1)
/* B24F24 800ADD84 84780002 */  lh    $t8, 2($v1)
/* B24F28 800ADD88 846E0006 */  lh    $t6, 6($v1)
/* B24F2C 800ADD8C 846F0000 */  lh    $t7, ($v1)
/* B24F30 800ADD90 ACA2000C */  sw    $v0, 0xc($a1)
/* B24F34 800ADD94 24840014 */  addiu $a0, $a0, 0x14
/* B24F38 800ADD98 008C082B */  sltu  $at, $a0, $t4
/* B24F3C 800ADD9C 004B1021 */  addu  $v0, $v0, $t3
/* B24F40 800ADDA0 ACEA0010 */  sw    $t2, 0x10($a3)
/* B24F44 800ADDA4 ACEA000C */  sw    $t2, 0xc($a3)
/* B24F48 800ADDA8 ACEA0008 */  sw    $t2, 8($a3)
/* B24F4C 800ADDAC ACEA0004 */  sw    $t2, 4($a3)
/* B24F50 800ADDB0 26940002 */  addiu $s4, $s4, 2
/* B24F54 800ADDB4 ACA20010 */  sw    $v0, 0x10($a1)
/* B24F58 800ADDB8 ACD20010 */  sw    $s2, 0x10($a2)
/* B24F5C 800ADDBC ACD2000C */  sw    $s2, 0xc($a2)
/* B24F60 800ADDC0 ACD20008 */  sw    $s2, 8($a2)
/* B24F64 800ADDC4 24A50014 */  addiu $a1, $a1, 0x14
/* B24F68 800ADDC8 24C60014 */  addiu $a2, $a2, 0x14
/* B24F6C 800ADDCC 24E70014 */  addiu $a3, $a3, 0x14
/* B24F70 800ADDD0 25080014 */  addiu $t0, $t0, 0x14
/* B24F74 800ADDD4 ACD2FFF0 */  sw    $s2, -0x10($a2)
/* B24F78 800ADDD8 ACB6FFF0 */  sw    $s6, -0x10($a1)
/* B24F7C 800ADDDC 01555021 */  addu  $t2, $t2, $s5
/* B24F80 800ADDE0 AC89FFEC */  sw    $t1, -0x14($a0)
/* B24F84 800ADDE4 AC89FFF4 */  sw    $t1, -0xc($a0)
/* B24F88 800ADDE8 AC89FFF8 */  sw    $t1, -8($a0)
/* B24F8C 800ADDEC AC89FFFC */  sw    $t1, -4($a0)
/* B24F90 800ADDF0 AC89FFF0 */  sw    $t1, -0x10($a0)
/* B24F94 800ADDF4 AD19FFF8 */  sw    $t9, -8($t0)
/* B24F98 800ADDF8 AD18FFF4 */  sw    $t8, -0xc($t0)
/* B24F9C 800ADDFC AD0EFFFC */  sw    $t6, -4($t0)
/* B24FA0 800ADE00 1420FFD2 */  bnez  $at, .L800ADD4C
/* B24FA4 800ADE04 AD0FFFF0 */   sw    $t7, -0x10($t0)
/* B24FA8 800ADE08 1000003F */  b     .L800ADF08
/* B24FAC 800ADE0C 00000000 */   nop   

glabel L800ADE10
/* B24FB0 800ADE10 8FAB0448 */  lw    $t3, 0x448($sp)
/* B24FB4 800ADE14 3C148013 */  lui   $s4, %hi(D_8012AD2C) # $s4, 0x8013
/* B24FB8 800ADE18 3C138013 */  lui   $s3, %hi(D_8012AD20) # $s3, 0x8013
/* B24FBC 800ADE1C 8FAA0444 */  lw    $t2, 0x444($sp)
/* B24FC0 800ADE20 2673AD20 */  addiu $s3, %lo(D_8012AD20) # addiu $s3, $s3, -0x52e0
/* B24FC4 800ADE24 2694AD2C */  addiu $s4, %lo(D_8012AD2C) # addiu $s4, $s4, -0x52d4
/* B24FC8 800ADE28 27A501F0 */  addiu $a1, $sp, 0x1f0
/* B24FCC 800ADE2C 27A60358 */  addiu $a2, $sp, 0x358
/* B24FD0 800ADE30 27A702A4 */  addiu $a3, $sp, 0x2a4
/* B24FD4 800ADE34 27A8013C */  addiu $t0, $sp, 0x13c
/* B24FD8 800ADE38 27A40088 */  addiu $a0, $sp, 0x88
/* B24FDC 800ADE3C 8FB5044C */  lw    $s5, 0x44c($sp)
/* B24FE0 800ADE40 27B1013C */  addiu $s1, $sp, 0x13c
/* B24FE4 800ADE44 8FAC0440 */  lw    $t4, 0x440($sp)
/* B24FE8 800ADE48 024BB021 */  addu  $s6, $s2, $t3
.L800ADE4C:
/* B24FEC 800ADE4C ACEC0000 */  sw    $t4, ($a3)
/* B24FF0 800ADE50 ACD20000 */  sw    $s2, ($a2)
/* B24FF4 800ADE54 ACAA0000 */  sw    $t2, ($a1)
/* B24FF8 800ADE58 3C0F8013 */  lui   $t7, %hi(D_8012AD20) # $t7, 0x8013
/* B24FFC 800ADE5C 85EFAD20 */  lh    $t7, %lo(D_8012AD20)($t7)
/* B25000 800ADE60 240D0001 */  li    $t5, 1
/* B25004 800ADE64 000DC040 */  sll   $t8, $t5, 1
/* B25008 800ADE68 86890000 */  lh    $t1, ($s4)
/* B2500C 800ADE6C 02781821 */  addu  $v1, $s3, $t8
/* B25010 800ADE70 02CB1021 */  addu  $v0, $s6, $t3
/* B25014 800ADE74 ACC20008 */  sw    $v0, 8($a2)
/* B25018 800ADE78 004B1021 */  addu  $v0, $v0, $t3
/* B2501C 800ADE7C AD0F0000 */  sw    $t7, ($t0)
/* B25020 800ADE80 846F0004 */  lh    $t7, 4($v1)
/* B25024 800ADE84 846E0002 */  lh    $t6, 2($v1)
/* B25028 800ADE88 84780006 */  lh    $t8, 6($v1)
/* B2502C 800ADE8C 84790000 */  lh    $t9, ($v1)
/* B25030 800ADE90 ACC2000C */  sw    $v0, 0xc($a2)
/* B25034 800ADE94 24840014 */  addiu $a0, $a0, 0x14
/* B25038 800ADE98 0091082B */  sltu  $at, $a0, $s1
/* B2503C 800ADE9C 004B1021 */  addu  $v0, $v0, $t3
/* B25040 800ADEA0 ACAA0010 */  sw    $t2, 0x10($a1)
/* B25044 800ADEA4 ACAA000C */  sw    $t2, 0xc($a1)
/* B25048 800ADEA8 ACAA0008 */  sw    $t2, 8($a1)
/* B2504C 800ADEAC ACAA0004 */  sw    $t2, 4($a1)
/* B25050 800ADEB0 26940002 */  addiu $s4, $s4, 2
/* B25054 800ADEB4 ACC20010 */  sw    $v0, 0x10($a2)
/* B25058 800ADEB8 ACEC0010 */  sw    $t4, 0x10($a3)
/* B2505C 800ADEBC ACEC000C */  sw    $t4, 0xc($a3)
/* B25060 800ADEC0 ACEC0008 */  sw    $t4, 8($a3)
/* B25064 800ADEC4 24A50014 */  addiu $a1, $a1, 0x14
/* B25068 800ADEC8 24C60014 */  addiu $a2, $a2, 0x14
/* B2506C 800ADECC 24E70014 */  addiu $a3, $a3, 0x14
/* B25070 800ADED0 25080014 */  addiu $t0, $t0, 0x14
/* B25074 800ADED4 ACECFFF0 */  sw    $t4, -0x10($a3)
/* B25078 800ADED8 ACD6FFF0 */  sw    $s6, -0x10($a2)
/* B2507C 800ADEDC 01555021 */  addu  $t2, $t2, $s5
/* B25080 800ADEE0 AC89FFEC */  sw    $t1, -0x14($a0)
/* B25084 800ADEE4 AC89FFF4 */  sw    $t1, -0xc($a0)
/* B25088 800ADEE8 AC89FFF8 */  sw    $t1, -8($a0)
/* B2508C 800ADEEC AC89FFFC */  sw    $t1, -4($a0)
/* B25090 800ADEF0 AC89FFF0 */  sw    $t1, -0x10($a0)
/* B25094 800ADEF4 AD0FFFF8 */  sw    $t7, -8($t0)
/* B25098 800ADEF8 AD0EFFF4 */  sw    $t6, -0xc($t0)
/* B2509C 800ADEFC AD18FFFC */  sw    $t8, -4($t0)
/* B250A0 800ADF00 1420FFD2 */  bnez  $at, .L800ADE4C
/* B250A4 800ADF04 AD19FFF0 */   sw    $t9, -0x10($t0)
.L800ADF08:
/* B250A8 800ADF08 3C198013 */  lui   $t9, %hi(D_8012ACA0) # $t9, 0x8013
/* B250AC 800ADF0C 00177080 */  sll   $t6, $s7, 2
/* B250B0 800ADF10 3C0F8013 */  lui   $t7, %hi(D_8012AC90) # $t7, 0x8013
/* B250B4 800ADF14 25EFAC90 */  addiu $t7, %lo(D_8012AC90) # addiu $t7, $t7, -0x5370
/* B250B8 800ADF18 2739ACA0 */  addiu $t9, %lo(D_8012ACA0) # addiu $t9, $t9, -0x5360
/* B250BC 800ADF1C 3C1E8013 */  lui   $fp, %hi(D_8012AD40) # $fp, 0x8013
/* B250C0 800ADF20 3C12FD48 */  lui   $s2, (0xFD4800FF >> 16) # lui $s2, 0xfd48
/* B250C4 800ADF24 365200FF */  ori   $s2, (0xFD4800FF & 0xFFFF) # ori $s2, $s2, 0xff
/* B250C8 800ADF28 27DEAD40 */  addiu $fp, %lo(D_8012AD40) # addiu $fp, $fp, -0x52c0
/* B250CC 800ADF2C AFB90054 */  sw    $t9, 0x54($sp)
/* B250D0 800ADF30 01CF8821 */  addu  $s1, $t6, $t7
/* B250D4 800ADF34 3C17F200 */  lui   $s7, 0xf200
/* B250D8 800ADF38 00003025 */  move  $a2, $zero
/* B250DC 800ADF3C AFA00424 */  sw    $zero, 0x424($sp)
/* B250E0 800ADF40 3C16E700 */  lui   $s6, 0xe700
/* B250E4 800ADF44 3C15F400 */  lui   $s5, 0xf400
/* B250E8 800ADF48 3C14E600 */  lui   $s4, 0xe600
/* B250EC 800ADF4C 3C13F548 */  lui   $s3, 0xf548
/* B250F0 800ADF50 3C0D0700 */  lui   $t5, 0x700
.L800ADF54:
/* B250F4 800ADF54 8FB90454 */  lw    $t9, 0x454($sp)
/* B250F8 800ADF58 8E180134 */  lw    $t8, 0x134($s0)
/* B250FC 800ADF5C 00004825 */  move  $t1, $zero
/* B25100 800ADF60 00197080 */  sll   $t6, $t9, 2
/* B25104 800ADF64 01D97021 */  addu  $t6, $t6, $t9
/* B25108 800ADF68 000E7080 */  sll   $t6, $t6, 2
/* B2510C 800ADF6C 01D97023 */  subu  $t6, $t6, $t9
/* B25110 800ADF70 000E7080 */  sll   $t6, $t6, 2
/* B25114 800ADF74 01D97023 */  subu  $t6, $t6, $t9
/* B25118 800ADF78 8FB90424 */  lw    $t9, 0x424($sp)
/* B2511C 800ADF7C 000E7100 */  sll   $t6, $t6, 4
/* B25120 800ADF80 030E7821 */  addu  $t7, $t8, $t6
/* B25124 800ADF84 0019C080 */  sll   $t8, $t9, 2
/* B25128 800ADF88 0319C021 */  addu  $t8, $t8, $t9
/* B2512C 800ADF8C 0018C080 */  sll   $t8, $t8, 2
/* B25130 800ADF90 0319C023 */  subu  $t8, $t8, $t9
/* B25134 800ADF94 0018C080 */  sll   $t8, $t8, 2
/* B25138 800ADF98 0319C023 */  subu  $t8, $t8, $t9
/* B2513C 800ADF9C 0018C100 */  sll   $t8, $t8, 4
/* B25140 800ADFA0 01F87021 */  addu  $t6, $t7, $t8
/* B25144 800ADFA4 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25148 800ADFA8 8FAF0438 */  lw    $t7, 0x438($sp)
/* B2514C 800ADFAC 8FB90434 */  lw    $t9, 0x434($sp)
/* B25150 800ADFB0 8FA50054 */  lw    $a1, 0x54($sp)
/* B25154 800ADFB4 000FC100 */  sll   $t8, $t7, 4
/* B25158 800ADFB8 03381021 */  addu  $v0, $t9, $t8
.L800ADFBC:
/* B2515C 800ADFBC 94A40000 */  lhu   $a0, ($a1)
/* B25160 800ADFC0 25290001 */  addiu $t1, $t1, 1
/* B25164 800ADFC4 24010020 */  li    $at, 32
/* B25168 800ADFC8 00041880 */  sll   $v1, $a0, 2
/* B2516C 800ADFCC 03A37021 */  addu  $t6, $sp, $v1
/* B25170 800ADFD0 8DCE0358 */  lw    $t6, 0x358($t6)
/* B25174 800ADFD4 03A37821 */  addu  $t7, $sp, $v1
/* B25178 800ADFD8 03A3C821 */  addu  $t9, $sp, $v1
/* B2517C 800ADFDC A44E0000 */  sh    $t6, ($v0)
/* B25180 800ADFE0 8DEF02A4 */  lw    $t7, 0x2a4($t7)
/* B25184 800ADFE4 03A3C021 */  addu  $t8, $sp, $v1
/* B25188 800ADFE8 03A37021 */  addu  $t6, $sp, $v1
/* B2518C 800ADFEC A44F0002 */  sh    $t7, 2($v0)
/* B25190 800ADFF0 8F3901F0 */  lw    $t9, 0x1f0($t9)
/* B25194 800ADFF4 A4400006 */  sh    $zero, 6($v0)
/* B25198 800ADFF8 240F00FF */  li    $t7, 255
/* B2519C 800ADFFC A4590004 */  sh    $t9, 4($v0)
/* B251A0 800AE000 8F18013C */  lw    $t8, 0x13c($t8)
/* B251A4 800AE004 24A50002 */  addiu $a1, $a1, 2
/* B251A8 800AE008 24420010 */  addiu $v0, $v0, 0x10
/* B251AC 800AE00C A458FFF8 */  sh    $t8, -8($v0)
/* B251B0 800AE010 8DCE0088 */  lw    $t6, 0x88($t6)
/* B251B4 800AE014 A040FFFD */  sb    $zero, -3($v0)
/* B251B8 800AE018 A040FFFE */  sb    $zero, -2($v0)
/* B251BC 800AE01C A04FFFFC */  sb    $t7, -4($v0)
/* B251C0 800AE020 1521FFE6 */  bne   $t1, $at, .L800ADFBC
/* B251C4 800AE024 A44EFFFA */   sh    $t6, -6($v0)
/* B251C8 800AE028 8E030138 */  lw    $v1, 0x138($s0)
/* B251CC 800AE02C 3C180102 */  lui   $t8, (0x01020040 >> 16) # lui $t8, 0x102
/* B251D0 800AE030 37180040 */  ori   $t8, (0x01020040 & 0xFFFF) # ori $t8, $t8, 0x40
/* B251D4 800AE034 24790008 */  addiu $t9, $v1, 8
/* B251D8 800AE038 AE190138 */  sw    $t9, 0x138($s0)
/* B251DC 800AE03C AC780000 */  sw    $t8, ($v1)
/* B251E0 800AE040 8FAE0438 */  lw    $t6, 0x438($sp)
/* B251E4 800AE044 8FB90434 */  lw    $t9, 0x434($sp)
/* B251E8 800AE048 00005025 */  move  $t2, $zero
/* B251EC 800AE04C 000E7900 */  sll   $t7, $t6, 4
/* B251F0 800AE050 01F9C021 */  addu  $t8, $t7, $t9
/* B251F4 800AE054 AC780004 */  sw    $t8, 4($v1)
/* B251F8 800AE058 8FAE0438 */  lw    $t6, 0x438($sp)
/* B251FC 800AE05C 3C180300 */  lui   $t8, 0x300
/* B25200 800AE060 0000F825 */  move  $ra, $zero
/* B25204 800AE064 01C97821 */  addu  $t7, $t6, $t1
/* B25208 800AE068 AFAF0438 */  sw    $t7, 0x438($sp)
/* B2520C 800AE06C 8E030138 */  lw    $v1, 0x138($s0)
/* B25210 800AE070 240E001E */  li    $t6, 30
/* B25214 800AE074 24790008 */  addiu $t9, $v1, 8
/* B25218 800AE078 AE190138 */  sw    $t9, 0x138($s0)
/* B2521C 800AE07C AC6E0004 */  sw    $t6, 4($v1)
/* B25220 800AE080 AC780000 */  sw    $t8, ($v1)
.L800AE084:
/* B25224 800AE084 24C2001F */  addiu $v0, $a2, 0x1f
/* B25228 800AE088 00026080 */  sll   $t4, $v0, 2
/* B2522C 800AE08C 00065880 */  sll   $t3, $a2, 2
/* B25230 800AE090 316B0FFF */  andi  $t3, $t3, 0xfff
/* B25234 800AE094 318C0FFF */  andi  $t4, $t4, 0xfff
/* B25238 800AE098 AFA20038 */  sw    $v0, 0x38($sp)
/* B2523C 800AE09C 00002025 */  move  $a0, $zero
/* B25240 800AE0A0 00004825 */  move  $t1, $zero
.L800AE0A4:
/* B25244 800AE0A4 8E030138 */  lw    $v1, 0x138($s0)
/* B25248 800AE0A8 2488003F */  addiu $t0, $a0, 0x3f
/* B2524C 800AE0AC 00083880 */  sll   $a3, $t0, 2
/* B25250 800AE0B0 246F0008 */  addiu $t7, $v1, 8
/* B25254 800AE0B4 AE0F0138 */  sw    $t7, 0x138($s0)
/* B25258 800AE0B8 AC720000 */  sw    $s2, ($v1)
/* B2525C 800AE0BC 8E180128 */  lw    $t8, 0x128($s0)
/* B25260 800AE0C0 8E390000 */  lw    $t9, ($s1)
/* B25264 800AE0C4 00043080 */  sll   $a2, $a0, 2
/* B25268 800AE0C8 30C60FFF */  andi  $a2, $a2, 0xfff
/* B2526C 800AE0CC 03387021 */  addu  $t6, $t9, $t8
/* B25270 800AE0D0 AC6E0004 */  sw    $t6, 4($v1)
/* B25274 800AE0D4 8E030138 */  lw    $v1, 0x138($s0)
/* B25278 800AE0D8 0084C823 */  subu  $t9, $a0, $a0
/* B2527C 800AE0DC 27380047 */  addiu $t8, $t9, 0x47
/* B25280 800AE0E0 246F0008 */  addiu $t7, $v1, 8
/* B25284 800AE0E4 AE0F0138 */  sw    $t7, 0x138($s0)
/* B25288 800AE0E8 001870C3 */  sra   $t6, $t8, 3
/* B2528C 800AE0EC 31CF01FF */  andi  $t7, $t6, 0x1ff
/* B25290 800AE0F0 000FCA40 */  sll   $t9, $t7, 9
/* B25294 800AE0F4 03332825 */  or    $a1, $t9, $s3
/* B25298 800AE0F8 AC650000 */  sw    $a1, ($v1)
/* B2529C 800AE0FC AC6D0004 */  sw    $t5, 4($v1)
/* B252A0 800AE100 8E030138 */  lw    $v1, 0x138($s0)
/* B252A4 800AE104 30E70FFF */  andi  $a3, $a3, 0xfff
/* B252A8 800AE108 00073B00 */  sll   $a3, $a3, 0xc
/* B252AC 800AE10C 24780008 */  addiu $t8, $v1, 8
/* B252B0 800AE110 AE180138 */  sw    $t8, 0x138($s0)
/* B252B4 800AE114 AC600004 */  sw    $zero, 4($v1)
/* B252B8 800AE118 AC740000 */  sw    $s4, ($v1)
/* B252BC 800AE11C 8E030138 */  lw    $v1, 0x138($s0)
/* B252C0 800AE120 00063300 */  sll   $a2, $a2, 0xc
/* B252C4 800AE124 00D57825 */  or    $t7, $a2, $s5
/* B252C8 800AE128 246E0008 */  addiu $t6, $v1, 8
/* B252CC 800AE12C AE0E0138 */  sw    $t6, 0x138($s0)
/* B252D0 800AE130 00EDC025 */  or    $t8, $a3, $t5
/* B252D4 800AE134 030C7025 */  or    $t6, $t8, $t4
/* B252D8 800AE138 01EBC825 */  or    $t9, $t7, $t3
/* B252DC 800AE13C AC790000 */  sw    $t9, ($v1)
/* B252E0 800AE140 AC6E0004 */  sw    $t6, 4($v1)
/* B252E4 800AE144 8E030138 */  lw    $v1, 0x138($s0)
/* B252E8 800AE148 00D77025 */  or    $t6, $a2, $s7
/* B252EC 800AE14C 25290001 */  addiu $t1, $t1, 1
/* B252F0 800AE150 246F0008 */  addiu $t7, $v1, 8
/* B252F4 800AE154 AE0F0138 */  sw    $t7, 0x138($s0)
/* B252F8 800AE158 AC600004 */  sw    $zero, 4($v1)
/* B252FC 800AE15C AC760000 */  sw    $s6, ($v1)
/* B25300 800AE160 8E030138 */  lw    $v1, 0x138($s0)
/* B25304 800AE164 01CB7825 */  or    $t7, $t6, $t3
/* B25308 800AE168 000A7040 */  sll   $t6, $t2, 1
/* B2530C 800AE16C 24790008 */  addiu $t9, $v1, 8
/* B25310 800AE170 AE190138 */  sw    $t9, 0x138($s0)
/* B25314 800AE174 AC600004 */  sw    $zero, 4($v1)
/* B25318 800AE178 AC650000 */  sw    $a1, ($v1)
/* B2531C 800AE17C 8E030138 */  lw    $v1, 0x138($s0)
/* B25320 800AE180 00ECC825 */  or    $t9, $a3, $t4
/* B25324 800AE184 03CE1021 */  addu  $v0, $fp, $t6
/* B25328 800AE188 24780008 */  addiu $t8, $v1, 8
/* B2532C 800AE18C AE180138 */  sw    $t8, 0x138($s0)
/* B25330 800AE190 AC790004 */  sw    $t9, 4($v1)
/* B25334 800AE194 AC6F0000 */  sw    $t7, ($v1)
/* B25338 800AE198 8E030138 */  lw    $v1, 0x138($s0)
/* B2533C 800AE19C 00094C00 */  sll   $t1, $t1, 0x10
/* B25340 800AE1A0 00094C03 */  sra   $t1, $t1, 0x10
/* B25344 800AE1A4 24780008 */  addiu $t8, $v1, 8
/* B25348 800AE1A8 AE180138 */  sw    $t8, 0x138($s0)
/* B2534C 800AE1AC 844F0004 */  lh    $t7, 4($v0)
/* B25350 800AE1B0 844E0000 */  lh    $t6, ($v0)
/* B25354 800AE1B4 254A0004 */  addiu $t2, $t2, 4
/* B25358 800AE1B8 000FC840 */  sll   $t9, $t7, 1
/* B2535C 800AE1BC 333800FF */  andi  $t8, $t9, 0xff
/* B25360 800AE1C0 000E7840 */  sll   $t7, $t6, 1
/* B25364 800AE1C4 31F900FF */  andi  $t9, $t7, 0xff
/* B25368 800AE1C8 00197400 */  sll   $t6, $t9, 0x10
/* B2536C 800AE1CC 84590002 */  lh    $t9, 2($v0)
/* B25370 800AE1D0 030E7825 */  or    $t7, $t8, $t6
/* B25374 800AE1D4 000A5400 */  sll   $t2, $t2, 0x10
/* B25378 800AE1D8 0019C040 */  sll   $t8, $t9, 1
/* B2537C 800AE1DC 330E00FF */  andi  $t6, $t8, 0xff
/* B25380 800AE1E0 000ECA00 */  sll   $t9, $t6, 8
/* B25384 800AE1E4 01F9C025 */  or    $t8, $t7, $t9
/* B25388 800AE1E8 030D7025 */  or    $t6, $t8, $t5
/* B2538C 800AE1EC AC6E0000 */  sw    $t6, ($v1)
/* B25390 800AE1F0 844F0006 */  lh    $t7, 6($v0)
/* B25394 800AE1F4 844E0000 */  lh    $t6, ($v0)
/* B25398 800AE1F8 29210004 */  slti  $at, $t1, 4
/* B2539C 800AE1FC 000FC840 */  sll   $t9, $t7, 1
/* B253A0 800AE200 333800FF */  andi  $t8, $t9, 0xff
/* B253A4 800AE204 000E7840 */  sll   $t7, $t6, 1
/* B253A8 800AE208 31F900FF */  andi  $t9, $t7, 0xff
/* B253AC 800AE20C 00197400 */  sll   $t6, $t9, 0x10
/* B253B0 800AE210 84590004 */  lh    $t9, 4($v0)
/* B253B4 800AE214 030E7825 */  or    $t7, $t8, $t6
/* B253B8 800AE218 00082400 */  sll   $a0, $t0, 0x10
/* B253BC 800AE21C 0019C040 */  sll   $t8, $t9, 1
/* B253C0 800AE220 330E00FF */  andi  $t6, $t8, 0xff
/* B253C4 800AE224 000ECA00 */  sll   $t9, $t6, 8
/* B253C8 800AE228 01F9C025 */  or    $t8, $t7, $t9
/* B253CC 800AE22C 00042403 */  sra   $a0, $a0, 0x10
/* B253D0 800AE230 000A5403 */  sra   $t2, $t2, 0x10
/* B253D4 800AE234 1420FF9B */  bnez  $at, .L800AE0A4
/* B253D8 800AE238 AC780004 */   sw    $t8, 4($v1)
/* B253DC 800AE23C 27FF0001 */  addiu $ra, $ra, 1
/* B253E0 800AE240 001FFC00 */  sll   $ra, $ra, 0x10
/* B253E4 800AE244 001FFC03 */  sra   $ra, $ra, 0x10
/* B253E8 800AE248 2BE10004 */  slti  $at, $ra, 4
/* B253EC 800AE24C 1420FF8D */  bnez  $at, .L800AE084
/* B253F0 800AE250 87A6003A */   lh    $a2, 0x3a($sp)
/* B253F4 800AE254 8E030138 */  lw    $v1, 0x138($s0)
/* B253F8 800AE258 3C0FDF00 */  lui   $t7, 0xdf00
/* B253FC 800AE25C 24010002 */  li    $at, 2
/* B25400 800AE260 246E0008 */  addiu $t6, $v1, 8
/* B25404 800AE264 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25408 800AE268 AC600004 */  sw    $zero, 4($v1)
/* B2540C 800AE26C AC6F0000 */  sw    $t7, ($v1)
/* B25410 800AE270 8FB90054 */  lw    $t9, 0x54($sp)
/* B25414 800AE274 8FA20424 */  lw    $v0, 0x424($sp)
/* B25418 800AE278 27380040 */  addiu $t8, $t9, 0x40
/* B2541C 800AE27C 24420001 */  addiu $v0, $v0, 1
/* B25420 800AE280 AFA20424 */  sw    $v0, 0x424($sp)
/* B25424 800AE284 1441FF33 */  bne   $v0, $at, .L800ADF54
/* B25428 800AE288 AFB80054 */   sw    $t8, 0x54($sp)
/* B2542C 800AE28C 8FBF002C */  lw    $ra, 0x2c($sp)
/* B25430 800AE290 8FA20438 */  lw    $v0, 0x438($sp)
/* B25434 800AE294 8FB00008 */  lw    $s0, 8($sp)
/* B25438 800AE298 8FB1000C */  lw    $s1, 0xc($sp)
/* B2543C 800AE29C 8FB20010 */  lw    $s2, 0x10($sp)
/* B25440 800AE2A0 8FB30014 */  lw    $s3, 0x14($sp)
/* B25444 800AE2A4 8FB40018 */  lw    $s4, 0x18($sp)
/* B25448 800AE2A8 8FB5001C */  lw    $s5, 0x1c($sp)
/* B2544C 800AE2AC 8FB60020 */  lw    $s6, 0x20($sp)
/* B25450 800AE2B0 8FB70024 */  lw    $s7, 0x24($sp)
/* B25454 800AE2B4 8FBE0028 */  lw    $fp, 0x28($sp)
/* B25458 800AE2B8 03E00008 */  jr    $ra
/* B2545C 800AE2BC 27BD0430 */   addiu $sp, $sp, 0x430

