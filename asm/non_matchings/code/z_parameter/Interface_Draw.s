.rdata
glabel D_8013E38C
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E3A0
    .asciz "../z_parameter.c"
    .balign 4

glabel D_8013E3B4
    .asciz "EVENT_INF=%x\n"
    .balign 4

glabel D_8013E3C4
    .asciz "event_xp[1]=%d,  event_yp[1]=%d  TOTAL_EVENT_TM=%d\n"
    .balign 4

glabel D_8013E3F8
    .asciz "TOTAL_EVENT_TM=%d\n"
    .balign 4

glabel D_8013E40C
    .asciz "../z_parameter.c"
    .balign 4

.late_rodata
glabel jtbl_8013E61C
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0
    .word L8008ABB0

glabel D_8013E654
    .float 10000.0

glabel jtbl_8013E658
    .word L8008C608
    .word L8008C644
    .word L8008C730
    .word L8008C884
    .word L8008C688
    .word L8008C6CC
    .word L8008C730
    .word L8008C884
    .word L8008CCEC
    .word L8008CC7C
    .word L8008C688
    .word L8008C6CC
    .word L8008CA60
    .word L8008CB98
    .word L8008CCE0

glabel jtbl_8013E694
    .word L8008CD1C
    .word L8008CD6C
    .word L8008CDB8
    .word L8008CF2C
    .word L8008D1EC
    .word L8008D1C8
    .word L8008CD1C
    .word L8008CD6C
    .word L8008CDB8
    .word L8008CF2C

.text
glabel Interface_Draw
/* B01B78 8008A9D8 27BDFD70 */  addiu $sp, $sp, -0x290
/* B01B7C 8008A9DC AFBF004C */  sw    $ra, 0x4c($sp)
/* B01B80 8008A9E0 AFB70048 */  sw    $s7, 0x48($sp)
/* B01B84 8008A9E4 AFB60044 */  sw    $s6, 0x44($sp)
/* B01B88 8008A9E8 AFB50040 */  sw    $s5, 0x40($sp)
/* B01B8C 8008A9EC AFB4003C */  sw    $s4, 0x3c($sp)
/* B01B90 8008A9F0 AFB30038 */  sw    $s3, 0x38($sp)
/* B01B94 8008A9F4 AFB20034 */  sw    $s2, 0x34($sp)
/* B01B98 8008A9F8 AFB10030 */  sw    $s1, 0x30($sp)
/* B01B9C 8008A9FC AFB0002C */  sw    $s0, 0x2c($sp)
/* B01BA0 8008AA00 8C8E1C44 */  lw    $t6, 0x1c44($a0)
/* B01BA4 8008AA04 0080B825 */  move  $s7, $a0
/* B01BA8 8008AA08 3C068014 */  lui   $a2, %hi(D_8013E38C) # $a2, 0x8014
/* B01BAC 8008AA0C AFAE0280 */  sw    $t6, 0x280($sp)
/* B01BB0 8008AA10 8C850000 */  lw    $a1, ($a0)
/* B01BB4 8008AA14 27A40260 */  addiu $a0, $sp, 0x260
/* B01BB8 8008AA18 24C6E38C */  addiu $a2, %lo(D_8013E38C) # addiu $a2, $a2, -0x1c74
/* B01BBC 8008AA1C 24070D4D */  li    $a3, 3405
/* B01BC0 8008AA20 0C031AB1 */  jal   Graph_OpenDisps
/* B01BC4 8008AA24 00A0A025 */   move  $s4, $a1
/* B01BC8 8008AA28 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B01BCC 8008AA2C 3C18DB06 */  lui   $t8, (0xDB060008 >> 16) # lui $t8, 0xdb06
/* B01BD0 8008AA30 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* B01BD4 8008AA34 24EF0008 */  addiu $t7, $a3, 8
/* B01BD8 8008AA38 AE8F02B0 */  sw    $t7, 0x2b0($s4)
/* B01BDC 8008AA3C 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* B01BE0 8008AA40 37180008 */  ori   $t8, (0xDB060008 & 0xFFFF) # ori $t8, $t8, 8
/* B01BE4 8008AA44 02E1B021 */  addu  $s6, $s7, $at
/* B01BE8 8008AA48 ACF80000 */  sw    $t8, ($a3)
/* B01BEC 8008AA4C 8ED90130 */  lw    $t9, 0x130($s6)
/* B01BF0 8008AA50 3C0BDB06 */  lui   $t3, (0xDB06001C >> 16) # lui $t3, 0xdb06
/* B01BF4 8008AA54 356B001C */  ori   $t3, (0xDB06001C & 0xFFFF) # ori $t3, $t3, 0x1c
/* B01BF8 8008AA58 ACF90004 */  sw    $t9, 4($a3)
/* B01BFC 8008AA5C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B01C00 8008AA60 3C0EDB06 */  lui   $t6, (0xDB060020 >> 16) # lui $t6, 0xdb06
/* B01C04 8008AA64 35CE0020 */  ori   $t6, (0xDB060020 & 0xFFFF) # ori $t6, $t6, 0x20
/* B01C08 8008AA68 24EA0008 */  addiu $t2, $a3, 8
/* B01C0C 8008AA6C AE8A02B0 */  sw    $t2, 0x2b0($s4)
/* B01C10 8008AA70 ACEB0000 */  sw    $t3, ($a3)
/* B01C14 8008AA74 8ECC0134 */  lw    $t4, 0x134($s6)
/* B01C18 8008AA78 3C19DB06 */  lui   $t9, (0xDB06002C >> 16) # lui $t9, 0xdb06
/* B01C1C 8008AA7C 3739002C */  ori   $t9, (0xDB06002C & 0xFFFF) # ori $t9, $t9, 0x2c
/* B01C20 8008AA80 ACEC0004 */  sw    $t4, 4($a3)
/* B01C24 8008AA84 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B01C28 8008AA88 3C010001 */  lui   $at, (0x00010760 >> 16) # lui $at, 1
/* B01C2C 8008AA8C 34210760 */  ori   $at, (0x00010760 & 0xFFFF) # ori $at, $at, 0x760
/* B01C30 8008AA90 24ED0008 */  addiu $t5, $a3, 8
/* B01C34 8008AA94 AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B01C38 8008AA98 ACEE0000 */  sw    $t6, ($a3)
/* B01C3C 8008AA9C 8ECF0138 */  lw    $t7, 0x138($s6)
/* B01C40 8008AAA0 02E15821 */  addu  $t3, $s7, $at
/* B01C44 8008AAA4 ACEF0004 */  sw    $t7, 4($a3)
/* B01C48 8008AAA8 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B01C4C 8008AAAC 24F80008 */  addiu $t8, $a3, 8
/* B01C50 8008AAB0 AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B01C54 8008AAB4 ACF90000 */  sw    $t9, ($a3)
/* B01C58 8008AAB8 8ECA013C */  lw    $t2, 0x13c($s6)
/* B01C5C 8008AABC ACEA0004 */  sw    $t2, 4($a3)
/* B01C60 8008AAC0 AFAB0068 */  sw    $t3, 0x68($sp)
/* B01C64 8008AAC4 956D01D6 */  lhu   $t5, 0x1d6($t3)
/* B01C68 8008AAC8 55A00A93 */  bnezl $t5, .L8008D518
/* B01C6C 8008AACC 8FB80068 */   lw    $t8, 0x68($sp)
/* B01C70 8008AAD0 0C0228F8 */  jal   Interface_InitVertices
/* B01C74 8008AAD4 02E02025 */   move  $a0, $s7
/* B01C78 8008AAD8 0C022A65 */  jal   func_8008A994
/* B01C7C 8008AADC 02C02025 */   move  $a0, $s6
/* B01C80 8008AAE0 0C01E3C7 */  jal   Health_Draw
/* B01C84 8008AAE4 02E02025 */   move  $a0, $s7
/* B01C88 8008AAE8 0C025148 */  jal   func_80094520
/* B01C8C 8008AAEC 8EE40000 */   lw    $a0, ($s7)
/* B01C90 8008AAF0 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B01C94 8008AAF4 3C0FFA00 */  lui   $t7, 0xfa00
/* B01C98 8008AAF8 3C01C8FF */  lui   $at, (0xC8FF6400 >> 16) # lui $at, 0xc8ff
/* B01C9C 8008AAFC 24EE0008 */  addiu $t6, $a3, 8
/* B01CA0 8008AB00 AE8E02B0 */  sw    $t6, 0x2b0($s4)
/* B01CA4 8008AB04 ACEF0000 */  sw    $t7, ($a3)
/* B01CA8 8008AB08 96D80252 */  lhu   $t8, 0x252($s6)
/* B01CAC 8008AB0C 34216400 */  ori   $at, (0xC8FF6400 & 0xFFFF) # ori $at, $at, 0x6400
/* B01CB0 8008AB10 3C0D0050 */  lui   $t5, (0x005000FF >> 16) # lui $t5, 0x50
/* B01CB4 8008AB14 331900FF */  andi  $t9, $t8, 0xff
/* B01CB8 8008AB18 03215025 */  or    $t2, $t9, $at
/* B01CBC 8008AB1C ACEA0004 */  sw    $t2, 4($a3)
/* B01CC0 8008AB20 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B01CC4 8008AB24 35AD00FF */  ori   $t5, (0x005000FF & 0xFFFF) # ori $t5, $t5, 0xff
/* B01CC8 8008AB28 3C0CFB00 */  lui   $t4, 0xfb00
/* B01CCC 8008AB2C 24EB0008 */  addiu $t3, $a3, 8
/* B01CD0 8008AB30 AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B01CD4 8008AB34 ACED0004 */  sw    $t5, 4($a3)
/* B01CD8 8008AB38 ACEC0000 */  sw    $t4, ($a3)
/* B01CDC 8008AB3C 8E8402B0 */  lw    $a0, 0x2b0($s4)
/* B01CE0 8008AB40 240B0400 */  li    $t3, 1024
/* B01CE4 8008AB44 240A0400 */  li    $t2, 1024
/* B01CE8 8008AB48 24190010 */  li    $t9, 16
/* B01CEC 8008AB4C 24180010 */  li    $t8, 16
/* B01CF0 8008AB50 240F00CE */  li    $t7, 206
/* B01CF4 8008AB54 240E001A */  li    $t6, 26
/* B01CF8 8008AB58 3C050200 */  lui   $a1, %hi(D_02001F00) # $a1, 0x200
/* B01CFC 8008AB5C 24A51F00 */  addiu $a1, %lo(D_02001F00) # addiu $a1, $a1, 0x1f00
/* B01D00 8008AB60 AFAE0010 */  sw    $t6, 0x10($sp)
/* B01D04 8008AB64 AFAF0014 */  sw    $t7, 0x14($sp)
/* B01D08 8008AB68 AFB80018 */  sw    $t8, 0x18($sp)
/* B01D0C 8008AB6C AFB9001C */  sw    $t9, 0x1c($sp)
/* B01D10 8008AB70 AFAA0020 */  sw    $t2, 0x20($sp)
/* B01D14 8008AB74 AFAB0024 */  sw    $t3, 0x24($sp)
/* B01D18 8008AB78 24070010 */  li    $a3, 16
/* B01D1C 8008AB7C 0C0210A6 */  jal   Gfx_TextureIA8
/* B01D20 8008AB80 24060010 */   li    $a2, 16
/* B01D24 8008AB84 AE8202B0 */  sw    $v0, 0x2b0($s4)
/* B01D28 8008AB88 86EC00A4 */  lh    $t4, 0xa4($s7)
/* B01D2C 8008AB8C 258DFFFD */  addiu $t5, $t4, -3
/* B01D30 8008AB90 2DA1000E */  sltiu $at, $t5, 0xe
/* B01D34 8008AB94 1020008F */  beqz  $at, .L8008ADD4
/* B01D38 8008AB98 000D6880 */   sll   $t5, $t5, 2
/* B01D3C 8008AB9C 3C018014 */  lui   $at, %hi(jtbl_8013E61C)
/* B01D40 8008ABA0 002D0821 */  addu  $at, $at, $t5
/* B01D44 8008ABA4 8C2DE61C */  lw    $t5, %lo(jtbl_8013E61C)($at)
/* B01D48 8008ABA8 01A00008 */  jr    $t5
/* B01D4C 8008ABAC 00000000 */   nop   
glabel L8008ABB0
/* B01D50 8008ABB0 3C158016 */  lui   $s5, %hi(gSaveContext) # $s5, 0x8016
/* B01D54 8008ABB4 26B5E660 */  addiu $s5, %lo(gSaveContext) # addiu $s5, $s5, -0x19a0
/* B01D58 8008ABB8 96AE1402 */  lhu   $t6, 0x1402($s5)
/* B01D5C 8008ABBC 3C01C8E6 */  lui   $at, (0xC8E6FF00 >> 16) # lui $at, 0xc8e6
/* B01D60 8008ABC0 3C0AE700 */  lui   $t2, 0xe700
/* B01D64 8008ABC4 02AE7821 */  addu  $t7, $s5, $t6
/* B01D68 8008ABC8 81F800BC */  lb    $t8, 0xbc($t7)
/* B01D6C 8008ABCC 3421FF00 */  ori   $at, (0xC8E6FF00 & 0xFFFF) # ori $at, $at, 0xff00
/* B01D70 8008ABD0 3C0CFA00 */  lui   $t4, 0xfa00
/* B01D74 8008ABD4 0700007D */  bltz  $t8, .L8008ADCC
/* B01D78 8008ABD8 3C050200 */   lui   $a1, %hi(D_02001E00) # $a1, 0x200
/* B01D7C 8008ABDC 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B01D80 8008ABE0 24A51E00 */  addiu $a1, %lo(D_02001E00) # addiu $a1, $a1, 0x1e00
/* B01D84 8008ABE4 24060010 */  li    $a2, 16
/* B01D88 8008ABE8 24F90008 */  addiu $t9, $a3, 8
/* B01D8C 8008ABEC AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B01D90 8008ABF0 ACE00004 */  sw    $zero, 4($a3)
/* B01D94 8008ABF4 ACEA0000 */  sw    $t2, ($a3)
/* B01D98 8008ABF8 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B01D9C 8008ABFC 240A14FF */  li    $t2, 5375
/* B01DA0 8008AC00 3C19FB00 */  lui   $t9, 0xfb00
/* B01DA4 8008AC04 24EB0008 */  addiu $t3, $a3, 8
/* B01DA8 8008AC08 AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B01DAC 8008AC0C ACEC0000 */  sw    $t4, ($a3)
/* B01DB0 8008AC10 96CD0252 */  lhu   $t5, 0x252($s6)
/* B01DB4 8008AC14 240C00BE */  li    $t4, 190
/* B01DB8 8008AC18 240B001A */  li    $t3, 26
/* B01DBC 8008AC1C 31AE00FF */  andi  $t6, $t5, 0xff
/* B01DC0 8008AC20 01C17825 */  or    $t7, $t6, $at
/* B01DC4 8008AC24 ACEF0004 */  sw    $t7, 4($a3)
/* B01DC8 8008AC28 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B01DCC 8008AC2C 240F0400 */  li    $t7, 1024
/* B01DD0 8008AC30 240E0010 */  li    $t6, 16
/* B01DD4 8008AC34 24F80008 */  addiu $t8, $a3, 8
/* B01DD8 8008AC38 AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B01DDC 8008AC3C ACEA0004 */  sw    $t2, 4($a3)
/* B01DE0 8008AC40 ACF90000 */  sw    $t9, ($a3)
/* B01DE4 8008AC44 8E8402B0 */  lw    $a0, 0x2b0($s4)
/* B01DE8 8008AC48 24180400 */  li    $t8, 1024
/* B01DEC 8008AC4C 240D0010 */  li    $t5, 16
/* B01DF0 8008AC50 AFAD0018 */  sw    $t5, 0x18($sp)
/* B01DF4 8008AC54 AFB80024 */  sw    $t8, 0x24($sp)
/* B01DF8 8008AC58 AFAF0020 */  sw    $t7, 0x20($sp)
/* B01DFC 8008AC5C AFAE001C */  sw    $t6, 0x1c($sp)
/* B01E00 8008AC60 AFAC0014 */  sw    $t4, 0x14($sp)
/* B01E04 8008AC64 AFAB0010 */  sw    $t3, 0x10($sp)
/* B01E08 8008AC68 0C0210A6 */  jal   Gfx_TextureIA8
/* B01E0C 8008AC6C 24070010 */   li    $a3, 16
/* B01E10 8008AC70 AE8202B0 */  sw    $v0, 0x2b0($s4)
/* B01E14 8008AC74 24590008 */  addiu $t9, $v0, 8
/* B01E18 8008AC78 AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B01E1C 8008AC7C 3C0AE700 */  lui   $t2, 0xe700
/* B01E20 8008AC80 AC4A0000 */  sw    $t2, ($v0)
/* B01E24 8008AC84 AC400004 */  sw    $zero, 4($v0)
/* B01E28 8008AC88 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B01E2C 8008AC8C 3C0CFA00 */  lui   $t4, 0xfa00
/* B01E30 8008AC90 2401FF00 */  li    $at, -256
/* B01E34 8008AC94 24EB0008 */  addiu $t3, $a3, 8
/* B01E38 8008AC98 AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B01E3C 8008AC9C ACEC0000 */  sw    $t4, ($a3)
/* B01E40 8008ACA0 96CD0252 */  lhu   $t5, 0x252($s6)
/* B01E44 8008ACA4 3C0AFF2D */  lui   $t2, (0xFF2DFEFF >> 16) # lui $t2, 0xff2d
/* B01E48 8008ACA8 3C19FCFF */  lui   $t9, (0xFCFF97FF >> 16) # lui $t9, 0xfcff
/* B01E4C 8008ACAC 31AE00FF */  andi  $t6, $t5, 0xff
/* B01E50 8008ACB0 01C17825 */  or    $t7, $t6, $at
/* B01E54 8008ACB4 ACEF0004 */  sw    $t7, 4($a3)
/* B01E58 8008ACB8 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B01E5C 8008ACBC 373997FF */  ori   $t9, (0xFCFF97FF & 0xFFFF) # ori $t9, $t9, 0x97ff
/* B01E60 8008ACC0 354AFEFF */  ori   $t2, (0xFF2DFEFF & 0xFFFF) # ori $t2, $t2, 0xfeff
/* B01E64 8008ACC4 24F80008 */  addiu $t8, $a3, 8
/* B01E68 8008ACC8 AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B01E6C 8008ACCC ACEA0004 */  sw    $t2, 4($a3)
/* B01E70 8008ACD0 ACF90000 */  sw    $t9, ($a3)
/* B01E74 8008ACD4 A6C00236 */  sh    $zero, 0x236($s6)
/* B01E78 8008ACD8 96AB1402 */  lhu   $t3, 0x1402($s5)
/* B01E7C 8008ACDC 3C0A0200 */  lui   $t2, %hi(D_02003040) # $t2, 0x200
/* B01E80 8008ACE0 254A3040 */  addiu $t2, %lo(D_02003040) # addiu $t2, $t2, 0x3040
/* B01E84 8008ACE4 02AB6021 */  addu  $t4, $s5, $t3
/* B01E88 8008ACE8 818D00BC */  lb    $t5, 0xbc($t4)
/* B01E8C 8008ACEC 240C00BE */  li    $t4, 190
/* B01E90 8008ACF0 240B002A */  li    $t3, 42
/* B01E94 8008ACF4 A6CD0238 */  sh    $t5, 0x238($s6)
/* B01E98 8008ACF8 86C30238 */  lh    $v1, 0x238($s6)
/* B01E9C 8008ACFC 240D0008 */  li    $t5, 8
/* B01EA0 8008AD00 24070010 */  li    $a3, 16
/* B01EA4 8008AD04 2861000A */  slti  $at, $v1, 0xa
/* B01EA8 8008AD08 14200009 */  bnez  $at, .L8008AD30
/* B01EAC 8008AD0C 24060008 */   li    $a2, 8
.L8008AD10:
/* B01EB0 8008AD10 2478FFF6 */  addiu $t8, $v1, -0xa
/* B01EB4 8008AD14 A6D80238 */  sh    $t8, 0x238($s6)
/* B01EB8 8008AD18 86C30238 */  lh    $v1, 0x238($s6)
/* B01EBC 8008AD1C 86CE0236 */  lh    $t6, 0x236($s6)
/* B01EC0 8008AD20 2861000A */  slti  $at, $v1, 0xa
/* B01EC4 8008AD24 25CF0001 */  addiu $t7, $t6, 1
/* B01EC8 8008AD28 1020FFF9 */  beqz  $at, .L8008AD10
/* B01ECC 8008AD2C A6CF0236 */   sh    $t7, 0x236($s6)
.L8008AD30:
/* B01ED0 8008AD30 86C20236 */  lh    $v0, 0x236($s6)
/* B01ED4 8008AD34 2412002A */  li    $s2, 42
/* B01ED8 8008AD38 240E0010 */  li    $t6, 16
/* B01EDC 8008AD3C 1040000F */  beqz  $v0, .L8008AD7C
/* B01EE0 8008AD40 0002C9C0 */   sll   $t9, $v0, 7
/* B01EE4 8008AD44 8E8402B0 */  lw    $a0, 0x2b0($s4)
/* B01EE8 8008AD48 240F0400 */  li    $t7, 1024
/* B01EEC 8008AD4C 24180400 */  li    $t8, 1024
/* B01EF0 8008AD50 AFB80024 */  sw    $t8, 0x24($sp)
/* B01EF4 8008AD54 AFAF0020 */  sw    $t7, 0x20($sp)
/* B01EF8 8008AD58 AFAE001C */  sw    $t6, 0x1c($sp)
/* B01EFC 8008AD5C AFAD0018 */  sw    $t5, 0x18($sp)
/* B01F00 8008AD60 AFAC0014 */  sw    $t4, 0x14($sp)
/* B01F04 8008AD64 AFAB0010 */  sw    $t3, 0x10($sp)
/* B01F08 8008AD68 0C02112F */  jal   Gfx_TextureI8
/* B01F0C 8008AD6C 032A2821 */   addu  $a1, $t9, $t2
/* B01F10 8008AD70 AE8202B0 */  sw    $v0, 0x2b0($s4)
/* B01F14 8008AD74 86C30238 */  lh    $v1, 0x238($s6)
/* B01F18 8008AD78 24120032 */  li    $s2, 50
.L8008AD7C:
/* B01F1C 8008AD7C 8E8402B0 */  lw    $a0, 0x2b0($s4)
/* B01F20 8008AD80 3C0A0200 */  lui   $t2, %hi(D_02003040) # $t2, 0x200
/* B01F24 8008AD84 254A3040 */  addiu $t2, %lo(D_02003040) # addiu $t2, $t2, 0x3040
/* B01F28 8008AD88 0003C9C0 */  sll   $t9, $v1, 7
/* B01F2C 8008AD8C 240B00BE */  li    $t3, 190
/* B01F30 8008AD90 240C0008 */  li    $t4, 8
/* B01F34 8008AD94 240D0010 */  li    $t5, 16
/* B01F38 8008AD98 240E0400 */  li    $t6, 1024
/* B01F3C 8008AD9C 240F0400 */  li    $t7, 1024
/* B01F40 8008ADA0 AFAF0024 */  sw    $t7, 0x24($sp)
/* B01F44 8008ADA4 AFAE0020 */  sw    $t6, 0x20($sp)
/* B01F48 8008ADA8 AFAD001C */  sw    $t5, 0x1c($sp)
/* B01F4C 8008ADAC AFAC0018 */  sw    $t4, 0x18($sp)
/* B01F50 8008ADB0 AFAB0014 */  sw    $t3, 0x14($sp)
/* B01F54 8008ADB4 032A2821 */  addu  $a1, $t9, $t2
/* B01F58 8008ADB8 AFB20010 */  sw    $s2, 0x10($sp)
/* B01F5C 8008ADBC 24060008 */  li    $a2, 8
/* B01F60 8008ADC0 0C02112F */  jal   Gfx_TextureI8
/* B01F64 8008ADC4 24070010 */   li    $a3, 16
/* B01F68 8008ADC8 AE8202B0 */  sw    $v0, 0x2b0($s4)
.L8008ADCC:
/* B01F6C 8008ADCC 10000004 */  b     .L8008ADE0
/* B01F70 8008ADD0 2412002A */   li    $s2, 42
.L8008ADD4:
/* B01F74 8008ADD4 3C158016 */  lui   $s5, %hi(gSaveContext) # $s5, 0x8016
/* B01F78 8008ADD8 26B5E660 */  addiu $s5, %lo(gSaveContext) # addiu $s5, $s5, -0x19a0
/* B01F7C 8008ADDC 2412002A */  li    $s2, 42
.L8008ADE0:
/* B01F80 8008ADE0 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B01F84 8008ADE4 3C19E700 */  lui   $t9, 0xe700
/* B01F88 8008ADE8 3C038012 */  lui   $v1, %hi(gUpgradeMasks) # $v1, 0x8012
/* B01F8C 8008ADEC 24F80008 */  addiu $t8, $a3, 8
/* B01F90 8008ADF0 AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B01F94 8008ADF4 ACE00004 */  sw    $zero, 4($a3)
/* B01F98 8008ADF8 ACF90000 */  sw    $t9, ($a3)
/* B01F9C 8008ADFC 246371B0 */  addiu $v1, %lo(gUpgradeMasks) # addiu $v1, $v1, 0x71b0
/* B01FA0 8008AE00 3C048012 */  lui   $a0, %hi(gUpgradeShifts) # $a0, 0x8012
/* B01FA4 8008AE04 8C6B0010 */  lw    $t3, 0x10($v1)
/* B01FA8 8008AE08 8EAA00A0 */  lw    $t2, 0xa0($s5)
/* B01FAC 8008AE0C 248471F4 */  addiu $a0, %lo(gUpgradeShifts) # addiu $a0, $a0, 0x71f4
/* B01FB0 8008AE10 908D0004 */  lbu   $t5, 4($a0)
/* B01FB4 8008AE14 014B6024 */  and   $t4, $t2, $t3
/* B01FB8 8008AE18 3C188012 */  lui   $t8, %hi(gUpgradeCapacities+0x20)
/* B01FBC 8008AE1C 01AC7007 */  srav  $t6, $t4, $t5
/* B01FC0 8008AE20 000E7840 */  sll   $t7, $t6, 1
/* B01FC4 8008AE24 030FC021 */  addu  $t8, $t8, $t7
/* B01FC8 8008AE28 9718721C */  lhu   $t8, %lo(gUpgradeCapacities+0x20)($t8)
/* B01FCC 8008AE2C 86A20034 */  lh    $v0, 0x34($s5)
/* B01FD0 8008AE30 3C108012 */  lui   $s0, %hi(sRupeeDigitsFirst)
/* B01FD4 8008AE34 1458000C */  bne   $v0, $t8, .L8008AE68
/* B01FD8 8008AE38 00000000 */   nop   
/* B01FDC 8008AE3C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B01FE0 8008AE40 3C0AFA00 */  lui   $t2, 0xfa00
/* B01FE4 8008AE44 3C0178FF */  lui   $at, 0x78ff
/* B01FE8 8008AE48 24F90008 */  addiu $t9, $a3, 8
/* B01FEC 8008AE4C AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B01FF0 8008AE50 ACEA0000 */  sw    $t2, ($a3)
/* B01FF4 8008AE54 96CB0252 */  lhu   $t3, 0x252($s6)
/* B01FF8 8008AE58 316C00FF */  andi  $t4, $t3, 0xff
/* B01FFC 8008AE5C 01816825 */  or    $t5, $t4, $at
/* B02000 8008AE60 10000019 */  b     .L8008AEC8
/* B02004 8008AE64 ACED0004 */   sw    $t5, 4($a3)
.L8008AE68:
/* B02008 8008AE68 5040000D */  beql  $v0, $zero, .L8008AEA0
/* B0200C 8008AE6C 8E8702B0 */   lw    $a3, 0x2b0($s4)
/* B02010 8008AE70 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02014 8008AE74 3C0FFA00 */  lui   $t7, 0xfa00
/* B02018 8008AE78 2401FF00 */  li    $at, -256
/* B0201C 8008AE7C 24EE0008 */  addiu $t6, $a3, 8
/* B02020 8008AE80 AE8E02B0 */  sw    $t6, 0x2b0($s4)
/* B02024 8008AE84 ACEF0000 */  sw    $t7, ($a3)
/* B02028 8008AE88 96D80252 */  lhu   $t8, 0x252($s6)
/* B0202C 8008AE8C 331900FF */  andi  $t9, $t8, 0xff
/* B02030 8008AE90 03215025 */  or    $t2, $t9, $at
/* B02034 8008AE94 1000000C */  b     .L8008AEC8
/* B02038 8008AE98 ACEA0004 */   sw    $t2, 4($a3)
/* B0203C 8008AE9C 8E8702B0 */  lw    $a3, 0x2b0($s4)
.L8008AEA0:
/* B02040 8008AEA0 3C0CFA00 */  lui   $t4, 0xfa00
/* B02044 8008AEA4 3C016464 */  lui   $at, (0x64646400 >> 16) # lui $at, 0x6464
/* B02048 8008AEA8 24EB0008 */  addiu $t3, $a3, 8
/* B0204C 8008AEAC AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B02050 8008AEB0 ACEC0000 */  sw    $t4, ($a3)
/* B02054 8008AEB4 96CD0252 */  lhu   $t5, 0x252($s6)
/* B02058 8008AEB8 34216400 */  ori   $at, (0x64646400 & 0xFFFF) # ori $at, $at, 0x6400
/* B0205C 8008AEBC 31AE00FF */  andi  $t6, $t5, 0xff
/* B02060 8008AEC0 01C17825 */  or    $t7, $t6, $at
/* B02064 8008AEC4 ACEF0004 */  sw    $t7, 4($a3)
.L8008AEC8:
/* B02068 8008AEC8 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B0206C 8008AECC 3C19FCFF */  lui   $t9, (0xFCFF97FF >> 16) # lui $t9, 0xfcff
/* B02070 8008AED0 3C0AFF2D */  lui   $t2, (0xFF2DFEFF >> 16) # lui $t2, 0xff2d
/* B02074 8008AED4 24F80008 */  addiu $t8, $a3, 8
/* B02078 8008AED8 AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B0207C 8008AEDC 354AFEFF */  ori   $t2, (0xFF2DFEFF & 0xFFFF) # ori $t2, $t2, 0xfeff
/* B02080 8008AEE0 373997FF */  ori   $t9, (0xFCFF97FF & 0xFFFF) # ori $t9, $t9, 0x97ff
/* B02084 8008AEE4 ACF90000 */  sw    $t9, ($a3)
/* B02088 8008AEE8 ACEA0004 */  sw    $t2, 4($a3)
/* B0208C 8008AEEC A6C00234 */  sh    $zero, 0x234($s6)
/* B02090 8008AEF0 86CB0234 */  lh    $t3, 0x234($s6)
/* B02094 8008AEF4 A6CB0232 */  sh    $t3, 0x232($s6)
/* B02098 8008AEF8 86AC0034 */  lh    $t4, 0x34($s5)
/* B0209C 8008AEFC A6CC0236 */  sh    $t4, 0x236($s6)
/* B020A0 8008AF00 86C20236 */  lh    $v0, 0x236($s6)
/* B020A4 8008AF04 28412710 */  slti  $at, $v0, 0x2710
/* B020A8 8008AF08 50200003 */  beql  $at, $zero, .L8008AF18
/* B020AC 8008AF0C 304D0DDD */   andi  $t5, $v0, 0xddd
/* B020B0 8008AF10 04410003 */  bgez  $v0, .L8008AF20
/* B020B4 8008AF14 304D0DDD */   andi  $t5, $v0, 0xddd
.L8008AF18:
/* B020B8 8008AF18 A6CD0236 */  sh    $t5, 0x236($s6)
/* B020BC 8008AF1C 86C20236 */  lh    $v0, 0x236($s6)
.L8008AF20:
/* B020C0 8008AF20 28410064 */  slti  $at, $v0, 0x64
/* B020C4 8008AF24 14200008 */  bnez  $at, .L8008AF48
.L8008AF28:
/* B020C8 8008AF28 2458FF9C */   addiu $t8, $v0, -0x64
/* B020CC 8008AF2C A6D80236 */  sh    $t8, 0x236($s6)
/* B020D0 8008AF30 86C20236 */  lh    $v0, 0x236($s6)
/* B020D4 8008AF34 86CE0232 */  lh    $t6, 0x232($s6)
/* B020D8 8008AF38 28410064 */  slti  $at, $v0, 0x64
/* B020DC 8008AF3C 25CF0001 */  addiu $t7, $t6, 1
/* B020E0 8008AF40 1020FFF9 */  beqz  $at, .L8008AF28
/* B020E4 8008AF44 A6CF0232 */   sh    $t7, 0x232($s6)
.L8008AF48:
/* B020E8 8008AF48 2841000A */  slti  $at, $v0, 0xa
/* B020EC 8008AF4C 14200008 */  bnez  $at, .L8008AF70
.L8008AF50:
/* B020F0 8008AF50 244BFFF6 */   addiu $t3, $v0, -0xa
/* B020F4 8008AF54 A6CB0236 */  sh    $t3, 0x236($s6)
/* B020F8 8008AF58 86C20236 */  lh    $v0, 0x236($s6)
/* B020FC 8008AF5C 86D90234 */  lh    $t9, 0x234($s6)
/* B02100 8008AF60 2841000A */  slti  $at, $v0, 0xa
/* B02104 8008AF64 272A0001 */  addiu $t2, $t9, 1
/* B02108 8008AF68 1020FFF9 */  beqz  $at, .L8008AF50
/* B0210C 8008AF6C A6CA0234 */   sh    $t2, 0x234($s6)
.L8008AF70:
/* B02110 8008AF70 8EAC00A0 */  lw    $t4, 0xa0($s5)
/* B02114 8008AF74 8C6D0010 */  lw    $t5, 0x10($v1)
/* B02118 8008AF78 908F0004 */  lbu   $t7, 4($a0)
/* B0211C 8008AF7C 3C118012 */  lui   $s1, %hi(sRupeeDigitsCount)
/* B02120 8008AF80 018D7024 */  and   $t6, $t4, $t5
/* B02124 8008AF84 01EE1007 */  srav  $v0, $t6, $t7
/* B02128 8008AF88 00021040 */  sll   $v0, $v0, 1
/* B0212C 8008AF8C 02228821 */  addu  $s1, $s1, $v0
/* B02130 8008AF90 86315B44 */  lh    $s1, %lo(sRupeeDigitsCount)($s1)
/* B02134 8008AF94 02028021 */  addu  $s0, $s0, $v0
/* B02138 8008AF98 86105B3C */  lh    $s0, %lo(sRupeeDigitsFirst)($s0)
/* B0213C 8008AF9C 1A200023 */  blez  $s1, .L8008B02C
/* B02140 8008AFA0 00009825 */   move  $s3, $zero
.L8008AFA4:
/* B02144 8008AFA4 0010C040 */  sll   $t8, $s0, 1
/* B02148 8008AFA8 02D8C821 */  addu  $t9, $s6, $t8
/* B0214C 8008AFAC 872A0232 */  lh    $t2, 0x232($t9)
/* B02150 8008AFB0 8E8402B0 */  lw    $a0, 0x2b0($s4)
/* B02154 8008AFB4 3C0C0200 */  lui   $t4, %hi(D_02003040) # $t4, 0x200
/* B02158 8008AFB8 258C3040 */  addiu $t4, %lo(D_02003040) # addiu $t4, $t4, 0x3040
/* B0215C 8008AFBC 24190400 */  li    $t9, 1024
/* B02160 8008AFC0 24180400 */  li    $t8, 1024
/* B02164 8008AFC4 240D00CE */  li    $t5, 206
/* B02168 8008AFC8 240E0008 */  li    $t6, 8
/* B0216C 8008AFCC 240F0010 */  li    $t7, 16
/* B02170 8008AFD0 000A59C0 */  sll   $t3, $t2, 7
/* B02174 8008AFD4 016C2821 */  addu  $a1, $t3, $t4
/* B02178 8008AFD8 AFAF001C */  sw    $t7, 0x1c($sp)
/* B0217C 8008AFDC AFAE0018 */  sw    $t6, 0x18($sp)
/* B02180 8008AFE0 AFAD0014 */  sw    $t5, 0x14($sp)
/* B02184 8008AFE4 AFB80020 */  sw    $t8, 0x20($sp)
/* B02188 8008AFE8 AFB90024 */  sw    $t9, 0x24($sp)
/* B0218C 8008AFEC AFB20010 */  sw    $s2, 0x10($sp)
/* B02190 8008AFF0 24060008 */  li    $a2, 8
/* B02194 8008AFF4 0C02112F */  jal   Gfx_TextureI8
/* B02198 8008AFF8 24070010 */   li    $a3, 16
/* B0219C 8008AFFC 26730001 */  addiu $s3, $s3, 1
/* B021A0 8008B000 00139C00 */  sll   $s3, $s3, 0x10
/* B021A4 8008B004 00139C03 */  sra   $s3, $s3, 0x10
/* B021A8 8008B008 26100001 */  addiu $s0, $s0, 1
/* B021AC 8008B00C 26520008 */  addiu $s2, $s2, 8
/* B021B0 8008B010 00129400 */  sll   $s2, $s2, 0x10
/* B021B4 8008B014 00108400 */  sll   $s0, $s0, 0x10
/* B021B8 8008B018 0271082A */  slt   $at, $s3, $s1
/* B021BC 8008B01C 00108403 */  sra   $s0, $s0, 0x10
/* B021C0 8008B020 00129403 */  sra   $s2, $s2, 0x10
/* B021C4 8008B024 1420FFDF */  bnez  $at, .L8008AFA4
/* B021C8 8008B028 AE8202B0 */   sw    $v0, 0x2b0($s4)
.L8008B02C:
/* B021CC 8008B02C 0C0220A1 */  jal   Interface_DrawMagicBar
/* B021D0 8008B030 02E02025 */   move  $a0, $s7
/* B021D4 8008B034 0C0205B8 */  jal   Minimap_Draw
/* B021D8 8008B038 02E02025 */   move  $a0, $s7
/* B021DC 8008B03C 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* B021E0 8008B040 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* B021E4 8008B044 24010002 */  li    $at, 2
/* B021E8 8008B048 85420190 */  lh    $v0, 0x190($t2)
/* B021EC 8008B04C 10410005 */  beq   $v0, $at, .L8008B064
/* B021F0 8008B050 24010003 */   li    $at, 3
/* B021F4 8008B054 10410003 */  beq   $v0, $at, .L8008B064
/* B021F8 8008B058 26E41C90 */   addiu $a0, $s7, 0x1c90
/* B021FC 8008B05C 0C00B049 */  jal   func_8002C124
/* B02200 8008B060 02E02825 */   move  $a1, $s7
.L8008B064:
/* B02204 8008B064 0C025148 */  jal   func_80094520
/* B02208 8008B068 8EE40000 */   lw    $a0, ($s7)
/* B0220C 8008B06C 0C02232F */  jal   Interface_DrawItemButtons
/* B02210 8008B070 02E02025 */   move  $a0, $s7
/* B02214 8008B074 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02218 8008B078 3C03E700 */  lui   $v1, 0xe700
/* B0221C 8008B07C 3C0DFA00 */  lui   $t5, 0xfa00
/* B02220 8008B080 24EB0008 */  addiu $t3, $a3, 8
/* B02224 8008B084 AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B02228 8008B088 ACE00004 */  sw    $zero, 4($a3)
/* B0222C 8008B08C ACE30000 */  sw    $v1, ($a3)
/* B02230 8008B090 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02234 8008B094 2401FF00 */  li    $at, -256
/* B02238 8008B098 3C0BFF2F */  lui   $t3, (0xFF2FFFFF >> 16) # lui $t3, 0xff2f
/* B0223C 8008B09C 24EC0008 */  addiu $t4, $a3, 8
/* B02240 8008B0A0 AE8C02B0 */  sw    $t4, 0x2b0($s4)
/* B02244 8008B0A4 ACED0000 */  sw    $t5, ($a3)
/* B02248 8008B0A8 96CE0248 */  lhu   $t6, 0x248($s6)
/* B0224C 8008B0AC 3C0AFC11 */  lui   $t2, (0xFC119623 >> 16) # lui $t2, 0xfc11
/* B02250 8008B0B0 354A9623 */  ori   $t2, (0xFC119623 & 0xFFFF) # ori $t2, $t2, 0x9623
/* B02254 8008B0B4 31CF00FF */  andi  $t7, $t6, 0xff
/* B02258 8008B0B8 01E1C025 */  or    $t8, $t7, $at
/* B0225C 8008B0BC ACF80004 */  sw    $t8, 4($a3)
/* B02260 8008B0C0 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02264 8008B0C4 356BFFFF */  ori   $t3, (0xFF2FFFFF & 0xFFFF) # ori $t3, $t3, 0xffff
/* B02268 8008B0C8 24F90008 */  addiu $t9, $a3, 8
/* B0226C 8008B0CC AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B02270 8008B0D0 ACEB0004 */  sw    $t3, 4($a3)
/* B02274 8008B0D4 ACEA0000 */  sw    $t2, ($a3)
/* B02278 8008B0D8 86CC01FA */  lh    $t4, 0x1fa($s6)
/* B0227C 8008B0DC 55800039 */  bnezl $t4, .L8008B1C4
/* B02280 8008B0E0 8E8702B0 */   lw    $a3, 0x2b0($s4)
/* B02284 8008B0E4 92AD0068 */  lbu   $t5, 0x68($s5)
/* B02288 8008B0E8 240100FF */  li    $at, 255
/* B0228C 8008B0EC 02E02025 */  move  $a0, $s7
/* B02290 8008B0F0 11A1002A */  beq   $t5, $at, .L8008B19C
/* B02294 8008B0F4 00003025 */   move  $a2, $zero
/* B02298 8008B0F8 0C0226C0 */  jal   Interface_DrawItemIconTexture
/* B0229C 8008B0FC 8EC50138 */   lw    $a1, 0x138($s6)
/* B022A0 8008B100 8FAE0280 */  lw    $t6, 0x280($sp)
/* B022A4 8008B104 3C190001 */  lui   $t9, 1
/* B022A8 8008B108 0337C821 */  addu  $t9, $t9, $s7
/* B022AC 8008B10C 8DCF067C */  lw    $t7, 0x67c($t6)
/* B022B0 8008B110 000FC200 */  sll   $t8, $t7, 8
/* B022B4 8008B114 0702000F */  bltzl $t8, .L8008B154
/* B022B8 8008B118 8E8702B0 */   lw    $a3, 0x2b0($s4)
/* B022BC 8008B11C 83391E5C */  lb    $t9, 0x1e5c($t9)
/* B022C0 8008B120 2B210002 */  slti  $at, $t9, 2
/* B022C4 8008B124 5020000B */  beql  $at, $zero, .L8008B154
/* B022C8 8008B128 8E8702B0 */   lw    $a3, 0x2b0($s4)
/* B022CC 8008B12C 86EA00A4 */  lh    $t2, 0xa4($s7)
/* B022D0 8008B130 2401004B */  li    $at, 75
/* B022D4 8008B134 02E02025 */  move  $a0, $s7
/* B022D8 8008B138 55410019 */  bnel  $t2, $at, .L8008B1A0
/* B022DC 8008B13C 3C010001 */   lui   $at, 1
/* B022E0 8008B140 0C00B2D0 */  jal   Flags_GetSwitch
/* B022E4 8008B144 24050038 */   li    $a1, 56
/* B022E8 8008B148 50400015 */  beql  $v0, $zero, .L8008B1A0
/* B022EC 8008B14C 3C010001 */   lui   $at, 1
/* B022F0 8008B150 8E8702B0 */  lw    $a3, 0x2b0($s4)
.L8008B154:
/* B022F4 8008B154 3C0CE700 */  lui   $t4, 0xe700
/* B022F8 8008B158 3C10FC30 */  lui   $s0, (0xFC309661 >> 16) # lui $s0, 0xfc30
/* B022FC 8008B15C 24EB0008 */  addiu $t3, $a3, 8
/* B02300 8008B160 AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B02304 8008B164 ACE00004 */  sw    $zero, 4($a3)
/* B02308 8008B168 ACEC0000 */  sw    $t4, ($a3)
/* B0230C 8008B16C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02310 8008B170 3C11552E */  lui   $s1, (0x552EFF7F >> 16) # lui $s1, 0x552e
/* B02314 8008B174 3631FF7F */  ori   $s1, (0x552EFF7F & 0xFFFF) # ori $s1, $s1, 0xff7f
/* B02318 8008B178 24ED0008 */  addiu $t5, $a3, 8
/* B0231C 8008B17C AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B02320 8008B180 36109661 */  ori   $s0, (0xFC309661 & 0xFFFF) # ori $s0, $s0, 0x9661
/* B02324 8008B184 ACF00000 */  sw    $s0, ($a3)
/* B02328 8008B188 ACF10004 */  sw    $s1, 4($a3)
/* B0232C 8008B18C 86C60248 */  lh    $a2, 0x248($s6)
/* B02330 8008B190 02E02025 */  move  $a0, $s7
/* B02334 8008B194 0C02273E */  jal   Interface_DrawAmmoCount
/* B02338 8008B198 00002825 */   move  $a1, $zero
.L8008B19C:
/* B0233C 8008B19C 3C010001 */  lui   $at, 1
.L8008B1A0:
/* B02340 8008B1A0 02E17021 */  addu  $t6, $s7, $at
/* B02344 8008B1A4 3C10FC30 */  lui   $s0, (0xFC309661 >> 16) # lui $s0, 0xfc30
/* B02348 8008B1A8 3C11552E */  lui   $s1, (0x552EFF7F >> 16) # lui $s1, 0x552e
/* B0234C 8008B1AC 3631FF7F */  ori   $s1, (0x552EFF7F & 0xFFFF) # ori $s1, $s1, 0xff7f
/* B02350 8008B1B0 36109661 */  ori   $s0, (0xFC309661 & 0xFFFF) # ori $s0, $s0, 0x9661
/* B02354 8008B1B4 AFAE0060 */  sw    $t6, 0x60($sp)
/* B02358 8008B1B8 10000096 */  b     .L8008B414
/* B0235C 8008B1BC 3C12E400 */   lui   $s2, 0xe400
/* B02360 8008B1C0 8E8702B0 */  lw    $a3, 0x2b0($s4)
.L8008B1C4:
/* B02364 8008B1C4 3C10FC30 */  lui   $s0, (0xFC309661 >> 16) # lui $s0, 0xfc30
/* B02368 8008B1C8 3C11552E */  lui   $s1, (0x552EFF7F >> 16) # lui $s1, 0x552e
/* B0236C 8008B1CC 24EF0008 */  addiu $t7, $a3, 8
/* B02370 8008B1D0 AE8F02B0 */  sw    $t7, 0x2b0($s4)
/* B02374 8008B1D4 ACE00004 */  sw    $zero, 4($a3)
/* B02378 8008B1D8 ACE30000 */  sw    $v1, ($a3)
/* B0237C 8008B1DC 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02380 8008B1E0 3631FF7F */  ori   $s1, (0x552EFF7F & 0xFFFF) # ori $s1, $s1, 0xff7f
/* B02384 8008B1E4 36109661 */  ori   $s0, (0xFC309661 & 0xFFFF) # ori $s0, $s0, 0x9661
/* B02388 8008B1E8 24F80008 */  addiu $t8, $a3, 8
/* B0238C 8008B1EC AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B02390 8008B1F0 ACF10004 */  sw    $s1, 4($a3)
/* B02394 8008B1F4 ACF00000 */  sw    $s0, ($a3)
/* B02398 8008B1F8 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B0239C 8008B1FC 3C0AFA00 */  lui   $t2, 0xfa00
/* B023A0 8008B200 2401FF00 */  li    $at, -256
/* B023A4 8008B204 24F90008 */  addiu $t9, $a3, 8
/* B023A8 8008B208 AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B023AC 8008B20C ACEA0000 */  sw    $t2, ($a3)
/* B023B0 8008B210 96CB0248 */  lhu   $t3, 0x248($s6)
/* B023B4 8008B214 3C0FFD70 */  lui   $t7, 0xfd70
/* B023B8 8008B218 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* B023BC 8008B21C 316C00FF */  andi  $t4, $t3, 0xff
/* B023C0 8008B220 01816825 */  or    $t5, $t4, $at
/* B023C4 8008B224 ACED0004 */  sw    $t5, 4($a3)
/* B023C8 8008B228 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B023CC 8008B22C 3C0C0700 */  lui   $t4, 0x700
/* B023D0 8008B230 3C0BF570 */  lui   $t3, 0xf570
/* B023D4 8008B234 24EE0008 */  addiu $t6, $a3, 8
/* B023D8 8008B238 AE8E02B0 */  sw    $t6, 0x2b0($s4)
/* B023DC 8008B23C ACEF0000 */  sw    $t7, ($a3)
/* B023E0 8008B240 8ED80134 */  lw    $t8, 0x134($s6)
/* B023E4 8008B244 3C0EE600 */  lui   $t6, 0xe600
/* B023E8 8008B248 3C0142C8 */  lui   $at, 0x42c8
/* B023EC 8008B24C 27190180 */  addiu $t9, $t8, 0x180
/* B023F0 8008B250 ACF90004 */  sw    $t9, 4($a3)
/* B023F4 8008B254 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B023F8 8008B258 3C19070B */  lui   $t9, (0x070BF2AB >> 16) # lui $t9, 0x70b
/* B023FC 8008B25C 3739F2AB */  ori   $t9, (0x070BF2AB & 0xFFFF) # ori $t9, $t9, 0xf2ab
/* B02400 8008B260 24EA0008 */  addiu $t2, $a3, 8
/* B02404 8008B264 AE8A02B0 */  sw    $t2, 0x2b0($s4)
/* B02408 8008B268 ACEC0004 */  sw    $t4, 4($a3)
/* B0240C 8008B26C ACEB0000 */  sw    $t3, ($a3)
/* B02410 8008B270 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02414 8008B274 3C18F300 */  lui   $t8, 0xf300
/* B02418 8008B278 3C0BE700 */  lui   $t3, 0xe700
/* B0241C 8008B27C 24ED0008 */  addiu $t5, $a3, 8
/* B02420 8008B280 AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B02424 8008B284 ACE00004 */  sw    $zero, 4($a3)
/* B02428 8008B288 ACEE0000 */  sw    $t6, ($a3)
/* B0242C 8008B28C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02430 8008B290 3C0DF560 */  lui   $t5, (0xF5600600 >> 16) # lui $t5, 0xf560
/* B02434 8008B294 35AD0600 */  ori   $t5, (0xF5600600 & 0xFFFF) # ori $t5, $t5, 0x600
/* B02438 8008B298 24EF0008 */  addiu $t7, $a3, 8
/* B0243C 8008B29C AE8F02B0 */  sw    $t7, 0x2b0($s4)
/* B02440 8008B2A0 ACF90004 */  sw    $t9, 4($a3)
/* B02444 8008B2A4 ACF80000 */  sw    $t8, ($a3)
/* B02448 8008B2A8 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B0244C 8008B2AC 3C18000B */  lui   $t8, (0x000BC03C >> 16) # lui $t8, 0xb
/* B02450 8008B2B0 3718C03C */  ori   $t8, (0x000BC03C & 0xFFFF) # ori $t8, $t8, 0xc03c
/* B02454 8008B2B4 24EA0008 */  addiu $t2, $a3, 8
/* B02458 8008B2B8 AE8A02B0 */  sw    $t2, 0x2b0($s4)
/* B0245C 8008B2BC ACE00004 */  sw    $zero, 4($a3)
/* B02460 8008B2C0 ACEB0000 */  sw    $t3, ($a3)
/* B02464 8008B2C4 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02468 8008B2C8 3C0FF200 */  li    $t7, 0xF2000000 # 0.000000
/* B0246C 8008B2CC 44814000 */  mtc1  $at, $f8
/* B02470 8008B2D0 24EC0008 */  addiu $t4, $a3, 8
/* B02474 8008B2D4 AE8C02B0 */  sw    $t4, 0x2b0($s4)
/* B02478 8008B2D8 ACE00004 */  sw    $zero, 4($a3)
/* B0247C 8008B2DC ACED0000 */  sw    $t5, ($a3)
/* B02480 8008B2E0 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02484 8008B2E4 3C014480 */  li    $at, 0x44800000 # 0.000000
/* B02488 8008B2E8 44818000 */  mtc1  $at, $f16
/* B0248C 8008B2EC 24EE0008 */  addiu $t6, $a3, 8
/* B02490 8008B2F0 AE8E02B0 */  sw    $t6, 0x2b0($s4)
/* B02494 8008B2F4 ACF80004 */  sw    $t8, 4($a3)
/* B02498 8008B2F8 ACEF0000 */  sw    $t7, ($a3)
/* B0249C 8008B2FC 92B91409 */  lbu   $t9, 0x1409($s5)
/* B024A0 8008B300 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* B024A4 8008B304 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* B024A8 8008B308 00195040 */  sll   $t2, $t9, 1
/* B024AC 8008B30C 010A5821 */  addu  $t3, $t0, $t2
/* B024B0 8008B310 856C0DDE */  lh    $t4, 0xdde($t3)
/* B024B4 8008B314 3C12E400 */  lui   $s2, 0xe400
/* B024B8 8008B318 3C010001 */  li    $at, 0x00010000 # 0.000000
/* B024BC 8008B31C 448C2000 */  mtc1  $t4, $f4
/* B024C0 8008B320 00000000 */  nop   
/* B024C4 8008B324 468021A0 */  cvt.s.w $f6, $f4
/* B024C8 8008B328 46083283 */  div.s $f10, $f6, $f8
/* B024CC 8008B32C 460A8483 */  div.s $f18, $f16, $f10
/* B024D0 8008B330 4600910D */  trunc.w.s $f4, $f18
/* B024D4 8008B334 440E2000 */  mfc1  $t6, $f4
/* B024D8 8008B338 00000000 */  nop   
/* B024DC 8008B33C A50E0D94 */  sh    $t6, 0xd94($t0)
/* B024E0 8008B340 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B024E4 8008B344 24EF0008 */  addiu $t7, $a3, 8
/* B024E8 8008B348 AE8F02B0 */  sw    $t7, 0x2b0($s4)
/* B024EC 8008B34C 92B91409 */  lbu   $t9, 0x1409($s5)
/* B024F0 8008B350 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* B024F4 8008B354 00195040 */  sll   $t2, $t9, 1
/* B024F8 8008B358 030A1021 */  addu  $v0, $t8, $t2
/* B024FC 8008B35C 844B0DEA */  lh    $t3, 0xdea($v0)
/* B02500 8008B360 84590DE4 */  lh    $t9, 0xde4($v0)
/* B02504 8008B364 256C0010 */  addiu $t4, $t3, 0x10
/* B02508 8008B368 27380030 */  addiu $t8, $t9, 0x30
/* B0250C 8008B36C 00185080 */  sll   $t2, $t8, 2
/* B02510 8008B370 000C6880 */  sll   $t5, $t4, 2
/* B02514 8008B374 31AE0FFF */  andi  $t6, $t5, 0xfff
/* B02518 8008B378 314B0FFF */  andi  $t3, $t2, 0xfff
/* B0251C 8008B37C 000B6300 */  sll   $t4, $t3, 0xc
/* B02520 8008B380 01D27825 */  or    $t7, $t6, $s2
/* B02524 8008B384 01EC6825 */  or    $t5, $t7, $t4
/* B02528 8008B388 ACED0000 */  sw    $t5, ($a3)
/* B0252C 8008B38C 92B91409 */  lbu   $t9, 0x1409($s5)
/* B02530 8008B390 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* B02534 8008B394 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B02538 8008B398 0019C040 */  sll   $t8, $t9, 1
/* B0253C 8008B39C 01D81021 */  addu  $v0, $t6, $t8
/* B02540 8008B3A0 844C0DE4 */  lh    $t4, 0xde4($v0)
/* B02544 8008B3A4 844A0DEA */  lh    $t2, 0xdea($v0)
/* B02548 8008B3A8 000C6880 */  sll   $t5, $t4, 2
/* B0254C 8008B3AC 31B90FFF */  andi  $t9, $t5, 0xfff
/* B02550 8008B3B0 000A5880 */  sll   $t3, $t2, 2
/* B02554 8008B3B4 316F0FFF */  andi  $t7, $t3, 0xfff
/* B02558 8008B3B8 00197300 */  sll   $t6, $t9, 0xc
/* B0255C 8008B3BC 01EEC025 */  or    $t8, $t7, $t6
/* B02560 8008B3C0 ACF80004 */  sw    $t8, 4($a3)
/* B02564 8008B3C4 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02568 8008B3C8 3C0BE100 */  lui   $t3, 0xe100
/* B0256C 8008B3CC 3C0DF100 */  lui   $t5, 0xf100
/* B02570 8008B3D0 24EA0008 */  addiu $t2, $a3, 8
/* B02574 8008B3D4 AE8A02B0 */  sw    $t2, 0x2b0($s4)
/* B02578 8008B3D8 ACE00004 */  sw    $zero, 4($a3)
/* B0257C 8008B3DC ACEB0000 */  sw    $t3, ($a3)
/* B02580 8008B3E0 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02584 8008B3E4 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* B02588 8008B3E8 02E1C021 */  addu  $t8, $s7, $at
/* B0258C 8008B3EC 24EC0008 */  addiu $t4, $a3, 8
/* B02590 8008B3F0 AE8C02B0 */  sw    $t4, 0x2b0($s4)
/* B02594 8008B3F4 ACED0000 */  sw    $t5, ($a3)
/* B02598 8008B3F8 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* B0259C 8008B3FC 87230D94 */  lh    $v1, 0xd94($t9)
/* B025A0 8008B400 3063FFFF */  andi  $v1, $v1, 0xffff
/* B025A4 8008B404 00037C00 */  sll   $t7, $v1, 0x10
/* B025A8 8008B408 006F7025 */  or    $t6, $v1, $t7
/* B025AC 8008B40C ACEE0004 */  sw    $t6, 4($a3)
/* B025B0 8008B410 AFB80060 */  sw    $t8, 0x60($sp)
.L8008B414:
/* B025B4 8008B414 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B025B8 8008B418 3C0BE700 */  lui   $t3, 0xe700
/* B025BC 8008B41C 24EA0008 */  addiu $t2, $a3, 8
/* B025C0 8008B420 AE8A02B0 */  sw    $t2, 0x2b0($s4)
/* B025C4 8008B424 ACE00004 */  sw    $zero, 4($a3)
/* B025C8 8008B428 ACEB0000 */  sw    $t3, ($a3)
/* B025CC 8008B42C 92AC0069 */  lbu   $t4, 0x69($s5)
/* B025D0 8008B430 298100F0 */  slti  $at, $t4, 0xf0
/* B025D4 8008B434 50200029 */  beql  $at, $zero, .L8008B4DC
/* B025D8 8008B438 8E8702B0 */   lw    $a3, 0x2b0($s4)
/* B025DC 8008B43C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B025E0 8008B440 3C19FA00 */  lui   $t9, 0xfa00
/* B025E4 8008B444 2401FF00 */  li    $at, -256
/* B025E8 8008B448 24ED0008 */  addiu $t5, $a3, 8
/* B025EC 8008B44C AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B025F0 8008B450 ACF90000 */  sw    $t9, ($a3)
/* B025F4 8008B454 96CF024A */  lhu   $t7, 0x24a($s6)
/* B025F8 8008B458 3C0BFC11 */  lui   $t3, (0xFC119623 >> 16) # lui $t3, 0xfc11
/* B025FC 8008B45C 3C0CFF2F */  lui   $t4, (0xFF2FFFFF >> 16) # lui $t4, 0xff2f
/* B02600 8008B460 31EE00FF */  andi  $t6, $t7, 0xff
/* B02604 8008B464 01C1C025 */  or    $t8, $t6, $at
/* B02608 8008B468 ACF80004 */  sw    $t8, 4($a3)
/* B0260C 8008B46C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02610 8008B470 358CFFFF */  ori   $t4, (0xFF2FFFFF & 0xFFFF) # ori $t4, $t4, 0xffff
/* B02614 8008B474 356B9623 */  ori   $t3, (0xFC119623 & 0xFFFF) # ori $t3, $t3, 0x9623
/* B02618 8008B478 24EA0008 */  addiu $t2, $a3, 8
/* B0261C 8008B47C AE8A02B0 */  sw    $t2, 0x2b0($s4)
/* B02620 8008B480 ACEC0004 */  sw    $t4, 4($a3)
/* B02624 8008B484 ACEB0000 */  sw    $t3, ($a3)
/* B02628 8008B488 8EC50138 */  lw    $a1, 0x138($s6)
/* B0262C 8008B48C 02E02025 */  move  $a0, $s7
/* B02630 8008B490 24060001 */  li    $a2, 1
/* B02634 8008B494 0C0226C0 */  jal   Interface_DrawItemIconTexture
/* B02638 8008B498 24A51000 */   addiu $a1, $a1, 0x1000
/* B0263C 8008B49C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02640 8008B4A0 3C19E700 */  lui   $t9, 0xe700
/* B02644 8008B4A4 02E02025 */  move  $a0, $s7
/* B02648 8008B4A8 24ED0008 */  addiu $t5, $a3, 8
/* B0264C 8008B4AC AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B02650 8008B4B0 ACE00004 */  sw    $zero, 4($a3)
/* B02654 8008B4B4 ACF90000 */  sw    $t9, ($a3)
/* B02658 8008B4B8 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B0265C 8008B4BC 24050001 */  li    $a1, 1
/* B02660 8008B4C0 24EF0008 */  addiu $t7, $a3, 8
/* B02664 8008B4C4 AE8F02B0 */  sw    $t7, 0x2b0($s4)
/* B02668 8008B4C8 ACF10004 */  sw    $s1, 4($a3)
/* B0266C 8008B4CC ACF00000 */  sw    $s0, ($a3)
/* B02670 8008B4D0 0C02273E */  jal   Interface_DrawAmmoCount
/* B02674 8008B4D4 86C6024A */   lh    $a2, 0x24a($s6)
/* B02678 8008B4D8 8E8702B0 */  lw    $a3, 0x2b0($s4)
.L8008B4DC:
/* B0267C 8008B4DC 3C18E700 */  lui   $t8, 0xe700
/* B02680 8008B4E0 24EE0008 */  addiu $t6, $a3, 8
/* B02684 8008B4E4 AE8E02B0 */  sw    $t6, 0x2b0($s4)
/* B02688 8008B4E8 ACE00004 */  sw    $zero, 4($a3)
/* B0268C 8008B4EC ACF80000 */  sw    $t8, ($a3)
/* B02690 8008B4F0 92AA006A */  lbu   $t2, 0x6a($s5)
/* B02694 8008B4F4 294100F0 */  slti  $at, $t2, 0xf0
/* B02698 8008B4F8 50200029 */  beql  $at, $zero, .L8008B5A0
/* B0269C 8008B4FC 8E8702B0 */   lw    $a3, 0x2b0($s4)
/* B026A0 8008B500 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B026A4 8008B504 3C0CFA00 */  lui   $t4, 0xfa00
/* B026A8 8008B508 2401FF00 */  li    $at, -256
/* B026AC 8008B50C 24EB0008 */  addiu $t3, $a3, 8
/* B026B0 8008B510 AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B026B4 8008B514 ACEC0000 */  sw    $t4, ($a3)
/* B026B8 8008B518 96CD024C */  lhu   $t5, 0x24c($s6)
/* B026BC 8008B51C 3C18FC11 */  lui   $t8, (0xFC119623 >> 16) # lui $t8, 0xfc11
/* B026C0 8008B520 3C0AFF2F */  lui   $t2, (0xFF2FFFFF >> 16) # lui $t2, 0xff2f
/* B026C4 8008B524 31B900FF */  andi  $t9, $t5, 0xff
/* B026C8 8008B528 03217825 */  or    $t7, $t9, $at
/* B026CC 8008B52C ACEF0004 */  sw    $t7, 4($a3)
/* B026D0 8008B530 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B026D4 8008B534 354AFFFF */  ori   $t2, (0xFF2FFFFF & 0xFFFF) # ori $t2, $t2, 0xffff
/* B026D8 8008B538 37189623 */  ori   $t8, (0xFC119623 & 0xFFFF) # ori $t8, $t8, 0x9623
/* B026DC 8008B53C 24EE0008 */  addiu $t6, $a3, 8
/* B026E0 8008B540 AE8E02B0 */  sw    $t6, 0x2b0($s4)
/* B026E4 8008B544 ACEA0004 */  sw    $t2, 4($a3)
/* B026E8 8008B548 ACF80000 */  sw    $t8, ($a3)
/* B026EC 8008B54C 8EC50138 */  lw    $a1, 0x138($s6)
/* B026F0 8008B550 02E02025 */  move  $a0, $s7
/* B026F4 8008B554 24060002 */  li    $a2, 2
/* B026F8 8008B558 0C0226C0 */  jal   Interface_DrawItemIconTexture
/* B026FC 8008B55C 24A52000 */   addiu $a1, $a1, 0x2000
/* B02700 8008B560 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02704 8008B564 3C0CE700 */  lui   $t4, 0xe700
/* B02708 8008B568 02E02025 */  move  $a0, $s7
/* B0270C 8008B56C 24EB0008 */  addiu $t3, $a3, 8
/* B02710 8008B570 AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B02714 8008B574 ACE00004 */  sw    $zero, 4($a3)
/* B02718 8008B578 ACEC0000 */  sw    $t4, ($a3)
/* B0271C 8008B57C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02720 8008B580 24050002 */  li    $a1, 2
/* B02724 8008B584 24ED0008 */  addiu $t5, $a3, 8
/* B02728 8008B588 AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B0272C 8008B58C ACF10004 */  sw    $s1, 4($a3)
/* B02730 8008B590 ACF00000 */  sw    $s0, ($a3)
/* B02734 8008B594 0C02273E */  jal   Interface_DrawAmmoCount
/* B02738 8008B598 86C6024C */   lh    $a2, 0x24c($s6)
/* B0273C 8008B59C 8E8702B0 */  lw    $a3, 0x2b0($s4)
.L8008B5A0:
/* B02740 8008B5A0 3C0FE700 */  lui   $t7, 0xe700
/* B02744 8008B5A4 24F90008 */  addiu $t9, $a3, 8
/* B02748 8008B5A8 AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B0274C 8008B5AC ACE00004 */  sw    $zero, 4($a3)
/* B02750 8008B5B0 ACEF0000 */  sw    $t7, ($a3)
/* B02754 8008B5B4 92AE006B */  lbu   $t6, 0x6b($s5)
/* B02758 8008B5B8 29C100F0 */  slti  $at, $t6, 0xf0
/* B0275C 8008B5BC 10200028 */  beqz  $at, .L8008B660
/* B02760 8008B5C0 00000000 */   nop   
/* B02764 8008B5C4 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02768 8008B5C8 3C0AFA00 */  lui   $t2, 0xfa00
/* B0276C 8008B5CC 2401FF00 */  li    $at, -256
/* B02770 8008B5D0 24F80008 */  addiu $t8, $a3, 8
/* B02774 8008B5D4 AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B02778 8008B5D8 ACEA0000 */  sw    $t2, ($a3)
/* B0277C 8008B5DC 96CB024E */  lhu   $t3, 0x24e($s6)
/* B02780 8008B5E0 3C0FFC11 */  lui   $t7, (0xFC119623 >> 16) # lui $t7, 0xfc11
/* B02784 8008B5E4 3C0EFF2F */  lui   $t6, (0xFF2FFFFF >> 16) # lui $t6, 0xff2f
/* B02788 8008B5E8 316C00FF */  andi  $t4, $t3, 0xff
/* B0278C 8008B5EC 01816825 */  or    $t5, $t4, $at
/* B02790 8008B5F0 ACED0004 */  sw    $t5, 4($a3)
/* B02794 8008B5F4 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02798 8008B5F8 35CEFFFF */  ori   $t6, (0xFF2FFFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* B0279C 8008B5FC 35EF9623 */  ori   $t7, (0xFC119623 & 0xFFFF) # ori $t7, $t7, 0x9623
/* B027A0 8008B600 24F90008 */  addiu $t9, $a3, 8
/* B027A4 8008B604 AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B027A8 8008B608 ACEE0004 */  sw    $t6, 4($a3)
/* B027AC 8008B60C ACEF0000 */  sw    $t7, ($a3)
/* B027B0 8008B610 8EC50138 */  lw    $a1, 0x138($s6)
/* B027B4 8008B614 02E02025 */  move  $a0, $s7
/* B027B8 8008B618 24060003 */  li    $a2, 3
/* B027BC 8008B61C 0C0226C0 */  jal   Interface_DrawItemIconTexture
/* B027C0 8008B620 24A53000 */   addiu $a1, $a1, 0x3000
/* B027C4 8008B624 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B027C8 8008B628 3C0AE700 */  lui   $t2, 0xe700
/* B027CC 8008B62C 02E02025 */  move  $a0, $s7
/* B027D0 8008B630 24F80008 */  addiu $t8, $a3, 8
/* B027D4 8008B634 AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B027D8 8008B638 ACE00004 */  sw    $zero, 4($a3)
/* B027DC 8008B63C ACEA0000 */  sw    $t2, ($a3)
/* B027E0 8008B640 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B027E4 8008B644 24050003 */  li    $a1, 3
/* B027E8 8008B648 24EB0008 */  addiu $t3, $a3, 8
/* B027EC 8008B64C AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B027F0 8008B650 ACF10004 */  sw    $s1, 4($a3)
/* B027F4 8008B654 ACF00000 */  sw    $s0, ($a3)
/* B027F8 8008B658 0C02273E */  jal   Interface_DrawAmmoCount
/* B027FC 8008B65C 86C6024E */   lh    $a2, 0x24e($s6)
.L8008B660:
/* B02800 8008B660 0C025285 */  jal   func_80094A14
/* B02804 8008B664 8EE40000 */   lw    $a0, ($s7)
/* B02808 8008B668 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* B0280C 8008B66C 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* B02810 8008B670 02E02025 */  move  $a0, $s7
/* B02814 8008B674 85070AB6 */  lh    $a3, 0xab6($t0)
/* B02818 8008B678 85050AB4 */  lh    $a1, 0xab4($t0)
/* B0281C 8008B67C 24EC002D */  addiu $t4, $a3, 0x2d
/* B02820 8008B680 AFAC0010 */  sw    $t4, 0x10($sp)
/* B02824 8008B684 0C022A2E */  jal   func_8008A8B8
/* B02828 8008B688 24A6002D */   addiu $a2, $a1, 0x2d
/* B0282C 8008B68C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02830 8008B690 3C19D9FF */  lui   $t9, (0xD9FFF9FF >> 16) # lui $t9, 0xd9ff
/* B02834 8008B694 3739F9FF */  ori   $t9, (0xD9FFF9FF & 0xFFFF) # ori $t9, $t9, 0xf9ff
/* B02838 8008B698 24ED0008 */  addiu $t5, $a3, 8
/* B0283C 8008B69C AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B02840 8008B6A0 ACE00004 */  sw    $zero, 4($a3)
/* B02844 8008B6A4 ACF90000 */  sw    $t9, ($a3)
/* B02848 8008B6A8 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B0284C 8008B6AC 3C0EFC11 */  lui   $t6, (0xFC119623 >> 16) # lui $t6, 0xfc11
/* B02850 8008B6B0 3C18FF2F */  lui   $t8, (0xFF2FFFFF >> 16) # lui $t8, 0xff2f
/* B02854 8008B6B4 24EF0008 */  addiu $t7, $a3, 8
/* B02858 8008B6B8 AE8F02B0 */  sw    $t7, 0x2b0($s4)
/* B0285C 8008B6BC 3718FFFF */  ori   $t8, (0xFF2FFFFF & 0xFFFF) # ori $t8, $t8, 0xffff
/* B02860 8008B6C0 35CE9623 */  ori   $t6, (0xFC119623 & 0xFFFF) # ori $t6, $t6, 0x9623
/* B02864 8008B6C4 ACEE0000 */  sw    $t6, ($a3)
/* B02868 8008B6C8 ACF80004 */  sw    $t8, 4($a3)
/* B0286C 8008B6CC 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02870 8008B6D0 3C0BFA00 */  lui   $t3, 0xfa00
/* B02874 8008B6D4 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* B02878 8008B6D8 24EA0008 */  addiu $t2, $a3, 8
/* B0287C 8008B6DC AE8A02B0 */  sw    $t2, 0x2b0($s4)
/* B02880 8008B6E0 ACEB0000 */  sw    $t3, ($a3)
/* B02884 8008B6E4 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* B02888 8008B6E8 02E02025 */  move  $a0, $s7
/* B0288C 8008B6EC 850C0AC4 */  lh    $t4, 0xac4($t0)
/* B02890 8008B6F0 850E0AC0 */  lh    $t6, 0xac0($t0)
/* B02894 8008B6F4 850B0AC2 */  lh    $t3, 0xac2($t0)
/* B02898 8008B6F8 318D00FF */  andi  $t5, $t4, 0xff
/* B0289C 8008B6FC 000EC600 */  sll   $t8, $t6, 0x18
/* B028A0 8008B700 96CE0246 */  lhu   $t6, 0x246($s6)
/* B028A4 8008B704 000DCA00 */  sll   $t9, $t5, 8
/* B028A8 8008B708 03385025 */  or    $t2, $t9, $t8
/* B028AC 8008B70C 316C00FF */  andi  $t4, $t3, 0xff
/* B028B0 8008B710 000C6C00 */  sll   $t5, $t4, 0x10
/* B028B4 8008B714 014D7825 */  or    $t7, $t2, $t5
/* B028B8 8008B718 31D900FF */  andi  $t9, $t6, 0xff
/* B028BC 8008B71C 01F9C025 */  or    $t8, $t7, $t9
/* B028C0 8008B720 0C02286F */  jal   Interface_DrawActionButton
/* B028C4 8008B724 ACF80004 */   sw    $t8, 4($a3)
/* B028C8 8008B728 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B028CC 8008B72C 3C0CE700 */  lui   $t4, 0xe700
/* B028D0 8008B730 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* B028D4 8008B734 24EB0008 */  addiu $t3, $a3, 8
/* B028D8 8008B738 AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B028DC 8008B73C ACE00004 */  sw    $zero, 4($a3)
/* B028E0 8008B740 ACEC0000 */  sw    $t4, ($a3)
/* B028E4 8008B744 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* B028E8 8008B748 02E02025 */  move  $a0, $s7
/* B028EC 8008B74C 85070ABC */  lh    $a3, 0xabc($t0)
/* B028F0 8008B750 85050ABA */  lh    $a1, 0xaba($t0)
/* B028F4 8008B754 24EA002D */  addiu $t2, $a3, 0x2d
/* B028F8 8008B758 AFAA0010 */  sw    $t2, 0x10($sp)
/* B028FC 8008B75C 0C022A2E */  jal   func_8008A8B8
/* B02900 8008B760 24A6002D */   addiu $a2, $a1, 0x2d
/* B02904 8008B764 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02908 8008B768 3C0ED9FF */  lui   $t6, (0xD9FFFFFF >> 16) # lui $t6, 0xd9ff
/* B0290C 8008B76C 35CEFFFF */  ori   $t6, (0xD9FFFFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* B02910 8008B770 24ED0008 */  addiu $t5, $a3, 8
/* B02914 8008B774 AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B02918 8008B778 240F0400 */  li    $t7, 1024
/* B0291C 8008B77C ACEF0004 */  sw    $t7, 4($a3)
/* B02920 8008B780 ACEE0000 */  sw    $t6, ($a3)
/* B02924 8008B784 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02928 8008B788 3C0BFA00 */  lui   $t3, 0xfa00
/* B0292C 8008B78C 2401FF00 */  li    $at, -256
/* B02930 8008B790 24F90008 */  addiu $t9, $a3, 8
/* B02934 8008B794 AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B02938 8008B798 ACF10004 */  sw    $s1, 4($a3)
/* B0293C 8008B79C ACF00000 */  sw    $s0, ($a3)
/* B02940 8008B7A0 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02944 8008B7A4 3C0FFB00 */  lui   $t7, 0xfb00
/* B02948 8008B7A8 3C198016 */  lui   $t9, %hi(gGameInfo)
/* B0294C 8008B7AC 24F80008 */  addiu $t8, $a3, 8
/* B02950 8008B7B0 AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B02954 8008B7B4 ACEB0000 */  sw    $t3, ($a3)
/* B02958 8008B7B8 96CC0246 */  lhu   $t4, 0x246($s6)
/* B0295C 8008B7BC 44806000 */  mtc1  $zero, $f12
/* B02960 8008B7C0 318A00FF */  andi  $t2, $t4, 0xff
/* B02964 8008B7C4 01416825 */  or    $t5, $t2, $at
/* B02968 8008B7C8 ACED0004 */  sw    $t5, 4($a3)
/* B0296C 8008B7CC 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02970 8008B7D0 3C014120 */  li    $at, 0x41200000 # 0.000000
/* B02974 8008B7D4 44818000 */  mtc1  $at, $f16
/* B02978 8008B7D8 24EE0008 */  addiu $t6, $a3, 8
/* B0297C 8008B7DC AE8E02B0 */  sw    $t6, 0x2b0($s4)
/* B02980 8008B7E0 ACE00004 */  sw    $zero, 4($a3)
/* B02984 8008B7E4 ACEF0000 */  sw    $t7, ($a3)
/* B02988 8008B7E8 92B81409 */  lbu   $t8, 0x1409($s5)
/* B0298C 8008B7EC 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* B02990 8008B7F0 00003825 */  move  $a3, $zero
/* B02994 8008B7F4 00185840 */  sll   $t3, $t8, 1
/* B02998 8008B7F8 032B6021 */  addu  $t4, $t9, $t3
/* B0299C 8008B7FC 858A0DF0 */  lh    $t2, 0xdf0($t4)
/* B029A0 8008B800 46006386 */  mov.s $f14, $f12
/* B029A4 8008B804 448A3000 */  mtc1  $t2, $f6
/* B029A8 8008B808 00000000 */  nop   
/* B029AC 8008B80C 46803220 */  cvt.s.w $f8, $f6
/* B029B0 8008B810 46104283 */  div.s $f10, $f8, $f16
/* B029B4 8008B814 44065000 */  mfc1  $a2, $f10
/* B029B8 8008B818 0C034261 */  jal   Matrix_Translate
/* B029BC 8008B81C 00000000 */   nop   
/* B029C0 8008B820 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B029C4 8008B824 44816000 */  mtc1  $at, $f12
/* B029C8 8008B828 24070001 */  li    $a3, 1
/* B029CC 8008B82C 44066000 */  mfc1  $a2, $f12
/* B029D0 8008B830 0C0342A3 */  jal   Matrix_Scale
/* B029D4 8008B834 46006386 */   mov.s $f14, $f12
/* B029D8 8008B838 3C018014 */  lui   $at, %hi(D_8013E654)
/* B029DC 8008B83C C424E654 */  lwc1  $f4, %lo(D_8013E654)($at)
/* B029E0 8008B840 C6D201F4 */  lwc1  $f18, 0x1f4($s6)
/* B029E4 8008B844 24050001 */  li    $a1, 1
/* B029E8 8008B848 0C0342DC */  jal   Matrix_RotateX
/* B029EC 8008B84C 46049303 */   div.s $f12, $f18, $f4
/* B029F0 8008B850 8E9002B0 */  lw    $s0, 0x2b0($s4)
/* B029F4 8008B854 3C13DA38 */  lui   $s3, (0xDA380003 >> 16) # lui $s3, 0xda38
/* B029F8 8008B858 36730003 */  ori   $s3, (0xDA380003 & 0xFFFF) # ori $s3, $s3, 3
/* B029FC 8008B85C 260D0008 */  addiu $t5, $s0, 8
/* B02A00 8008B860 AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B02A04 8008B864 3C058014 */  lui   $a1, %hi(D_8013E3A0) # $a1, 0x8014
/* B02A08 8008B868 AE130000 */  sw    $s3, ($s0)
/* B02A0C 8008B86C 8EE40000 */  lw    $a0, ($s7)
/* B02A10 8008B870 24A5E3A0 */  addiu $a1, %lo(D_8013E3A0) # addiu $a1, $a1, -0x1c60
/* B02A14 8008B874 0C0346A2 */  jal   Matrix_NewMtx
/* B02A18 8008B878 24060E75 */   li    $a2, 3701
/* B02A1C 8008B87C AE020004 */  sw    $v0, 4($s0)
/* B02A20 8008B880 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02A24 8008B884 3C110100 */  lui   $s1, (0x01004008 >> 16) # lui $s1, 0x100
/* B02A28 8008B888 36314008 */  ori   $s1, (0x01004008 & 0xFFFF) # ori $s1, $s1, 0x4008
/* B02A2C 8008B88C 24EE0008 */  addiu $t6, $a3, 8
/* B02A30 8008B890 AE8E02B0 */  sw    $t6, 0x2b0($s4)
/* B02A34 8008B894 ACF10000 */  sw    $s1, ($a3)
/* B02A38 8008B898 8ECF0128 */  lw    $t7, 0x128($s6)
/* B02A3C 8008B89C 25F80040 */  addiu $t8, $t7, 0x40
/* B02A40 8008B8A0 ACF80004 */  sw    $t8, 4($a3)
/* B02A44 8008B8A4 86C201EC */  lh    $v0, 0x1ec($s6)
/* B02A48 8008B8A8 28410002 */  slti  $at, $v0, 2
/* B02A4C 8008B8AC 14200003 */  bnez  $at, .L8008B8BC
/* B02A50 8008B8B0 24010003 */   li    $at, 3
/* B02A54 8008B8B4 54410007 */  bnel  $v0, $at, .L8008B8D4
/* B02A58 8008B8B8 8EC50134 */   lw    $a1, 0x134($s6)
.L8008B8BC:
/* B02A5C 8008B8BC 8EE40000 */  lw    $a0, ($s7)
/* B02A60 8008B8C0 0C0222E1 */  jal   Interface_DrawActionLabel
/* B02A64 8008B8C4 8EC50134 */   lw    $a1, 0x134($s6)
/* B02A68 8008B8C8 10000006 */  b     .L8008B8E4
/* B02A6C 8008B8CC 8E8702B0 */   lw    $a3, 0x2b0($s4)
/* B02A70 8008B8D0 8EC50134 */  lw    $a1, 0x134($s6)
.L8008B8D4:
/* B02A74 8008B8D4 8EE40000 */  lw    $a0, ($s7)
/* B02A78 8008B8D8 0C0222E1 */  jal   Interface_DrawActionLabel
/* B02A7C 8008B8DC 24A50180 */   addiu $a1, $a1, 0x180
/* B02A80 8008B8E0 8E8702B0 */  lw    $a3, 0x2b0($s4)
.L8008B8E4:
/* B02A84 8008B8E4 3C0BE700 */  lui   $t3, 0xe700
/* B02A88 8008B8E8 02C02025 */  move  $a0, $s6
/* B02A8C 8008B8EC 24F90008 */  addiu $t9, $a3, 8
/* B02A90 8008B8F0 AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B02A94 8008B8F4 ACE00004 */  sw    $zero, 4($a3)
/* B02A98 8008B8F8 0C022A65 */  jal   func_8008A994
/* B02A9C 8008B8FC ACEB0000 */   sw    $t3, ($a3)
/* B02AA0 8008B900 8FAC0068 */  lw    $t4, 0x68($sp)
/* B02AA4 8008B904 24010006 */  li    $at, 6
/* B02AA8 8008B908 958A01D4 */  lhu   $t2, 0x1d4($t4)
/* B02AAC 8008B90C 15410153 */  bne   $t2, $at, .L8008BE5C
/* B02AB0 8008B910 00000000 */   nop   
/* B02AB4 8008B914 958D01E4 */  lhu   $t5, 0x1e4($t4)
/* B02AB8 8008B918 24010003 */  li    $at, 3
/* B02ABC 8008B91C 15A1014F */  bne   $t5, $at, .L8008BE5C
/* B02AC0 8008B920 00000000 */   nop   
/* B02AC4 8008B924 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02AC8 8008B928 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B02ACC 8008B92C 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B02AD0 8008B930 24EE0008 */  addiu $t6, $a3, 8
/* B02AD4 8008B934 AE8E02B0 */  sw    $t6, 0x2b0($s4)
/* B02AD8 8008B938 ACEF0000 */  sw    $t7, ($a3)
/* B02ADC 8008B93C 8FB80068 */  lw    $t8, 0x68($sp)
/* B02AE0 8008B940 8F190128 */  lw    $t9, 0x128($t8)
/* B02AE4 8008B944 ACF90004 */  sw    $t9, 4($a3)
/* B02AE8 8008B948 0C025285 */  jal   func_80094A14
/* B02AEC 8008B94C 8EE40000 */   lw    $a0, ($s7)
/* B02AF0 8008B950 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02AF4 8008B954 3C0AFC11 */  lui   $t2, (0xFC119623 >> 16) # lui $t2, 0xfc11
/* B02AF8 8008B958 3C0CFF2F */  lui   $t4, (0xFF2FFFFF >> 16) # lui $t4, 0xff2f
/* B02AFC 8008B95C 24EB0008 */  addiu $t3, $a3, 8
/* B02B00 8008B960 AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B02B04 8008B964 358CFFFF */  ori   $t4, (0xFF2FFFFF & 0xFFFF) # ori $t4, $t4, 0xffff
/* B02B08 8008B968 354A9623 */  ori   $t2, (0xFC119623 & 0xFFFF) # ori $t2, $t2, 0x9623
/* B02B0C 8008B96C ACEA0000 */  sw    $t2, ($a3)
/* B02B10 8008B970 ACEC0004 */  sw    $t4, 4($a3)
/* B02B14 8008B974 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02B18 8008B978 3C0E8013 */  lui   $t6, %hi(gMtxClear) # $t6, 0x8013
/* B02B1C 8008B97C 25CEDB20 */  addiu $t6, %lo(gMtxClear) # addiu $t6, $t6, -0x24e0
/* B02B20 8008B980 24ED0008 */  addiu $t5, $a3, 8
/* B02B24 8008B984 AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B02B28 8008B988 ACEE0004 */  sw    $t6, 4($a3)
/* B02B2C 8008B98C ACF30000 */  sw    $s3, ($a3)
/* B02B30 8008B990 8FA40068 */  lw    $a0, 0x68($sp)
/* B02B34 8008B994 2405000A */  li    $a1, 10
/* B02B38 8008B998 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* B02B3C 8008B99C 848F0254 */  lh    $t7, 0x254($a0)
/* B02B40 8008B9A0 8C980168 */  lw    $t8, 0x168($a0)
/* B02B44 8008B9A4 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* B02B48 8008B9A8 01E5001A */  div   $zero, $t7, $a1
/* B02B4C 8008B9AC 00008012 */  mflo  $s0
/* B02B50 8008B9B0 00108400 */  sll   $s0, $s0, 0x10
/* B02B54 8008B9B4 00108403 */  sra   $s0, $s0, 0x10
/* B02B58 8008B9B8 A7100120 */  sh    $s0, 0x120($t8)
/* B02B5C 8008B9BC 8C990168 */  lw    $t9, 0x168($a0)
/* B02B60 8008B9C0 00E01025 */  move  $v0, $a3
/* B02B64 8008B9C4 14A00002 */  bnez  $a1, .L8008B9D0
/* B02B68 8008B9C8 00000000 */   nop   
/* B02B6C 8008B9CC 0007000D */  break 7
.L8008B9D0:
/* B02B70 8008B9D0 2401FFFF */  li    $at, -1
/* B02B74 8008B9D4 14A10004 */  bne   $a1, $at, .L8008B9E8
/* B02B78 8008B9D8 3C018000 */   lui   $at, 0x8000
/* B02B7C 8008B9DC 15E10002 */  bne   $t7, $at, .L8008B9E8
/* B02B80 8008B9E0 00000000 */   nop   
/* B02B84 8008B9E4 0006000D */  break 6
.L8008B9E8:
/* B02B88 8008B9E8 A7300100 */  sh    $s0, 0x100($t9)
/* B02B8C 8008B9EC 8C6B0000 */  lw    $t3, ($v1)
/* B02B90 8008B9F0 8C820168 */  lw    $v0, 0x168($a0)
/* B02B94 8008B9F4 856A0E48 */  lh    $t2, 0xe48($t3)
/* B02B98 8008B9F8 844D0100 */  lh    $t5, 0x100($v0)
/* B02B9C 8008B9FC 0145001A */  div   $zero, $t2, $a1
/* B02BA0 8008BA00 00006012 */  mflo  $t4
/* B02BA4 8008BA04 018D8021 */  addu  $s0, $t4, $t5
/* B02BA8 8008BA08 00108400 */  sll   $s0, $s0, 0x10
/* B02BAC 8008BA0C 00108403 */  sra   $s0, $s0, 0x10
/* B02BB0 8008BA10 A4500130 */  sh    $s0, 0x130($v0)
/* B02BB4 8008BA14 8C8E0168 */  lw    $t6, 0x168($a0)
/* B02BB8 8008BA18 14A00002 */  bnez  $a1, .L8008BA24
/* B02BBC 8008BA1C 00000000 */   nop   
/* B02BC0 8008BA20 0007000D */  break 7
.L8008BA24:
/* B02BC4 8008BA24 2401FFFF */  li    $at, -1
/* B02BC8 8008BA28 14A10004 */  bne   $a1, $at, .L8008BA3C
/* B02BCC 8008BA2C 3C018000 */   lui   $at, 0x8000
/* B02BD0 8008BA30 15410002 */  bne   $t2, $at, .L8008BA3C
/* B02BD4 8008BA34 00000000 */   nop   
/* B02BD8 8008BA38 0006000D */  break 6
.L8008BA3C:
/* B02BDC 8008BA3C A5D00110 */  sh    $s0, 0x110($t6)
/* B02BE0 8008BA40 848F0256 */  lh    $t7, 0x256($a0)
/* B02BE4 8008BA44 8C980168 */  lw    $t8, 0x168($a0)
/* B02BE8 8008BA48 01E5001A */  div   $zero, $t7, $a1
/* B02BEC 8008BA4C 00008012 */  mflo  $s0
/* B02BF0 8008BA50 00108400 */  sll   $s0, $s0, 0x10
/* B02BF4 8008BA54 00108403 */  sra   $s0, $s0, 0x10
/* B02BF8 8008BA58 A7100112 */  sh    $s0, 0x112($t8)
/* B02BFC 8008BA5C 8C990168 */  lw    $t9, 0x168($a0)
/* B02C00 8008BA60 14A00002 */  bnez  $a1, .L8008BA6C
/* B02C04 8008BA64 00000000 */   nop   
/* B02C08 8008BA68 0007000D */  break 7
.L8008BA6C:
/* B02C0C 8008BA6C 2401FFFF */  li    $at, -1
/* B02C10 8008BA70 14A10004 */  bne   $a1, $at, .L8008BA84
/* B02C14 8008BA74 3C018000 */   lui   $at, 0x8000
/* B02C18 8008BA78 15E10002 */  bne   $t7, $at, .L8008BA84
/* B02C1C 8008BA7C 00000000 */   nop   
/* B02C20 8008BA80 0006000D */  break 6
.L8008BA84:
/* B02C24 8008BA84 A7300102 */  sh    $s0, 0x102($t9)
/* B02C28 8008BA88 8C6A0000 */  lw    $t2, ($v1)
/* B02C2C 8008BA8C 8C820168 */  lw    $v0, 0x168($a0)
/* B02C30 8008BA90 3C198012 */  lui   $t9, %hi(sMagicArrowEffectsR)
/* B02C34 8008BA94 854C0E48 */  lh    $t4, 0xe48($t2)
/* B02C38 8008BA98 844B0102 */  lh    $t3, 0x102($v0)
/* B02C3C 8008BA9C 0185001A */  div   $zero, $t4, $a1
/* B02C40 8008BAA0 00006812 */  mflo  $t5
/* B02C44 8008BAA4 016D8023 */  subu  $s0, $t3, $t5
/* B02C48 8008BAA8 00108400 */  sll   $s0, $s0, 0x10
/* B02C4C 8008BAAC 00108403 */  sra   $s0, $s0, 0x10
/* B02C50 8008BAB0 A4500132 */  sh    $s0, 0x132($v0)
/* B02C54 8008BAB4 8C8E0168 */  lw    $t6, 0x168($a0)
/* B02C58 8008BAB8 14A00002 */  bnez  $a1, .L8008BAC4
/* B02C5C 8008BABC 00000000 */   nop   
/* B02C60 8008BAC0 0007000D */  break 7
.L8008BAC4:
/* B02C64 8008BAC4 2401FFFF */  li    $at, -1
/* B02C68 8008BAC8 14A10004 */  bne   $a1, $at, .L8008BADC
/* B02C6C 8008BACC 3C018000 */   lui   $at, 0x8000
/* B02C70 8008BAD0 15810002 */  bne   $t4, $at, .L8008BADC
/* B02C74 8008BAD4 00000000 */   nop   
/* B02C78 8008BAD8 0006000D */  break 6
.L8008BADC:
/* B02C7C 8008BADC A5D00122 */  sh    $s0, 0x122($t6)
/* B02C80 8008BAE0 8FAF0068 */  lw    $t7, 0x68($sp)
/* B02C84 8008BAE4 3C0E8012 */  lui   $t6, %hi(sMagicArrowEffectsB)
/* B02C88 8008BAE8 3C0DFA00 */  lui   $t5, 0xfa00
/* B02C8C 8008BAEC 95E2024E */  lhu   $v0, 0x24e($t7)
/* B02C90 8008BAF0 284100BF */  slti  $at, $v0, 0xbf
/* B02C94 8008BAF4 5020004A */  beql  $at, $zero, .L8008BC20
/* B02C98 8008BAF8 8E8702B0 */   lw    $a3, 0x2b0($s4)
/* B02C9C 8008BAFC 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02CA0 8008BB00 3C19FA00 */  lui   $t9, 0xfa00
/* B02CA4 8008BB04 2401FF00 */  li    $at, -256
/* B02CA8 8008BB08 24F80008 */  addiu $t8, $a3, 8
/* B02CAC 8008BB0C AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B02CB0 8008BB10 ACF90000 */  sw    $t9, ($a3)
/* B02CB4 8008BB14 85EA0258 */  lh    $t2, 0x258($t7)
/* B02CB8 8008BB18 01E01825 */  move  $v1, $t7
/* B02CBC 8008BB1C 3C19FD18 */  lui   $t9, 0xfd18
/* B02CC0 8008BB20 314C00FF */  andi  $t4, $t2, 0xff
/* B02CC4 8008BB24 01815825 */  or    $t3, $t4, $at
/* B02CC8 8008BB28 ACEB0004 */  sw    $t3, 4($a3)
/* B02CCC 8008BB2C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02CD0 8008BB30 3C0B8012 */  lui   $t3, %hi(gItemIcons)
/* B02CD4 8008BB34 24ED0008 */  addiu $t5, $a3, 8
/* B02CD8 8008BB38 AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B02CDC 8008BB3C ACF10000 */  sw    $s1, ($a3)
/* B02CE0 8008BB40 8DEE0168 */  lw    $t6, 0x168($t7)
/* B02CE4 8008BB44 25CF0100 */  addiu $t7, $t6, 0x100
/* B02CE8 8008BB48 ACEF0004 */  sw    $t7, 4($a3)
/* B02CEC 8008BB4C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02CF0 8008BB50 3C0F0700 */  lui   $t7, 0x700
/* B02CF4 8008BB54 3C0EF518 */  lui   $t6, 0xf518
/* B02CF8 8008BB58 24F80008 */  addiu $t8, $a3, 8
/* B02CFC 8008BB5C AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B02D00 8008BB60 ACF90000 */  sw    $t9, ($a3)
/* B02D04 8008BB64 946A024E */  lhu   $t2, 0x24e($v1)
/* B02D08 8008BB68 3C19E600 */  lui   $t9, 0xe600
/* B02D0C 8008BB6C 000A6080 */  sll   $t4, $t2, 2
/* B02D10 8008BB70 016C5821 */  addu  $t3, $t3, $t4
/* B02D14 8008BB74 8D6B725C */  lw    $t3, %lo(gItemIcons)($t3)
/* B02D18 8008BB78 3C0CF300 */  lui   $t4, 0xf300
/* B02D1C 8008BB7C ACEB0004 */  sw    $t3, 4($a3)
/* B02D20 8008BB80 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02D24 8008BB84 3C0B073F */  lui   $t3, (0x073FF080 >> 16) # lui $t3, 0x73f
/* B02D28 8008BB88 356BF080 */  ori   $t3, (0x073FF080 & 0xFFFF) # ori $t3, $t3, 0xf080
/* B02D2C 8008BB8C 24ED0008 */  addiu $t5, $a3, 8
/* B02D30 8008BB90 AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B02D34 8008BB94 ACEF0004 */  sw    $t7, 4($a3)
/* B02D38 8008BB98 ACEE0000 */  sw    $t6, ($a3)
/* B02D3C 8008BB9C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02D40 8008BBA0 3C0EE700 */  lui   $t6, 0xe700
/* B02D44 8008BBA4 24F80008 */  addiu $t8, $a3, 8
/* B02D48 8008BBA8 AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B02D4C 8008BBAC ACE00004 */  sw    $zero, 4($a3)
/* B02D50 8008BBB0 ACF90000 */  sw    $t9, ($a3)
/* B02D54 8008BBB4 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02D58 8008BBB8 3C18F518 */  lui   $t8, (0xF5181000 >> 16) # lui $t8, 0xf518
/* B02D5C 8008BBBC 37181000 */  ori   $t8, (0xF5181000 & 0xFFFF) # ori $t8, $t8, 0x1000
/* B02D60 8008BBC0 24EA0008 */  addiu $t2, $a3, 8
/* B02D64 8008BBC4 AE8A02B0 */  sw    $t2, 0x2b0($s4)
/* B02D68 8008BBC8 ACEB0004 */  sw    $t3, 4($a3)
/* B02D6C 8008BBCC ACEC0000 */  sw    $t4, ($a3)
/* B02D70 8008BBD0 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02D74 8008BBD4 3C0C0007 */  lui   $t4, (0x0007C07C >> 16) # lui $t4, 7
/* B02D78 8008BBD8 358CC07C */  ori   $t4, (0x0007C07C & 0xFFFF) # ori $t4, $t4, 0xc07c
/* B02D7C 8008BBDC 24ED0008 */  addiu $t5, $a3, 8
/* B02D80 8008BBE0 AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B02D84 8008BBE4 ACE00004 */  sw    $zero, 4($a3)
/* B02D88 8008BBE8 ACEE0000 */  sw    $t6, ($a3)
/* B02D8C 8008BBEC 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02D90 8008BBF0 3C0AF200 */  lui   $t2, 0xf200
/* B02D94 8008BBF4 24EF0008 */  addiu $t7, $a3, 8
/* B02D98 8008BBF8 AE8F02B0 */  sw    $t7, 0x2b0($s4)
/* B02D9C 8008BBFC ACE00004 */  sw    $zero, 4($a3)
/* B02DA0 8008BC00 ACF80000 */  sw    $t8, ($a3)
/* B02DA4 8008BC04 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02DA8 8008BC08 24F90008 */  addiu $t9, $a3, 8
/* B02DAC 8008BC0C AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B02DB0 8008BC10 ACEC0004 */  sw    $t4, 4($a3)
/* B02DB4 8008BC14 10000089 */  b     .L8008BE3C
/* B02DB8 8008BC18 ACEA0000 */   sw    $t2, ($a3)
/* B02DBC 8008BC1C 8E8702B0 */  lw    $a3, 0x2b0($s4)
.L8008BC20:
/* B02DC0 8008BC20 2453FF41 */  addiu $s3, $v0, -0xbf
/* B02DC4 8008BC24 00139C00 */  sll   $s3, $s3, 0x10
/* B02DC8 8008BC28 00139C03 */  sra   $s3, $s3, 0x10
/* B02DCC 8008BC2C 24EB0008 */  addiu $t3, $a3, 8
/* B02DD0 8008BC30 AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B02DD4 8008BC34 00131840 */  sll   $v1, $s3, 1
/* B02DD8 8008BC38 0323C821 */  addu  $t9, $t9, $v1
/* B02DDC 8008BC3C ACED0000 */  sw    $t5, ($a3)
/* B02DE0 8008BC40 872A5AEC */  lh    $t2, %lo(sMagicArrowEffectsR)($t9)
/* B02DE4 8008BC44 01C37021 */  addu  $t6, $t6, $v1
/* B02DE8 8008BC48 85CE5AFC */  lh    $t6, %lo(sMagicArrowEffectsB)($t6)
/* B02DEC 8008BC4C 3C0D8012 */  lui   $t5, %hi(sMagicArrowEffectsG)
/* B02DF0 8008BC50 000A6600 */  sll   $t4, $t2, 0x18
/* B02DF4 8008BC54 8FAA0068 */  lw    $t2, 0x68($sp)
/* B02DF8 8008BC58 01A36821 */  addu  $t5, $t5, $v1
/* B02DFC 8008BC5C 31CF00FF */  andi  $t7, $t6, 0xff
/* B02E00 8008BC60 85AD5AF4 */  lh    $t5, %lo(sMagicArrowEffectsG)($t5)
/* B02E04 8008BC64 000FC200 */  sll   $t8, $t7, 8
/* B02E08 8008BC68 030C5825 */  or    $t3, $t8, $t4
/* B02E0C 8008BC6C 85580258 */  lh    $t8, 0x258($t2)
/* B02E10 8008BC70 31AE00FF */  andi  $t6, $t5, 0xff
/* B02E14 8008BC74 000E7C00 */  sll   $t7, $t6, 0x10
/* B02E18 8008BC78 016FC825 */  or    $t9, $t3, $t7
/* B02E1C 8008BC7C 330C00FF */  andi  $t4, $t8, 0xff
/* B02E20 8008BC80 032C6825 */  or    $t5, $t9, $t4
/* B02E24 8008BC84 ACED0004 */  sw    $t5, 4($a3)
/* B02E28 8008BC88 8FAE0068 */  lw    $t6, 0x68($sp)
/* B02E2C 8008BC8C 85C40258 */  lh    $a0, 0x258($t6)
/* B02E30 8008BC90 18800030 */  blez  $a0, .L8008BD54
/* B02E34 8008BC94 288100FF */   slti  $at, $a0, 0xff
/* B02E38 8008BC98 1020002E */  beqz  $at, .L8008BD54
/* B02E3C 8008BC9C 01C02825 */   move  $a1, $t6
/* B02E40 8008BCA0 8CA20168 */  lw    $v0, 0x168($a1)
/* B02E44 8008BCA4 04810003 */  bgez  $a0, .L8008BCB4
/* B02E48 8008BCA8 000498C3 */   sra   $s3, $a0, 3
/* B02E4C 8008BCAC 24810007 */  addiu $at, $a0, 7
/* B02E50 8008BCB0 000198C3 */  sra   $s3, $at, 3
.L8008BCB4:
/* B02E54 8008BCB4 06610002 */  bgez  $s3, .L8008BCC0
/* B02E58 8008BCB8 02600821 */   addu  $at, $s3, $zero
/* B02E5C 8008BCBC 26610001 */  addiu $at, $s3, 1
.L8008BCC0:
/* B02E60 8008BCC0 00019843 */  sra   $s3, $at, 1
/* B02E64 8008BCC4 844B0100 */  lh    $t3, 0x100($v0)
/* B02E68 8008BCC8 00139C00 */  sll   $s3, $s3, 0x10
/* B02E6C 8008BCCC 00139C03 */  sra   $s3, $s3, 0x10
/* B02E70 8008BCD0 01738023 */  subu  $s0, $t3, $s3
/* B02E74 8008BCD4 00108400 */  sll   $s0, $s0, 0x10
/* B02E78 8008BCD8 00108403 */  sra   $s0, $s0, 0x10
/* B02E7C 8008BCDC A4500120 */  sh    $s0, 0x120($v0)
/* B02E80 8008BCE0 8CAF0168 */  lw    $t7, 0x168($a1)
/* B02E84 8008BCE4 00131840 */  sll   $v1, $s3, 1
/* B02E88 8008BCE8 A5F00100 */  sh    $s0, 0x100($t7)
/* B02E8C 8008BCEC 8CA20168 */  lw    $v0, 0x168($a1)
/* B02E90 8008BCF0 844A0100 */  lh    $t2, 0x100($v0)
/* B02E94 8008BCF4 01438021 */  addu  $s0, $t2, $v1
/* B02E98 8008BCF8 26100020 */  addiu $s0, $s0, 0x20
/* B02E9C 8008BCFC 00108400 */  sll   $s0, $s0, 0x10
/* B02EA0 8008BD00 00108403 */  sra   $s0, $s0, 0x10
/* B02EA4 8008BD04 A4500130 */  sh    $s0, 0x130($v0)
/* B02EA8 8008BD08 8CB80168 */  lw    $t8, 0x168($a1)
/* B02EAC 8008BD0C A7100110 */  sh    $s0, 0x110($t8)
/* B02EB0 8008BD10 8CA20168 */  lw    $v0, 0x168($a1)
/* B02EB4 8008BD14 84590102 */  lh    $t9, 0x102($v0)
/* B02EB8 8008BD18 03338021 */  addu  $s0, $t9, $s3
/* B02EBC 8008BD1C 00108400 */  sll   $s0, $s0, 0x10
/* B02EC0 8008BD20 00108403 */  sra   $s0, $s0, 0x10
/* B02EC4 8008BD24 A4500112 */  sh    $s0, 0x112($v0)
/* B02EC8 8008BD28 8CAC0168 */  lw    $t4, 0x168($a1)
/* B02ECC 8008BD2C A5900102 */  sh    $s0, 0x102($t4)
/* B02ED0 8008BD30 8CA20168 */  lw    $v0, 0x168($a1)
/* B02ED4 8008BD34 844D0102 */  lh    $t5, 0x102($v0)
/* B02ED8 8008BD38 01A38023 */  subu  $s0, $t5, $v1
/* B02EDC 8008BD3C 2610FFE0 */  addiu $s0, $s0, -0x20
/* B02EE0 8008BD40 00108400 */  sll   $s0, $s0, 0x10
/* B02EE4 8008BD44 00108403 */  sra   $s0, $s0, 0x10
/* B02EE8 8008BD48 A4500132 */  sh    $s0, 0x132($v0)
/* B02EEC 8008BD4C 8CAE0168 */  lw    $t6, 0x168($a1)
/* B02EF0 8008BD50 A5D00122 */  sh    $s0, 0x122($t6)
.L8008BD54:
/* B02EF4 8008BD54 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02EF8 8008BD58 3C0D0809 */  lui   $t5, %hi(D_080895C0) # $t5, 0x809
/* B02EFC 8008BD5C 25AD95C0 */  addiu $t5, %lo(D_080895C0) # addiu $t5, $t5, -0x6a40
/* B02F00 8008BD60 24EB0008 */  addiu $t3, $a3, 8
/* B02F04 8008BD64 AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B02F08 8008BD68 ACF10000 */  sw    $s1, ($a3)
/* B02F0C 8008BD6C 8FAF0068 */  lw    $t7, 0x68($sp)
/* B02F10 8008BD70 3C0CFD70 */  lui   $t4, 0xfd70
/* B02F14 8008BD74 3C0BF570 */  lui   $t3, 0xf570
/* B02F18 8008BD78 8DEA0168 */  lw    $t2, 0x168($t7)
/* B02F1C 8008BD7C 3C0F0700 */  lui   $t7, 0x700
/* B02F20 8008BD80 25580100 */  addiu $t8, $t2, 0x100
/* B02F24 8008BD84 ACF80004 */  sw    $t8, 4($a3)
/* B02F28 8008BD88 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02F2C 8008BD8C 3C18E600 */  lui   $t8, 0xe600
/* B02F30 8008BD90 24F90008 */  addiu $t9, $a3, 8
/* B02F34 8008BD94 AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B02F38 8008BD98 ACED0004 */  sw    $t5, 4($a3)
/* B02F3C 8008BD9C ACEC0000 */  sw    $t4, ($a3)
/* B02F40 8008BDA0 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02F44 8008BDA4 3C0D071F */  lui   $t5, (0x071FF200 >> 16) # lui $t5, 0x71f
/* B02F48 8008BDA8 35ADF200 */  ori   $t5, (0x071FF200 & 0xFFFF) # ori $t5, $t5, 0xf200
/* B02F4C 8008BDAC 24EE0008 */  addiu $t6, $a3, 8
/* B02F50 8008BDB0 AE8E02B0 */  sw    $t6, 0x2b0($s4)
/* B02F54 8008BDB4 ACEF0004 */  sw    $t7, 4($a3)
/* B02F58 8008BDB8 ACEB0000 */  sw    $t3, ($a3)
/* B02F5C 8008BDBC 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02F60 8008BDC0 3C0CF300 */  lui   $t4, 0xf300
/* B02F64 8008BDC4 3C0BE700 */  lui   $t3, 0xe700
/* B02F68 8008BDC8 24EA0008 */  addiu $t2, $a3, 8
/* B02F6C 8008BDCC AE8A02B0 */  sw    $t2, 0x2b0($s4)
/* B02F70 8008BDD0 ACE00004 */  sw    $zero, 4($a3)
/* B02F74 8008BDD4 ACF80000 */  sw    $t8, ($a3)
/* B02F78 8008BDD8 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02F7C 8008BDDC 3C0AF568 */  lui   $t2, (0xF5680800 >> 16) # lui $t2, 0xf568
/* B02F80 8008BDE0 354A0800 */  ori   $t2, (0xF5680800 & 0xFFFF) # ori $t2, $t2, 0x800
/* B02F84 8008BDE4 24F90008 */  addiu $t9, $a3, 8
/* B02F88 8008BDE8 AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B02F8C 8008BDEC ACED0004 */  sw    $t5, 4($a3)
/* B02F90 8008BDF0 ACEC0000 */  sw    $t4, ($a3)
/* B02F94 8008BDF4 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02F98 8008BDF8 3C0C0007 */  lui   $t4, (0x0007C07C >> 16) # lui $t4, 7
/* B02F9C 8008BDFC 358CC07C */  ori   $t4, (0x0007C07C & 0xFFFF) # ori $t4, $t4, 0xc07c
/* B02FA0 8008BE00 24EE0008 */  addiu $t6, $a3, 8
/* B02FA4 8008BE04 AE8E02B0 */  sw    $t6, 0x2b0($s4)
/* B02FA8 8008BE08 ACE00004 */  sw    $zero, 4($a3)
/* B02FAC 8008BE0C ACEB0000 */  sw    $t3, ($a3)
/* B02FB0 8008BE10 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02FB4 8008BE14 3C19F200 */  lui   $t9, 0xf200
/* B02FB8 8008BE18 24EF0008 */  addiu $t7, $a3, 8
/* B02FBC 8008BE1C AE8F02B0 */  sw    $t7, 0x2b0($s4)
/* B02FC0 8008BE20 ACE00004 */  sw    $zero, 4($a3)
/* B02FC4 8008BE24 ACEA0000 */  sw    $t2, ($a3)
/* B02FC8 8008BE28 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02FCC 8008BE2C 24F80008 */  addiu $t8, $a3, 8
/* B02FD0 8008BE30 AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B02FD4 8008BE34 ACEC0004 */  sw    $t4, 4($a3)
/* B02FD8 8008BE38 ACF90000 */  sw    $t9, ($a3)
.L8008BE3C:
/* B02FDC 8008BE3C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B02FE0 8008BE40 3C0E0700 */  lui   $t6, (0x07000406 >> 16) # lui $t6, 0x700
/* B02FE4 8008BE44 35CE0406 */  ori   $t6, (0x07000406 & 0xFFFF) # ori $t6, $t6, 0x406
/* B02FE8 8008BE48 24ED0008 */  addiu $t5, $a3, 8
/* B02FEC 8008BE4C AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B02FF0 8008BE50 240B0602 */  li    $t3, 1538
/* B02FF4 8008BE54 ACEB0004 */  sw    $t3, 4($a3)
/* B02FF8 8008BE58 ACEE0000 */  sw    $t6, ($a3)
.L8008BE5C:
/* B02FFC 8008BE5C 0C025148 */  jal   func_80094520
/* B03000 8008BE60 8EE40000 */   lw    $a0, ($s7)
/* B03004 8008BE64 8FA20060 */  lw    $v0, 0x60($sp)
/* B03008 8008BE68 944F0934 */  lhu   $t7, 0x934($v0)
/* B0300C 8008BE6C 55E0014B */  bnezl $t7, .L8008C39C
/* B03010 8008BE70 86AC13D2 */   lh    $t4, 0x13d2($s5)
/* B03014 8008BE74 944A0936 */  lhu   $t2, 0x936($v0)
/* B03018 8008BE78 55400148 */  bnezl $t2, .L8008C39C
/* B0301C 8008BE7C 86AC13D2 */   lh    $t4, 0x13d2($s5)
/* B03020 8008BE80 96B81404 */  lhu   $t8, 0x1404($s5)
/* B03024 8008BE84 24010001 */  li    $at, 1
/* B03028 8008BE88 3C0B8016 */  lui   $t3, %hi(gGameInfo)
/* B0302C 8008BE8C 13010086 */  beq   $t8, $at, .L8008C0A8
/* B03030 8008BE90 00000000 */   nop   
/* B03034 8008BE94 96D901EE */  lhu   $t9, 0x1ee($s6)
/* B03038 8008BE98 24010008 */  li    $at, 8
/* B0303C 8008BE9C 3C0DFD18 */  lui   $t5, 0xfd18
/* B03040 8008BEA0 1721013D */  bne   $t9, $at, .L8008C398
/* B03044 8008BEA4 3C0E0200 */   lui   $t6, %hi(D_02002100) # $t6, 0x200
/* B03048 8008BEA8 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B0304C 8008BEAC 25CE2100 */  addiu $t6, %lo(D_02002100) # addiu $t6, $t6, 0x2100
/* B03050 8008BEB0 3C0FF518 */  lui   $t7, 0xf518
/* B03054 8008BEB4 24EC0008 */  addiu $t4, $a3, 8
/* B03058 8008BEB8 AE8C02B0 */  sw    $t4, 0x2b0($s4)
/* B0305C 8008BEBC ACEE0004 */  sw    $t6, 4($a3)
/* B03060 8008BEC0 ACED0000 */  sw    $t5, ($a3)
/* B03064 8008BEC4 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B03068 8008BEC8 3C0A0700 */  lui   $t2, 0x700
/* B0306C 8008BECC 3C19E600 */  lui   $t9, 0xe600
/* B03070 8008BED0 24EB0008 */  addiu $t3, $a3, 8
/* B03074 8008BED4 AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B03078 8008BED8 ACEA0004 */  sw    $t2, 4($a3)
/* B0307C 8008BEDC ACEF0000 */  sw    $t7, ($a3)
/* B03080 8008BEE0 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B03084 8008BEE4 3C0E070F */  lui   $t6, (0x070FF100 >> 16) # lui $t6, 0x70f
/* B03088 8008BEE8 35CEF100 */  ori   $t6, (0x070FF100 & 0xFFFF) # ori $t6, $t6, 0xf100
/* B0308C 8008BEEC 24F80008 */  addiu $t8, $a3, 8
/* B03090 8008BEF0 AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B03094 8008BEF4 ACE00004 */  sw    $zero, 4($a3)
/* B03098 8008BEF8 ACF90000 */  sw    $t9, ($a3)
/* B0309C 8008BEFC 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B030A0 8008BF00 3C0DF300 */  lui   $t5, 0xf300
/* B030A4 8008BF04 3C0FE700 */  lui   $t7, 0xe700
/* B030A8 8008BF08 24EC0008 */  addiu $t4, $a3, 8
/* B030AC 8008BF0C AE8C02B0 */  sw    $t4, 0x2b0($s4)
/* B030B0 8008BF10 ACEE0004 */  sw    $t6, 4($a3)
/* B030B4 8008BF14 ACED0000 */  sw    $t5, ($a3)
/* B030B8 8008BF18 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B030BC 8008BF1C 3C18F518 */  lui   $t8, (0xF5180800 >> 16) # lui $t8, 0xf518
/* B030C0 8008BF20 37180800 */  ori   $t8, (0xF5180800 & 0xFFFF) # ori $t8, $t8, 0x800
/* B030C4 8008BF24 24EB0008 */  addiu $t3, $a3, 8
/* B030C8 8008BF28 AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B030CC 8008BF2C ACE00004 */  sw    $zero, 4($a3)
/* B030D0 8008BF30 ACEF0000 */  sw    $t7, ($a3)
/* B030D4 8008BF34 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B030D8 8008BF38 3C0D0003 */  lui   $t5, (0x0003C03C >> 16) # lui $t5, 3
/* B030DC 8008BF3C 35ADC03C */  ori   $t5, (0x0003C03C & 0xFFFF) # ori $t5, $t5, 0xc03c
/* B030E0 8008BF40 24EA0008 */  addiu $t2, $a3, 8
/* B030E4 8008BF44 AE8A02B0 */  sw    $t2, 0x2b0($s4)
/* B030E8 8008BF48 ACE00004 */  sw    $zero, 4($a3)
/* B030EC 8008BF4C ACF80000 */  sw    $t8, ($a3)
/* B030F0 8008BF50 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B030F4 8008BF54 3C0CF200 */  lui   $t4, 0xf200
/* B030F8 8008BF58 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* B030FC 8008BF5C 24F90008 */  addiu $t9, $a3, 8
/* B03100 8008BF60 AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B03104 8008BF64 ACED0004 */  sw    $t5, 4($a3)
/* B03108 8008BF68 ACEC0000 */  sw    $t4, ($a3)
/* B0310C 8008BF6C 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B03110 8008BF70 3C050400 */  lui   $a1, (0x04000400 >> 16) # lui $a1, 0x400
/* B03114 8008BF74 3C040096 */  lui   $a0, (0x0096FF00 >> 16) # lui $a0, 0x96
/* B03118 8008BF78 3484FF00 */  ori   $a0, (0x0096FF00 & 0xFFFF) # ori $a0, $a0, 0xff00
/* B0311C 8008BF7C 34A50400 */  ori   $a1, (0x04000400 & 0xFFFF) # ori $a1, $a1, 0x400
/* B03120 8008BF80 24130001 */  li    $s3, 1
/* B03124 8008BF84 85D107B0 */  lh    $s1, 0x7b0($t6)
.L8008BF88:
/* B03128 8008BF88 92C2023A */  lbu   $v0, 0x23a($s6)
/* B0312C 8008BF8C 3C068016 */  lui   $a2, %hi(gGameInfo) # $a2, 0x8016
/* B03130 8008BF90 24C6FA90 */  addiu $a2, %lo(gGameInfo) # addiu $a2, $a2, -0x570
/* B03134 8008BF94 10400004 */  beqz  $v0, .L8008BFA8
/* B03138 8008BF98 26230010 */   addiu $v1, $s1, 0x10
/* B0313C 8008BF9C 0053082A */  slt   $at, $v0, $s3
/* B03140 8008BFA0 5020000C */  beql  $at, $zero, .L8008BFD4
/* B03144 8008BFA4 8E8702B0 */   lw    $a3, 0x2b0($s4)
.L8008BFA8:
/* B03148 8008BFA8 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B0314C 8008BFAC 3C0FFA00 */  lui   $t7, 0xfa00
/* B03150 8008BFB0 24EB0008 */  addiu $t3, $a3, 8
/* B03154 8008BFB4 AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B03158 8008BFB8 ACEF0000 */  sw    $t7, ($a3)
/* B0315C 8008BFBC 96CA0246 */  lhu   $t2, 0x246($s6)
/* B03160 8008BFC0 315800FF */  andi  $t8, $t2, 0xff
/* B03164 8008BFC4 0304C825 */  or    $t9, $t8, $a0
/* B03168 8008BFC8 1000000B */  b     .L8008BFF8
/* B0316C 8008BFCC ACF90004 */   sw    $t9, 4($a3)
/* B03170 8008BFD0 8E8702B0 */  lw    $a3, 0x2b0($s4)
.L8008BFD4:
/* B03174 8008BFD4 3C0DFA00 */  lui   $t5, 0xfa00
/* B03178 8008BFD8 2401FF00 */  li    $at, -256
/* B0317C 8008BFDC 24EC0008 */  addiu $t4, $a3, 8
/* B03180 8008BFE0 AE8C02B0 */  sw    $t4, 0x2b0($s4)
/* B03184 8008BFE4 ACED0000 */  sw    $t5, ($a3)
/* B03188 8008BFE8 96CE0246 */  lhu   $t6, 0x246($s6)
/* B0318C 8008BFEC 31CB00FF */  andi  $t3, $t6, 0xff
/* B03190 8008BFF0 01617825 */  or    $t7, $t3, $at
/* B03194 8008BFF4 ACEF0004 */  sw    $t7, 4($a3)
.L8008BFF8:
/* B03198 8008BFF8 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B0319C 8008BFFC 00037880 */  sll   $t7, $v1, 2
/* B031A0 8008C000 26730001 */  addiu $s3, $s3, 1
/* B031A4 8008C004 24EA0008 */  addiu $t2, $a3, 8
/* B031A8 8008C008 AE8A02B0 */  sw    $t2, 0x2b0($s4)
/* B031AC 8008C00C 8CD80000 */  lw    $t8, ($a2)
/* B031B0 8008C010 31EA0FFF */  andi  $t2, $t7, 0xfff
/* B031B4 8008C014 00139C00 */  sll   $s3, $s3, 0x10
/* B031B8 8008C018 871907B2 */  lh    $t9, 0x7b2($t8)
/* B031BC 8008C01C 000AC300 */  sll   $t8, $t2, 0xc
/* B031C0 8008C020 00115080 */  sll   $t2, $s1, 2
/* B031C4 8008C024 272C0010 */  addiu $t4, $t9, 0x10
/* B031C8 8008C028 000C6880 */  sll   $t5, $t4, 2
/* B031CC 8008C02C 31AE0FFF */  andi  $t6, $t5, 0xfff
/* B031D0 8008C030 01D25825 */  or    $t3, $t6, $s2
/* B031D4 8008C034 0178C825 */  or    $t9, $t3, $t8
/* B031D8 8008C038 ACF90000 */  sw    $t9, ($a3)
/* B031DC 8008C03C 8CCC0000 */  lw    $t4, ($a2)
/* B031E0 8008C040 314B0FFF */  andi  $t3, $t2, 0xfff
/* B031E4 8008C044 000BC300 */  sll   $t8, $t3, 0xc
/* B031E8 8008C048 858D07B2 */  lh    $t5, 0x7b2($t4)
/* B031EC 8008C04C 00139C03 */  sra   $s3, $s3, 0x10
/* B031F0 8008C050 2A610007 */  slti  $at, $s3, 7
/* B031F4 8008C054 000D7080 */  sll   $t6, $t5, 2
/* B031F8 8008C058 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B031FC 8008C05C 01F8C825 */  or    $t9, $t7, $t8
/* B03200 8008C060 ACF90004 */  sw    $t9, 4($a3)
/* B03204 8008C064 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B03208 8008C068 3C0DE100 */  lui   $t5, 0xe100
/* B0320C 8008C06C 00038C00 */  sll   $s1, $v1, 0x10
/* B03210 8008C070 24EC0008 */  addiu $t4, $a3, 8
/* B03214 8008C074 AE8C02B0 */  sw    $t4, 0x2b0($s4)
/* B03218 8008C078 ACE00004 */  sw    $zero, 4($a3)
/* B0321C 8008C07C ACED0000 */  sw    $t5, ($a3)
/* B03220 8008C080 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B03224 8008C084 3C0AF100 */  lui   $t2, 0xf100
/* B03228 8008C088 00118C03 */  sra   $s1, $s1, 0x10
/* B0322C 8008C08C 24EE0008 */  addiu $t6, $a3, 8
/* B03230 8008C090 AE8E02B0 */  sw    $t6, 0x2b0($s4)
/* B03234 8008C094 ACE50004 */  sw    $a1, 4($a3)
/* B03238 8008C098 1420FFBB */  bnez  $at, .L8008BF88
/* B0323C 8008C09C ACEA0000 */   sw    $t2, ($a3)
/* B03240 8008C0A0 100000BE */  b     .L8008C39C
/* B03244 8008C0A4 86AC13D2 */   lh    $t4, 0x13d2($s5)
.L8008C0A8:
/* B03248 8008C0A8 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* B0324C 8008C0AC 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B03250 8008C0B0 3C18FA00 */  lui   $t8, 0xfa00
/* B03254 8008C0B4 85710DD4 */  lh    $s1, 0xdd4($t3)
/* B03258 8008C0B8 24EF0008 */  addiu $t7, $a3, 8
/* B0325C 8008C0BC AE8F02B0 */  sw    $t7, 0x2b0($s4)
/* B03260 8008C0C0 ACF80000 */  sw    $t8, ($a3)
/* B03264 8008C0C4 96D90248 */  lhu   $t9, 0x248($s6)
/* B03268 8008C0C8 2401FF00 */  li    $at, -256
/* B0326C 8008C0CC 3C0B0200 */  lui   $t3, %hi(D_02002600) # $t3, 0x200
/* B03270 8008C0D0 332C00FF */  andi  $t4, $t9, 0xff
/* B03274 8008C0D4 01816825 */  or    $t5, $t4, $at
/* B03278 8008C0D8 ACED0004 */  sw    $t5, 4($a3)
/* B0327C 8008C0DC 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B03280 8008C0E0 256B2600 */  addiu $t3, %lo(D_02002600) # addiu $t3, $t3, 0x2600
/* B03284 8008C0E4 3C0AFD10 */  lui   $t2, 0xfd10
/* B03288 8008C0E8 24EE0008 */  addiu $t6, $a3, 8
/* B0328C 8008C0EC AE8E02B0 */  sw    $t6, 0x2b0($s4)
/* B03290 8008C0F0 ACEB0004 */  sw    $t3, 4($a3)
/* B03294 8008C0F4 ACEA0000 */  sw    $t2, ($a3)
/* B03298 8008C0F8 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B0329C 8008C0FC 3C190700 */  lui   $t9, 0x700
/* B032A0 8008C100 3C18F510 */  lui   $t8, 0xf510
/* B032A4 8008C104 24EF0008 */  addiu $t7, $a3, 8
/* B032A8 8008C108 AE8F02B0 */  sw    $t7, 0x2b0($s4)
/* B032AC 8008C10C ACF90004 */  sw    $t9, 4($a3)
/* B032B0 8008C110 ACF80000 */  sw    $t8, ($a3)
/* B032B4 8008C114 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B032B8 8008C118 3C0DE600 */  lui   $t5, 0xe600
/* B032BC 8008C11C 3C0B0717 */  lui   $t3, (0x0717F156 >> 16) # lui $t3, 0x717
/* B032C0 8008C120 24EC0008 */  addiu $t4, $a3, 8
/* B032C4 8008C124 AE8C02B0 */  sw    $t4, 0x2b0($s4)
/* B032C8 8008C128 ACE00004 */  sw    $zero, 4($a3)
/* B032CC 8008C12C ACED0000 */  sw    $t5, ($a3)
/* B032D0 8008C130 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B032D4 8008C134 356BF156 */  ori   $t3, (0x0717F156 & 0xFFFF) # ori $t3, $t3, 0xf156
/* B032D8 8008C138 3C0AF300 */  lui   $t2, 0xf300
/* B032DC 8008C13C 24EE0008 */  addiu $t6, $a3, 8
/* B032E0 8008C140 AE8E02B0 */  sw    $t6, 0x2b0($s4)
/* B032E4 8008C144 ACEB0004 */  sw    $t3, 4($a3)
/* B032E8 8008C148 ACEA0000 */  sw    $t2, ($a3)
/* B032EC 8008C14C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B032F0 8008C150 3C18E700 */  lui   $t8, 0xe700
/* B032F4 8008C154 3C0CF510 */  lui   $t4, (0xF5100C00 >> 16) # lui $t4, 0xf510
/* B032F8 8008C158 24EF0008 */  addiu $t7, $a3, 8
/* B032FC 8008C15C AE8F02B0 */  sw    $t7, 0x2b0($s4)
/* B03300 8008C160 ACE00004 */  sw    $zero, 4($a3)
/* B03304 8008C164 ACF80000 */  sw    $t8, ($a3)
/* B03308 8008C168 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B0330C 8008C16C 358C0C00 */  ori   $t4, (0xF5100C00 & 0xFFFF) # ori $t4, $t4, 0xc00
/* B03310 8008C170 3C0A0005 */  lui   $t2, (0x0005C03C >> 16) # lui $t2, 5
/* B03314 8008C174 24F90008 */  addiu $t9, $a3, 8
/* B03318 8008C178 AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B0331C 8008C17C ACE00004 */  sw    $zero, 4($a3)
/* B03320 8008C180 ACEC0000 */  sw    $t4, ($a3)
/* B03324 8008C184 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B03328 8008C188 354AC03C */  ori   $t2, (0x0005C03C & 0xFFFF) # ori $t2, $t2, 0xc03c
/* B0332C 8008C18C 3C0EF200 */  lui   $t6, 0xf200
/* B03330 8008C190 24ED0008 */  addiu $t5, $a3, 8
/* B03334 8008C194 AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B03338 8008C198 ACEA0004 */  sw    $t2, 4($a3)
/* B0333C 8008C19C ACEE0000 */  sw    $t6, ($a3)
/* B03340 8008C1A0 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B03344 8008C1A4 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* B03348 8008C1A8 262A0034 */  addiu $t2, $s1, 0x34
/* B0334C 8008C1AC 24EB0008 */  addiu $t3, $a3, 8
/* B03350 8008C1B0 AE8B02B0 */  sw    $t3, 0x2b0($s4)
/* B03354 8008C1B4 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* B03358 8008C1B8 000A5880 */  sll   $t3, $t2, 2
/* B0335C 8008C1BC 3C050400 */  lui   $a1, (0x04000400 >> 16) # lui $a1, 0x400
/* B03360 8008C1C0 85F807B2 */  lh    $t8, 0x7b2($t7)
/* B03364 8008C1C4 316F0FFF */  andi  $t7, $t3, 0xfff
/* B03368 8008C1C8 34A50400 */  ori   $a1, (0x04000400 & 0xFFFF) # ori $a1, $a1, 0x400
/* B0336C 8008C1CC 27190010 */  addiu $t9, $t8, 0x10
/* B03370 8008C1D0 00196080 */  sll   $t4, $t9, 2
/* B03374 8008C1D4 318D0FFF */  andi  $t5, $t4, 0xfff
/* B03378 8008C1D8 01B27025 */  or    $t6, $t5, $s2
/* B0337C 8008C1DC 000FC300 */  sll   $t8, $t7, 0xc
/* B03380 8008C1E0 01D8C825 */  or    $t9, $t6, $t8
/* B03384 8008C1E4 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* B03388 8008C1E8 ACF90000 */  sw    $t9, ($a3)
/* B0338C 8008C1EC 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* B03390 8008C1F0 262F001C */  addiu $t7, $s1, 0x1c
/* B03394 8008C1F4 000F7080 */  sll   $t6, $t7, 2
/* B03398 8008C1F8 858D07B2 */  lh    $t5, 0x7b2($t4)
/* B0339C 8008C1FC 31D80FFF */  andi  $t8, $t6, 0xfff
/* B033A0 8008C200 0018CB00 */  sll   $t9, $t8, 0xc
/* B033A4 8008C204 000D5080 */  sll   $t2, $t5, 2
/* B033A8 8008C208 314B0FFF */  andi  $t3, $t2, 0xfff
/* B033AC 8008C20C 01796025 */  or    $t4, $t3, $t9
/* B033B0 8008C210 ACEC0004 */  sw    $t4, 4($a3)
/* B033B4 8008C214 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B033B8 8008C218 3C0AE100 */  lui   $t2, 0xe100
/* B033BC 8008C21C 3C0EF100 */  lui   $t6, 0xf100
/* B033C0 8008C220 24ED0008 */  addiu $t5, $a3, 8
/* B033C4 8008C224 AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B033C8 8008C228 ACE00004 */  sw    $zero, 4($a3)
/* B033CC 8008C22C ACEA0000 */  sw    $t2, ($a3)
/* B033D0 8008C230 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B033D4 8008C234 3C0BE700 */  lui   $t3, 0xe700
/* B033D8 8008C238 3C0DFF2D */  lui   $t5, (0xFF2DFEFF >> 16) # lui $t5, 0xff2d
/* B033DC 8008C23C 24EF0008 */  addiu $t7, $a3, 8
/* B033E0 8008C240 AE8F02B0 */  sw    $t7, 0x2b0($s4)
/* B033E4 8008C244 ACE50004 */  sw    $a1, 4($a3)
/* B033E8 8008C248 ACEE0000 */  sw    $t6, ($a3)
/* B033EC 8008C24C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B033F0 8008C250 3C0CFCFF */  lui   $t4, (0xFCFF97FF >> 16) # lui $t4, 0xfcff
/* B033F4 8008C254 358C97FF */  ori   $t4, (0xFCFF97FF & 0xFFFF) # ori $t4, $t4, 0x97ff
/* B033F8 8008C258 24F80008 */  addiu $t8, $a3, 8
/* B033FC 8008C25C AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B03400 8008C260 ACE00004 */  sw    $zero, 4($a3)
/* B03404 8008C264 ACEB0000 */  sw    $t3, ($a3)
/* B03408 8008C268 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B0340C 8008C26C 35ADFEFF */  ori   $t5, (0xFF2DFEFF & 0xFFFF) # ori $t5, $t5, 0xfeff
/* B03410 8008C270 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* B03414 8008C274 24F90008 */  addiu $t9, $a3, 8
/* B03418 8008C278 AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B0341C 8008C27C ACED0004 */  sw    $t5, 4($a3)
/* B03420 8008C280 ACEC0000 */  sw    $t4, ($a3)
/* B03424 8008C284 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* B03428 8008C288 3C128012 */  lui   $s2, %hi(sHBAScoreDigits) # $s2, 0x8012
/* B0342C 8008C28C 00009825 */  move  $s3, $zero
/* B03430 8008C290 85510DD4 */  lh    $s1, 0xdd4($t2)
/* B03434 8008C294 26525A08 */  addiu $s2, %lo(sHBAScoreDigits) # addiu $s2, $s2, 0x5a08
/* B03438 8008C298 00008025 */  move  $s0, $zero
/* B0343C 8008C29C 26310036 */  addiu $s1, $s1, 0x36
/* B03440 8008C2A0 00118C00 */  sll   $s1, $s1, 0x10
/* B03444 8008C2A4 00118C03 */  sra   $s1, $s1, 0x10
/* B03448 8008C2A8 00137840 */  sll   $t7, $s3, 1
.L8008C2AC:
/* B0344C 8008C2AC 024F7021 */  addu  $t6, $s2, $t7
/* B03450 8008C2B0 95C30000 */  lhu   $v1, ($t6)
/* B03454 8008C2B4 3C0B0200 */  lui   $t3, %hi(D_02003040) # $t3, 0x200
/* B03458 8008C2B8 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* B0345C 8008C2BC 14600005 */  bnez  $v1, .L8008C2D4
/* B03460 8008C2C0 0003C1C0 */   sll   $t8, $v1, 7
/* B03464 8008C2C4 16000003 */  bnez  $s0, .L8008C2D4
/* B03468 8008C2C8 2A610003 */   slti  $at, $s3, 3
/* B0346C 8008C2CC 5420001E */  bnezl $at, .L8008C348
/* B03470 8008C2D0 26730001 */   addiu $s3, $s3, 1
.L8008C2D4:
/* B03474 8008C2D4 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* B03478 8008C2D8 8E8402B0 */  lw    $a0, 0x2b0($s4)
/* B0347C 8008C2DC AFB10010 */  sw    $s1, 0x10($sp)
/* B03480 8008C2E0 851907B2 */  lh    $t9, 0x7b2($t0)
/* B03484 8008C2E4 3C0D8012 */  lui   $t5, %hi(sDigitWidth) # $t5, 0x8012
/* B03488 8008C2E8 85AD5B10 */  lh    $t5, %lo(sDigitWidth)($t5)
/* B0348C 8008C2EC 272CFFFE */  addiu $t4, $t9, -2
/* B03490 8008C2F0 AFAC0014 */  sw    $t4, 0x14($sp)
/* B03494 8008C2F4 AFAD0018 */  sw    $t5, 0x18($sp)
/* B03498 8008C2F8 850A0F68 */  lh    $t2, 0xf68($t0)
/* B0349C 8008C2FC 256B3040 */  addiu $t3, %lo(D_02003040) # addiu $t3, $t3, 0x3040
/* B034A0 8008C300 030B2821 */  addu  $a1, $t8, $t3
/* B034A4 8008C304 AFAA001C */  sw    $t2, 0x1c($sp)
/* B034A8 8008C308 85020F6A */  lh    $v0, 0xf6a($t0)
/* B034AC 8008C30C 24060008 */  li    $a2, 8
/* B034B0 8008C310 24070010 */  li    $a3, 16
/* B034B4 8008C314 00021040 */  sll   $v0, $v0, 1
/* B034B8 8008C318 3042FFFF */  andi  $v0, $v0, 0xffff
/* B034BC 8008C31C AFA20020 */  sw    $v0, 0x20($sp)
/* B034C0 8008C320 0C02112F */  jal   Gfx_TextureI8
/* B034C4 8008C324 AFA20024 */   sw    $v0, 0x24($sp)
/* B034C8 8008C328 26310009 */  addiu $s1, $s1, 9
/* B034CC 8008C32C 26100001 */  addiu $s0, $s0, 1
/* B034D0 8008C330 00118C00 */  sll   $s1, $s1, 0x10
/* B034D4 8008C334 00108400 */  sll   $s0, $s0, 0x10
/* B034D8 8008C338 AE8202B0 */  sw    $v0, 0x2b0($s4)
/* B034DC 8008C33C 00118C03 */  sra   $s1, $s1, 0x10
/* B034E0 8008C340 00108403 */  sra   $s0, $s0, 0x10
/* B034E4 8008C344 26730001 */  addiu $s3, $s3, 1
.L8008C348:
/* B034E8 8008C348 00139C00 */  sll   $s3, $s3, 0x10
/* B034EC 8008C34C 00139C03 */  sra   $s3, $s3, 0x10
/* B034F0 8008C350 2A610004 */  slti  $at, $s3, 4
/* B034F4 8008C354 5420FFD5 */  bnezl $at, .L8008C2AC
/* B034F8 8008C358 00137840 */   sll   $t7, $s3, 1
/* B034FC 8008C35C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B03500 8008C360 3C0EE700 */  lui   $t6, 0xe700
/* B03504 8008C364 3C0BFC11 */  lui   $t3, (0xFC119623 >> 16) # lui $t3, 0xfc11
/* B03508 8008C368 24EF0008 */  addiu $t7, $a3, 8
/* B0350C 8008C36C AE8F02B0 */  sw    $t7, 0x2b0($s4)
/* B03510 8008C370 ACE00004 */  sw    $zero, 4($a3)
/* B03514 8008C374 ACEE0000 */  sw    $t6, ($a3)
/* B03518 8008C378 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B0351C 8008C37C 3C19FF2F */  lui   $t9, (0xFF2FFFFF >> 16) # lui $t9, 0xff2f
/* B03520 8008C380 3739FFFF */  ori   $t9, (0xFF2FFFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* B03524 8008C384 24F80008 */  addiu $t8, $a3, 8
/* B03528 8008C388 AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B0352C 8008C38C 356B9623 */  ori   $t3, (0xFC119623 & 0xFFFF) # ori $t3, $t3, 0x9623
/* B03530 8008C390 ACEB0000 */  sw    $t3, ($a3)
/* B03534 8008C394 ACF90004 */  sw    $t9, 4($a3)
.L8008C398:
/* B03538 8008C398 86AC13D2 */  lh    $t4, 0x13d2($s5)
.L8008C39C:
/* B0353C 8008C39C 24010005 */  li    $at, 5
/* B03540 8008C3A0 5581005F */  bnel  $t4, $at, .L8008C520
/* B03544 8008C3A4 8FAA0060 */   lw    $t2, 0x60($sp)
/* B03548 8008C3A8 0C042F6F */  jal   func_8010BDBC
/* B0354C 8008C3AC 26E420D8 */   addiu $a0, $s7, 0x20d8
/* B03550 8008C3B0 24010005 */  li    $at, 5
/* B03554 8008C3B4 14410059 */  bne   $v0, $at, .L8008C51C
/* B03558 8008C3B8 24030028 */   li    $v1, 40
/* B0355C 8008C3BC 3C010001 */  lui   $at, 1
/* B03560 8008C3C0 AEA00008 */  sw    $zero, 8($s5)
/* B03564 8008C3C4 00370821 */  addu  $at, $at, $s7
/* B03568 8008C3C8 240D0014 */  li    $t5, 20
/* B0356C 8008C3CC A02D1E15 */  sb    $t5, 0x1e15($at)
/* B03570 8008C3D0 3C010001 */  lui   $at, 1
/* B03574 8008C3D4 00370821 */  addu  $at, $at, $s7
/* B03578 8008C3D8 240A0003 */  li    $t2, 3
/* B0357C 8008C3DC A02A1E5E */  sb    $t2, 0x1e5e($at)
/* B03580 8008C3E0 92A20068 */  lbu   $v0, 0x68($s5)
/* B03584 8008C3E4 A6A013D2 */  sh    $zero, 0x13d2($s5)
/* B03588 8008C3E8 3C018016 */  lui   $at, %hi(D_8015FFE6) # $at, 0x8016
/* B0358C 8008C3EC A423FFE6 */  sh    $v1, %lo(D_8015FFE6)($at)
/* B03590 8008C3F0 2401003B */  li    $at, 59
/* B03594 8008C3F4 1041000F */  beq   $v0, $at, .L8008C434
/* B03598 8008C3F8 00009825 */   move  $s3, $zero
/* B0359C 8008C3FC 2401003C */  li    $at, 60
/* B035A0 8008C400 1041000C */  beq   $v0, $at, .L8008C434
/* B035A4 8008C404 2401003D */   li    $at, 61
/* B035A8 8008C408 1041000A */  beq   $v0, $at, .L8008C434
/* B035AC 8008C40C 24010055 */   li    $at, 85
/* B035B0 8008C410 10410008 */  beq   $v0, $at, .L8008C434
/* B035B4 8008C414 00000000 */   nop   
/* B035B8 8008C418 92A213E2 */  lbu   $v0, 0x13e2($s5)
/* B035BC 8008C41C 240F00FF */  li    $t7, 255
/* B035C0 8008C420 50400004 */  beql  $v0, $zero, .L8008C434
/* B035C4 8008C424 A2AF0068 */   sb    $t7, 0x68($s5)
/* B035C8 8008C428 10000002 */  b     .L8008C434
/* B035CC 8008C42C A2A20068 */   sb    $v0, 0x68($s5)
/* B035D0 8008C430 A2AF0068 */  sb    $t7, 0x68($s5)
.L8008C434:
/* B035D4 8008C434 3C188012 */  lui   $t8, %hi(gItemSlots+0x2d) # $t8, 0x8012
/* B035D8 8008C438 93187491 */  lbu   $t8, %lo(gItemSlots+0x2d)($t8)
/* B035DC 8008C43C 3C0E8012 */  lui   $t6, %hi(gSpoilingItems) # $t6, 0x8012
/* B035E0 8008C440 25CE5A18 */  addiu $t6, %lo(gSpoilingItems) # addiu $t6, $t6, 0x5a18
/* B035E4 8008C444 00131840 */  sll   $v1, $s3, 1
/* B035E8 8008C448 006E9021 */  addu  $s2, $v1, $t6
/* B035EC 8008C44C 02B85821 */  addu  $t3, $s5, $t8
/* B035F0 8008C450 91790074 */  lbu   $t9, 0x74($t3)
/* B035F4 8008C454 864C0000 */  lh    $t4, ($s2)
/* B035F8 8008C458 3C048014 */  lui   $a0, %hi(D_8013E3B4) # $a0, 0x8014
/* B035FC 8008C45C 572C002A */  bnel  $t9, $t4, .L8008C508
/* B03600 8008C460 26730001 */   addiu $s3, $s3, 1
/* B03604 8008C464 96AD13FA */  lhu   $t5, 0x13fa($s5)
/* B03608 8008C468 2484E3B4 */  addiu $a0, %lo(D_8013E3B4) # addiu $a0, $a0, -0x1c4c
/* B0360C 8008C46C AFA30064 */  sw    $v1, 0x64($sp)
/* B03610 8008C470 31AA7F80 */  andi  $t2, $t5, 0x7f80
/* B03614 8008C474 A6AA13FA */  sh    $t2, 0x13fa($s5)
/* B03618 8008C478 0C00084C */  jal   osSyncPrintf
/* B0361C 8008C47C 3145FFFF */   andi  $a1, $t2, 0xffff
/* B03620 8008C480 8FA30064 */  lw    $v1, 0x64($sp)
/* B03624 8008C484 3C0F8012 */  lui   $t7, %hi(sSpoilingItemEntrances)
/* B03628 8008C488 3C010001 */  lui   $at, 1
/* B0362C 8008C48C 01E37821 */  addu  $t7, $t7, $v1
/* B03630 8008C490 85EF5B4C */  lh    $t7, %lo(sSpoilingItemEntrances)($t7)
/* B03634 8008C494 3C0E8012 */  lui   $t6, %hi(gSpoilingItemReverts) # $t6, 0x8012
/* B03638 8008C498 00370821 */  addu  $at, $at, $s7
/* B0363C 8008C49C 25CE5A20 */  addiu $t6, %lo(gSpoilingItemReverts) # addiu $t6, $t6, 0x5a20
/* B03640 8008C4A0 006E8821 */  addu  $s1, $v1, $t6
/* B03644 8008C4A4 A42F1E1A */  sh    $t7, 0x1e1a($at)
/* B03648 8008C4A8 86220000 */  lh    $v0, ($s1)
/* B0364C 8008C4AC 3C188012 */  lui   $t8, %hi(gItemSlots)
/* B03650 8008C4B0 24100001 */  li    $s0, 1
/* B03654 8008C4B4 0302C021 */  addu  $t8, $t8, $v0
/* B03658 8008C4B8 93187464 */  lbu   $t8, %lo(gItemSlots)($t8)
/* B0365C 8008C4BC 02B85821 */  addu  $t3, $s5, $t8
/* B03660 8008C4C0 A1620074 */  sb    $v0, 0x74($t3)
/* B03664 8008C4C4 02B01021 */  addu  $v0, $s5, $s0
.L8008C4C8:
/* B03668 8008C4C8 90590068 */  lbu   $t9, 0x68($v0)
/* B0366C 8008C4CC 864C0000 */  lh    $t4, ($s2)
/* B03670 8008C4D0 02E02025 */  move  $a0, $s7
/* B03674 8008C4D4 572C0006 */  bnel  $t9, $t4, .L8008C4F0
/* B03678 8008C4D8 26100001 */   addiu $s0, $s0, 1
/* B0367C 8008C4DC 862D0000 */  lh    $t5, ($s1)
/* B03680 8008C4E0 3205FFFF */  andi  $a1, $s0, 0xffff
/* B03684 8008C4E4 0C02129B */  jal   Interface_LoadItemIcon1
/* B03688 8008C4E8 A04D0068 */   sb    $t5, 0x68($v0)
/* B0368C 8008C4EC 26100001 */  addiu $s0, $s0, 1
.L8008C4F0:
/* B03690 8008C4F0 00108400 */  sll   $s0, $s0, 0x10
/* B03694 8008C4F4 00108403 */  sra   $s0, $s0, 0x10
/* B03698 8008C4F8 2A010004 */  slti  $at, $s0, 4
/* B0369C 8008C4FC 5420FFF2 */  bnezl $at, .L8008C4C8
/* B036A0 8008C500 02B01021 */   addu  $v0, $s5, $s0
/* B036A4 8008C504 26730001 */  addiu $s3, $s3, 1
.L8008C508:
/* B036A8 8008C508 00139C00 */  sll   $s3, $s3, 0x10
/* B036AC 8008C50C 00139C03 */  sra   $s3, $s3, 0x10
/* B036B0 8008C510 2A610003 */  slti  $at, $s3, 3
/* B036B4 8008C514 1420FFC7 */  bnez  $at, .L8008C434
/* B036B8 8008C518 00000000 */   nop   
.L8008C51C:
/* B036BC 8008C51C 8FAA0060 */  lw    $t2, 0x60($sp)
.L8008C520:
/* B036C0 8008C520 954F0934 */  lhu   $t7, 0x934($t2)
/* B036C4 8008C524 55E003FC */  bnezl $t7, .L8008D518
/* B036C8 8008C528 8FB80068 */   lw    $t8, 0x68($sp)
/* B036CC 8008C52C 954E0936 */  lhu   $t6, 0x936($t2)
/* B036D0 8008C530 55C003F9 */  bnezl $t6, .L8008D518
/* B036D4 8008C534 8FB80068 */   lw    $t8, 0x68($sp)
/* B036D8 8008C538 95580A20 */  lhu   $t8, 0xa20($t2)
/* B036DC 8008C53C 3401A0D8 */  li    $at, 41176
/* B036E0 8008C540 02E18021 */  addu  $s0, $s7, $at
/* B036E4 8008C544 570003F4 */  bnezl $t8, .L8008D518
/* B036E8 8008C548 8FB80068 */   lw    $t8, 0x68($sp)
/* B036EC 8008C54C 920B6304 */  lbu   $t3, 0x6304($s0)
/* B036F0 8008C550 8FB90280 */  lw    $t9, 0x280($sp)
/* B036F4 8008C554 556003F0 */  bnezl $t3, .L8008D518
/* B036F8 8008C558 8FB80068 */   lw    $t8, 0x68($sp)
/* B036FC 8008C55C 8F2C0680 */  lw    $t4, 0x680($t9)
/* B03700 8008C560 000C69C0 */  sll   $t5, $t4, 7
/* B03704 8008C564 05A203EC */  bltzl $t5, .L8008D518
/* B03708 8008C568 8FB80068 */   lw    $t8, 0x68($sp)
/* B0370C 8008C56C 814F1E15 */  lb    $t7, 0x1e15($t2)
/* B03710 8008C570 55E003E9 */  bnezl $t7, .L8008D518
/* B03714 8008C574 8FB80068 */   lw    $t8, 0x68($sp)
/* B03718 8008C578 914E241B */  lbu   $t6, 0x241b($t2)
/* B0371C 8008C57C 55C003E6 */  bnezl $t6, .L8008D518
/* B03720 8008C580 8FB80068 */   lw    $t8, 0x68($sp)
/* B03724 8008C584 0C02FF21 */  jal   Gameplay_InCsMode
/* B03728 8008C588 02E02025 */   move  $a0, $s7
/* B0372C 8008C58C 544003E2 */  bnezl $v0, .L8008D518
/* B03730 8008C590 8FB80068 */   lw    $t8, 0x68($sp)
/* B03734 8008C594 96B81404 */  lhu   $t8, 0x1404($s5)
/* B03738 8008C598 24010001 */  li    $at, 1
/* B0373C 8008C59C 8FAB0060 */  lw    $t3, 0x60($sp)
/* B03740 8008C5A0 530103DD */  beql  $t8, $at, .L8008D518
/* B03744 8008C5A4 8FB80068 */   lw    $t8, 0x68($sp)
/* B03748 8008C5A8 81791E5C */  lb    $t9, 0x1e5c($t3)
/* B0374C 8008C5AC 2B210002 */  slti  $at, $t9, 2
/* B03750 8008C5B0 502003D9 */  beql  $at, $zero, .L8008D518
/* B03754 8008C5B4 8FB80068 */   lw    $t8, 0x68($sp)
/* B03758 8008C5B8 86EC00A4 */  lh    $t4, 0xa4($s7)
/* B0375C 8008C5BC 2401004B */  li    $at, 75
/* B03760 8008C5C0 02E02025 */  move  $a0, $s7
/* B03764 8008C5C4 55810006 */  bnel  $t4, $at, .L8008C5E0
/* B03768 8008C5C8 86A413CE */   lh    $a0, 0x13ce($s5)
/* B0376C 8008C5CC 0C00B2D0 */  jal   Flags_GetSwitch
/* B03770 8008C5D0 24050038 */   li    $a1, 56
/* B03774 8008C5D4 544003D0 */  bnezl $v0, .L8008D518
/* B03778 8008C5D8 8FB80068 */   lw    $t8, 0x68($sp)
/* B0377C 8008C5DC 86A413CE */  lh    $a0, 0x13ce($s5)
.L8008C5E0:
/* B03780 8008C5E0 A7A00274 */  sh    $zero, 0x274($sp)
/* B03784 8008C5E4 248DFFFF */  addiu $t5, $a0, -1
/* B03788 8008C5E8 2DA1000F */  sltiu $at, $t5, 0xf
/* B0378C 8008C5EC 102001BF */  beqz  $at, .L8008CCEC
/* B03790 8008C5F0 000D6880 */   sll   $t5, $t5, 2
/* B03794 8008C5F4 3C018014 */  lui   $at, %hi(jtbl_8013E658)
/* B03798 8008C5F8 002D0821 */  addu  $at, $at, $t5
/* B0379C 8008C5FC 8C2DE658 */  lw    $t5, %lo(jtbl_8013E658)($at)
/* B037A0 8008C600 01A00008 */  jr    $t5
/* B037A4 8008C604 00000000 */   nop   
glabel L8008C608
/* B037A8 8008C608 86AF0030 */  lh    $t7, 0x30($s5)
/* B037AC 8008C60C 240E0002 */  li    $t6, 2
/* B037B0 8008C610 A6AE13CE */  sh    $t6, 0x13ce($s5)
/* B037B4 8008C614 000F5043 */  sra   $t2, $t7, 1
/* B037B8 8008C618 24030014 */  li    $v1, 20
/* B037BC 8008C61C A6AA13D0 */  sh    $t2, 0x13d0($s5)
/* B037C0 8008C620 86A413CE */  lh    $a0, 0x13ce($s5)
/* B037C4 8008C624 3C018016 */  lui   $at, %hi(D_8015FFE2) # $at, 0x8016
/* B037C8 8008C628 A423FFE2 */  sh    $v1, %lo(D_8015FFE2)($at)
/* B037CC 8008C62C 24050014 */  li    $a1, 20
/* B037D0 8008C630 3C018016 */  lui   $at, %hi(D_8015FFE0) # $at, 0x8016
/* B037D4 8008C634 3C128016 */  lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B037D8 8008C638 2652FFE8 */  addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
/* B037DC 8008C63C 100002ED */  b     .L8008D1F4
/* B037E0 8008C640 A425FFE0 */   sh    $a1, %lo(D_8015FFE0)($at)
glabel L8008C644
/* B037E4 8008C644 3C038016 */  lui   $v1, %hi(D_8015FFE2) # $v1, 0x8016
/* B037E8 8008C648 8463FFE2 */  lh    $v1, %lo(D_8015FFE2)($v1)
/* B037EC 8008C64C 3C018016 */  lui   $at, %hi(D_8015FFE2) # $at, 0x8016
/* B037F0 8008C650 3C128016 */  lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B037F4 8008C654 2463FFFF */  addiu $v1, $v1, -1
/* B037F8 8008C658 00031C00 */  sll   $v1, $v1, 0x10
/* B037FC 8008C65C 00031C03 */  sra   $v1, $v1, 0x10
/* B03800 8008C660 14600007 */  bnez  $v1, .L8008C680
/* B03804 8008C664 A423FFE2 */   sh    $v1, %lo(D_8015FFE2)($at)
/* B03808 8008C668 24180003 */  li    $t8, 3
/* B0380C 8008C66C A6B813CE */  sh    $t8, 0x13ce($s5)
/* B03810 8008C670 24030014 */  li    $v1, 20
/* B03814 8008C674 86A413CE */  lh    $a0, 0x13ce($s5)
/* B03818 8008C678 3C018016 */  lui   $at, %hi(D_8015FFE2) # $at, 0x8016
/* B0381C 8008C67C A423FFE2 */  sh    $v1, %lo(D_8015FFE2)($at)
.L8008C680:
/* B03820 8008C680 100002DC */  b     .L8008D1F4
/* B03824 8008C684 2652FFE8 */   addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
glabel L8008C688
/* B03828 8008C688 24030014 */  li    $v1, 20
/* B0382C 8008C68C 3C018016 */  lui   $at, %hi(D_8015FFE2) # $at, 0x8016
/* B03830 8008C690 A423FFE2 */  sh    $v1, %lo(D_8015FFE2)($at)
/* B03834 8008C694 24050014 */  li    $a1, 20
/* B03838 8008C698 3C018016 */  lui   $at, %hi(D_8015FFE0) # $at, 0x8016
/* B0383C 8008C69C A425FFE0 */  sh    $a1, %lo(D_8015FFE0)($at)
/* B03840 8008C6A0 24010005 */  li    $at, 5
/* B03844 8008C6A4 14810004 */  bne   $a0, $at, .L8008C6B8
/* B03848 8008C6A8 3C128016 */   lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B0384C 8008C6AC 240B0006 */  li    $t3, 6
/* B03850 8008C6B0 10000003 */  b     .L8008C6C0
/* B03854 8008C6B4 A6AB13CE */   sh    $t3, 0x13ce($s5)
.L8008C6B8:
/* B03858 8008C6B8 2419000C */  li    $t9, 12
/* B0385C 8008C6BC A6B913CE */  sh    $t9, 0x13ce($s5)
.L8008C6C0:
/* B03860 8008C6C0 86A413CE */  lh    $a0, 0x13ce($s5)
/* B03864 8008C6C4 100002CB */  b     .L8008D1F4
/* B03868 8008C6C8 2652FFE8 */   addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
glabel L8008C6CC
/* B0386C 8008C6CC 3C038016 */  lui   $v1, %hi(D_8015FFE2) # $v1, 0x8016
/* B03870 8008C6D0 8463FFE2 */  lh    $v1, %lo(D_8015FFE2)($v1)
/* B03874 8008C6D4 3C018016 */  lui   $at, %hi(D_8015FFE2) # $at, 0x8016
/* B03878 8008C6D8 3C128016 */  lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B0387C 8008C6DC 2463FFFF */  addiu $v1, $v1, -1
/* B03880 8008C6E0 00031C00 */  sll   $v1, $v1, 0x10
/* B03884 8008C6E4 00031C03 */  sra   $v1, $v1, 0x10
/* B03888 8008C6E8 1460000F */  bnez  $v1, .L8008C728
/* B0388C 8008C6EC A423FFE2 */   sh    $v1, %lo(D_8015FFE2)($at)
/* B03890 8008C6F0 24030014 */  li    $v1, 20
/* B03894 8008C6F4 3C018016 */  lui   $at, %hi(D_8015FFE2) # $at, 0x8016
/* B03898 8008C6F8 A423FFE2 */  sh    $v1, %lo(D_8015FFE2)($at)
/* B0389C 8008C6FC 24010006 */  li    $at, 6
/* B038A0 8008C700 14810007 */  bne   $a0, $at, .L8008C720
/* B038A4 8008C704 240D000D */   li    $t5, 13
/* B038A8 8008C708 240C0007 */  li    $t4, 7
/* B038AC 8008C70C A6AC13CE */  sh    $t4, 0x13ce($s5)
/* B038B0 8008C710 3C128016 */  lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B038B4 8008C714 86A413CE */  lh    $a0, 0x13ce($s5)
/* B038B8 8008C718 100002B6 */  b     .L8008D1F4
/* B038BC 8008C71C 2652FFE8 */   addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
.L8008C720:
/* B038C0 8008C720 A6AD13CE */  sh    $t5, 0x13ce($s5)
/* B038C4 8008C724 86A413CE */  lh    $a0, 0x13ce($s5)
.L8008C728:
/* B038C8 8008C728 100002B2 */  b     .L8008D1F4
/* B038CC 8008C72C 2652FFE8 */   addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
glabel L8008C730
/* B038D0 8008C730 86A213D6 */  lh    $v0, 0x13d6($s5)
/* B038D4 8008C734 3C038016 */  lui   $v1, %hi(D_8015FFE2) # $v1, 0x8016
/* B038D8 8008C738 8463FFE2 */  lh    $v1, %lo(D_8015FFE2)($v1)
/* B038DC 8008C73C 244FFFE6 */  addiu $t7, $v0, -0x1a
/* B038E0 8008C740 86AE002E */  lh    $t6, 0x2e($s5)
/* B038E4 8008C744 01E3001A */  div   $zero, $t7, $v1
/* B038E8 8008C748 14600002 */  bnez  $v1, .L8008C754
/* B038EC 8008C74C 00000000 */   nop   
/* B038F0 8008C750 0007000D */  break 7
.L8008C754:
/* B038F4 8008C754 2401FFFF */  li    $at, -1
/* B038F8 8008C758 14610004 */  bne   $v1, $at, .L8008C76C
/* B038FC 8008C75C 3C018000 */   lui   $at, 0x8000
/* B03900 8008C760 15E10002 */  bne   $t7, $at, .L8008C76C
/* B03904 8008C764 00000000 */   nop   
/* B03908 8008C768 0006000D */  break 6
.L8008C76C:
/* B0390C 8008C76C 00009812 */  mflo  $s3
/* B03910 8008C770 00139C00 */  sll   $s3, $s3, 0x10
/* B03914 8008C774 00139C03 */  sra   $s3, $s3, 0x10
/* B03918 8008C778 00535023 */  subu  $t2, $v0, $s3
/* B0391C 8008C77C 29C100A1 */  slti  $at, $t6, 0xa1
/* B03920 8008C780 14200012 */  bnez  $at, .L8008C7CC
/* B03924 8008C784 A6AA13D6 */   sh    $t2, 0x13d6($s5)
/* B03928 8008C788 86A213DA */  lh    $v0, 0x13da($s5)
/* B0392C 8008C78C 2458FFCA */  addiu $t8, $v0, -0x36
/* B03930 8008C790 0303001A */  div   $zero, $t8, $v1
/* B03934 8008C794 00009812 */  mflo  $s3
/* B03938 8008C798 00139C00 */  sll   $s3, $s3, 0x10
/* B0393C 8008C79C 14600002 */  bnez  $v1, .L8008C7A8
/* B03940 8008C7A0 00000000 */   nop   
/* B03944 8008C7A4 0007000D */  break 7
.L8008C7A8:
/* B03948 8008C7A8 2401FFFF */  li    $at, -1
/* B0394C 8008C7AC 14610004 */  bne   $v1, $at, .L8008C7C0
/* B03950 8008C7B0 3C018000 */   lui   $at, 0x8000
/* B03954 8008C7B4 17010002 */  bne   $t8, $at, .L8008C7C0
/* B03958 8008C7B8 00000000 */   nop   
/* B0395C 8008C7BC 0006000D */  break 6
.L8008C7C0:
/* B03960 8008C7C0 00139C03 */  sra   $s3, $s3, 0x10
/* B03964 8008C7C4 10000011 */  b     .L8008C80C
/* B03968 8008C7C8 2463FFFF */   addiu $v1, $v1, -1
.L8008C7CC:
/* B0396C 8008C7CC 86A213DA */  lh    $v0, 0x13da($s5)
/* B03970 8008C7D0 244BFFD2 */  addiu $t3, $v0, -0x2e
/* B03974 8008C7D4 0163001A */  div   $zero, $t3, $v1
/* B03978 8008C7D8 00009812 */  mflo  $s3
/* B0397C 8008C7DC 00139C00 */  sll   $s3, $s3, 0x10
/* B03980 8008C7E0 00139C03 */  sra   $s3, $s3, 0x10
/* B03984 8008C7E4 14600002 */  bnez  $v1, .L8008C7F0
/* B03988 8008C7E8 00000000 */   nop   
/* B0398C 8008C7EC 0007000D */  break 7
.L8008C7F0:
/* B03990 8008C7F0 2401FFFF */  li    $at, -1
/* B03994 8008C7F4 14610004 */  bne   $v1, $at, .L8008C808
/* B03998 8008C7F8 3C018000 */   lui   $at, 0x8000
/* B0399C 8008C7FC 15610002 */  bne   $t3, $at, .L8008C808
/* B039A0 8008C800 00000000 */   nop   
/* B039A4 8008C804 0006000D */  break 6
.L8008C808:
/* B039A8 8008C808 2463FFFF */  addiu $v1, $v1, -1
.L8008C80C:
/* B039AC 8008C80C 0053C823 */  subu  $t9, $v0, $s3
/* B039B0 8008C810 00031C00 */  sll   $v1, $v1, 0x10
/* B039B4 8008C814 A6B913DA */  sh    $t9, 0x13da($s5)
/* B039B8 8008C818 00031C03 */  sra   $v1, $v1, 0x10
/* B039BC 8008C81C 3C018016 */  lui   $at, %hi(D_8015FFE2) # $at, 0x8016
/* B039C0 8008C820 14600017 */  bnez  $v1, .L8008C880
/* B039C4 8008C824 A423FFE2 */   sh    $v1, %lo(D_8015FFE2)($at)
/* B039C8 8008C828 240C001A */  li    $t4, 26
/* B039CC 8008C82C 24030014 */  li    $v1, 20
/* B039D0 8008C830 A6AC13D6 */  sh    $t4, 0x13d6($s5)
/* B039D4 8008C834 3C018016 */  lui   $at, %hi(D_8015FFE2) # $at, 0x8016
/* B039D8 8008C838 A423FFE2 */  sh    $v1, %lo(D_8015FFE2)($at)
/* B039DC 8008C83C 86AD002E */  lh    $t5, 0x2e($s5)
/* B039E0 8008C840 240F0036 */  li    $t7, 54
/* B039E4 8008C844 240A002E */  li    $t2, 46
/* B039E8 8008C848 29A100A1 */  slti  $at, $t5, 0xa1
/* B039EC 8008C84C 14200003 */  bnez  $at, .L8008C85C
/* B039F0 8008C850 240B0008 */   li    $t3, 8
/* B039F4 8008C854 10000002 */  b     .L8008C860
/* B039F8 8008C858 A6AF13DA */   sh    $t7, 0x13da($s5)
.L8008C85C:
/* B039FC 8008C85C A6AA13DA */  sh    $t2, 0x13da($s5)
.L8008C860:
/* B03A00 8008C860 86AE13CE */  lh    $t6, 0x13ce($s5)
/* B03A04 8008C864 24010003 */  li    $at, 3
/* B03A08 8008C868 24180004 */  li    $t8, 4
/* B03A0C 8008C86C 55C10004 */  bnel  $t6, $at, .L8008C880
/* B03A10 8008C870 A6AB13CE */   sh    $t3, 0x13ce($s5)
/* B03A14 8008C874 10000002 */  b     .L8008C880
/* B03A18 8008C878 A6B813CE */   sh    $t8, 0x13ce($s5)
/* B03A1C 8008C87C A6AB13CE */  sh    $t3, 0x13ce($s5)
.L8008C880:
/* B03A20 8008C880 86A413CE */  lh    $a0, 0x13ce($s5)
glabel L8008C884
/* B03A24 8008C884 24010004 */  li    $at, 4
/* B03A28 8008C888 10810003 */  beq   $a0, $at, .L8008C898
/* B03A2C 8008C88C 24010008 */   li    $at, 8
/* B03A30 8008C890 5481000D */  bnel  $a0, $at, .L8008C8C8
/* B03A34 8008C894 28810003 */   slti  $at, $a0, 3
.L8008C898:
/* B03A38 8008C898 86B9002E */  lh    $t9, 0x2e($s5)
/* B03A3C 8008C89C 240C0036 */  li    $t4, 54
/* B03A40 8008C8A0 240D002E */  li    $t5, 46
/* B03A44 8008C8A4 2B2100A1 */  slti  $at, $t9, 0xa1
/* B03A48 8008C8A8 54200005 */  bnezl $at, .L8008C8C0
/* B03A4C 8008C8AC A6AD13DA */   sh    $t5, 0x13da($s5)
/* B03A50 8008C8B0 A6AC13DA */  sh    $t4, 0x13da($s5)
/* B03A54 8008C8B4 10000003 */  b     .L8008C8C4
/* B03A58 8008C8B8 86A413CE */   lh    $a0, 0x13ce($s5)
/* B03A5C 8008C8BC A6AD13DA */  sh    $t5, 0x13da($s5)
.L8008C8C0:
/* B03A60 8008C8C0 86A413CE */  lh    $a0, 0x13ce($s5)
.L8008C8C4:
/* B03A64 8008C8C4 28810003 */  slti  $at, $a0, 3
.L8008C8C8:
/* B03A68 8008C8C8 14200062 */  bnez  $at, .L8008CA54
/* B03A6C 8008C8CC 00000000 */   nop   
/* B03A70 8008C8D0 8E0F6300 */  lw    $t7, 0x6300($s0)
/* B03A74 8008C8D4 3C058016 */  lui   $a1, %hi(D_8015FFE0) # $a1, 0x8016
/* B03A78 8008C8D8 15E0005E */  bnez  $t7, .L8008CA54
/* B03A7C 8008C8DC 00000000 */   nop   
/* B03A80 8008C8E0 84A5FFE0 */  lh    $a1, %lo(D_8015FFE0)($a1)
/* B03A84 8008C8E4 3C018016 */  lui   $at, %hi(D_8015FFE0) # $at, 0x8016
/* B03A88 8008C8E8 24A5FFFF */  addiu $a1, $a1, -1
/* B03A8C 8008C8EC 00052C00 */  sll   $a1, $a1, 0x10
/* B03A90 8008C8F0 00052C03 */  sra   $a1, $a1, 0x10
/* B03A94 8008C8F4 14A00057 */  bnez  $a1, .L8008CA54
/* B03A98 8008C8F8 A425FFE0 */   sh    $a1, %lo(D_8015FFE0)($at)
/* B03A9C 8008C8FC 86A213D0 */  lh    $v0, 0x13d0($s5)
/* B03AA0 8008C900 24050014 */  li    $a1, 20
/* B03AA4 8008C904 3C018016 */  lui   $at, %hi(D_8015FFE0) # $at, 0x8016
/* B03AA8 8008C908 10400003 */  beqz  $v0, .L8008C918
/* B03AAC 8008C90C 244AFFFF */   addiu $t2, $v0, -1
/* B03AB0 8008C910 A6AA13D0 */  sh    $t2, 0x13d0($s5)
/* B03AB4 8008C914 86A213D0 */  lh    $v0, 0x13d0($s5)
.L8008C918:
/* B03AB8 8008C918 14400016 */  bnez  $v0, .L8008C974
/* B03ABC 8008C91C A425FFE0 */   sh    $a1, %lo(D_8015FFE0)($at)
/* B03AC0 8008C920 3C108012 */  lui   $s0, %hi(D_80125A5C) # $s0, 0x8012
/* B03AC4 8008C924 26105A5C */  addiu $s0, %lo(D_80125A5C) # addiu $s0, $s0, 0x5a5c
/* B03AC8 8008C928 86180000 */  lh    $t8, ($s0)
/* B03ACC 8008C92C 240E000A */  li    $t6, 10
/* B03AD0 8008C930 A6AE13CE */  sh    $t6, 0x13ce($s5)
/* B03AD4 8008C934 1300000A */  beqz  $t8, .L8008C960
/* B03AD8 8008C938 00000000 */   nop   
/* B03ADC 8008C93C A6A00030 */  sh    $zero, 0x30($s5)
/* B03AE0 8008C940 86AB0030 */  lh    $t3, 0x30($s5)
/* B03AE4 8008C944 8FAC0060 */  lw    $t4, 0x60($sp)
/* B03AE8 8008C948 2419FFFE */  li    $t9, -2
/* B03AEC 8008C94C 032B2823 */  subu  $a1, $t9, $t3
/* B03AF0 8008C950 8D991D58 */  lw    $t9, 0x1d58($t4)
/* B03AF4 8008C954 02E02025 */  move  $a0, $s7
/* B03AF8 8008C958 0320F809 */  jalr  $t9
/* B03AFC 8008C95C 00000000 */  nop   
.L8008C960:
/* B03B00 8008C960 3C128016 */  lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B03B04 8008C964 A6000000 */  sh    $zero, ($s0)
/* B03B08 8008C968 86A413CE */  lh    $a0, 0x13ce($s5)
/* B03B0C 8008C96C 10000221 */  b     .L8008D1F4
/* B03B10 8008C970 2652FFE8 */   addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
.L8008C974:
/* B03B14 8008C974 2841003D */  slti  $at, $v0, 0x3d
/* B03B18 8008C978 14200014 */  bnez  $at, .L8008C9CC
/* B03B1C 8008C97C 3C128016 */   lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B03B20 8008C980 2652FFE8 */  addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
/* B03B24 8008C984 864D0008 */  lh    $t5, 8($s2)
/* B03B28 8008C988 24010001 */  li    $at, 1
/* B03B2C 8008C98C 3C108013 */  lui   $s0, %hi(D_801333E0)
/* B03B30 8008C990 15A10030 */  bne   $t5, $at, .L8008CA54
/* B03B34 8008C994 260733E0 */   addiu $a3, $s0, %lo(D_801333E0)
/* B03B38 8008C998 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B03B3C 8008C99C 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B03B40 8008C9A0 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B03B44 8008C9A4 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B03B48 8008C9A8 AFAF0014 */  sw    $t7, 0x14($sp)
/* B03B4C 8008C9AC 24044804 */  li    $a0, 18436
/* B03B50 8008C9B0 24060004 */  li    $a2, 4
/* B03B54 8008C9B4 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B03B58 8008C9B8 AFA70010 */   sw    $a3, 0x10($sp)
/* B03B5C 8008C9BC 3C128016 */  lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B03B60 8008C9C0 86A413CE */  lh    $a0, 0x13ce($s5)
/* B03B64 8008C9C4 1000020B */  b     .L8008D1F4
/* B03B68 8008C9C8 2652FFE8 */   addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
.L8008C9CC:
/* B03B6C 8008C9CC 2841000B */  slti  $at, $v0, 0xb
/* B03B70 8008C9D0 14200014 */  bnez  $at, .L8008CA24
/* B03B74 8008C9D4 3C128016 */   lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B03B78 8008C9D8 2652FFE8 */  addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
/* B03B7C 8008C9DC 864A0008 */  lh    $t2, 8($s2)
/* B03B80 8008C9E0 3C108013 */  lui   $s0, %hi(D_801333E0)
/* B03B84 8008C9E4 260733E0 */  addiu $a3, $s0, %lo(D_801333E0)
/* B03B88 8008C9E8 314E0001 */  andi  $t6, $t2, 1
/* B03B8C 8008C9EC 11C00019 */  beqz  $t6, .L8008CA54
/* B03B90 8008C9F0 3C058013 */   lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B03B94 8008C9F4 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* B03B98 8008C9F8 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* B03B9C 8008C9FC AFB80014 */  sw    $t8, 0x14($sp)
/* B03BA0 8008CA00 24044819 */  li    $a0, 18457
/* B03BA4 8008CA04 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B03BA8 8008CA08 24060004 */  li    $a2, 4
/* B03BAC 8008CA0C 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B03BB0 8008CA10 AFA70010 */   sw    $a3, 0x10($sp)
/* B03BB4 8008CA14 3C128016 */  lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B03BB8 8008CA18 86A413CE */  lh    $a0, 0x13ce($s5)
/* B03BBC 8008CA1C 100001F5 */  b     .L8008D1F4
/* B03BC0 8008CA20 2652FFE8 */   addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
.L8008CA24:
/* B03BC4 8008CA24 3C108013 */  lui   $s0, %hi(D_801333E0)
/* B03BC8 8008CA28 3C0B8013 */  lui   $t3, %hi(D_801333E8) # $t3, 0x8013
/* B03BCC 8008CA2C 260733E0 */  addiu $a3, $s0, %lo(D_801333E0)
/* B03BD0 8008CA30 256B33E8 */  addiu $t3, %lo(D_801333E8) # addiu $t3, $t3, 0x33e8
/* B03BD4 8008CA34 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B03BD8 8008CA38 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B03BDC 8008CA3C AFAB0014 */  sw    $t3, 0x14($sp)
/* B03BE0 8008CA40 AFA70010 */  sw    $a3, 0x10($sp)
/* B03BE4 8008CA44 2404481A */  li    $a0, 18458
/* B03BE8 8008CA48 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B03BEC 8008CA4C 24060004 */   li    $a2, 4
/* B03BF0 8008CA50 86A413CE */  lh    $a0, 0x13ce($s5)
.L8008CA54:
/* B03BF4 8008CA54 3C128016 */  lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B03BF8 8008CA58 100001E6 */  b     .L8008D1F4
/* B03BFC 8008CA5C 2652FFE8 */   addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
glabel L8008CA60
/* B03C00 8008CA60 86A213D6 */  lh    $v0, 0x13d6($s5)
/* B03C04 8008CA64 3C038016 */  lui   $v1, %hi(D_8015FFE2) # $v1, 0x8016
/* B03C08 8008CA68 8463FFE2 */  lh    $v1, %lo(D_8015FFE2)($v1)
/* B03C0C 8008CA6C 244CFFE6 */  addiu $t4, $v0, -0x1a
/* B03C10 8008CA70 86AD002E */  lh    $t5, 0x2e($s5)
/* B03C14 8008CA74 0183001A */  div   $zero, $t4, $v1
/* B03C18 8008CA78 14600002 */  bnez  $v1, .L8008CA84
/* B03C1C 8008CA7C 00000000 */   nop   
/* B03C20 8008CA80 0007000D */  break 7
.L8008CA84:
/* B03C24 8008CA84 2401FFFF */  li    $at, -1
/* B03C28 8008CA88 14610004 */  bne   $v1, $at, .L8008CA9C
/* B03C2C 8008CA8C 3C018000 */   lui   $at, 0x8000
/* B03C30 8008CA90 15810002 */  bne   $t4, $at, .L8008CA9C
/* B03C34 8008CA94 00000000 */   nop   
/* B03C38 8008CA98 0006000D */  break 6
.L8008CA9C:
/* B03C3C 8008CA9C 00009812 */  mflo  $s3
/* B03C40 8008CAA0 00139C00 */  sll   $s3, $s3, 0x10
/* B03C44 8008CAA4 00139C03 */  sra   $s3, $s3, 0x10
/* B03C48 8008CAA8 0053C823 */  subu  $t9, $v0, $s3
/* B03C4C 8008CAAC 29A100A1 */  slti  $at, $t5, 0xa1
/* B03C50 8008CAB0 14200012 */  bnez  $at, .L8008CAFC
/* B03C54 8008CAB4 A6B913D6 */   sh    $t9, 0x13d6($s5)
/* B03C58 8008CAB8 86A213DA */  lh    $v0, 0x13da($s5)
/* B03C5C 8008CABC 244FFFCA */  addiu $t7, $v0, -0x36
/* B03C60 8008CAC0 01E3001A */  div   $zero, $t7, $v1
/* B03C64 8008CAC4 00009812 */  mflo  $s3
/* B03C68 8008CAC8 00139C00 */  sll   $s3, $s3, 0x10
/* B03C6C 8008CACC 14600002 */  bnez  $v1, .L8008CAD8
/* B03C70 8008CAD0 00000000 */   nop   
/* B03C74 8008CAD4 0007000D */  break 7
.L8008CAD8:
/* B03C78 8008CAD8 2401FFFF */  li    $at, -1
/* B03C7C 8008CADC 14610004 */  bne   $v1, $at, .L8008CAF0
/* B03C80 8008CAE0 3C018000 */   lui   $at, 0x8000
/* B03C84 8008CAE4 15E10002 */  bne   $t7, $at, .L8008CAF0
/* B03C88 8008CAE8 00000000 */   nop   
/* B03C8C 8008CAEC 0006000D */  break 6
.L8008CAF0:
/* B03C90 8008CAF0 00139C03 */  sra   $s3, $s3, 0x10
/* B03C94 8008CAF4 10000011 */  b     .L8008CB3C
/* B03C98 8008CAF8 2463FFFF */   addiu $v1, $v1, -1
.L8008CAFC:
/* B03C9C 8008CAFC 86A213DA */  lh    $v0, 0x13da($s5)
/* B03CA0 8008CB00 244AFFD2 */  addiu $t2, $v0, -0x2e
/* B03CA4 8008CB04 0143001A */  div   $zero, $t2, $v1
/* B03CA8 8008CB08 00009812 */  mflo  $s3
/* B03CAC 8008CB0C 00139C00 */  sll   $s3, $s3, 0x10
/* B03CB0 8008CB10 00139C03 */  sra   $s3, $s3, 0x10
/* B03CB4 8008CB14 14600002 */  bnez  $v1, .L8008CB20
/* B03CB8 8008CB18 00000000 */   nop   
/* B03CBC 8008CB1C 0007000D */  break 7
.L8008CB20:
/* B03CC0 8008CB20 2401FFFF */  li    $at, -1
/* B03CC4 8008CB24 14610004 */  bne   $v1, $at, .L8008CB38
/* B03CC8 8008CB28 3C018000 */   lui   $at, 0x8000
/* B03CCC 8008CB2C 15410002 */  bne   $t2, $at, .L8008CB38
/* B03CD0 8008CB30 00000000 */   nop   
/* B03CD4 8008CB34 0006000D */  break 6
.L8008CB38:
/* B03CD8 8008CB38 2463FFFF */  addiu $v1, $v1, -1
.L8008CB3C:
/* B03CDC 8008CB3C 00537023 */  subu  $t6, $v0, $s3
/* B03CE0 8008CB40 00031C00 */  sll   $v1, $v1, 0x10
/* B03CE4 8008CB44 A6AE13DA */  sh    $t6, 0x13da($s5)
/* B03CE8 8008CB48 00031C03 */  sra   $v1, $v1, 0x10
/* B03CEC 8008CB4C 3C018016 */  lui   $at, %hi(D_8015FFE2) # $at, 0x8016
/* B03CF0 8008CB50 14600010 */  bnez  $v1, .L8008CB94
/* B03CF4 8008CB54 A423FFE2 */   sh    $v1, %lo(D_8015FFE2)($at)
/* B03CF8 8008CB58 2418001A */  li    $t8, 26
/* B03CFC 8008CB5C 24030014 */  li    $v1, 20
/* B03D00 8008CB60 A6B813D6 */  sh    $t8, 0x13d6($s5)
/* B03D04 8008CB64 3C018016 */  lui   $at, %hi(D_8015FFE2) # $at, 0x8016
/* B03D08 8008CB68 A423FFE2 */  sh    $v1, %lo(D_8015FFE2)($at)
/* B03D0C 8008CB6C 86AB002E */  lh    $t3, 0x2e($s5)
/* B03D10 8008CB70 240C0036 */  li    $t4, 54
/* B03D14 8008CB74 2419002E */  li    $t9, 46
/* B03D18 8008CB78 296100A1 */  slti  $at, $t3, 0xa1
/* B03D1C 8008CB7C 14200003 */  bnez  $at, .L8008CB8C
/* B03D20 8008CB80 240D000E */   li    $t5, 14
/* B03D24 8008CB84 10000002 */  b     .L8008CB90
/* B03D28 8008CB88 A6AC13DA */   sh    $t4, 0x13da($s5)
.L8008CB8C:
/* B03D2C 8008CB8C A6B913DA */  sh    $t9, 0x13da($s5)
.L8008CB90:
/* B03D30 8008CB90 A6AD13CE */  sh    $t5, 0x13ce($s5)
.L8008CB94:
/* B03D34 8008CB94 86A413CE */  lh    $a0, 0x13ce($s5)
glabel L8008CB98
/* B03D38 8008CB98 2401000E */  li    $at, 14
/* B03D3C 8008CB9C 1481000C */  bne   $a0, $at, .L8008CBD0
/* B03D40 8008CBA0 3C058016 */   lui   $a1, %hi(D_8015FFE0) # $a1, 0x8016
/* B03D44 8008CBA4 86AF002E */  lh    $t7, 0x2e($s5)
/* B03D48 8008CBA8 240A0036 */  li    $t2, 54
/* B03D4C 8008CBAC 240E002E */  li    $t6, 46
/* B03D50 8008CBB0 29E100A1 */  slti  $at, $t7, 0xa1
/* B03D54 8008CBB4 54200005 */  bnezl $at, .L8008CBCC
/* B03D58 8008CBB8 A6AE13DA */   sh    $t6, 0x13da($s5)
/* B03D5C 8008CBBC A6AA13DA */  sh    $t2, 0x13da($s5)
/* B03D60 8008CBC0 10000003 */  b     .L8008CBD0
/* B03D64 8008CBC4 86A413CE */   lh    $a0, 0x13ce($s5)
/* B03D68 8008CBC8 A6AE13DA */  sh    $t6, 0x13da($s5)
.L8008CBCC:
/* B03D6C 8008CBCC 86A413CE */  lh    $a0, 0x13ce($s5)
.L8008CBD0:
/* B03D70 8008CBD0 28810003 */  slti  $at, $a0, 3
/* B03D74 8008CBD4 14200026 */  bnez  $at, .L8008CC70
/* B03D78 8008CBD8 00000000 */   nop   
/* B03D7C 8008CBDC 84A5FFE0 */  lh    $a1, %lo(D_8015FFE0)($a1)
/* B03D80 8008CBE0 3C018016 */  lui   $at, %hi(D_8015FFE0) # $at, 0x8016
/* B03D84 8008CBE4 24A5FFFF */  addiu $a1, $a1, -1
/* B03D88 8008CBE8 00052C00 */  sll   $a1, $a1, 0x10
/* B03D8C 8008CBEC 00052C03 */  sra   $a1, $a1, 0x10
/* B03D90 8008CBF0 14A0001F */  bnez  $a1, .L8008CC70
/* B03D94 8008CBF4 A425FFE0 */   sh    $a1, %lo(D_8015FFE0)($at)
/* B03D98 8008CBF8 86B813D0 */  lh    $t8, 0x13d0($s5)
/* B03D9C 8008CBFC 24050014 */  li    $a1, 20
/* B03DA0 8008CC00 3C018016 */  lui   $at, %hi(D_8015FFE0) # $at, 0x8016
/* B03DA4 8008CC04 270B0001 */  addiu $t3, $t8, 1
/* B03DA8 8008CC08 A6AB13D0 */  sh    $t3, 0x13d0($s5)
/* B03DAC 8008CC0C A425FFE0 */  sh    $a1, %lo(D_8015FFE0)($at)
/* B03DB0 8008CC10 86AC13D0 */  lh    $t4, 0x13d0($s5)
/* B03DB4 8008CC14 24010E0F */  li    $at, 3599
/* B03DB8 8008CC18 3C108013 */  lui   $s0, %hi(D_801333E0)
/* B03DBC 8008CC1C 1581000A */  bne   $t4, $at, .L8008CC48
/* B03DC0 8008CC20 260733E0 */   addiu $a3, $s0, %lo(D_801333E0)
/* B03DC4 8008CC24 2419000F */  li    $t9, 15
/* B03DC8 8008CC28 A6B913CE */  sh    $t9, 0x13ce($s5)
/* B03DCC 8008CC2C 24030028 */  li    $v1, 40
/* B03DD0 8008CC30 86A413CE */  lh    $a0, 0x13ce($s5)
/* B03DD4 8008CC34 3C018016 */  lui   $at, %hi(D_8015FFE2) # $at, 0x8016
/* B03DD8 8008CC38 3C128016 */  lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B03DDC 8008CC3C A423FFE2 */  sh    $v1, %lo(D_8015FFE2)($at)
/* B03DE0 8008CC40 1000016C */  b     .L8008D1F4
/* B03DE4 8008CC44 2652FFE8 */   addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
.L8008CC48:
/* B03DE8 8008CC48 3C0D8013 */  lui   $t5, %hi(D_801333E8) # $t5, 0x8013
/* B03DEC 8008CC4C 25AD33E8 */  addiu $t5, %lo(D_801333E8) # addiu $t5, $t5, 0x33e8
/* B03DF0 8008CC50 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B03DF4 8008CC54 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B03DF8 8008CC58 AFAD0014 */  sw    $t5, 0x14($sp)
/* B03DFC 8008CC5C 24044819 */  li    $a0, 18457
/* B03E00 8008CC60 24060004 */  li    $a2, 4
/* B03E04 8008CC64 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B03E08 8008CC68 AFA70010 */   sw    $a3, 0x10($sp)
/* B03E0C 8008CC6C 86A413CE */  lh    $a0, 0x13ce($s5)
.L8008CC70:
/* B03E10 8008CC70 3C128016 */  lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B03E14 8008CC74 1000015F */  b     .L8008D1F4
/* B03E18 8008CC78 2652FFE8 */   addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
glabel L8008CC7C
/* B03E1C 8008CC7C 86AF13D2 */  lh    $t7, 0x13d2($s5)
/* B03E20 8008CC80 24030014 */  li    $v1, 20
/* B03E24 8008CC84 24040014 */  li    $a0, 20
/* B03E28 8008CC88 11E00013 */  beqz  $t7, .L8008CCD8
/* B03E2C 8008CC8C 240A008C */   li    $t2, 140
/* B03E30 8008CC90 240E0050 */  li    $t6, 80
/* B03E34 8008CC94 A6AA13D8 */  sh    $t2, 0x13d8($s5)
/* B03E38 8008CC98 A6AE13DC */  sh    $t6, 0x13dc($s5)
/* B03E3C 8008CC9C 3C018016 */  lui   $at, %hi(D_8015FFE6) # $at, 0x8016
/* B03E40 8008CCA0 A423FFE6 */  sh    $v1, %lo(D_8015FFE6)($at)
/* B03E44 8008CCA4 3C018016 */  lui   $at, %hi(D_8015FFE4) # $at, 0x8016
/* B03E48 8008CCA8 A424FFE4 */  sh    $a0, %lo(D_8015FFE4)($at)
/* B03E4C 8008CCAC 86B813D2 */  lh    $t8, 0x13d2($s5)
/* B03E50 8008CCB0 240B0002 */  li    $t3, 2
/* B03E54 8008CCB4 240C0008 */  li    $t4, 8
/* B03E58 8008CCB8 2B010007 */  slti  $at, $t8, 7
/* B03E5C 8008CCBC 50200004 */  beql  $at, $zero, .L8008CCD0
/* B03E60 8008CCC0 A6AC13D2 */   sh    $t4, 0x13d2($s5)
/* B03E64 8008CCC4 10000002 */  b     .L8008CCD0
/* B03E68 8008CCC8 A6AB13D2 */   sh    $t3, 0x13d2($s5)
/* B03E6C 8008CCCC A6AC13D2 */  sh    $t4, 0x13d2($s5)
.L8008CCD0:
/* B03E70 8008CCD0 10000002 */  b     .L8008CCDC
/* B03E74 8008CCD4 A6A013CE */   sh    $zero, 0x13ce($s5)
.L8008CCD8:
/* B03E78 8008CCD8 A6A013CE */  sh    $zero, 0x13ce($s5)
.L8008CCDC:
/* B03E7C 8008CCDC 86A413CE */  lh    $a0, 0x13ce($s5)
glabel L8008CCE0
/* B03E80 8008CCE0 3C128016 */  lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B03E84 8008CCE4 10000143 */  b     .L8008D1F4
/* B03E88 8008CCE8 2652FFE8 */   addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
glabel L8008CCEC
.L8008CCEC:
/* B03E8C 8008CCEC 86A213D2 */  lh    $v0, 0x13d2($s5)
/* B03E90 8008CCF0 24190001 */  li    $t9, 1
/* B03E94 8008CCF4 A7B90274 */  sh    $t9, 0x274($sp)
/* B03E98 8008CCF8 244DFFFF */  addiu $t5, $v0, -1
/* B03E9C 8008CCFC 2DA1000A */  sltiu $at, $t5, 0xa
/* B03EA0 8008CD00 1020013A */  beqz  $at, .L8008D1EC
/* B03EA4 8008CD04 000D6880 */   sll   $t5, $t5, 2
/* B03EA8 8008CD08 3C018014 */  lui   $at, %hi(jtbl_8013E694)
/* B03EAC 8008CD0C 002D0821 */  addu  $at, $at, $t5
/* B03EB0 8008CD10 8C2DE694 */  lw    $t5, %lo(jtbl_8013E694)($at)
/* B03EB4 8008CD14 01A00008 */  jr    $t5
/* B03EB8 8008CD18 00000000 */   nop   
glabel L8008CD1C
/* B03EBC 8008CD1C 240F008C */  li    $t7, 140
/* B03EC0 8008CD20 240A0050 */  li    $t2, 80
/* B03EC4 8008CD24 24030014 */  li    $v1, 20
/* B03EC8 8008CD28 A6AF13D8 */  sh    $t7, 0x13d8($s5)
/* B03ECC 8008CD2C A6AA13DC */  sh    $t2, 0x13dc($s5)
/* B03ED0 8008CD30 3C018016 */  lui   $at, %hi(D_8015FFE6) # $at, 0x8016
/* B03ED4 8008CD34 A423FFE6 */  sh    $v1, %lo(D_8015FFE6)($at)
/* B03ED8 8008CD38 24040014 */  li    $a0, 20
/* B03EDC 8008CD3C 3C018016 */  lui   $at, %hi(D_8015FFE4) # $at, 0x8016
/* B03EE0 8008CD40 A424FFE4 */  sh    $a0, %lo(D_8015FFE4)($at)
/* B03EE4 8008CD44 86AE13D2 */  lh    $t6, 0x13d2($s5)
/* B03EE8 8008CD48 24010001 */  li    $at, 1
/* B03EEC 8008CD4C 24180002 */  li    $t8, 2
/* B03EF0 8008CD50 15C10003 */  bne   $t6, $at, .L8008CD60
/* B03EF4 8008CD54 240B0008 */   li    $t3, 8
/* B03EF8 8008CD58 10000002 */  b     .L8008CD64
/* B03EFC 8008CD5C A6B813D2 */   sh    $t8, 0x13d2($s5)
.L8008CD60:
/* B03F00 8008CD60 A6AB13D2 */  sh    $t3, 0x13d2($s5)
.L8008CD64:
/* B03F04 8008CD64 10000121 */  b     .L8008D1EC
/* B03F08 8008CD68 86A413CE */   lh    $a0, 0x13ce($s5)
glabel L8008CD6C
/* B03F0C 8008CD6C 3C038016 */  lui   $v1, %hi(D_8015FFE6) # $v1, 0x8016
/* B03F10 8008CD70 8463FFE6 */  lh    $v1, %lo(D_8015FFE6)($v1)
/* B03F14 8008CD74 3C018016 */  lui   $at, %hi(D_8015FFE6) # $at, 0x8016
/* B03F18 8008CD78 2463FFFF */  addiu $v1, $v1, -1
/* B03F1C 8008CD7C 00031C00 */  sll   $v1, $v1, 0x10
/* B03F20 8008CD80 00031C03 */  sra   $v1, $v1, 0x10
/* B03F24 8008CD84 14600119 */  bnez  $v1, .L8008D1EC
/* B03F28 8008CD88 A423FFE6 */   sh    $v1, %lo(D_8015FFE6)($at)
/* B03F2C 8008CD8C 24030014 */  li    $v1, 20
/* B03F30 8008CD90 3C018016 */  lui   $at, %hi(D_8015FFE6) # $at, 0x8016
/* B03F34 8008CD94 A423FFE6 */  sh    $v1, %lo(D_8015FFE6)($at)
/* B03F38 8008CD98 24010002 */  li    $at, 2
/* B03F3C 8008CD9C 14410004 */  bne   $v0, $at, .L8008CDB0
/* B03F40 8008CDA0 24190009 */   li    $t9, 9
/* B03F44 8008CDA4 240C0003 */  li    $t4, 3
/* B03F48 8008CDA8 10000110 */  b     .L8008D1EC
/* B03F4C 8008CDAC A6AC13D2 */   sh    $t4, 0x13d2($s5)
.L8008CDB0:
/* B03F50 8008CDB0 1000010E */  b     .L8008D1EC
/* B03F54 8008CDB4 A6B913D2 */   sh    $t9, 0x13d2($s5)
glabel L8008CDB8
/* B03F58 8008CDB8 86B113D8 */  lh    $s1, 0x13d8($s5)
/* B03F5C 8008CDBC 86B013DC */  lh    $s0, 0x13dc($s5)
/* B03F60 8008CDC0 3C048014 */  lui   $a0, %hi(D_8013E3C4) # $a0, 0x8014
/* B03F64 8008CDC4 2484E3C4 */  addiu $a0, %lo(D_8013E3C4) # addiu $a0, $a0, -0x1c3c
/* B03F68 8008CDC8 86A713D4 */  lh    $a3, 0x13d4($s5)
/* B03F6C 8008CDCC 02202825 */  move  $a1, $s1
/* B03F70 8008CDD0 0C00084C */  jal   osSyncPrintf
/* B03F74 8008CDD4 02003025 */   move  $a2, $s0
/* B03F78 8008CDD8 86A213D8 */  lh    $v0, 0x13d8($s5)
/* B03F7C 8008CDDC 3C038016 */  lui   $v1, %hi(D_8015FFE6) # $v1, 0x8016
/* B03F80 8008CDE0 8463FFE6 */  lh    $v1, %lo(D_8015FFE6)($v1)
/* B03F84 8008CDE4 244DFFE6 */  addiu $t5, $v0, -0x1a
/* B03F88 8008CDE8 86AA002E */  lh    $t2, 0x2e($s5)
/* B03F8C 8008CDEC 01A3001A */  div   $zero, $t5, $v1
/* B03F90 8008CDF0 14600002 */  bnez  $v1, .L8008CDFC
/* B03F94 8008CDF4 00000000 */   nop   
/* B03F98 8008CDF8 0007000D */  break 7
.L8008CDFC:
/* B03F9C 8008CDFC 2401FFFF */  li    $at, -1
/* B03FA0 8008CE00 14610004 */  bne   $v1, $at, .L8008CE14
/* B03FA4 8008CE04 3C018000 */   lui   $at, 0x8000
/* B03FA8 8008CE08 15A10002 */  bne   $t5, $at, .L8008CE14
/* B03FAC 8008CE0C 00000000 */   nop   
/* B03FB0 8008CE10 0006000D */  break 6
.L8008CE14:
/* B03FB4 8008CE14 00009812 */  mflo  $s3
/* B03FB8 8008CE18 00139C00 */  sll   $s3, $s3, 0x10
/* B03FBC 8008CE1C 00139C03 */  sra   $s3, $s3, 0x10
/* B03FC0 8008CE20 00537823 */  subu  $t7, $v0, $s3
/* B03FC4 8008CE24 294100A1 */  slti  $at, $t2, 0xa1
/* B03FC8 8008CE28 14200012 */  bnez  $at, .L8008CE74
/* B03FCC 8008CE2C A6AF13D8 */   sh    $t7, 0x13d8($s5)
/* B03FD0 8008CE30 86A213DC */  lh    $v0, 0x13dc($s5)
/* B03FD4 8008CE34 244EFFCA */  addiu $t6, $v0, -0x36
/* B03FD8 8008CE38 01C3001A */  div   $zero, $t6, $v1
/* B03FDC 8008CE3C 00009812 */  mflo  $s3
/* B03FE0 8008CE40 00139C00 */  sll   $s3, $s3, 0x10
/* B03FE4 8008CE44 14600002 */  bnez  $v1, .L8008CE50
/* B03FE8 8008CE48 00000000 */   nop   
/* B03FEC 8008CE4C 0007000D */  break 7
.L8008CE50:
/* B03FF0 8008CE50 2401FFFF */  li    $at, -1
/* B03FF4 8008CE54 14610004 */  bne   $v1, $at, .L8008CE68
/* B03FF8 8008CE58 3C018000 */   lui   $at, 0x8000
/* B03FFC 8008CE5C 15C10002 */  bne   $t6, $at, .L8008CE68
/* B04000 8008CE60 00000000 */   nop   
/* B04004 8008CE64 0006000D */  break 6
.L8008CE68:
/* B04008 8008CE68 00139C03 */  sra   $s3, $s3, 0x10
/* B0400C 8008CE6C 10000011 */  b     .L8008CEB4
/* B04010 8008CE70 2463FFFF */   addiu $v1, $v1, -1
.L8008CE74:
/* B04014 8008CE74 86A213DC */  lh    $v0, 0x13dc($s5)
/* B04018 8008CE78 2458FFD2 */  addiu $t8, $v0, -0x2e
/* B0401C 8008CE7C 0303001A */  div   $zero, $t8, $v1
/* B04020 8008CE80 00009812 */  mflo  $s3
/* B04024 8008CE84 00139C00 */  sll   $s3, $s3, 0x10
/* B04028 8008CE88 00139C03 */  sra   $s3, $s3, 0x10
/* B0402C 8008CE8C 14600002 */  bnez  $v1, .L8008CE98
/* B04030 8008CE90 00000000 */   nop   
/* B04034 8008CE94 0007000D */  break 7
.L8008CE98:
/* B04038 8008CE98 2401FFFF */  li    $at, -1
/* B0403C 8008CE9C 14610004 */  bne   $v1, $at, .L8008CEB0
/* B04040 8008CEA0 3C018000 */   lui   $at, 0x8000
/* B04044 8008CEA4 17010002 */  bne   $t8, $at, .L8008CEB0
/* B04048 8008CEA8 00000000 */   nop   
/* B0404C 8008CEAC 0006000D */  break 6
.L8008CEB0:
/* B04050 8008CEB0 2463FFFF */  addiu $v1, $v1, -1
.L8008CEB4:
/* B04054 8008CEB4 00535823 */  subu  $t3, $v0, $s3
/* B04058 8008CEB8 00031C00 */  sll   $v1, $v1, 0x10
/* B0405C 8008CEBC A6AB13DC */  sh    $t3, 0x13dc($s5)
/* B04060 8008CEC0 00031C03 */  sra   $v1, $v1, 0x10
/* B04064 8008CEC4 3C018016 */  lui   $at, %hi(D_8015FFE6) # $at, 0x8016
/* B04068 8008CEC8 14600017 */  bnez  $v1, .L8008CF28
/* B0406C 8008CECC A423FFE6 */   sh    $v1, %lo(D_8015FFE6)($at)
/* B04070 8008CED0 240C001A */  li    $t4, 26
/* B04074 8008CED4 24030014 */  li    $v1, 20
/* B04078 8008CED8 A6AC13D8 */  sh    $t4, 0x13d8($s5)
/* B0407C 8008CEDC 3C018016 */  lui   $at, %hi(D_8015FFE6) # $at, 0x8016
/* B04080 8008CEE0 A423FFE6 */  sh    $v1, %lo(D_8015FFE6)($at)
/* B04084 8008CEE4 86B9002E */  lh    $t9, 0x2e($s5)
/* B04088 8008CEE8 240D0036 */  li    $t5, 54
/* B0408C 8008CEEC 240F002E */  li    $t7, 46
/* B04090 8008CEF0 2B2100A1 */  slti  $at, $t9, 0xa1
/* B04094 8008CEF4 14200003 */  bnez  $at, .L8008CF04
/* B04098 8008CEF8 2418000A */   li    $t8, 10
/* B0409C 8008CEFC 10000002 */  b     .L8008CF08
/* B040A0 8008CF00 A6AD13DC */   sh    $t5, 0x13dc($s5)
.L8008CF04:
/* B040A4 8008CF04 A6AF13DC */  sh    $t7, 0x13dc($s5)
.L8008CF08:
/* B040A8 8008CF08 86AA13D2 */  lh    $t2, 0x13d2($s5)
/* B040AC 8008CF0C 24010003 */  li    $at, 3
/* B040B0 8008CF10 240E0004 */  li    $t6, 4
/* B040B4 8008CF14 55410004 */  bnel  $t2, $at, .L8008CF28
/* B040B8 8008CF18 A6B813D2 */   sh    $t8, 0x13d2($s5)
/* B040BC 8008CF1C 10000002 */  b     .L8008CF28
/* B040C0 8008CF20 A6AE13D2 */   sh    $t6, 0x13d2($s5)
/* B040C4 8008CF24 A6B813D2 */  sh    $t8, 0x13d2($s5)
.L8008CF28:
/* B040C8 8008CF28 86A213D2 */  lh    $v0, 0x13d2($s5)
glabel L8008CF2C
/* B040CC 8008CF2C 24010004 */  li    $at, 4
/* B040D0 8008CF30 10410004 */  beq   $v0, $at, .L8008CF44
/* B040D4 8008CF34 3C048016 */   lui   $a0, %hi(D_8015FFE4) # $a0, 0x8016
/* B040D8 8008CF38 2401000A */  li    $at, 10
/* B040DC 8008CF3C 5441000D */  bnel  $v0, $at, .L8008CF74
/* B040E0 8008CF40 28410003 */   slti  $at, $v0, 3
.L8008CF44:
/* B040E4 8008CF44 86AB002E */  lh    $t3, 0x2e($s5)
/* B040E8 8008CF48 240C0036 */  li    $t4, 54
/* B040EC 8008CF4C 2419002E */  li    $t9, 46
/* B040F0 8008CF50 296100A1 */  slti  $at, $t3, 0xa1
/* B040F4 8008CF54 54200005 */  bnezl $at, .L8008CF6C
/* B040F8 8008CF58 A6B913DC */   sh    $t9, 0x13dc($s5)
/* B040FC 8008CF5C A6AC13DC */  sh    $t4, 0x13dc($s5)
/* B04100 8008CF60 10000003 */  b     .L8008CF70
/* B04104 8008CF64 86A213D2 */   lh    $v0, 0x13d2($s5)
/* B04108 8008CF68 A6B913DC */  sh    $t9, 0x13dc($s5)
.L8008CF6C:
/* B0410C 8008CF6C 86A213D2 */  lh    $v0, 0x13d2($s5)
.L8008CF70:
/* B04110 8008CF70 28410003 */  slti  $at, $v0, 3
.L8008CF74:
/* B04114 8008CF74 14200092 */  bnez  $at, .L8008D1C0
/* B04118 8008CF78 00000000 */   nop   
/* B0411C 8008CF7C 8484FFE4 */  lh    $a0, %lo(D_8015FFE4)($a0)
/* B04120 8008CF80 3C018016 */  lui   $at, %hi(D_8015FFE4) # $at, 0x8016
/* B04124 8008CF84 2484FFFF */  addiu $a0, $a0, -1
/* B04128 8008CF88 00042400 */  sll   $a0, $a0, 0x10
/* B0412C 8008CF8C 00042403 */  sra   $a0, $a0, 0x10
/* B04130 8008CF90 1480008B */  bnez  $a0, .L8008D1C0
/* B04134 8008CF94 A424FFE4 */   sh    $a0, %lo(D_8015FFE4)($at)
/* B04138 8008CF98 24040014 */  li    $a0, 20
/* B0413C 8008CF9C 3C018016 */  lui   $at, %hi(D_8015FFE4) # $at, 0x8016
/* B04140 8008CFA0 A424FFE4 */  sh    $a0, %lo(D_8015FFE4)($at)
/* B04144 8008CFA4 24010004 */  li    $at, 4
/* B04148 8008CFA8 54410064 */  bnel  $v0, $at, .L8008D13C
/* B0414C 8008CFAC 86AA13D4 */   lh    $t2, 0x13d4($s5)
/* B04150 8008CFB0 86AD13D4 */  lh    $t5, 0x13d4($s5)
/* B04154 8008CFB4 3C048014 */  lui   $a0, %hi(D_8013E3F8) # $a0, 0x8014
/* B04158 8008CFB8 2484E3F8 */  addiu $a0, %lo(D_8013E3F8) # addiu $a0, $a0, -0x1c08
/* B0415C 8008CFBC 25AFFFFF */  addiu $t7, $t5, -1
/* B04160 8008CFC0 A6AF13D4 */  sh    $t7, 0x13d4($s5)
/* B04164 8008CFC4 0C00084C */  jal   osSyncPrintf
/* B04168 8008CFC8 86A513D4 */   lh    $a1, 0x13d4($s5)
/* B0416C 8008CFCC 86A213D4 */  lh    $v0, 0x13d4($s5)
/* B04170 8008CFD0 02E02025 */  move  $a0, $s7
/* B04174 8008CFD4 1C400024 */  bgtz  $v0, .L8008D068
/* B04178 8008CFD8 2841003D */   slti  $at, $v0, 0x3d
/* B0417C 8008CFDC 0C00B2D0 */  jal   Flags_GetSwitch
/* B04180 8008CFE0 24050037 */   li    $a1, 55
/* B04184 8008CFE4 1040000B */  beqz  $v0, .L8008D014
/* B04188 8008CFE8 24030028 */   li    $v1, 40
/* B0418C 8008CFEC 86E200A4 */  lh    $v0, 0xa4($s7)
/* B04190 8008CFF0 2401004F */  li    $at, 79
/* B04194 8008CFF4 240E0006 */  li    $t6, 6
/* B04198 8008CFF8 10410015 */  beq   $v0, $at, .L8008D050
/* B0419C 8008CFFC 2401001A */   li    $at, 26
/* B041A0 8008D000 10410013 */  beq   $v0, $at, .L8008D050
/* B041A4 8008D004 2401000E */   li    $at, 14
/* B041A8 8008D008 10410011 */  beq   $v0, $at, .L8008D050
/* B041AC 8008D00C 2401000F */   li    $at, 15
/* B041B0 8008D010 1041000F */  beq   $v0, $at, .L8008D050
.L8008D014:
/* B041B4 8008D014 240A0005 */   li    $t2, 5
/* B041B8 8008D018 A6AA13D2 */  sh    $t2, 0x13d2($s5)
/* B041BC 8008D01C AEA00008 */  sw    $zero, 8($s5)
/* B041C0 8008D020 3C018016 */  lui   $at, %hi(D_8015FFE6) # $at, 0x8016
/* B041C4 8008D024 A423FFE6 */  sh    $v1, %lo(D_8015FFE6)($at)
/* B041C8 8008D028 02E02025 */  move  $a0, $s7
/* B041CC 8008D02C 240571B0 */  li    $a1, 29104
/* B041D0 8008D030 0C042DA0 */  jal   func_8010B680
/* B041D4 8008D034 00003025 */   move  $a2, $zero
/* B041D8 8008D038 02E02025 */  move  $a0, $s7
/* B041DC 8008D03C 00002825 */  move  $a1, $zero
/* B041E0 8008D040 0C00B7D5 */  jal   func_8002DF54
/* B041E4 8008D044 24060008 */   li    $a2, 8
/* B041E8 8008D048 10000005 */  b     .L8008D060
/* B041EC 8008D04C 00000000 */   nop   
.L8008D050:
/* B041F0 8008D050 24030028 */  li    $v1, 40
/* B041F4 8008D054 A6AE13D2 */  sh    $t6, 0x13d2($s5)
/* B041F8 8008D058 3C018016 */  lui   $at, %hi(D_8015FFE6) # $at, 0x8016
/* B041FC 8008D05C A423FFE6 */  sh    $v1, %lo(D_8015FFE6)($at)
.L8008D060:
/* B04200 8008D060 10000047 */  b     .L8008D180
/* B04204 8008D064 86AF13D4 */   lh    $t7, 0x13d4($s5)
.L8008D068:
/* B04208 8008D068 14200012 */  bnez  $at, .L8008D0B4
/* B0420C 8008D06C 3C128016 */   lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B04210 8008D070 2652FFE8 */  addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
/* B04214 8008D074 86580008 */  lh    $t8, 8($s2)
/* B04218 8008D078 24010001 */  li    $at, 1
/* B0421C 8008D07C 3C108013 */  lui   $s0, %hi(D_801333E0)
/* B04220 8008D080 1701000A */  bne   $t8, $at, .L8008D0AC
/* B04224 8008D084 260733E0 */   addiu $a3, $s0, %lo(D_801333E0)
/* B04228 8008D088 3C0B8013 */  lui   $t3, %hi(D_801333E8) # $t3, 0x8013
/* B0422C 8008D08C 256B33E8 */  addiu $t3, %lo(D_801333E8) # addiu $t3, $t3, 0x33e8
/* B04230 8008D090 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B04234 8008D094 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B04238 8008D098 AFAB0014 */  sw    $t3, 0x14($sp)
/* B0423C 8008D09C 24044804 */  li    $a0, 18436
/* B04240 8008D0A0 24060004 */  li    $a2, 4
/* B04244 8008D0A4 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B04248 8008D0A8 AFA70010 */   sw    $a3, 0x10($sp)
.L8008D0AC:
/* B0424C 8008D0AC 10000034 */  b     .L8008D180
/* B04250 8008D0B0 86AF13D4 */   lh    $t7, 0x13d4($s5)
.L8008D0B4:
/* B04254 8008D0B4 2841000B */  slti  $at, $v0, 0xb
/* B04258 8008D0B8 14200012 */  bnez  $at, .L8008D104
/* B0425C 8008D0BC 3C128016 */   lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B04260 8008D0C0 2652FFE8 */  addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
/* B04264 8008D0C4 864C0008 */  lh    $t4, 8($s2)
/* B04268 8008D0C8 3C108013 */  lui   $s0, %hi(D_801333E0)
/* B0426C 8008D0CC 260733E0 */  addiu $a3, $s0, %lo(D_801333E0)
/* B04270 8008D0D0 31990001 */  andi  $t9, $t4, 1
/* B04274 8008D0D4 13200009 */  beqz  $t9, .L8008D0FC
/* B04278 8008D0D8 24044819 */   li    $a0, 18457
/* B0427C 8008D0DC 3C0D8013 */  lui   $t5, %hi(D_801333E8) # $t5, 0x8013
/* B04280 8008D0E0 25AD33E8 */  addiu $t5, %lo(D_801333E8) # addiu $t5, $t5, 0x33e8
/* B04284 8008D0E4 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B04288 8008D0E8 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B0428C 8008D0EC AFAD0014 */  sw    $t5, 0x14($sp)
/* B04290 8008D0F0 24060004 */  li    $a2, 4
/* B04294 8008D0F4 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B04298 8008D0F8 AFA70010 */   sw    $a3, 0x10($sp)
.L8008D0FC:
/* B0429C 8008D0FC 10000020 */  b     .L8008D180
/* B042A0 8008D100 86AF13D4 */   lh    $t7, 0x13d4($s5)
.L8008D104:
/* B042A4 8008D104 3C108013 */  lui   $s0, %hi(D_801333E0)
/* B042A8 8008D108 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B042AC 8008D10C 260733E0 */  addiu $a3, $s0, %lo(D_801333E0)
/* B042B0 8008D110 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B042B4 8008D114 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B042B8 8008D118 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B042BC 8008D11C AFAF0014 */  sw    $t7, 0x14($sp)
/* B042C0 8008D120 AFA70010 */  sw    $a3, 0x10($sp)
/* B042C4 8008D124 2404481A */  li    $a0, 18458
/* B042C8 8008D128 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B042CC 8008D12C 24060004 */   li    $a2, 4
/* B042D0 8008D130 10000013 */  b     .L8008D180
/* B042D4 8008D134 86AF13D4 */   lh    $t7, 0x13d4($s5)
/* B042D8 8008D138 86AA13D4 */  lh    $t2, 0x13d4($s5)
.L8008D13C:
/* B042DC 8008D13C 96B813FC */  lhu   $t8, 0x13fc($s5)
/* B042E0 8008D140 254E0001 */  addiu $t6, $t2, 1
/* B042E4 8008D144 330B0001 */  andi  $t3, $t8, 1
/* B042E8 8008D148 1160000C */  beqz  $t3, .L8008D17C
/* B042EC 8008D14C A6AE13D4 */   sh    $t6, 0x13d4($s5)
/* B042F0 8008D150 86AC13D4 */  lh    $t4, 0x13d4($s5)
/* B042F4 8008D154 240100F0 */  li    $at, 240
/* B042F8 8008D158 02E02025 */  move  $a0, $s7
/* B042FC 8008D15C 15810007 */  bne   $t4, $at, .L8008D17C
/* B04300 8008D160 24056083 */   li    $a1, 24707
/* B04304 8008D164 0C042DA0 */  jal   func_8010B680
/* B04308 8008D168 00003025 */   move  $a2, $zero
/* B0430C 8008D16C 96B913FC */  lhu   $t9, 0x13fc($s5)
/* B04310 8008D170 A6A013D2 */  sh    $zero, 0x13d2($s5)
/* B04314 8008D174 332DFFFE */  andi  $t5, $t9, 0xfffe
/* B04318 8008D178 A6AD13FC */  sh    $t5, 0x13fc($s5)
.L8008D17C:
/* B0431C 8008D17C 86AF13D4 */  lh    $t7, 0x13d4($s5)
.L8008D180:
/* B04320 8008D180 2401003C */  li    $at, 60
/* B04324 8008D184 3C108013 */  lui   $s0, %hi(D_801333E0) # $s0, 0x8013
/* B04328 8008D188 01E1001A */  div   $zero, $t7, $at
/* B0432C 8008D18C 00005010 */  mfhi  $t2
/* B04330 8008D190 261033E0 */  addiu $s0, %lo(D_801333E0) # addiu $s0, $s0, 0x33e0
/* B04334 8008D194 1540000A */  bnez  $t2, .L8008D1C0
/* B04338 8008D198 3C0E8013 */   lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B0433C 8008D19C 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B04340 8008D1A0 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B04344 8008D1A4 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B04348 8008D1A8 AFAE0014 */  sw    $t6, 0x14($sp)
/* B0434C 8008D1AC 24044819 */  li    $a0, 18457
/* B04350 8008D1B0 24060004 */  li    $a2, 4
/* B04354 8008D1B4 02003825 */  move  $a3, $s0
/* B04358 8008D1B8 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B0435C 8008D1BC AFB00010 */   sw    $s0, 0x10($sp)
.L8008D1C0:
/* B04360 8008D1C0 1000000A */  b     .L8008D1EC
/* B04364 8008D1C4 86A413CE */   lh    $a0, 0x13ce($s5)
glabel L8008D1C8
/* B04368 8008D1C8 3C038016 */  lui   $v1, %hi(D_8015FFE6) # $v1, 0x8016
/* B0436C 8008D1CC 8463FFE6 */  lh    $v1, %lo(D_8015FFE6)($v1)
/* B04370 8008D1D0 3C018016 */  lui   $at, %hi(D_8015FFE6) # $at, 0x8016
/* B04374 8008D1D4 2463FFFF */  addiu $v1, $v1, -1
/* B04378 8008D1D8 00031C00 */  sll   $v1, $v1, 0x10
/* B0437C 8008D1DC 00031C03 */  sra   $v1, $v1, 0x10
/* B04380 8008D1E0 14600002 */  bnez  $v1, .L8008D1EC
/* B04384 8008D1E4 A423FFE6 */   sh    $v1, %lo(D_8015FFE6)($at)
/* B04388 8008D1E8 A6A013D2 */  sh    $zero, 0x13d2($s5)
glabel L8008D1EC
.L8008D1EC:
/* B0438C 8008D1EC 3C128016 */  lui   $s2, %hi(sTimerDigits) # $s2, 0x8016
/* B04390 8008D1F0 2652FFE8 */  addiu $s2, %lo(sTimerDigits) # addiu $s2, $s2, -0x18
.L8008D1F4:
/* B04394 8008D1F4 10800003 */  beqz  $a0, .L8008D204
/* B04398 8008D1F8 2401000A */   li    $at, 10
/* B0439C 8008D1FC 54810005 */  bnel  $a0, $at, .L8008D214
/* B043A0 8008D200 A6400006 */   sh    $zero, 6($s2)
.L8008D204:
/* B043A4 8008D204 86B813D2 */  lh    $t8, 0x13d2($s5)
/* B043A8 8008D208 530000C3 */  beql  $t8, $zero, .L8008D518
/* B043AC 8008D20C 8FB80068 */   lw    $t8, 0x68($sp)
/* B043B0 8008D210 A6400006 */  sh    $zero, 6($s2)
.L8008D214:
/* B043B4 8008D214 86500006 */  lh    $s0, 6($s2)
/* B043B8 8008D218 240B000A */  li    $t3, 10
/* B043BC 8008D21C A64B0004 */  sh    $t3, 4($s2)
/* B043C0 8008D220 00009825 */  move  $s3, $zero
/* B043C4 8008D224 A6500002 */  sh    $s0, 2($s2)
/* B043C8 8008D228 10800004 */  beqz  $a0, .L8008D23C
/* B043CC 8008D22C A6500000 */   sh    $s0, ($s2)
/* B043D0 8008D230 86AC13D0 */  lh    $t4, 0x13d0($s5)
/* B043D4 8008D234 10000003 */  b     .L8008D244
/* B043D8 8008D238 A64C0008 */   sh    $t4, 8($s2)
.L8008D23C:
/* B043DC 8008D23C 86B913D4 */  lh    $t9, 0x13d4($s5)
/* B043E0 8008D240 A6590008 */  sh    $t9, 8($s2)
.L8008D244:
/* B043E4 8008D244 86420008 */  lh    $v0, 8($s2)
/* B043E8 8008D248 3C050200 */  lui   $a1, %hi(D_02002000) # $a1, 0x200
/* B043EC 8008D24C 24A52000 */  addiu $a1, %lo(D_02002000) # addiu $a1, $a1, 0x2000
/* B043F0 8008D250 2841003C */  slti  $at, $v0, 0x3c
/* B043F4 8008D254 14200014 */  bnez  $at, .L8008D2A8
/* B043F8 8008D258 24060010 */   li    $a2, 16
/* B043FC 8008D25C 864D0002 */  lh    $t5, 2($s2)
.L8008D260:
/* B04400 8008D260 25AF0001 */  addiu $t7, $t5, 1
/* B04404 8008D264 A64F0002 */  sh    $t7, 2($s2)
/* B04408 8008D268 86420002 */  lh    $v0, 2($s2)
/* B0440C 8008D26C 2841000A */  slti  $at, $v0, 0xa
/* B04410 8008D270 54200007 */  bnezl $at, .L8008D290
/* B04414 8008D274 864B0008 */   lh    $t3, 8($s2)
/* B04418 8008D278 864A0000 */  lh    $t2, ($s2)
/* B0441C 8008D27C 2458FFF6 */  addiu $t8, $v0, -0xa
/* B04420 8008D280 A6580002 */  sh    $t8, 2($s2)
/* B04424 8008D284 254E0001 */  addiu $t6, $t2, 1
/* B04428 8008D288 A64E0000 */  sh    $t6, ($s2)
/* B0442C 8008D28C 864B0008 */  lh    $t3, 8($s2)
.L8008D290:
/* B04430 8008D290 256CFFC4 */  addiu $t4, $t3, -0x3c
/* B04434 8008D294 A64C0008 */  sh    $t4, 8($s2)
/* B04438 8008D298 86420008 */  lh    $v0, 8($s2)
/* B0443C 8008D29C 2841003C */  slti  $at, $v0, 0x3c
/* B04440 8008D2A0 5020FFEF */  beql  $at, $zero, .L8008D260
/* B04444 8008D2A4 864D0002 */   lh    $t5, 2($s2)
.L8008D2A8:
/* B04448 8008D2A8 2841000A */  slti  $at, $v0, 0xa
/* B0444C 8008D2AC 14200008 */  bnez  $at, .L8008D2D0
.L8008D2B0:
/* B04450 8008D2B0 244FFFF6 */   addiu $t7, $v0, -0xa
/* B04454 8008D2B4 A64F0008 */  sh    $t7, 8($s2)
/* B04458 8008D2B8 86420008 */  lh    $v0, 8($s2)
/* B0445C 8008D2BC 86590006 */  lh    $t9, 6($s2)
/* B04460 8008D2C0 2841000A */  slti  $at, $v0, 0xa
/* B04464 8008D2C4 272D0001 */  addiu $t5, $t9, 1
/* B04468 8008D2C8 1020FFF9 */  beqz  $at, .L8008D2B0
/* B0446C 8008D2CC A64D0006 */   sh    $t5, 6($s2)
.L8008D2D0:
/* B04470 8008D2D0 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B04474 8008D2D4 3C0EE700 */  lui   $t6, 0xe700
/* B04478 8008D2D8 3C0BFA00 */  lui   $t3, 0xfa00
/* B0447C 8008D2DC 24EA0008 */  addiu $t2, $a3, 8
/* B04480 8008D2E0 AE8A02B0 */  sw    $t2, 0x2b0($s4)
/* B04484 8008D2E4 ACE00004 */  sw    $zero, 4($a3)
/* B04488 8008D2E8 ACEE0000 */  sw    $t6, ($a3)
/* B0448C 8008D2EC 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B04490 8008D2F0 240CFFFF */  li    $t4, -1
/* B04494 8008D2F4 3C0DFB00 */  lui   $t5, 0xfb00
/* B04498 8008D2F8 24F80008 */  addiu $t8, $a3, 8
/* B0449C 8008D2FC AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B044A0 8008D300 ACEC0004 */  sw    $t4, 4($a3)
/* B044A4 8008D304 ACEB0000 */  sw    $t3, ($a3)
/* B044A8 8008D308 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B044AC 8008D30C 240B0010 */  li    $t3, 16
/* B044B0 8008D310 240C0400 */  li    $t4, 1024
/* B044B4 8008D314 24F90008 */  addiu $t9, $a3, 8
/* B044B8 8008D318 AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B044BC 8008D31C ACE00004 */  sw    $zero, 4($a3)
/* B044C0 8008D320 ACED0000 */  sw    $t5, ($a3)
/* B044C4 8008D324 87AF0274 */  lh    $t7, 0x274($sp)
/* B044C8 8008D328 8E8402B0 */  lw    $a0, 0x2b0($s4)
/* B044CC 8008D32C 24190400 */  li    $t9, 1024
/* B044D0 8008D330 000F5040 */  sll   $t2, $t7, 1
/* B044D4 8008D334 02AA4821 */  addu  $t1, $s5, $t2
/* B044D8 8008D338 853013DA */  lh    $s0, 0x13da($t1)
/* B044DC 8008D33C 853113D6 */  lh    $s1, 0x13d6($t1)
/* B044E0 8008D340 24180010 */  li    $t8, 16
/* B044E4 8008D344 260E0002 */  addiu $t6, $s0, 2
/* B044E8 8008D348 AFAE0014 */  sw    $t6, 0x14($sp)
/* B044EC 8008D34C AFB80018 */  sw    $t8, 0x18($sp)
/* B044F0 8008D350 AFA90064 */  sw    $t1, 0x64($sp)
/* B044F4 8008D354 AFB90024 */  sw    $t9, 0x24($sp)
/* B044F8 8008D358 AFAC0020 */  sw    $t4, 0x20($sp)
/* B044FC 8008D35C AFAB001C */  sw    $t3, 0x1c($sp)
/* B04500 8008D360 24070010 */  li    $a3, 16
/* B04504 8008D364 0C0210A6 */  jal   Gfx_TextureIA8
/* B04508 8008D368 AFB10010 */   sw    $s1, 0x10($sp)
/* B0450C 8008D36C 8FA90064 */  lw    $t1, 0x64($sp)
/* B04510 8008D370 AE8202B0 */  sw    $v0, 0x2b0($s4)
/* B04514 8008D374 244D0008 */  addiu $t5, $v0, 8
/* B04518 8008D378 AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B0451C 8008D37C 3C0FE700 */  lui   $t7, 0xe700
/* B04520 8008D380 AC4F0000 */  sw    $t7, ($v0)
/* B04524 8008D384 AC400004 */  sw    $zero, 4($v0)
/* B04528 8008D388 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B0452C 8008D38C 3C0EFCFF */  lui   $t6, (0xFCFF97FF >> 16) # lui $t6, 0xfcff
/* B04530 8008D390 3C18FF2D */  lui   $t8, (0xFF2DFEFF >> 16) # lui $t8, 0xff2d
/* B04534 8008D394 24EA0008 */  addiu $t2, $a3, 8
/* B04538 8008D398 AE8A02B0 */  sw    $t2, 0x2b0($s4)
/* B0453C 8008D39C 3718FEFF */  ori   $t8, (0xFF2DFEFF & 0xFFFF) # ori $t8, $t8, 0xfeff
/* B04540 8008D3A0 35CE97FF */  ori   $t6, (0xFCFF97FF & 0xFFFF) # ori $t6, $t6, 0x97ff
/* B04544 8008D3A4 ACEE0000 */  sw    $t6, ($a3)
/* B04548 8008D3A8 ACF80004 */  sw    $t8, 4($a3)
/* B0454C 8008D3AC 86A413CE */  lh    $a0, 0x13ce($s5)
/* B04550 8008D3B0 50800018 */  beql  $a0, $zero, .L8008D414
/* B04554 8008D3B4 86B813D4 */   lh    $t8, 0x13d4($s5)
/* B04558 8008D3B8 86AB13D0 */  lh    $t3, 0x13d0($s5)
/* B0455C 8008D3BC 2961000A */  slti  $at, $t3, 0xa
/* B04560 8008D3C0 1020000B */  beqz  $at, .L8008D3F0
/* B04564 8008D3C4 2881000B */   slti  $at, $a0, 0xb
/* B04568 8008D3C8 10200009 */  beqz  $at, .L8008D3F0
/* B0456C 8008D3CC 3C19FA00 */   lui   $t9, 0xfa00
/* B04570 8008D3D0 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B04574 8008D3D4 3C0DFF32 */  lui   $t5, (0xFF3200FF >> 16) # lui $t5, 0xff32
/* B04578 8008D3D8 35AD00FF */  ori   $t5, (0xFF3200FF & 0xFFFF) # ori $t5, $t5, 0xff
/* B0457C 8008D3DC 24EC0008 */  addiu $t4, $a3, 8
/* B04580 8008D3E0 AE8C02B0 */  sw    $t4, 0x2b0($s4)
/* B04584 8008D3E4 ACED0004 */  sw    $t5, 4($a3)
/* B04588 8008D3E8 10000022 */  b     .L8008D474
/* B0458C 8008D3EC ACF90000 */   sw    $t9, ($a3)
.L8008D3F0:
/* B04590 8008D3F0 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B04594 8008D3F4 3C0AFA00 */  lui   $t2, 0xfa00
/* B04598 8008D3F8 240EFFFF */  li    $t6, -1
/* B0459C 8008D3FC 24EF0008 */  addiu $t7, $a3, 8
/* B045A0 8008D400 AE8F02B0 */  sw    $t7, 0x2b0($s4)
/* B045A4 8008D404 ACEE0004 */  sw    $t6, 4($a3)
/* B045A8 8008D408 1000001A */  b     .L8008D474
/* B045AC 8008D40C ACEA0000 */   sw    $t2, ($a3)
/* B045B0 8008D410 86B813D4 */  lh    $t8, 0x13d4($s5)
.L8008D414:
/* B045B4 8008D414 3C0AFA00 */  lui   $t2, 0xfa00
/* B045B8 8008D418 2B01000A */  slti  $at, $t8, 0xa
/* B045BC 8008D41C 5020000F */  beql  $at, $zero, .L8008D45C
/* B045C0 8008D420 8E8702B0 */   lw    $a3, 0x2b0($s4)
/* B045C4 8008D424 86AB13D2 */  lh    $t3, 0x13d2($s5)
/* B045C8 8008D428 3C19FA00 */  lui   $t9, 0xfa00
/* B045CC 8008D42C 29610006 */  slti  $at, $t3, 6
/* B045D0 8008D430 5020000A */  beql  $at, $zero, .L8008D45C
/* B045D4 8008D434 8E8702B0 */   lw    $a3, 0x2b0($s4)
/* B045D8 8008D438 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B045DC 8008D43C 3C0DFF32 */  lui   $t5, (0xFF3200FF >> 16) # lui $t5, 0xff32
/* B045E0 8008D440 35AD00FF */  ori   $t5, (0xFF3200FF & 0xFFFF) # ori $t5, $t5, 0xff
/* B045E4 8008D444 24EC0008 */  addiu $t4, $a3, 8
/* B045E8 8008D448 AE8C02B0 */  sw    $t4, 0x2b0($s4)
/* B045EC 8008D44C ACED0004 */  sw    $t5, 4($a3)
/* B045F0 8008D450 10000008 */  b     .L8008D474
/* B045F4 8008D454 ACF90000 */   sw    $t9, ($a3)
/* B045F8 8008D458 8E8702B0 */  lw    $a3, 0x2b0($s4)
.L8008D45C:
/* B045FC 8008D45C 3C0EFFFF */  lui   $t6, (0xFFFF00FF >> 16) # lui $t6, 0xffff
/* B04600 8008D460 35CE00FF */  ori   $t6, (0xFFFF00FF & 0xFFFF) # ori $t6, $t6, 0xff
/* B04604 8008D464 24EF0008 */  addiu $t7, $a3, 8
/* B04608 8008D468 AE8F02B0 */  sw    $t7, 0x2b0($s4)
/* B0460C 8008D46C ACEE0004 */  sw    $t6, 4($a3)
/* B04610 8008D470 ACEA0000 */  sw    $t2, ($a3)
.L8008D474:
/* B04614 8008D474 00131840 */  sll   $v1, $s3, 1
/* B04618 8008D478 3C0D8012 */  lui   $t5, %hi(sTimerDigitLeftPos)
/* B0461C 8008D47C 01A36821 */  addu  $t5, $t5, $v1
/* B04620 8008D480 3C0A8012 */  lui   $t2, %hi(sDigitWidth)
/* B04624 8008D484 85AD5B04 */  lh    $t5, %lo(sTimerDigitLeftPos)($t5)
/* B04628 8008D488 853113D6 */  lh    $s1, 0x13d6($t1)
/* B0462C 8008D48C 01435021 */  addu  $t2, $t2, $v1
/* B04630 8008D490 0243C021 */  addu  $t8, $s2, $v1
/* B04634 8008D494 870B0000 */  lh    $t3, ($t8)
/* B04638 8008D498 854A5B10 */  lh    $t2, %lo(sDigitWidth)($t2)
/* B0463C 8008D49C 853013DA */  lh    $s0, 0x13da($t1)
/* B04640 8008D4A0 8E8402B0 */  lw    $a0, 0x2b0($s4)
/* B04644 8008D4A4 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* B04648 8008D4A8 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* B0464C 8008D4AC 01B17821 */  addu  $t7, $t5, $s1
/* B04650 8008D4B0 AFAF0010 */  sw    $t7, 0x10($sp)
/* B04654 8008D4B4 AFAA0018 */  sw    $t2, 0x18($sp)
/* B04658 8008D4B8 AFB00014 */  sw    $s0, 0x14($sp)
/* B0465C 8008D4BC 850E0F68 */  lh    $t6, 0xf68($t0)
/* B04660 8008D4C0 3C190200 */  lui   $t9, %hi(D_02003040) # $t9, 0x200
/* B04664 8008D4C4 27393040 */  addiu $t9, %lo(D_02003040) # addiu $t9, $t9, 0x3040
/* B04668 8008D4C8 AFAE001C */  sw    $t6, 0x1c($sp)
/* B0466C 8008D4CC 85020F6A */  lh    $v0, 0xf6a($t0)
/* B04670 8008D4D0 000B61C0 */  sll   $t4, $t3, 7
/* B04674 8008D4D4 01992821 */  addu  $a1, $t4, $t9
/* B04678 8008D4D8 00021040 */  sll   $v0, $v0, 1
/* B0467C 8008D4DC 3042FFFF */  andi  $v0, $v0, 0xffff
/* B04680 8008D4E0 AFA20020 */  sw    $v0, 0x20($sp)
/* B04684 8008D4E4 AFA20024 */  sw    $v0, 0x24($sp)
/* B04688 8008D4E8 AFA90064 */  sw    $t1, 0x64($sp)
/* B0468C 8008D4EC 24060008 */  li    $a2, 8
/* B04690 8008D4F0 0C02112F */  jal   Gfx_TextureI8
/* B04694 8008D4F4 24070010 */   li    $a3, 16
/* B04698 8008D4F8 26730001 */  addiu $s3, $s3, 1
/* B0469C 8008D4FC 00139C00 */  sll   $s3, $s3, 0x10
/* B046A0 8008D500 00139C03 */  sra   $s3, $s3, 0x10
/* B046A4 8008D504 2A610005 */  slti  $at, $s3, 5
/* B046A8 8008D508 8FA90064 */  lw    $t1, 0x64($sp)
/* B046AC 8008D50C 1420FFD9 */  bnez  $at, .L8008D474
/* B046B0 8008D510 AE8202B0 */   sw    $v0, 0x2b0($s4)
/* B046B4 8008D514 8FB80068 */  lw    $t8, 0x68($sp)
.L8008D518:
/* B046B8 8008D518 24010003 */  li    $at, 3
/* B046BC 8008D51C 970B01D6 */  lhu   $t3, 0x1d6($t8)
/* B046C0 8008D520 55610004 */  bnel  $t3, $at, .L8008D534
/* B046C4 8008D524 96CC0244 */   lhu   $t4, 0x244($s6)
/* B046C8 8008D528 0C00AAAC */  jal   func_8002AAB0
/* B046CC 8008D52C 02E02025 */   move  $a0, $s7
/* B046D0 8008D530 96CC0244 */  lhu   $t4, 0x244($s6)
.L8008D534:
/* B046D4 8008D534 3C068014 */  lui   $a2, %hi(D_8013E40C) # $a2, 0x8014
/* B046D8 8008D538 24C6E40C */  addiu $a2, %lo(D_8013E40C) # addiu $a2, $a2, -0x1bf4
/* B046DC 8008D53C 11800029 */  beqz  $t4, .L8008D5E4
/* B046E0 8008D540 27A40260 */   addiu $a0, $sp, 0x260
/* B046E4 8008D544 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B046E8 8008D548 3C0DE700 */  lui   $t5, 0xe700
/* B046EC 8008D54C 3C0E8012 */  lui   $t6, %hi(sSetupDL_80125A60) # $t6, 0x8012
/* B046F0 8008D550 24F90008 */  addiu $t9, $a3, 8
/* B046F4 8008D554 AE9902B0 */  sw    $t9, 0x2b0($s4)
/* B046F8 8008D558 ACE00004 */  sw    $zero, 4($a3)
/* B046FC 8008D55C ACED0000 */  sw    $t5, ($a3)
/* B04700 8008D560 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B04704 8008D564 25CE5A60 */  addiu $t6, %lo(sSetupDL_80125A60) # addiu $t6, $t6, 0x5a60
/* B04708 8008D568 3C0ADE00 */  lui   $t2, 0xde00
/* B0470C 8008D56C 24EF0008 */  addiu $t7, $a3, 8
/* B04710 8008D570 AE8F02B0 */  sw    $t7, 0x2b0($s4)
/* B04714 8008D574 ACEE0004 */  sw    $t6, 4($a3)
/* B04718 8008D578 ACEA0000 */  sw    $t2, ($a3)
/* B0471C 8008D57C 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B04720 8008D580 3C0BFA00 */  lui   $t3, 0xfa00
/* B04724 8008D584 3C0F8013 */  lui   $t7, %hi(gScreenWidth) # $t7, 0x8013
/* B04728 8008D588 24F80008 */  addiu $t8, $a3, 8
/* B0472C 8008D58C AE9802B0 */  sw    $t8, 0x2b0($s4)
/* B04730 8008D590 ACEB0000 */  sw    $t3, ($a3)
/* B04734 8008D594 96CC0244 */  lhu   $t4, 0x244($s6)
/* B04738 8008D598 3C01F600 */  lui   $at, 0xf600
/* B0473C 8008D59C 319900FF */  andi  $t9, $t4, 0xff
/* B04740 8008D5A0 ACF90004 */  sw    $t9, 4($a3)
/* B04744 8008D5A4 8E8702B0 */  lw    $a3, 0x2b0($s4)
/* B04748 8008D5A8 3C0C8013 */  lui   $t4, %hi(gScreenHeight) # $t4, 0x8013
/* B0474C 8008D5AC 24ED0008 */  addiu $t5, $a3, 8
/* B04750 8008D5B0 AE8D02B0 */  sw    $t5, 0x2b0($s4)
/* B04754 8008D5B4 8DEFD270 */  lw    $t7, %lo(gScreenWidth)($t7)
/* B04758 8008D5B8 8D8CD274 */  lw    $t4, %lo(gScreenHeight)($t4)
/* B0475C 8008D5BC ACE00004 */  sw    $zero, 4($a3)
/* B04760 8008D5C0 25EAFFFF */  addiu $t2, $t7, -1
/* B04764 8008D5C4 314E03FF */  andi  $t6, $t2, 0x3ff
/* B04768 8008D5C8 2599FFFF */  addiu $t9, $t4, -1
/* B0476C 8008D5CC 332D03FF */  andi  $t5, $t9, 0x3ff
/* B04770 8008D5D0 000EC380 */  sll   $t8, $t6, 0xe
/* B04774 8008D5D4 03015825 */  or    $t3, $t8, $at
/* B04778 8008D5D8 000D7880 */  sll   $t7, $t5, 2
/* B0477C 8008D5DC 016F5025 */  or    $t2, $t3, $t7
/* B04780 8008D5E0 ACEA0000 */  sw    $t2, ($a3)
.L8008D5E4:
/* B04784 8008D5E4 8EE50000 */  lw    $a1, ($s7)
/* B04788 8008D5E8 0C031AD5 */  jal   Graph_CloseDisps
/* B0478C 8008D5EC 240710AD */   li    $a3, 4269
/* B04790 8008D5F0 8FBF004C */  lw    $ra, 0x4c($sp)
/* B04794 8008D5F4 8FB0002C */  lw    $s0, 0x2c($sp)
/* B04798 8008D5F8 8FB10030 */  lw    $s1, 0x30($sp)
/* B0479C 8008D5FC 8FB20034 */  lw    $s2, 0x34($sp)
/* B047A0 8008D600 8FB30038 */  lw    $s3, 0x38($sp)
/* B047A4 8008D604 8FB4003C */  lw    $s4, 0x3c($sp)
/* B047A8 8008D608 8FB50040 */  lw    $s5, 0x40($sp)
/* B047AC 8008D60C 8FB60044 */  lw    $s6, 0x44($sp)
/* B047B0 8008D610 8FB70048 */  lw    $s7, 0x48($sp)
/* B047B4 8008D614 03E00008 */  jr    $ra
/* B047B8 8008D618 27BD0290 */   addiu $sp, $sp, 0x290

