.rdata
glabel D_8013DF28
    .asciz "\x1B[33m"
    .balign 4

glabel D_8013DF30
    .asciz "item_get_setting=%d  pt=%d  z=%x\n"
    .balign 4

glabel D_8013DF54
    .asciz "\x1B[m"
    .balign 4

glabel D_8013DF58
    .asciz "\x1B[33m"
    .balign 4

glabel D_8013DF60
    .asciz "封印 = %x\n"
    # Translation: Seal
    .balign 4

glabel D_8013DF6C
    .asciz "\x1B[m"
    .balign 4

glabel D_8013DF70
    .asciz "\x1B[33m"
    .balign 4

glabel D_8013DF78
    .asciz "楽譜 = %x\n"
    # Translation: Musical score
    .balign 4

glabel D_8013DF84
    .asciz "楽譜 = %x (%x) (%x)\n"
    # Translation: Musical score
    .balign 4

glabel D_8013DF9C
    .asciz "\x1B[m"
    .balign 4

glabel D_8013DFA0
    .asciz "\x1B[33m"
    .balign 4

glabel D_8013DFA8
    .asciz "精霊石 = %x\n"
    # Translation: Spiritual Stone
    .balign 4

glabel D_8013DFB8
    .asciz "\x1B[m"
    .balign 4

glabel D_8013DFBC
    .asciz "\x1B[33m"
    .balign 4

glabel D_8013DFC4
    .asciz "アイテム = %x\n"
    # Translation: Item
    .balign 4

glabel D_8013DFD4
    .asciz "\x1B[m"
    .balign 4

glabel D_8013DFD8
    .asciz "\x1B[33m"
    .balign 4

glabel D_8013DFE0
    .asciz "Ｎコイン = %x(%d)\n"
    # Translation: N coins
    .balign 4

glabel D_8013DFF4
    .asciz "\x1B[m"
    .balign 4

glabel D_8013DFF8
    .asciz "デクの実 %d(%d)=%d  BS_count=%d\n"
    # Translation: Deku Seeds
    .balign 4

glabel D_8013E01C
    .asciz " 爆弾  爆弾  爆弾  爆弾 爆弾   爆弾 爆弾 \n"
    # Translation: Bomb
    .balign 4

glabel D_8013E048
    .asciz "%d本  Item_MaxGet=%d\n"
    # Translation: Book
    .balign 4

glabel D_8013E060
    .asciz "回復ハート回復ハート回復ハート\n"
    # Translation: Recovery Heart
    .balign 4

glabel D_8013E080
    .asciz "Item_Pt(1)=%d Item_Pt(2)=%d Item_Pt(3)=%d   空瓶=%d   中味=%d\n"
    # Translation: Empty bottle  Content
    .balign 4

glabel D_8013E0C0
    .asciz "Item_Register(%d)=%d  %d\n"

.text
glabel Item_Give
/* AFBEB0 80084D10 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AFBEB4 80084D14 AFA5004C */  sw    $a1, 0x4c($sp)
/* AFBEB8 80084D18 30A500FF */  andi  $a1, $a1, 0xff
/* AFBEBC 80084D1C 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFBEC0 80084D20 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFBEC4 80084D24 AFB0001C */  sw    $s0, 0x1c($sp)
/* AFBEC8 80084D28 01255821 */  addu  $t3, $t1, $a1
/* AFBECC 80084D2C 28A1008A */  slti  $at, $a1, 0x8a
/* AFBED0 80084D30 AFBF0024 */  sw    $ra, 0x24($sp)
/* AFBED4 80084D34 AFB10020 */  sw    $s1, 0x20($sp)
/* AFBED8 80084D38 AFA40048 */  sw    $a0, 0x48($sp)
/* AFBEDC 80084D3C 91620000 */  lbu   $v0, ($t3)
/* AFBEE0 80084D40 14200007 */  bnez  $at, .L80084D60
/* AFBEE4 80084D44 00A08025 */   move  $s0, $a1
/* AFBEE8 80084D48 00107040 */  sll   $t6, $s0, 1
/* AFBEEC 80084D4C 3C0F8012 */  lui   $t7, %hi(sExtraItemBases-0x8a*2)
/* AFBEF0 80084D50 01EE7821 */  addu  $t7, $t7, $t6
/* AFBEF4 80084D54 85EF5920 */  lh    $t7, %lo(sExtraItemBases-0x8a*2)($t7)
/* AFBEF8 80084D58 012FC021 */  addu  $t8, $t1, $t7
/* AFBEFC 80084D5C 93020000 */  lbu   $v0, ($t8)
.L80084D60:
/* AFBF00 80084D60 3C048014 */  lui   $a0, %hi(D_8013DF28) # $a0, 0x8014
/* AFBF04 80084D64 2484DF28 */  addiu $a0, %lo(D_8013DF28) # addiu $a0, $a0, -0x20d8
/* AFBF08 80084D68 A7A20044 */  sh    $v0, 0x44($sp)
/* AFBF0C 80084D6C A3A5004F */  sb    $a1, 0x4f($sp)
/* AFBF10 80084D70 0C00084C */  jal   osSyncPrintf
/* AFBF14 80084D74 AFAB003C */   sw    $t3, 0x3c($sp)
/* AFBF18 80084D78 87A60044 */  lh    $a2, 0x44($sp)
/* AFBF1C 80084D7C 3C118016 */  lui   $s1, %hi(gSaveContext) # $s1, 0x8016
/* AFBF20 80084D80 2631E660 */  addiu $s1, %lo(gSaveContext) # addiu $s1, $s1, -0x19a0
/* AFBF24 80084D84 3C048014 */  lui   $a0, %hi(D_8013DF30) # $a0, 0x8014
/* AFBF28 80084D88 02265021 */  addu  $t2, $s1, $a2
/* AFBF2C 80084D8C 91470074 */  lbu   $a3, 0x74($t2)
/* AFBF30 80084D90 AFAA0034 */  sw    $t2, 0x34($sp)
/* AFBF34 80084D94 2484DF30 */  addiu $a0, %lo(D_8013DF30) # addiu $a0, $a0, -0x20d0
/* AFBF38 80084D98 0C00084C */  jal   osSyncPrintf
/* AFBF3C 80084D9C 02002825 */   move  $a1, $s0
/* AFBF40 80084DA0 3C048014 */  lui   $a0, %hi(D_8013DF54) # $a0, 0x8014
/* AFBF44 80084DA4 0C00084C */  jal   osSyncPrintf
/* AFBF48 80084DA8 2484DF54 */   addiu $a0, %lo(D_8013DF54) # addiu $a0, $a0, -0x20ac
/* AFBF4C 80084DAC 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFBF50 80084DB0 2A010066 */  slti  $at, $s0, 0x66
/* AFBF54 80084DB4 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFBF58 80084DB8 8FAA0034 */  lw    $t2, 0x34($sp)
/* AFBF5C 80084DBC 1420001B */  bnez  $at, .L80084E2C
/* AFBF60 80084DC0 8FAB003C */   lw    $t3, 0x3c($sp)
/* AFBF64 80084DC4 2A01006C */  slti  $at, $s0, 0x6c
/* AFBF68 80084DC8 10200018 */  beqz  $at, .L80084E2C
/* AFBF6C 80084DCC 00106080 */   sll   $t4, $s0, 2
/* AFBF70 80084DD0 3C0D8012 */  lui   $t5, %hi(D_80126F88)
/* AFBF74 80084DD4 01AC6821 */  addu  $t5, $t5, $t4
/* AFBF78 80084DD8 8DAD6F88 */  lw    $t5, %lo(D_80126F88)($t5)
/* AFBF7C 80084DDC 8E3900A4 */  lw    $t9, 0xa4($s1)
/* AFBF80 80084DE0 3C048014 */  lui   $a0, %hi(D_8013DF58) # $a0, 0x8014
/* AFBF84 80084DE4 2484DF58 */  addiu $a0, %lo(D_8013DF58) # addiu $a0, $a0, -0x20a8
/* AFBF88 80084DE8 032D7025 */  or    $t6, $t9, $t5
/* AFBF8C 80084DEC 0C00084C */  jal   osSyncPrintf
/* AFBF90 80084DF0 AE2E00A4 */   sw    $t6, 0xa4($s1)
/* AFBF94 80084DF4 3C048014 */  lui   $a0, %hi(D_8013DF60) # $a0, 0x8014
/* AFBF98 80084DF8 2484DF60 */  addiu $a0, %lo(D_8013DF60) # addiu $a0, $a0, -0x20a0
/* AFBF9C 80084DFC 0C00084C */  jal   osSyncPrintf
/* AFBFA0 80084E00 8E2500A4 */   lw    $a1, 0xa4($s1)
/* AFBFA4 80084E04 3C048014 */  lui   $a0, %hi(D_8013DF6C) # $a0, 0x8014
/* AFBFA8 80084E08 0C00084C */  jal   osSyncPrintf
/* AFBFAC 80084E0C 2484DF6C */   addiu $a0, %lo(D_8013DF6C) # addiu $a0, $a0, -0x2094
/* AFBFB0 80084E10 24010068 */  li    $at, 104
/* AFBFB4 80084E14 16010003 */  bne   $s0, $at, .L80084E24
/* AFBFB8 80084E18 00000000 */   nop   
/* AFBFBC 80084E1C 0C01B42B */  jal   func_8006D0AC
/* AFBFC0 80084E20 8FA40048 */   lw    $a0, 0x48($sp)
.L80084E24:
/* AFBFC4 80084E24 10000553 */  b     .L80086374
/* AFBFC8 80084E28 240200FF */   li    $v0, 255
.L80084E2C:
/* AFBFCC 80084E2C 2A01005A */  slti  $at, $s0, 0x5a
/* AFBFD0 80084E30 1420001E */  bnez  $at, .L80084EAC
/* AFBFD4 80084E34 2A010066 */   slti  $at, $s0, 0x66
/* AFBFD8 80084E38 1020001C */  beqz  $at, .L80084EAC
/* AFBFDC 80084E3C 00107880 */   sll   $t7, $s0, 2
/* AFBFE0 80084E40 3C188012 */  lui   $t8, %hi(gBitFlags) # $t8, 0x8012
/* AFBFE4 80084E44 27187120 */  addiu $t8, %lo(gBitFlags) # addiu $t8, $t8, 0x7120
/* AFBFE8 80084E48 01F81021 */  addu  $v0, $t7, $t8
/* AFBFEC 80084E4C 8C59FEB0 */  lw    $t9, -0x150($v0)
/* AFBFF0 80084E50 8E2C00A4 */  lw    $t4, 0xa4($s1)
/* AFBFF4 80084E54 3C048014 */  lui   $a0, %hi(D_8013DF70) # $a0, 0x8014
/* AFBFF8 80084E58 2484DF70 */  addiu $a0, %lo(D_8013DF70) # addiu $a0, $a0, -0x2090
/* AFBFFC 80084E5C 01996825 */  or    $t5, $t4, $t9
/* AFC000 80084E60 AE2D00A4 */  sw    $t5, 0xa4($s1)
/* AFC004 80084E64 0C00084C */  jal   osSyncPrintf
/* AFC008 80084E68 AFA2003C */   sw    $v0, 0x3c($sp)
/* AFC00C 80084E6C 3C048014 */  lui   $a0, %hi(D_8013DF78) # $a0, 0x8014
/* AFC010 80084E70 2484DF78 */  addiu $a0, %lo(D_8013DF78) # addiu $a0, $a0, -0x2088
/* AFC014 80084E74 0C00084C */  jal   osSyncPrintf
/* AFC018 80084E78 8E2500A4 */   lw    $a1, 0xa4($s1)
/* AFC01C 80084E7C 8FA2003C */  lw    $v0, 0x3c($sp)
/* AFC020 80084E80 3C048014 */  lui   $a0, %hi(D_8013DF84) # $a0, 0x8014
/* AFC024 80084E84 2484DF84 */  addiu $a0, %lo(D_8013DF84) # addiu $a0, $a0, -0x207c
/* AFC028 80084E88 8E2500A4 */  lw    $a1, 0xa4($s1)
/* AFC02C 80084E8C 8C46FEB0 */  lw    $a2, -0x150($v0)
/* AFC030 80084E90 0C00084C */  jal   osSyncPrintf
/* AFC034 80084E94 8C47FE98 */   lw    $a3, -0x168($v0)
/* AFC038 80084E98 3C048014 */  lui   $a0, %hi(D_8013DF9C) # $a0, 0x8014
/* AFC03C 80084E9C 0C00084C */  jal   osSyncPrintf
/* AFC040 80084EA0 2484DF9C */   addiu $a0, %lo(D_8013DF9C) # addiu $a0, $a0, -0x2064
/* AFC044 80084EA4 10000533 */  b     .L80086374
/* AFC048 80084EA8 240200FF */   li    $v0, 255
.L80084EAC:
/* AFC04C 80084EAC 2A01006C */  slti  $at, $s0, 0x6c
/* AFC050 80084EB0 14200015 */  bnez  $at, .L80084F08
/* AFC054 80084EB4 2A01006F */   slti  $at, $s0, 0x6f
/* AFC058 80084EB8 10200013 */  beqz  $at, .L80084F08
/* AFC05C 80084EBC 00107880 */   sll   $t7, $s0, 2
/* AFC060 80084EC0 3C188012 */  lui   $t8, %hi(D_80126FB8)
/* AFC064 80084EC4 030FC021 */  addu  $t8, $t8, $t7
/* AFC068 80084EC8 8F186FB8 */  lw    $t8, %lo(D_80126FB8)($t8)
/* AFC06C 80084ECC 8E2E00A4 */  lw    $t6, 0xa4($s1)
/* AFC070 80084ED0 3C048014 */  lui   $a0, %hi(D_8013DFA0) # $a0, 0x8014
/* AFC074 80084ED4 2484DFA0 */  addiu $a0, %lo(D_8013DFA0) # addiu $a0, $a0, -0x2060
/* AFC078 80084ED8 01D86025 */  or    $t4, $t6, $t8
/* AFC07C 80084EDC 0C00084C */  jal   osSyncPrintf
/* AFC080 80084EE0 AE2C00A4 */   sw    $t4, 0xa4($s1)
/* AFC084 80084EE4 3C048014 */  lui   $a0, %hi(D_8013DFA8) # $a0, 0x8014
/* AFC088 80084EE8 2484DFA8 */  addiu $a0, %lo(D_8013DFA8) # addiu $a0, $a0, -0x2058
/* AFC08C 80084EEC 0C00084C */  jal   osSyncPrintf
/* AFC090 80084EF0 8E2500A4 */   lw    $a1, 0xa4($s1)
/* AFC094 80084EF4 3C048014 */  lui   $a0, %hi(D_8013DFB8) # $a0, 0x8014
/* AFC098 80084EF8 0C00084C */  jal   osSyncPrintf
/* AFC09C 80084EFC 2484DFB8 */   addiu $a0, %lo(D_8013DFB8) # addiu $a0, $a0, -0x2048
/* AFC0A0 80084F00 1000051C */  b     .L80086374
/* AFC0A4 80084F04 240200FF */   li    $v0, 255
.L80084F08:
/* AFC0A8 80084F08 2401006F */  li    $at, 111
/* AFC0AC 80084F0C 12010003 */  beq   $s0, $at, .L80084F1C
/* AFC0B0 80084F10 00106880 */   sll   $t5, $s0, 2
/* AFC0B4 80084F14 24010070 */  li    $at, 112
/* AFC0B8 80084F18 16010012 */  bne   $s0, $at, .L80084F64
.L80084F1C:
/* AFC0BC 80084F1C 3C0F8012 */   lui   $t7, %hi(D_80126FB8)
/* AFC0C0 80084F20 01ED7821 */  addu  $t7, $t7, $t5
/* AFC0C4 80084F24 8DEF6FB8 */  lw    $t7, %lo(D_80126FB8)($t7)
/* AFC0C8 80084F28 8E3900A4 */  lw    $t9, 0xa4($s1)
/* AFC0CC 80084F2C 3C048014 */  lui   $a0, %hi(D_8013DFBC) # $a0, 0x8014
/* AFC0D0 80084F30 2484DFBC */  addiu $a0, %lo(D_8013DFBC) # addiu $a0, $a0, -0x2044
/* AFC0D4 80084F34 032F7025 */  or    $t6, $t9, $t7
/* AFC0D8 80084F38 0C00084C */  jal   osSyncPrintf
/* AFC0DC 80084F3C AE2E00A4 */   sw    $t6, 0xa4($s1)
/* AFC0E0 80084F40 3C048014 */  lui   $a0, %hi(D_8013DFC4) # $a0, 0x8014
/* AFC0E4 80084F44 2484DFC4 */  addiu $a0, %lo(D_8013DFC4) # addiu $a0, $a0, -0x203c
/* AFC0E8 80084F48 0C00084C */  jal   osSyncPrintf
/* AFC0EC 80084F4C 8E2500A4 */   lw    $a1, 0xa4($s1)
/* AFC0F0 80084F50 3C048014 */  lui   $a0, %hi(D_8013DFD4) # $a0, 0x8014
/* AFC0F4 80084F54 0C00084C */  jal   osSyncPrintf
/* AFC0F8 80084F58 2484DFD4 */   addiu $a0, %lo(D_8013DFD4) # addiu $a0, $a0, -0x202c
/* AFC0FC 80084F5C 10000505 */  b     .L80086374
/* AFC100 80084F60 240200FF */   li    $v0, 255
.L80084F64:
/* AFC104 80084F64 24010071 */  li    $at, 113
/* AFC108 80084F68 16010017 */  bne   $s0, $at, .L80084FC8
/* AFC10C 80084F6C 00106080 */   sll   $t4, $s0, 2
/* AFC110 80084F70 3C0D8012 */  lui   $t5, %hi(D_80126FB8)
/* AFC114 80084F74 01AC6821 */  addu  $t5, $t5, $t4
/* AFC118 80084F78 8DAD6FB8 */  lw    $t5, %lo(D_80126FB8)($t5)
/* AFC11C 80084F7C 8E3800A4 */  lw    $t8, 0xa4($s1)
/* AFC120 80084F80 862F00D0 */  lh    $t7, 0xd0($s1)
/* AFC124 80084F84 3C048014 */  lui   $a0, %hi(D_8013DFD8) # $a0, 0x8014
/* AFC128 80084F88 030DC825 */  or    $t9, $t8, $t5
/* AFC12C 80084F8C 25EE0001 */  addiu $t6, $t7, 1
/* AFC130 80084F90 AE3900A4 */  sw    $t9, 0xa4($s1)
/* AFC134 80084F94 A62E00D0 */  sh    $t6, 0xd0($s1)
/* AFC138 80084F98 0C00084C */  jal   osSyncPrintf
/* AFC13C 80084F9C 2484DFD8 */   addiu $a0, %lo(D_8013DFD8) # addiu $a0, $a0, -0x2028
/* AFC140 80084FA0 3C048014 */  lui   $a0, %hi(D_8013DFE0) # $a0, 0x8014
/* AFC144 80084FA4 2484DFE0 */  addiu $a0, %lo(D_8013DFE0) # addiu $a0, $a0, -0x2020
/* AFC148 80084FA8 8E2500A4 */  lw    $a1, 0xa4($s1)
/* AFC14C 80084FAC 0C00084C */  jal   osSyncPrintf
/* AFC150 80084FB0 862600D0 */   lh    $a2, 0xd0($s1)
/* AFC154 80084FB4 3C048014 */  lui   $a0, %hi(D_8013DFF4) # $a0, 0x8014
/* AFC158 80084FB8 0C00084C */  jal   osSyncPrintf
/* AFC15C 80084FBC 2484DFF4 */   addiu $a0, %lo(D_8013DFF4) # addiu $a0, $a0, -0x200c
/* AFC160 80084FC0 100004EC */  b     .L80086374
/* AFC164 80084FC4 240200FF */   li    $v0, 255
.L80084FC8:
/* AFC168 80084FC8 2A01003B */  slti  $at, $s0, 0x3b
/* AFC16C 80084FCC 14200033 */  bnez  $at, .L8008509C
/* AFC170 80084FD0 2A01003E */   slti  $at, $s0, 0x3e
/* AFC174 80084FD4 10200031 */  beqz  $at, .L8008509C
/* AFC178 80084FD8 3C028012 */   lui   $v0, %hi(gEquipShifts) # $v0, 0x8012
/* AFC17C 80084FDC 0010C080 */  sll   $t8, $s0, 2
/* AFC180 80084FE0 3C0D8012 */  lui   $t5, %hi(D_80127034)
/* AFC184 80084FE4 01B86821 */  addu  $t5, $t5, $t8
/* AFC188 80084FE8 8DAD7034 */  lw    $t5, %lo(D_80127034)($t5)
/* AFC18C 80084FEC 904271F0 */  lbu   $v0, %lo(gEquipShifts)($v0)
/* AFC190 80084FF0 962C009C */  lhu   $t4, 0x9c($s1)
/* AFC194 80084FF4 2401003D */  li    $at, 61
/* AFC198 80084FF8 004DC804 */  sllv  $t9, $t5, $v0
/* AFC19C 80084FFC 01997825 */  or    $t7, $t4, $t9
/* AFC1A0 80085000 16010018 */  bne   $s0, $at, .L80085064
/* AFC1A4 80085004 A62F009C */   sh    $t7, 0x9c($s1)
/* AFC1A8 80085008 240E0008 */  li    $t6, 8
/* AFC1AC 8008500C A62E0036 */  sh    $t6, 0x36($s1)
/* AFC1B0 80085010 3C188012 */  lui   $t8, %hi(gEquipMasks) # $t8, 0x8012
/* AFC1B4 80085014 971871A0 */  lhu   $t8, %lo(gEquipMasks)($t8)
/* AFC1B8 80085018 31E3FFFF */  andi  $v1, $t7, 0xffff
/* AFC1BC 8008501C 2401000F */  li    $at, 15
/* AFC1C0 80085020 00786824 */  and   $t5, $v1, $t8
/* AFC1C4 80085024 004D6007 */  srav  $t4, $t5, $v0
/* AFC1C8 80085028 1581001A */  bne   $t4, $at, .L80085094
/* AFC1CC 8008502C 24190008 */   li    $t9, 8
/* AFC1D0 80085030 92380068 */  lbu   $t8, 0x68($s1)
/* AFC1D4 80085034 00597804 */  sllv  $t7, $t9, $v0
/* AFC1D8 80085038 006F7026 */  xor   $t6, $v1, $t7
/* AFC1DC 8008503C 24010055 */  li    $at, 85
/* AFC1E0 80085040 17010014 */  bne   $t8, $at, .L80085094
/* AFC1E4 80085044 A62E009C */   sh    $t6, 0x9c($s1)
/* AFC1E8 80085048 240D003D */  li    $t5, 61
/* AFC1EC 8008504C A22D0068 */  sb    $t5, 0x68($s1)
/* AFC1F0 80085050 8FA40048 */  lw    $a0, 0x48($sp)
/* AFC1F4 80085054 0C02129B */  jal   Interface_LoadItemIcon1
/* AFC1F8 80085058 00002825 */   move  $a1, $zero
/* AFC1FC 8008505C 100004C5 */  b     .L80086374
/* AFC200 80085060 240200FF */   li    $v0, 255
.L80085064:
/* AFC204 80085064 2401003C */  li    $at, 60
/* AFC208 80085068 1601000A */  bne   $s0, $at, .L80085094
/* AFC20C 8008506C 240C003C */   li    $t4, 60
/* AFC210 80085070 96390070 */  lhu   $t9, 0x70($s1)
/* AFC214 80085074 A22C0068 */  sb    $t4, 0x68($s1)
/* AFC218 80085078 8FA40048 */  lw    $a0, 0x48($sp)
/* AFC21C 8008507C 332EFFF0 */  andi  $t6, $t9, 0xfff0
/* AFC220 80085080 A62E0070 */  sh    $t6, 0x70($s1)
/* AFC224 80085084 35D80002 */  ori   $t8, $t6, 2
/* AFC228 80085088 A6380070 */  sh    $t8, 0x70($s1)
/* AFC22C 8008508C 0C02129B */  jal   Interface_LoadItemIcon1
/* AFC230 80085090 00002825 */   move  $a1, $zero
.L80085094:
/* AFC234 80085094 100004B7 */  b     .L80086374
/* AFC238 80085098 240200FF */   li    $v0, 255
.L8008509C:
/* AFC23C 8008509C 2A01003E */  slti  $at, $s0, 0x3e
/* AFC240 800850A0 1420000E */  bnez  $at, .L800850DC
/* AFC244 800850A4 2A010041 */   slti  $at, $s0, 0x41
/* AFC248 800850A8 1020000C */  beqz  $at, .L800850DC
/* AFC24C 800850AC 00106880 */   sll   $t5, $s0, 2
/* AFC250 800850B0 3C0C8012 */  lui   $t4, %hi(D_80127028)
/* AFC254 800850B4 018D6021 */  addu  $t4, $t4, $t5
/* AFC258 800850B8 3C198012 */  lui   $t9, %hi(gEquipShifts+1) # $t9, 0x8012
/* AFC25C 800850BC 933971F1 */  lbu   $t9, %lo(gEquipShifts+1)($t9)
/* AFC260 800850C0 8D8C7028 */  lw    $t4, %lo(D_80127028)($t4)
/* AFC264 800850C4 962E009C */  lhu   $t6, 0x9c($s1)
/* AFC268 800850C8 240200FF */  li    $v0, 255
/* AFC26C 800850CC 032C7804 */  sllv  $t7, $t4, $t9
/* AFC270 800850D0 01CFC025 */  or    $t8, $t6, $t7
/* AFC274 800850D4 100004A7 */  b     .L80086374
/* AFC278 800850D8 A638009C */   sh    $t8, 0x9c($s1)
.L800850DC:
/* AFC27C 800850DC 2A010041 */  slti  $at, $s0, 0x41
/* AFC280 800850E0 1420000E */  bnez  $at, .L8008511C
/* AFC284 800850E4 2A010044 */   slti  $at, $s0, 0x44
/* AFC288 800850E8 1020000C */  beqz  $at, .L8008511C
/* AFC28C 800850EC 00106880 */   sll   $t5, $s0, 2
/* AFC290 800850F0 3C0C8012 */  lui   $t4, %hi(D_8012701C)
/* AFC294 800850F4 018D6021 */  addu  $t4, $t4, $t5
/* AFC298 800850F8 3C198012 */  lui   $t9, %hi(gEquipShifts+2) # $t9, 0x8012
/* AFC29C 800850FC 933971F2 */  lbu   $t9, %lo(gEquipShifts+2)($t9)
/* AFC2A0 80085100 8D8C701C */  lw    $t4, %lo(D_8012701C)($t4)
/* AFC2A4 80085104 962F009C */  lhu   $t7, 0x9c($s1)
/* AFC2A8 80085108 240200FF */  li    $v0, 255
/* AFC2AC 8008510C 032C7004 */  sllv  $t6, $t4, $t9
/* AFC2B0 80085110 01EEC025 */  or    $t8, $t7, $t6
/* AFC2B4 80085114 10000497 */  b     .L80086374
/* AFC2B8 80085118 A638009C */   sh    $t8, 0x9c($s1)
.L8008511C:
/* AFC2BC 8008511C 2A010044 */  slti  $at, $s0, 0x44
/* AFC2C0 80085120 1420000E */  bnez  $at, .L8008515C
/* AFC2C4 80085124 2A010047 */   slti  $at, $s0, 0x47
/* AFC2C8 80085128 1020000C */  beqz  $at, .L8008515C
/* AFC2CC 8008512C 00106880 */   sll   $t5, $s0, 2
/* AFC2D0 80085130 3C0C8012 */  lui   $t4, %hi(D_80127010)
/* AFC2D4 80085134 018D6021 */  addu  $t4, $t4, $t5
/* AFC2D8 80085138 3C198012 */  lui   $t9, %hi(gEquipShifts+3) # $t9, 0x8012
/* AFC2DC 8008513C 933971F3 */  lbu   $t9, %lo(gEquipShifts+3)($t9)
/* AFC2E0 80085140 8D8C7010 */  lw    $t4, %lo(D_80127010)($t4)
/* AFC2E4 80085144 962E009C */  lhu   $t6, 0x9c($s1)
/* AFC2E8 80085148 240200FF */  li    $v0, 255
/* AFC2EC 8008514C 032C7804 */  sllv  $t7, $t4, $t9
/* AFC2F0 80085150 01CFC025 */  or    $t8, $t6, $t7
/* AFC2F4 80085154 10000487 */  b     .L80086374
/* AFC2F8 80085158 A638009C */   sh    $t8, 0x9c($s1)
.L8008515C:
/* AFC2FC 8008515C 24010074 */  li    $at, 116
/* AFC300 80085160 12010006 */  beq   $s0, $at, .L8008517C
/* AFC304 80085164 0010C880 */   sll   $t9, $s0, 2
/* AFC308 80085168 24010075 */  li    $at, 117
/* AFC30C 8008516C 12010003 */  beq   $s0, $at, .L8008517C
/* AFC310 80085170 24010076 */   li    $at, 118
/* AFC314 80085174 5601000C */  bnel  $s0, $at, .L800851A8
/* AFC318 80085178 24010077 */   li    $at, 119
.L8008517C:
/* AFC31C 8008517C 962D1402 */  lhu   $t5, 0x1402($s1)
/* AFC320 80085180 3C0E8012 */  lui   $t6, %hi(D_80126F50)
/* AFC324 80085184 01D97021 */  addu  $t6, $t6, $t9
/* AFC328 80085188 022D1821 */  addu  $v1, $s1, $t5
/* AFC32C 8008518C 906C00A8 */  lbu   $t4, 0xa8($v1)
/* AFC330 80085190 8DCE6F50 */  lw    $t6, %lo(D_80126F50)($t6)
/* AFC334 80085194 240200FF */  li    $v0, 255
/* AFC338 80085198 018E7825 */  or    $t7, $t4, $t6
/* AFC33C 8008519C 10000475 */  b     .L80086374
/* AFC340 800851A0 A06F00A8 */   sb    $t7, 0xa8($v1)
/* AFC344 800851A4 24010077 */  li    $at, 119
.L800851A8:
/* AFC348 800851A8 5601000E */  bnel  $s0, $at, .L800851E4
/* AFC34C 800851AC 2401004A */   li    $at, 74
/* AFC350 800851B0 96381402 */  lhu   $t8, 0x1402($s1)
/* AFC354 800851B4 24060001 */  li    $a2, 1
/* AFC358 800851B8 240200FF */  li    $v0, 255
/* AFC35C 800851BC 02381821 */  addu  $v1, $s1, $t8
/* AFC360 800851C0 806400BC */  lb    $a0, 0xbc($v1)
/* AFC364 800851C4 04810004 */  bgez  $a0, .L800851D8
/* AFC368 800851C8 248D0001 */   addiu $t5, $a0, 1
/* AFC36C 800851CC A06600BC */  sb    $a2, 0xbc($v1)
/* AFC370 800851D0 10000468 */  b     .L80086374
/* AFC374 800851D4 240200FF */   li    $v0, 255
.L800851D8:
/* AFC378 800851D8 10000466 */  b     .L80086374
/* AFC37C 800851DC A06D00BC */   sb    $t5, 0xbc($v1)
/* AFC380 800851E0 2401004A */  li    $at, 74
.L800851E4:
/* AFC384 800851E4 12010002 */  beq   $s0, $at, .L800851F0
/* AFC388 800851E8 24010003 */   li    $at, 3
/* AFC38C 800851EC 16010029 */  bne   $s0, $at, .L80085294
.L800851F0:
/* AFC390 800851F0 3C028012 */   lui   $v0, %hi(gUpgradeMasks) # $v0, 0x8012
/* AFC394 800851F4 8C4271B0 */  lw    $v0, %lo(gUpgradeMasks)($v0)
/* AFC398 800851F8 8E3900A0 */  lw    $t9, 0xa0($s1)
/* AFC39C 800851FC 3C048012 */  lui   $a0, %hi(gUpgradeShifts) # $a0, 0x8012
/* AFC3A0 80085200 908471F4 */  lbu   $a0, %lo(gUpgradeShifts)($a0)
/* AFC3A4 80085204 03226024 */  and   $t4, $t9, $v0
/* AFC3A8 80085208 24050001 */  li    $a1, 1
/* AFC3AC 8008520C 008C7007 */  srav  $t6, $t4, $a0
/* AFC3B0 80085210 55C0000F */  bnezl $t6, .L80085250
/* AFC3B4 80085214 91390003 */   lbu   $t9, 3($t1)
/* AFC3B8 80085218 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC3BC 8008521C 00002025 */   move  $a0, $zero
/* AFC3C0 80085220 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFC3C4 80085224 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFC3C8 80085228 912F0003 */  lbu   $t7, 3($t1)
/* AFC3CC 8008522C 24180003 */  li    $t8, 3
/* AFC3D0 80085230 3C0D8012 */  lui   $t5, %hi(gUpgradeCapacities+2) # $t5, 0x8012
/* AFC3D4 80085234 022F1821 */  addu  $v1, $s1, $t7
/* AFC3D8 80085238 A0780074 */  sb    $t8, 0x74($v1)
/* AFC3DC 8008523C 95AD71FE */  lhu   $t5, %lo(gUpgradeCapacities+2)($t5)
/* AFC3E0 80085240 240200FF */  li    $v0, 255
/* AFC3E4 80085244 1000044B */  b     .L80086374
/* AFC3E8 80085248 A06D008C */   sb    $t5, 0x8c($v1)
/* AFC3EC 8008524C 91390003 */  lbu   $t9, 3($t1)
.L80085250:
/* AFC3F0 80085250 3C068012 */  lui   $a2, %hi(gUpgradeCapacities)
/* AFC3F4 80085254 02391821 */  addu  $v1, $s1, $t9
/* AFC3F8 80085258 806C008C */  lb    $t4, 0x8c($v1)
/* AFC3FC 8008525C 258E0001 */  addiu $t6, $t4, 1
/* AFC400 80085260 A06E008C */  sb    $t6, 0x8c($v1)
/* AFC404 80085264 8E2F00A0 */  lw    $t7, 0xa0($s1)
/* AFC408 80085268 806C008C */  lb    $t4, 0x8c($v1)
/* AFC40C 8008526C 01E2C024 */  and   $t8, $t7, $v0
/* AFC410 80085270 00986807 */  srav  $t5, $t8, $a0
/* AFC414 80085274 000DC840 */  sll   $t9, $t5, 1
/* AFC418 80085278 00D93021 */  addu  $a2, $a2, $t9
/* AFC41C 8008527C 94C671FC */  lhu   $a2, %lo(gUpgradeCapacities)($a2)
/* AFC420 80085280 00CC082A */  slt   $at, $a2, $t4
/* AFC424 80085284 5020042D */  beql  $at, $zero, .L8008633C
/* AFC428 80085288 91470074 */   lbu   $a3, 0x74($t2)
/* AFC42C 8008528C 1000042A */  b     .L80086338
/* AFC430 80085290 A066008C */   sb    $a2, 0x8c($v1)
.L80085294:
/* AFC434 80085294 2401004B */  li    $at, 75
/* AFC438 80085298 1601000C */  bne   $s0, $at, .L800852CC
/* AFC43C 8008529C 00002025 */   move  $a0, $zero
/* AFC440 800852A0 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC444 800852A4 24050002 */   li    $a1, 2
/* AFC448 800852A8 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFC44C 800852AC 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFC450 800852B0 912F0003 */  lbu   $t7, 3($t1)
/* AFC454 800852B4 3C0E8012 */  lui   $t6, %hi(gUpgradeCapacities+4) # $t6, 0x8012
/* AFC458 800852B8 95CE7200 */  lhu   $t6, %lo(gUpgradeCapacities+4)($t6)
/* AFC45C 800852BC 022FC021 */  addu  $t8, $s1, $t7
/* AFC460 800852C0 240200FF */  li    $v0, 255
/* AFC464 800852C4 1000042B */  b     .L80086374
/* AFC468 800852C8 A30E008C */   sb    $t6, 0x8c($t8)
.L800852CC:
/* AFC46C 800852CC 2401004C */  li    $at, 76
/* AFC470 800852D0 1601000C */  bne   $s0, $at, .L80085304
/* AFC474 800852D4 00002025 */   move  $a0, $zero
/* AFC478 800852D8 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC47C 800852DC 24050003 */   li    $a1, 3
/* AFC480 800852E0 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFC484 800852E4 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFC488 800852E8 91390003 */  lbu   $t9, 3($t1)
/* AFC48C 800852EC 3C0D8012 */  lui   $t5, %hi(gUpgradeCapacities+6) # $t5, 0x8012
/* AFC490 800852F0 95AD7202 */  lhu   $t5, %lo(gUpgradeCapacities+6)($t5)
/* AFC494 800852F4 02396021 */  addu  $t4, $s1, $t9
/* AFC498 800852F8 240200FF */  li    $v0, 255
/* AFC49C 800852FC 1000041D */  b     .L80086374
/* AFC4A0 80085300 A18D008C */   sb    $t5, 0x8c($t4)
.L80085304:
/* AFC4A4 80085304 24010048 */  li    $at, 72
/* AFC4A8 80085308 1601000C */  bne   $s0, $at, .L8008533C
/* AFC4AC 8008530C 24040005 */   li    $a0, 5
/* AFC4B0 80085310 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC4B4 80085314 24050002 */   li    $a1, 2
/* AFC4B8 80085318 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFC4BC 8008531C 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFC4C0 80085320 912E0006 */  lbu   $t6, 6($t1)
/* AFC4C4 80085324 3C0F8012 */  lui   $t7, %hi(gUpgradeCapacities+0x2c) # $t7, 0x8012
/* AFC4C8 80085328 95EF7228 */  lhu   $t7, %lo(gUpgradeCapacities+0x2c)($t7)
/* AFC4CC 8008532C 022EC021 */  addu  $t8, $s1, $t6
/* AFC4D0 80085330 240200FF */  li    $v0, 255
/* AFC4D4 80085334 1000040F */  b     .L80086374
/* AFC4D8 80085338 A30F008C */   sb    $t7, 0x8c($t8)
.L8008533C:
/* AFC4DC 8008533C 24010049 */  li    $at, 73
/* AFC4E0 80085340 1601000C */  bne   $s0, $at, .L80085374
/* AFC4E4 80085344 24040005 */   li    $a0, 5
/* AFC4E8 80085348 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC4EC 8008534C 24050003 */   li    $a1, 3
/* AFC4F0 80085350 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFC4F4 80085354 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFC4F8 80085358 912D0006 */  lbu   $t5, 6($t1)
/* AFC4FC 8008535C 3C198012 */  lui   $t9, %hi(gUpgradeCapacities+0x2e) # $t9, 0x8012
/* AFC500 80085360 9739722A */  lhu   $t9, %lo(gUpgradeCapacities+0x2e)($t9)
/* AFC504 80085364 022D6021 */  addu  $t4, $s1, $t5
/* AFC508 80085368 240200FF */  li    $v0, 255
/* AFC50C 8008536C 10000401 */  b     .L80086374
/* AFC510 80085370 A199008C */   sb    $t9, 0x8c($t4)
.L80085374:
/* AFC514 80085374 2401004D */  li    $at, 77
/* AFC518 80085378 16010029 */  bne   $s0, $at, .L80085420
/* AFC51C 8008537C 3C048012 */   lui   $a0, %hi(gUpgradeMasks+4) # $a0, 0x8012
/* AFC520 80085380 8C8471B4 */  lw    $a0, %lo(gUpgradeMasks+4)($a0)
/* AFC524 80085384 8E2E00A0 */  lw    $t6, 0xa0($s1)
/* AFC528 80085388 3C058012 */  lui   $a1, %hi(gUpgradeShifts+1) # $a1, 0x8012
/* AFC52C 8008538C 90A571F5 */  lbu   $a1, %lo(gUpgradeShifts+1)($a1)
/* AFC530 80085390 01C47824 */  and   $t7, $t6, $a0
/* AFC534 80085394 00AFC007 */  srav  $t8, $t7, $a1
/* AFC538 80085398 57000010 */  bnezl $t8, .L800853DC
/* AFC53C 8008539C 912E0002 */   lbu   $t6, 2($t1)
/* AFC540 800853A0 24040001 */  li    $a0, 1
/* AFC544 800853A4 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC548 800853A8 24050001 */   li    $a1, 1
/* AFC54C 800853AC 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFC550 800853B0 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFC554 800853B4 912D0002 */  lbu   $t5, 2($t1)
/* AFC558 800853B8 24190002 */  li    $t9, 2
/* AFC55C 800853BC 3C0C8012 */  lui   $t4, %hi(gUpgradeCapacities+0xa) # $t4, 0x8012
/* AFC560 800853C0 022D1821 */  addu  $v1, $s1, $t5
/* AFC564 800853C4 A0790074 */  sb    $t9, 0x74($v1)
/* AFC568 800853C8 958C7206 */  lhu   $t4, %lo(gUpgradeCapacities+0xa)($t4)
/* AFC56C 800853CC 240200FF */  li    $v0, 255
/* AFC570 800853D0 100003E8 */  b     .L80086374
/* AFC574 800853D4 A06C008C */   sb    $t4, 0x8c($v1)
/* AFC578 800853D8 912E0002 */  lbu   $t6, 2($t1)
.L800853DC:
/* AFC57C 800853DC 3C028012 */  lui   $v0, %hi(gUpgradeCapacities+8)
/* AFC580 800853E0 022E1821 */  addu  $v1, $s1, $t6
/* AFC584 800853E4 806F008C */  lb    $t7, 0x8c($v1)
/* AFC588 800853E8 25F80001 */  addiu $t8, $t7, 1
/* AFC58C 800853EC A078008C */  sb    $t8, 0x8c($v1)
/* AFC590 800853F0 8E2D00A0 */  lw    $t5, 0xa0($s1)
/* AFC594 800853F4 806F008C */  lb    $t7, 0x8c($v1)
/* AFC598 800853F8 01A4C824 */  and   $t9, $t5, $a0
/* AFC59C 800853FC 00B96007 */  srav  $t4, $t9, $a1
/* AFC5A0 80085400 000C7040 */  sll   $t6, $t4, 1
/* AFC5A4 80085404 004E1021 */  addu  $v0, $v0, $t6
/* AFC5A8 80085408 94427204 */  lhu   $v0, %lo(gUpgradeCapacities+8)($v0)
/* AFC5AC 8008540C 004F082A */  slt   $at, $v0, $t7
/* AFC5B0 80085410 502003CA */  beql  $at, $zero, .L8008633C
/* AFC5B4 80085414 91470074 */   lbu   $a3, 0x74($t2)
/* AFC5B8 80085418 100003C7 */  b     .L80086338
/* AFC5BC 8008541C A062008C */   sb    $v0, 0x8c($v1)
.L80085420:
/* AFC5C0 80085420 2401004E */  li    $at, 78
/* AFC5C4 80085424 1601000C */  bne   $s0, $at, .L80085458
/* AFC5C8 80085428 24040001 */   li    $a0, 1
/* AFC5CC 8008542C 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC5D0 80085430 24050002 */   li    $a1, 2
/* AFC5D4 80085434 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFC5D8 80085438 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFC5DC 8008543C 912D0002 */  lbu   $t5, 2($t1)
/* AFC5E0 80085440 3C188012 */  lui   $t8, %hi(gUpgradeCapacities+0xc) # $t8, 0x8012
/* AFC5E4 80085444 97187208 */  lhu   $t8, %lo(gUpgradeCapacities+0xc)($t8)
/* AFC5E8 80085448 022DC821 */  addu  $t9, $s1, $t5
/* AFC5EC 8008544C 240200FF */  li    $v0, 255
/* AFC5F0 80085450 100003C8 */  b     .L80086374
/* AFC5F4 80085454 A338008C */   sb    $t8, 0x8c($t9)
.L80085458:
/* AFC5F8 80085458 2401004F */  li    $at, 79
/* AFC5FC 8008545C 1601000C */  bne   $s0, $at, .L80085490
/* AFC600 80085460 24040001 */   li    $a0, 1
/* AFC604 80085464 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC608 80085468 24050003 */   li    $a1, 3
/* AFC60C 8008546C 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFC610 80085470 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFC614 80085474 912E0002 */  lbu   $t6, 2($t1)
/* AFC618 80085478 3C0C8012 */  lui   $t4, %hi(gUpgradeCapacities+0xe) # $t4, 0x8012
/* AFC61C 8008547C 958C720A */  lhu   $t4, %lo(gUpgradeCapacities+0xe)($t4)
/* AFC620 80085480 022E7821 */  addu  $t7, $s1, $t6
/* AFC624 80085484 240200FF */  li    $v0, 255
/* AFC628 80085488 100003BA */  b     .L80086374
/* AFC62C 8008548C A1EC008C */   sb    $t4, 0x8c($t7)
.L80085490:
/* AFC630 80085490 24010050 */  li    $at, 80
/* AFC634 80085494 16010005 */  bne   $s0, $at, .L800854AC
/* AFC638 80085498 24040002 */   li    $a0, 2
/* AFC63C 8008549C 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC640 800854A0 24050001 */   li    $a1, 1
/* AFC644 800854A4 100003B3 */  b     .L80086374
/* AFC648 800854A8 240200FF */   li    $v0, 255
.L800854AC:
/* AFC64C 800854AC 24010051 */  li    $at, 81
/* AFC650 800854B0 16010005 */  bne   $s0, $at, .L800854C8
/* AFC654 800854B4 24040002 */   li    $a0, 2
/* AFC658 800854B8 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC65C 800854BC 24050002 */   li    $a1, 2
/* AFC660 800854C0 100003AC */  b     .L80086374
/* AFC664 800854C4 240200FF */   li    $v0, 255
.L800854C8:
/* AFC668 800854C8 24010052 */  li    $at, 82
/* AFC66C 800854CC 16010005 */  bne   $s0, $at, .L800854E4
/* AFC670 800854D0 24040002 */   li    $a0, 2
/* AFC674 800854D4 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC678 800854D8 24050003 */   li    $a1, 3
/* AFC67C 800854DC 100003A5 */  b     .L80086374
/* AFC680 800854E0 240200FF */   li    $v0, 255
.L800854E4:
/* AFC684 800854E4 24010053 */  li    $at, 83
/* AFC688 800854E8 16010005 */  bne   $s0, $at, .L80085500
/* AFC68C 800854EC 24040003 */   li    $a0, 3
/* AFC690 800854F0 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC694 800854F4 24050001 */   li    $a1, 1
/* AFC698 800854F8 1000039E */  b     .L80086374
/* AFC69C 800854FC 240200FF */   li    $v0, 255
.L80085500:
/* AFC6A0 80085500 24010054 */  li    $at, 84
/* AFC6A4 80085504 16010005 */  bne   $s0, $at, .L8008551C
/* AFC6A8 80085508 24040003 */   li    $a0, 3
/* AFC6AC 8008550C 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC6B0 80085510 24050002 */   li    $a1, 2
/* AFC6B4 80085514 10000397 */  b     .L80086374
/* AFC6B8 80085518 240200FF */   li    $v0, 255
.L8008551C:
/* AFC6BC 8008551C 24010056 */  li    $at, 86
/* AFC6C0 80085520 16010005 */  bne   $s0, $at, .L80085538
/* AFC6C4 80085524 24040004 */   li    $a0, 4
/* AFC6C8 80085528 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC6CC 8008552C 24050001 */   li    $a1, 1
/* AFC6D0 80085530 10000390 */  b     .L80086374
/* AFC6D4 80085534 240200FF */   li    $v0, 255
.L80085538:
/* AFC6D8 80085538 24010057 */  li    $at, 87
/* AFC6DC 8008553C 16010005 */  bne   $s0, $at, .L80085554
/* AFC6E0 80085540 24040004 */   li    $a0, 4
/* AFC6E4 80085544 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC6E8 80085548 24050002 */   li    $a1, 2
/* AFC6EC 8008554C 10000389 */  b     .L80086374
/* AFC6F0 80085550 240200FF */   li    $v0, 255
.L80085554:
/* AFC6F4 80085554 24010098 */  li    $at, 152
/* AFC6F8 80085558 16010013 */  bne   $s0, $at, .L800855A8
/* AFC6FC 8008555C 24040006 */   li    $a0, 6
/* AFC700 80085560 914D0074 */  lbu   $t5, 0x74($t2)
/* AFC704 80085564 240500FF */  li    $a1, 255
/* AFC708 80085568 14AD0004 */  bne   $a1, $t5, .L8008557C
/* AFC70C 8008556C 00000000 */   nop   
/* AFC710 80085570 91380000 */  lbu   $t8, ($t1)
/* AFC714 80085574 0238C821 */  addu  $t9, $s1, $t8
/* AFC718 80085578 A3200074 */  sb    $zero, 0x74($t9)
.L8008557C:
/* AFC71C 8008557C 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC720 80085580 24050002 */   li    $a1, 2
/* AFC724 80085584 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFC728 80085588 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFC72C 8008558C 912C0000 */  lbu   $t4, ($t1)
/* AFC730 80085590 3C0E8012 */  lui   $t6, %hi(gUpgradeCapacities+0x34) # $t6, 0x8012
/* AFC734 80085594 95CE7230 */  lhu   $t6, %lo(gUpgradeCapacities+0x34)($t6)
/* AFC738 80085598 022C7821 */  addu  $t7, $s1, $t4
/* AFC73C 8008559C 240200FF */  li    $v0, 255
/* AFC740 800855A0 10000374 */  b     .L80086374
/* AFC744 800855A4 A1EE008C */   sb    $t6, 0x8c($t7)
.L800855A8:
/* AFC748 800855A8 24010099 */  li    $at, 153
/* AFC74C 800855AC 16010013 */  bne   $s0, $at, .L800855FC
/* AFC750 800855B0 24040006 */   li    $a0, 6
/* AFC754 800855B4 914D0074 */  lbu   $t5, 0x74($t2)
/* AFC758 800855B8 240500FF */  li    $a1, 255
/* AFC75C 800855BC 14AD0004 */  bne   $a1, $t5, .L800855D0
/* AFC760 800855C0 00000000 */   nop   
/* AFC764 800855C4 91380000 */  lbu   $t8, ($t1)
/* AFC768 800855C8 0238C821 */  addu  $t9, $s1, $t8
/* AFC76C 800855CC A3200074 */  sb    $zero, 0x74($t9)
.L800855D0:
/* AFC770 800855D0 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC774 800855D4 24050003 */   li    $a1, 3
/* AFC778 800855D8 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFC77C 800855DC 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFC780 800855E0 912E0000 */  lbu   $t6, ($t1)
/* AFC784 800855E4 3C0C8012 */  lui   $t4, %hi(gUpgradeCapacities+0x36) # $t4, 0x8012
/* AFC788 800855E8 958C7232 */  lhu   $t4, %lo(gUpgradeCapacities+0x36)($t4)
/* AFC78C 800855EC 022E7821 */  addu  $t7, $s1, $t6
/* AFC790 800855F0 240200FF */  li    $v0, 255
/* AFC794 800855F4 1000035F */  b     .L80086374
/* AFC798 800855F8 A1EC008C */   sb    $t4, 0x8c($t7)
.L800855FC:
/* AFC79C 800855FC 2401009A */  li    $at, 154
/* AFC7A0 80085600 16010014 */  bne   $s0, $at, .L80085654
/* AFC7A4 80085604 24040007 */   li    $a0, 7
/* AFC7A8 80085608 914D0074 */  lbu   $t5, 0x74($t2)
/* AFC7AC 8008560C 240500FF */  li    $a1, 255
/* AFC7B0 80085610 14AD0005 */  bne   $a1, $t5, .L80085628
/* AFC7B4 80085614 00000000 */   nop   
/* AFC7B8 80085618 91390001 */  lbu   $t9, 1($t1)
/* AFC7BC 8008561C 24180001 */  li    $t8, 1
/* AFC7C0 80085620 02397021 */  addu  $t6, $s1, $t9
/* AFC7C4 80085624 A1D80074 */  sb    $t8, 0x74($t6)
.L80085628:
/* AFC7C8 80085628 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC7CC 8008562C 24050002 */   li    $a1, 2
/* AFC7D0 80085630 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFC7D4 80085634 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFC7D8 80085638 912F0001 */  lbu   $t7, 1($t1)
/* AFC7DC 8008563C 3C0C8012 */  lui   $t4, %hi(gUpgradeCapacities+0x3c) # $t4, 0x8012
/* AFC7E0 80085640 958C7238 */  lhu   $t4, %lo(gUpgradeCapacities+0x3c)($t4)
/* AFC7E4 80085644 022F6821 */  addu  $t5, $s1, $t7
/* AFC7E8 80085648 240200FF */  li    $v0, 255
/* AFC7EC 8008564C 10000349 */  b     .L80086374
/* AFC7F0 80085650 A1AC008C */   sb    $t4, 0x8c($t5)
.L80085654:
/* AFC7F4 80085654 2401009B */  li    $at, 155
/* AFC7F8 80085658 16010014 */  bne   $s0, $at, .L800856AC
/* AFC7FC 8008565C 24040007 */   li    $a0, 7
/* AFC800 80085660 91590074 */  lbu   $t9, 0x74($t2)
/* AFC804 80085664 240500FF */  li    $a1, 255
/* AFC808 80085668 14B90005 */  bne   $a1, $t9, .L80085680
/* AFC80C 8008566C 00000000 */   nop   
/* AFC810 80085670 912E0001 */  lbu   $t6, 1($t1)
/* AFC814 80085674 24180001 */  li    $t8, 1
/* AFC818 80085678 022E7821 */  addu  $t7, $s1, $t6
/* AFC81C 8008567C A1F80074 */  sb    $t8, 0x74($t7)
.L80085680:
/* AFC820 80085680 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC824 80085684 24050003 */   li    $a1, 3
/* AFC828 80085688 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFC82C 8008568C 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFC830 80085690 912D0001 */  lbu   $t5, 1($t1)
/* AFC834 80085694 3C0C8012 */  lui   $t4, %hi(gUpgradeCapacities+0x3e) # $t4, 0x8012
/* AFC838 80085698 958C723A */  lhu   $t4, %lo(gUpgradeCapacities+0x3e)($t4)
/* AFC83C 8008569C 022DC821 */  addu  $t9, $s1, $t5
/* AFC840 800856A0 240200FF */  li    $v0, 255
/* AFC844 800856A4 10000333 */  b     .L80086374
/* AFC848 800856A8 A32C008C */   sb    $t4, 0x8c($t9)
.L800856AC:
/* AFC84C 800856AC 2401000B */  li    $at, 11
/* AFC850 800856B0 16010019 */  bne   $s0, $at, .L80085718
/* AFC854 800856B4 00000000 */   nop   
/* AFC858 800856B8 91780000 */  lbu   $t8, ($t3)
/* AFC85C 800856BC 93AE004F */  lbu   $t6, 0x4f($sp)
/* AFC860 800856C0 24020001 */  li    $v0, 1
/* AFC864 800856C4 02387821 */  addu  $t7, $s1, $t8
/* AFC868 800856C8 A1EE0074 */  sb    $t6, 0x74($t7)
/* AFC86C 800856CC 02221821 */  addu  $v1, $s1, $v0
.L800856D0:
/* AFC870 800856D0 906D0068 */  lbu   $t5, 0x68($v1)
/* AFC874 800856D4 2401000A */  li    $at, 10
/* AFC878 800856D8 240C000B */  li    $t4, 11
/* AFC87C 800856DC 15A10006 */  bne   $t5, $at, .L800856F8
/* AFC880 800856E0 3045FFFF */   andi  $a1, $v0, 0xffff
/* AFC884 800856E4 A06C0068 */  sb    $t4, 0x68($v1)
/* AFC888 800856E8 8FA40048 */  lw    $a0, 0x48($sp)
/* AFC88C 800856EC 0C02129B */  jal   Interface_LoadItemIcon1
/* AFC890 800856F0 A7A20046 */   sh    $v0, 0x46($sp)
/* AFC894 800856F4 87A20046 */  lh    $v0, 0x46($sp)
.L800856F8:
/* AFC898 800856F8 24420001 */  addiu $v0, $v0, 1
/* AFC89C 800856FC 00021400 */  sll   $v0, $v0, 0x10
/* AFC8A0 80085700 00021403 */  sra   $v0, $v0, 0x10
/* AFC8A4 80085704 28410004 */  slti  $at, $v0, 4
/* AFC8A8 80085708 5420FFF1 */  bnezl $at, .L800856D0
/* AFC8AC 8008570C 02221821 */   addu  $v1, $s1, $v0
/* AFC8B0 80085710 10000318 */  b     .L80086374
/* AFC8B4 80085714 240200FF */   li    $v0, 255
.L80085718:
/* AFC8B8 80085718 16000028 */  bnez  $s0, .L800857BC
/* AFC8BC 8008571C 2401008A */   li    $at, 138
/* AFC8C0 80085720 91590074 */  lbu   $t9, 0x74($t2)
/* AFC8C4 80085724 240500FF */  li    $a1, 255
/* AFC8C8 80085728 24040006 */  li    $a0, 6
/* AFC8CC 8008572C 14B9000D */  bne   $a1, $t9, .L80085764
/* AFC8D0 80085730 24050001 */   li    $a1, 1
/* AFC8D4 80085734 AFAA0034 */  sw    $t2, 0x34($sp)
/* AFC8D8 80085738 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC8DC 8008573C AFAB003C */   sw    $t3, 0x3c($sp)
/* AFC8E0 80085740 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFC8E4 80085744 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFC8E8 80085748 91380000 */  lbu   $t8, ($t1)
/* AFC8EC 8008574C 24060001 */  li    $a2, 1
/* AFC8F0 80085750 8FAA0034 */  lw    $t2, 0x34($sp)
/* AFC8F4 80085754 02387021 */  addu  $t6, $s1, $t8
/* AFC8F8 80085758 8FAB003C */  lw    $t3, 0x3c($sp)
/* AFC8FC 8008575C 100002F6 */  b     .L80086338
/* AFC900 80085760 A1C6008C */   sb    $a2, 0x8c($t6)
.L80085764:
/* AFC904 80085764 912F0000 */  lbu   $t7, ($t1)
/* AFC908 80085768 3C188012 */  lui   $t8, %hi(gUpgradeMasks+0x18) # $t8, 0x8012
/* AFC90C 8008576C 3C038012 */  lui   $v1, %hi(gUpgradeCapacities+0x30)
/* AFC910 80085770 022F1021 */  addu  $v0, $s1, $t7
/* AFC914 80085774 804D008C */  lb    $t5, 0x8c($v0)
/* AFC918 80085778 3C0F8012 */  lui   $t7, %hi(gUpgradeShifts+6) # $t7, 0x8012
/* AFC91C 8008577C 25AC0001 */  addiu $t4, $t5, 1
/* AFC920 80085780 A04C008C */  sb    $t4, 0x8c($v0)
/* AFC924 80085784 8F1871C8 */  lw    $t8, %lo(gUpgradeMasks+0x18)($t8)
/* AFC928 80085788 8E3900A0 */  lw    $t9, 0xa0($s1)
/* AFC92C 8008578C 91EF71FA */  lbu   $t7, %lo(gUpgradeShifts+6)($t7)
/* AFC930 80085790 03387024 */  and   $t6, $t9, $t8
/* AFC934 80085794 01EE6807 */  srav  $t5, $t6, $t7
/* AFC938 80085798 000D6040 */  sll   $t4, $t5, 1
/* AFC93C 8008579C 006C1821 */  addu  $v1, $v1, $t4
/* AFC940 800857A0 9463722C */  lhu   $v1, %lo(gUpgradeCapacities+0x30)($v1)
/* AFC944 800857A4 8059008C */  lb    $t9, 0x8c($v0)
/* AFC948 800857A8 0079082A */  slt   $at, $v1, $t9
/* AFC94C 800857AC 502002E3 */  beql  $at, $zero, .L8008633C
/* AFC950 800857B0 91470074 */   lbu   $a3, 0x74($t2)
/* AFC954 800857B4 100002E0 */  b     .L80086338
/* AFC958 800857B8 A043008C */   sb    $v1, 0x8c($v0)
.L800857BC:
/* AFC95C 800857BC 12010003 */  beq   $s0, $at, .L800857CC
/* AFC960 800857C0 2401008B */   li    $at, 139
/* AFC964 800857C4 16010032 */  bne   $s0, $at, .L80085890
/* AFC968 800857C8 24060001 */   li    $a2, 1
.L800857CC:
/* AFC96C 800857CC 91580074 */  lbu   $t8, 0x74($t2)
/* AFC970 800857D0 240500FF */  li    $a1, 255
/* AFC974 800857D4 00104040 */  sll   $t0, $s0, 1
/* AFC978 800857D8 14B80010 */  bne   $a1, $t8, .L8008581C
/* AFC97C 800857DC 24040006 */   li    $a0, 6
/* AFC980 800857E0 24050001 */  li    $a1, 1
/* AFC984 800857E4 AFA8003C */  sw    $t0, 0x3c($sp)
/* AFC988 800857E8 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFC98C 800857EC AFAA0034 */   sw    $t2, 0x34($sp)
/* AFC990 800857F0 8FA8003C */  lw    $t0, 0x3c($sp)
/* AFC994 800857F4 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFC998 800857F8 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFC99C 800857FC 912F0000 */  lbu   $t7, ($t1)
/* AFC9A0 80085800 3C0E8012 */  lui   $t6, %hi(sAmmoRefillCounts-0x8a*2)
/* AFC9A4 80085804 01C87021 */  addu  $t6, $t6, $t0
/* AFC9A8 80085808 85CE5974 */  lh    $t6, %lo(sAmmoRefillCounts-0x8a*2)($t6)
/* AFC9AC 8008580C 022F6821 */  addu  $t5, $s1, $t7
/* AFC9B0 80085810 8FAA0034 */  lw    $t2, 0x34($sp)
/* AFC9B4 80085814 10000019 */  b     .L8008587C
/* AFC9B8 80085818 A1AE008C */   sb    $t6, 0x8c($t5)
.L8008581C:
/* AFC9BC 8008581C 912C0000 */  lbu   $t4, ($t1)
/* AFC9C0 80085820 3C188012 */  lui   $t8, %hi(sAmmoRefillCounts-0x8a*2)
/* AFC9C4 80085824 0308C021 */  addu  $t8, $t8, $t0
/* AFC9C8 80085828 022C1021 */  addu  $v0, $s1, $t4
/* AFC9CC 8008582C 8059008C */  lb    $t9, 0x8c($v0)
/* AFC9D0 80085830 87185974 */  lh    $t8, %lo(sAmmoRefillCounts-0x8a*2)($t8)
/* AFC9D4 80085834 3C0D8012 */  lui   $t5, %hi(gUpgradeMasks+0x18) # $t5, 0x8012
/* AFC9D8 80085838 3C038012 */  lui   $v1, %hi(gUpgradeCapacities+0x30)
/* AFC9DC 8008583C 03387821 */  addu  $t7, $t9, $t8
/* AFC9E0 80085840 A04F008C */  sb    $t7, 0x8c($v0)
/* AFC9E4 80085844 8DAD71C8 */  lw    $t5, %lo(gUpgradeMasks+0x18)($t5)
/* AFC9E8 80085848 8E2E00A0 */  lw    $t6, 0xa0($s1)
/* AFC9EC 8008584C 3C198012 */  lui   $t9, %hi(gUpgradeShifts+6) # $t9, 0x8012
/* AFC9F0 80085850 933971FA */  lbu   $t9, %lo(gUpgradeShifts+6)($t9)
/* AFC9F4 80085854 01CD6024 */  and   $t4, $t6, $t5
/* AFC9F8 80085858 804E008C */  lb    $t6, 0x8c($v0)
/* AFC9FC 8008585C 032CC007 */  srav  $t8, $t4, $t9
/* AFCA00 80085860 00187840 */  sll   $t7, $t8, 1
/* AFCA04 80085864 006F1821 */  addu  $v1, $v1, $t7
/* AFCA08 80085868 9463722C */  lhu   $v1, %lo(gUpgradeCapacities+0x30)($v1)
/* AFCA0C 8008586C 006E082A */  slt   $at, $v1, $t6
/* AFCA10 80085870 10200002 */  beqz  $at, .L8008587C
/* AFCA14 80085874 00000000 */   nop   
/* AFCA18 80085878 A043008C */  sb    $v1, 0x8c($v0)
.L8008587C:
/* AFCA1C 8008587C 3C0B8012 */  lui   $t3, %hi(gItemSlots) # $t3, 0x8012
/* AFCA20 80085880 256B7464 */  addiu $t3, %lo(gItemSlots) # addiu $t3, $t3, 0x7464
/* AFCA24 80085884 A3A0004F */  sb    $zero, 0x4f($sp)
/* AFCA28 80085888 100002AB */  b     .L80086338
/* AFCA2C 8008588C 00008025 */   move  $s0, $zero
.L80085890:
/* AFCA30 80085890 14D00029 */  bne   $a2, $s0, .L80085938
/* AFCA34 80085894 2401008C */   li    $at, 140
/* AFCA38 80085898 914D0074 */  lbu   $t5, 0x74($t2)
/* AFCA3C 8008589C 240500FF */  li    $a1, 255
/* AFCA40 800858A0 24040007 */  li    $a0, 7
/* AFCA44 800858A4 14AD000E */  bne   $a1, $t5, .L800858E0
/* AFCA48 800858A8 00062C00 */   sll   $a1, $a2, 0x10
/* AFCA4C 800858AC 00052C03 */  sra   $a1, $a1, 0x10
/* AFCA50 800858B0 AFAA0034 */  sw    $t2, 0x34($sp)
/* AFCA54 800858B4 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFCA58 800858B8 AFAB003C */   sw    $t3, 0x3c($sp)
/* AFCA5C 800858BC 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFCA60 800858C0 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFCA64 800858C4 912C0001 */  lbu   $t4, 1($t1)
/* AFCA68 800858C8 24060001 */  li    $a2, 1
/* AFCA6C 800858CC 8FAA0034 */  lw    $t2, 0x34($sp)
/* AFCA70 800858D0 022CC821 */  addu  $t9, $s1, $t4
/* AFCA74 800858D4 8FAB003C */  lw    $t3, 0x3c($sp)
/* AFCA78 800858D8 10000297 */  b     .L80086338
/* AFCA7C 800858DC A326008C */   sb    $a2, 0x8c($t9)
.L800858E0:
/* AFCA80 800858E0 91380001 */  lbu   $t8, 1($t1)
/* AFCA84 800858E4 3C0C8012 */  lui   $t4, %hi(gUpgradeMasks+0x1c) # $t4, 0x8012
/* AFCA88 800858E8 3C038012 */  lui   $v1, %hi(gUpgradeCapacities+0x38)
/* AFCA8C 800858EC 02381021 */  addu  $v0, $s1, $t8
/* AFCA90 800858F0 804F008C */  lb    $t7, 0x8c($v0)
/* AFCA94 800858F4 3C188012 */  lui   $t8, %hi(gUpgradeShifts+7) # $t8, 0x8012
/* AFCA98 800858F8 25EE0001 */  addiu $t6, $t7, 1
/* AFCA9C 800858FC A04E008C */  sb    $t6, 0x8c($v0)
/* AFCAA0 80085900 8D8C71CC */  lw    $t4, %lo(gUpgradeMasks+0x1c)($t4)
/* AFCAA4 80085904 8E2D00A0 */  lw    $t5, 0xa0($s1)
/* AFCAA8 80085908 931871FB */  lbu   $t8, %lo(gUpgradeShifts+7)($t8)
/* AFCAAC 8008590C 01ACC824 */  and   $t9, $t5, $t4
/* AFCAB0 80085910 03197807 */  srav  $t7, $t9, $t8
/* AFCAB4 80085914 000F7040 */  sll   $t6, $t7, 1
/* AFCAB8 80085918 006E1821 */  addu  $v1, $v1, $t6
/* AFCABC 8008591C 94637234 */  lhu   $v1, %lo(gUpgradeCapacities+0x38)($v1)
/* AFCAC0 80085920 804D008C */  lb    $t5, 0x8c($v0)
/* AFCAC4 80085924 006D082A */  slt   $at, $v1, $t5
/* AFCAC8 80085928 50200284 */  beql  $at, $zero, .L8008633C
/* AFCACC 8008592C 91470074 */   lbu   $a3, 0x74($t2)
/* AFCAD0 80085930 10000281 */  b     .L80086338
/* AFCAD4 80085934 A043008C */   sb    $v1, 0x8c($v0)
.L80085938:
/* AFCAD8 80085938 12010003 */  beq   $s0, $at, .L80085948
/* AFCADC 8008593C 2401008D */   li    $at, 141
/* AFCAE0 80085940 5601003D */  bnel  $s0, $at, .L80085A38
/* AFCAE4 80085944 24010002 */   li    $at, 2
.L80085948:
/* AFCAE8 80085948 914C0074 */  lbu   $t4, 0x74($t2)
/* AFCAEC 8008594C 240500FF */  li    $a1, 255
/* AFCAF0 80085950 00104040 */  sll   $t0, $s0, 1
/* AFCAF4 80085954 14AC0019 */  bne   $a1, $t4, .L800859BC
/* AFCAF8 80085958 24040007 */   li    $a0, 7
/* AFCAFC 8008595C 24050001 */  li    $a1, 1
/* AFCB00 80085960 AFA8003C */  sw    $t0, 0x3c($sp)
/* AFCB04 80085964 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFCB08 80085968 AFAA0034 */   sw    $t2, 0x34($sp)
/* AFCB0C 8008596C 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFCB10 80085970 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFCB14 80085974 8FA8003C */  lw    $t0, 0x3c($sp)
/* AFCB18 80085978 91390001 */  lbu   $t9, 1($t1)
/* AFCB1C 8008597C 3C038012 */  lui   $v1, %hi(sAmmoRefillCounts-0x8c*2)
/* AFCB20 80085980 00681821 */  addu  $v1, $v1, $t0
/* AFCB24 80085984 02391021 */  addu  $v0, $s1, $t9
/* AFCB28 80085988 8058008C */  lb    $t8, 0x8c($v0)
/* AFCB2C 8008598C 84635970 */  lh    $v1, %lo(sAmmoRefillCounts-0x8c*2)($v1)
/* AFCB30 80085990 3C048014 */  lui   $a0, %hi(D_8013DFF8) # $a0, 0x8014
/* AFCB34 80085994 2484DFF8 */  addiu $a0, %lo(D_8013DFF8) # addiu $a0, $a0, -0x2008
/* AFCB38 80085998 03037821 */  addu  $t7, $t8, $v1
/* AFCB3C 8008599C A04F008C */  sb    $t7, 0x8c($v0)
/* AFCB40 800859A0 02002825 */  move  $a1, $s0
/* AFCB44 800859A4 2406008C */  li    $a2, 140
/* AFCB48 800859A8 2607FF74 */  addiu $a3, $s0, -0x8c
/* AFCB4C 800859AC 0C00084C */  jal   osSyncPrintf
/* AFCB50 800859B0 AFA30010 */   sw    $v1, 0x10($sp)
/* AFCB54 800859B4 10000019 */  b     .L80085A1C
/* AFCB58 800859B8 8FAA0034 */   lw    $t2, 0x34($sp)
.L800859BC:
/* AFCB5C 800859BC 912E0001 */  lbu   $t6, 1($t1)
/* AFCB60 800859C0 3C0C8012 */  lui   $t4, %hi(sAmmoRefillCounts-0x8c*2)
/* AFCB64 800859C4 01886021 */  addu  $t4, $t4, $t0
/* AFCB68 800859C8 022E1021 */  addu  $v0, $s1, $t6
/* AFCB6C 800859CC 804D008C */  lb    $t5, 0x8c($v0)
/* AFCB70 800859D0 858C5970 */  lh    $t4, %lo(sAmmoRefillCounts-0x8c*2)($t4)
/* AFCB74 800859D4 3C0F8012 */  lui   $t7, %hi(gUpgradeMasks+0x1c) # $t7, 0x8012
/* AFCB78 800859D8 3C038012 */  lui   $v1, %hi(gUpgradeCapacities+0x38)
/* AFCB7C 800859DC 01ACC821 */  addu  $t9, $t5, $t4
/* AFCB80 800859E0 A059008C */  sb    $t9, 0x8c($v0)
/* AFCB84 800859E4 8DEF71CC */  lw    $t7, %lo(gUpgradeMasks+0x1c)($t7)
/* AFCB88 800859E8 8E3800A0 */  lw    $t8, 0xa0($s1)
/* AFCB8C 800859EC 3C0D8012 */  lui   $t5, %hi(gUpgradeShifts+7) # $t5, 0x8012
/* AFCB90 800859F0 91AD71FB */  lbu   $t5, %lo(gUpgradeShifts+7)($t5)
/* AFCB94 800859F4 030F7024 */  and   $t6, $t8, $t7
/* AFCB98 800859F8 8058008C */  lb    $t8, 0x8c($v0)
/* AFCB9C 800859FC 01AE6007 */  srav  $t4, $t6, $t5
/* AFCBA0 80085A00 000CC840 */  sll   $t9, $t4, 1
/* AFCBA4 80085A04 00791821 */  addu  $v1, $v1, $t9
/* AFCBA8 80085A08 94637234 */  lhu   $v1, %lo(gUpgradeCapacities+0x38)($v1)
/* AFCBAC 80085A0C 0078082A */  slt   $at, $v1, $t8
/* AFCBB0 80085A10 50200003 */  beql  $at, $zero, .L80085A20
/* AFCBB4 80085A14 240F0001 */   li    $t7, 1
/* AFCBB8 80085A18 A043008C */  sb    $v1, 0x8c($v0)
.L80085A1C:
/* AFCBBC 80085A1C 240F0001 */  li    $t7, 1
.L80085A20:
/* AFCBC0 80085A20 3C0B8012 */  lui   $t3, %hi(gItemSlots+1) # $t3, 0x8012
/* AFCBC4 80085A24 256B7465 */  addiu $t3, %lo(gItemSlots+1) # addiu $t3, $t3, 0x7465
/* AFCBC8 80085A28 A3AF004F */  sb    $t7, 0x4f($sp)
/* AFCBCC 80085A2C 10000242 */  b     .L80086338
/* AFCBD0 80085A30 24100001 */   li    $s0, 1
/* AFCBD4 80085A34 24010002 */  li    $at, 2
.L80085A38:
/* AFCBD8 80085A38 1601001D */  bne   $s0, $at, .L80085AB0
/* AFCBDC 80085A3C 3C048014 */   lui   $a0, %hi(D_8013E01C) # $a0, 0x8014
/* AFCBE0 80085A40 0C00084C */  jal   osSyncPrintf
/* AFCBE4 80085A44 2484E01C */   addiu $a0, %lo(D_8013E01C) # addiu $a0, $a0, -0x1fe4
/* AFCBE8 80085A48 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFCBEC 80085A4C 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFCBF0 80085A50 912E0002 */  lbu   $t6, 2($t1)
/* AFCBF4 80085A54 3C0C8012 */  lui   $t4, %hi(gUpgradeMasks+4) # $t4, 0x8012
/* AFCBF8 80085A58 3C188012 */  lui   $t8, %hi(gUpgradeShifts+1) # $t8, 0x8012
/* AFCBFC 80085A5C 022E1821 */  addu  $v1, $s1, $t6
/* AFCC00 80085A60 8064008C */  lb    $a0, 0x8c($v1)
/* AFCC04 80085A64 3C028012 */  lui   $v0, %hi(gUpgradeCapacities+8)
/* AFCC08 80085A68 24840001 */  addiu $a0, $a0, 1
/* AFCC0C 80085A6C 00042600 */  sll   $a0, $a0, 0x18
/* AFCC10 80085A70 00042603 */  sra   $a0, $a0, 0x18
/* AFCC14 80085A74 A064008C */  sb    $a0, 0x8c($v1)
/* AFCC18 80085A78 8D8C71B4 */  lw    $t4, %lo(gUpgradeMasks+4)($t4)
/* AFCC1C 80085A7C 8E2D00A0 */  lw    $t5, 0xa0($s1)
/* AFCC20 80085A80 931871F5 */  lbu   $t8, %lo(gUpgradeShifts+1)($t8)
/* AFCC24 80085A84 01ACC824 */  and   $t9, $t5, $t4
/* AFCC28 80085A88 03197807 */  srav  $t7, $t9, $t8
/* AFCC2C 80085A8C 000F7040 */  sll   $t6, $t7, 1
/* AFCC30 80085A90 004E1021 */  addu  $v0, $v0, $t6
/* AFCC34 80085A94 94427204 */  lhu   $v0, %lo(gUpgradeCapacities+8)($v0)
/* AFCC38 80085A98 0044082A */  slt   $at, $v0, $a0
/* AFCC3C 80085A9C 10200002 */  beqz  $at, .L80085AA8
/* AFCC40 80085AA0 00000000 */   nop   
/* AFCC44 80085AA4 A062008C */  sb    $v0, 0x8c($v1)
.L80085AA8:
/* AFCC48 80085AA8 10000232 */  b     .L80086374
/* AFCC4C 80085AAC 240200FF */   li    $v0, 255
.L80085AB0:
/* AFCC50 80085AB0 2A01008E */  slti  $at, $s0, 0x8e
/* AFCC54 80085AB4 1420001E */  bnez  $at, .L80085B30
/* AFCC58 80085AB8 2A010092 */   slti  $at, $s0, 0x92
/* AFCC5C 80085ABC 1020001C */  beqz  $at, .L80085B30
/* AFCC60 80085AC0 0010C840 */   sll   $t9, $s0, 1
/* AFCC64 80085AC4 912D0002 */  lbu   $t5, 2($t1)
/* AFCC68 80085AC8 3C188012 */  lui   $t8, %hi(sAmmoRefillCounts-0x8e*2)
/* AFCC6C 80085ACC 0319C021 */  addu  $t8, $t8, $t9
/* AFCC70 80085AD0 022D1821 */  addu  $v1, $s1, $t5
/* AFCC74 80085AD4 806C008C */  lb    $t4, 0x8c($v1)
/* AFCC78 80085AD8 8718596C */  lh    $t8, %lo(sAmmoRefillCounts-0x8e*2)($t8)
/* AFCC7C 80085ADC 3C0E8012 */  lui   $t6, %hi(gUpgradeMasks+4) # $t6, 0x8012
/* AFCC80 80085AE0 3C198012 */  lui   $t9, %hi(gUpgradeShifts+1) # $t9, 0x8012
/* AFCC84 80085AE4 01982021 */  addu  $a0, $t4, $t8
/* AFCC88 80085AE8 00042600 */  sll   $a0, $a0, 0x18
/* AFCC8C 80085AEC 00042603 */  sra   $a0, $a0, 0x18
/* AFCC90 80085AF0 A064008C */  sb    $a0, 0x8c($v1)
/* AFCC94 80085AF4 8DCE71B4 */  lw    $t6, %lo(gUpgradeMasks+4)($t6)
/* AFCC98 80085AF8 8E2F00A0 */  lw    $t7, 0xa0($s1)
/* AFCC9C 80085AFC 933971F5 */  lbu   $t9, %lo(gUpgradeShifts+1)($t9)
/* AFCCA0 80085B00 3C028012 */  lui   $v0, %hi(gUpgradeCapacities+8)
/* AFCCA4 80085B04 01EE6824 */  and   $t5, $t7, $t6
/* AFCCA8 80085B08 032D6007 */  srav  $t4, $t5, $t9
/* AFCCAC 80085B0C 000CC040 */  sll   $t8, $t4, 1
/* AFCCB0 80085B10 00581021 */  addu  $v0, $v0, $t8
/* AFCCB4 80085B14 94427204 */  lhu   $v0, %lo(gUpgradeCapacities+8)($v0)
/* AFCCB8 80085B18 0044082A */  slt   $at, $v0, $a0
/* AFCCBC 80085B1C 10200002 */  beqz  $at, .L80085B28
/* AFCCC0 80085B20 00000000 */   nop   
/* AFCCC4 80085B24 A062008C */  sb    $v0, 0x8c($v1)
.L80085B28:
/* AFCCC8 80085B28 10000212 */  b     .L80086374
/* AFCCCC 80085B2C 240200FF */   li    $v0, 255
.L80085B30:
/* AFCCD0 80085B30 24010009 */  li    $at, 9
/* AFCCD4 80085B34 5601001B */  bnel  $s0, $at, .L80085BA4
/* AFCCD8 80085B38 24010096 */   li    $at, 150
/* AFCCDC 80085B3C 914F0074 */  lbu   $t7, 0x74($t2)
/* AFCCE0 80085B40 240500FF */  li    $a1, 255
/* AFCCE4 80085B44 240D0009 */  li    $t5, 9
/* AFCCE8 80085B48 54AF0009 */  bnel  $a1, $t7, .L80085B70
/* AFCCEC 80085B4C 912C0009 */   lbu   $t4, 9($t1)
/* AFCCF0 80085B50 912E0009 */  lbu   $t6, 9($t1)
/* AFCCF4 80085B54 2419000A */  li    $t9, 10
/* AFCCF8 80085B58 240200FF */  li    $v0, 255
/* AFCCFC 80085B5C 022E1821 */  addu  $v1, $s1, $t6
/* AFCD00 80085B60 A06D0074 */  sb    $t5, 0x74($v1)
/* AFCD04 80085B64 10000203 */  b     .L80086374
/* AFCD08 80085B68 A079008C */   sb    $t9, 0x8c($v1)
/* AFCD0C 80085B6C 912C0009 */  lbu   $t4, 9($t1)
.L80085B70:
/* AFCD10 80085B70 240D0032 */  li    $t5, 50
/* AFCD14 80085B74 022C1821 */  addu  $v1, $s1, $t4
/* AFCD18 80085B78 8078008C */  lb    $t8, 0x8c($v1)
/* AFCD1C 80085B7C 270F000A */  addiu $t7, $t8, 0xa
/* AFCD20 80085B80 A06F008C */  sb    $t7, 0x8c($v1)
/* AFCD24 80085B84 806E008C */  lb    $t6, 0x8c($v1)
/* AFCD28 80085B88 29C10033 */  slti  $at, $t6, 0x33
/* AFCD2C 80085B8C 14200002 */  bnez  $at, .L80085B98
/* AFCD30 80085B90 00000000 */   nop   
/* AFCD34 80085B94 A06D008C */  sb    $t5, 0x8c($v1)
.L80085B98:
/* AFCD38 80085B98 100001F6 */  b     .L80086374
/* AFCD3C 80085B9C 240200FF */   li    $v0, 255
/* AFCD40 80085BA0 24010096 */  li    $at, 150
.L80085BA4:
/* AFCD44 80085BA4 12010003 */  beq   $s0, $at, .L80085BB4
/* AFCD48 80085BA8 24010097 */   li    $at, 151
/* AFCD4C 80085BAC 56010022 */  bnel  $s0, $at, .L80085C38
/* AFCD50 80085BB0 2A010092 */   slti  $at, $s0, 0x92
.L80085BB4:
/* AFCD54 80085BB4 91590074 */  lbu   $t9, 0x74($t2)
/* AFCD58 80085BB8 240500FF */  li    $a1, 255
/* AFCD5C 80085BBC 00104040 */  sll   $t0, $s0, 1
/* AFCD60 80085BC0 14B9000D */  bne   $a1, $t9, .L80085BF8
/* AFCD64 80085BC4 3C188012 */   lui   $t8, %hi(sAmmoRefillCounts-0x8e*2)
/* AFCD68 80085BC8 912C0009 */  lbu   $t4, 9($t1)
/* AFCD6C 80085BCC 24180009 */  li    $t8, 9
/* AFCD70 80085BD0 3C0E8012 */  lui   $t6, %hi(sAmmoRefillCounts-0x8e*2)
/* AFCD74 80085BD4 022C1821 */  addu  $v1, $s1, $t4
/* AFCD78 80085BD8 A0780074 */  sb    $t8, 0x74($v1)
/* AFCD7C 80085BDC 01C87021 */  addu  $t6, $t6, $t0
/* AFCD80 80085BE0 85CE596C */  lh    $t6, %lo(sAmmoRefillCounts-0x8e*2)($t6)
/* AFCD84 80085BE4 806F008C */  lb    $t7, 0x8c($v1)
/* AFCD88 80085BE8 240200FF */  li    $v0, 255
/* AFCD8C 80085BEC 01EE6821 */  addu  $t5, $t7, $t6
/* AFCD90 80085BF0 100001E0 */  b     .L80086374
/* AFCD94 80085BF4 A06D008C */   sb    $t5, 0x8c($v1)
.L80085BF8:
/* AFCD98 80085BF8 91390009 */  lbu   $t9, 9($t1)
/* AFCD9C 80085BFC 0308C021 */  addu  $t8, $t8, $t0
/* AFCDA0 80085C00 8718596C */  lh    $t8, %lo(sAmmoRefillCounts-0x8e*2)($t8)
/* AFCDA4 80085C04 02391821 */  addu  $v1, $s1, $t9
/* AFCDA8 80085C08 806C008C */  lb    $t4, 0x8c($v1)
/* AFCDAC 80085C0C 240D0032 */  li    $t5, 50
/* AFCDB0 80085C10 01987821 */  addu  $t7, $t4, $t8
/* AFCDB4 80085C14 A06F008C */  sb    $t7, 0x8c($v1)
/* AFCDB8 80085C18 806E008C */  lb    $t6, 0x8c($v1)
/* AFCDBC 80085C1C 29C10033 */  slti  $at, $t6, 0x33
/* AFCDC0 80085C20 14200002 */  bnez  $at, .L80085C2C
/* AFCDC4 80085C24 00000000 */   nop   
/* AFCDC8 80085C28 A06D008C */  sb    $t5, 0x8c($v1)
.L80085C2C:
/* AFCDCC 80085C2C 100001D1 */  b     .L80086374
/* AFCDD0 80085C30 240200FF */   li    $v0, 255
/* AFCDD4 80085C34 2A010092 */  slti  $at, $s0, 0x92
.L80085C38:
/* AFCDD8 80085C38 1420002B */  bnez  $at, .L80085CE8
/* AFCDDC 80085C3C 2A010095 */   slti  $at, $s0, 0x95
/* AFCDE0 80085C40 10200029 */  beqz  $at, .L80085CE8
/* AFCDE4 80085C44 0010C040 */   sll   $t8, $s0, 1
/* AFCDE8 80085C48 91390003 */  lbu   $t9, 3($t1)
/* AFCDEC 80085C4C 3C0F8012 */  lui   $t7, %hi(sAmmoRefillCounts-0x8e*2)
/* AFCDF0 80085C50 01F87821 */  addu  $t7, $t7, $t8
/* AFCDF4 80085C54 02391821 */  addu  $v1, $s1, $t9
/* AFCDF8 80085C58 806C008C */  lb    $t4, 0x8c($v1)
/* AFCDFC 80085C5C 85EF596C */  lh    $t7, %lo(sAmmoRefillCounts-0x8e*2)($t7)
/* AFCE00 80085C60 3C028012 */  lui   $v0, %hi(gUpgradeMasks) # $v0, 0x8012
/* AFCE04 80085C64 3C048012 */  lui   $a0, %hi(gUpgradeShifts) # $a0, 0x8012
/* AFCE08 80085C68 018F7021 */  addu  $t6, $t4, $t7
/* AFCE0C 80085C6C A06E008C */  sb    $t6, 0x8c($v1)
/* AFCE10 80085C70 8E2D00A0 */  lw    $t5, 0xa0($s1)
/* AFCE14 80085C74 8C4271B0 */  lw    $v0, %lo(gUpgradeMasks)($v0)
/* AFCE18 80085C78 908471F4 */  lbu   $a0, %lo(gUpgradeShifts)($a0)
/* AFCE1C 80085C7C 3C068012 */  lui   $a2, %hi(gUpgradeCapacities)
/* AFCE20 80085C80 01A2C824 */  and   $t9, $t5, $v0
/* AFCE24 80085C84 0099C007 */  srav  $t8, $t9, $a0
/* AFCE28 80085C88 00186040 */  sll   $t4, $t8, 1
/* AFCE2C 80085C8C 00CC3021 */  addu  $a2, $a2, $t4
/* AFCE30 80085C90 94C671FC */  lhu   $a2, %lo(gUpgradeCapacities)($a2)
/* AFCE34 80085C94 8065008C */  lb    $a1, 0x8c($v1)
/* AFCE38 80085C98 3C0F8016 */  lui   $t7, %hi(gSaveContext+0xa0) # $t7, 0x8016
/* AFCE3C 80085C9C 00A6082A */  slt   $at, $a1, $a2
/* AFCE40 80085CA0 50200004 */  beql  $at, $zero, .L80085CB4
/* AFCE44 80085CA4 A066008C */   sb    $a2, 0x8c($v1)
/* AFCE48 80085CA8 04A1000A */  bgez  $a1, .L80085CD4
/* AFCE4C 80085CAC 00000000 */   nop   
/* AFCE50 80085CB0 A066008C */  sb    $a2, 0x8c($v1)
.L80085CB4:
/* AFCE54 80085CB4 8DEFE700 */  lw    $t7, %lo(gSaveContext+0xa0)($t7)
/* AFCE58 80085CB8 3C068012 */  lui   $a2, %hi(gUpgradeCapacities)
/* AFCE5C 80085CBC 8065008C */  lb    $a1, 0x8c($v1)
/* AFCE60 80085CC0 01E27024 */  and   $t6, $t7, $v0
/* AFCE64 80085CC4 008E6807 */  srav  $t5, $t6, $a0
/* AFCE68 80085CC8 000DC840 */  sll   $t9, $t5, 1
/* AFCE6C 80085CCC 00D93021 */  addu  $a2, $a2, $t9
/* AFCE70 80085CD0 94C671FC */  lhu   $a2, %lo(gUpgradeCapacities)($a2)
.L80085CD4:
/* AFCE74 80085CD4 3C048014 */  lui   $a0, %hi(D_8013E048) # $a0, 0x8014
/* AFCE78 80085CD8 0C00084C */  jal   osSyncPrintf
/* AFCE7C 80085CDC 2484E048 */   addiu $a0, %lo(D_8013E048) # addiu $a0, $a0, -0x1fb8
/* AFCE80 80085CE0 100001A4 */  b     .L80086374
/* AFCE84 80085CE4 24020003 */   li    $v0, 3
.L80085CE8:
/* AFCE88 80085CE8 24010006 */  li    $at, 6
/* AFCE8C 80085CEC 1601000D */  bne   $s0, $at, .L80085D24
/* AFCE90 80085CF0 24040005 */   li    $a0, 5
/* AFCE94 80085CF4 0C025EE7 */  jal   Inventory_ChangeUpgrade
/* AFCE98 80085CF8 24050001 */   li    $a1, 1
/* AFCE9C 80085CFC 3C098012 */  lui   $t1, %hi(gItemSlots) # $t1, 0x8012
/* AFCEA0 80085D00 25297464 */  addiu $t1, %lo(gItemSlots) # addiu $t1, $t1, 0x7464
/* AFCEA4 80085D04 91380006 */  lbu   $t8, 6($t1)
/* AFCEA8 80085D08 240C0006 */  li    $t4, 6
/* AFCEAC 80085D0C 240F001E */  li    $t7, 30
/* AFCEB0 80085D10 02381821 */  addu  $v1, $s1, $t8
/* AFCEB4 80085D14 A06C0074 */  sb    $t4, 0x74($v1)
/* AFCEB8 80085D18 A06F008C */  sb    $t7, 0x8c($v1)
/* AFCEBC 80085D1C 10000195 */  b     .L80086374
/* AFCEC0 80085D20 240200FF */   li    $v0, 255
.L80085D24:
/* AFCEC4 80085D24 24010058 */  li    $at, 88
/* AFCEC8 80085D28 56010020 */  bnel  $s0, $at, .L80085DAC
/* AFCECC 80085D2C 24010095 */   li    $at, 149
/* AFCED0 80085D30 912E0006 */  lbu   $t6, 6($t1)
/* AFCED4 80085D34 3C0C8012 */  lui   $t4, %hi(gUpgradeMasks+0x14) # $t4, 0x8012
/* AFCED8 80085D38 3C028012 */  lui   $v0, %hi(gUpgradeCapacities+0x28)
/* AFCEDC 80085D3C 022E1821 */  addu  $v1, $s1, $t6
/* AFCEE0 80085D40 806D008C */  lb    $t5, 0x8c($v1)
/* AFCEE4 80085D44 3C0E8012 */  lui   $t6, %hi(gUpgradeShifts+5) # $t6, 0x8012
/* AFCEE8 80085D48 25B90005 */  addiu $t9, $t5, 5
/* AFCEEC 80085D4C A079008C */  sb    $t9, 0x8c($v1)
/* AFCEF0 80085D50 8D8C71C4 */  lw    $t4, %lo(gUpgradeMasks+0x14)($t4)
/* AFCEF4 80085D54 8E3800A0 */  lw    $t8, 0xa0($s1)
/* AFCEF8 80085D58 91CE71F9 */  lbu   $t6, %lo(gUpgradeShifts+5)($t6)
/* AFCEFC 80085D5C 030C7824 */  and   $t7, $t8, $t4
/* AFCF00 80085D60 01CF6807 */  srav  $t5, $t7, $t6
/* AFCF04 80085D64 000DC840 */  sll   $t9, $t5, 1
/* AFCF08 80085D68 00591021 */  addu  $v0, $v0, $t9
/* AFCF0C 80085D6C 94427224 */  lhu   $v0, %lo(gUpgradeCapacities+0x28)($v0)
/* AFCF10 80085D70 8078008C */  lb    $t8, 0x8c($v1)
/* AFCF14 80085D74 0302082A */  slt   $at, $t8, $v0
/* AFCF18 80085D78 54200003 */  bnezl $at, .L80085D88
/* AFCF1C 80085D7C 96230EF2 */   lhu   $v1, 0xef2($s1)
/* AFCF20 80085D80 A062008C */  sb    $v0, 0x8c($v1)
/* AFCF24 80085D84 96230EF2 */  lhu   $v1, 0xef2($s1)
.L80085D88:
/* AFCF28 80085D88 240200FF */  li    $v0, 255
/* AFCF2C 80085D8C 306C0008 */  andi  $t4, $v1, 8
/* AFCF30 80085D90 15800003 */  bnez  $t4, .L80085DA0
/* AFCF34 80085D94 346F0008 */   ori   $t7, $v1, 8
/* AFCF38 80085D98 10000176 */  b     .L80086374
/* AFCF3C 80085D9C A62F0EF2 */   sh    $t7, 0xef2($s1)
.L80085DA0:
/* AFCF40 80085DA0 10000174 */  b     .L80086374
/* AFCF44 80085DA4 24020058 */   li    $v0, 88
/* AFCF48 80085DA8 24010095 */  li    $at, 149
.L80085DAC:
/* AFCF4C 80085DAC 56010020 */  bnel  $s0, $at, .L80085E30
/* AFCF50 80085DB0 24010007 */   li    $at, 7
/* AFCF54 80085DB4 912E0006 */  lbu   $t6, 6($t1)
/* AFCF58 80085DB8 3C0C8012 */  lui   $t4, %hi(gUpgradeMasks+0x14) # $t4, 0x8012
/* AFCF5C 80085DBC 3C028012 */  lui   $v0, %hi(gUpgradeCapacities+0x28)
/* AFCF60 80085DC0 022E1821 */  addu  $v1, $s1, $t6
/* AFCF64 80085DC4 806D008C */  lb    $t5, 0x8c($v1)
/* AFCF68 80085DC8 3C0E8012 */  lui   $t6, %hi(gUpgradeShifts+5) # $t6, 0x8012
/* AFCF6C 80085DCC 25B9001E */  addiu $t9, $t5, 0x1e
/* AFCF70 80085DD0 A079008C */  sb    $t9, 0x8c($v1)
/* AFCF74 80085DD4 8D8C71C4 */  lw    $t4, %lo(gUpgradeMasks+0x14)($t4)
/* AFCF78 80085DD8 8E3800A0 */  lw    $t8, 0xa0($s1)
/* AFCF7C 80085DDC 91CE71F9 */  lbu   $t6, %lo(gUpgradeShifts+5)($t6)
/* AFCF80 80085DE0 030C7824 */  and   $t7, $t8, $t4
/* AFCF84 80085DE4 01CF6807 */  srav  $t5, $t7, $t6
/* AFCF88 80085DE8 000DC840 */  sll   $t9, $t5, 1
/* AFCF8C 80085DEC 00591021 */  addu  $v0, $v0, $t9
/* AFCF90 80085DF0 94427224 */  lhu   $v0, %lo(gUpgradeCapacities+0x28)($v0)
/* AFCF94 80085DF4 8078008C */  lb    $t8, 0x8c($v1)
/* AFCF98 80085DF8 0302082A */  slt   $at, $t8, $v0
/* AFCF9C 80085DFC 54200003 */  bnezl $at, .L80085E0C
/* AFCFA0 80085E00 96230EF2 */   lhu   $v1, 0xef2($s1)
/* AFCFA4 80085E04 A062008C */  sb    $v0, 0x8c($v1)
/* AFCFA8 80085E08 96230EF2 */  lhu   $v1, 0xef2($s1)
.L80085E0C:
/* AFCFAC 80085E0C 240200FF */  li    $v0, 255
/* AFCFB0 80085E10 306C0008 */  andi  $t4, $v1, 8
/* AFCFB4 80085E14 15800003 */  bnez  $t4, .L80085E24
/* AFCFB8 80085E18 346F0008 */   ori   $t7, $v1, 8
/* AFCFBC 80085E1C 10000155 */  b     .L80086374
/* AFCFC0 80085E20 A62F0EF2 */   sh    $t7, 0xef2($s1)
.L80085E24:
/* AFCFC4 80085E24 10000153 */  b     .L80086374
/* AFCFC8 80085E28 24020058 */   li    $v0, 88
/* AFCFCC 80085E2C 24010007 */  li    $at, 7
.L80085E30:
/* AFCFD0 80085E30 56010008 */  bnel  $s0, $at, .L80085E54
/* AFCFD4 80085E34 24010008 */   li    $at, 8
/* AFCFD8 80085E38 912D0007 */  lbu   $t5, 7($t1)
/* AFCFDC 80085E3C 240E0007 */  li    $t6, 7
/* AFCFE0 80085E40 240200FF */  li    $v0, 255
/* AFCFE4 80085E44 022DC821 */  addu  $t9, $s1, $t5
/* AFCFE8 80085E48 1000014A */  b     .L80086374
/* AFCFEC 80085E4C A32E0074 */   sb    $t6, 0x74($t9)
/* AFCFF0 80085E50 24010008 */  li    $at, 8
.L80085E54:
/* AFCFF4 80085E54 5601001A */  bnel  $s0, $at, .L80085EC0
/* AFCFF8 80085E58 24010010 */   li    $at, 16
/* AFCFFC 80085E5C 912C0008 */  lbu   $t4, 8($t1)
/* AFD000 80085E60 24180008 */  li    $t8, 8
/* AFD004 80085E64 24020001 */  li    $v0, 1
/* AFD008 80085E68 022C7821 */  addu  $t7, $s1, $t4
/* AFD00C 80085E6C A1F80074 */  sb    $t8, 0x74($t7)
/* AFD010 80085E70 02221821 */  addu  $v1, $s1, $v0
.L80085E74:
/* AFD014 80085E74 906D0068 */  lbu   $t5, 0x68($v1)
/* AFD018 80085E78 24010007 */  li    $at, 7
/* AFD01C 80085E7C 240E0008 */  li    $t6, 8
/* AFD020 80085E80 15A10006 */  bne   $t5, $at, .L80085E9C
/* AFD024 80085E84 3045FFFF */   andi  $a1, $v0, 0xffff
/* AFD028 80085E88 A06E0068 */  sb    $t6, 0x68($v1)
/* AFD02C 80085E8C 8FA40048 */  lw    $a0, 0x48($sp)
/* AFD030 80085E90 0C02129B */  jal   Interface_LoadItemIcon1
/* AFD034 80085E94 A7A20046 */   sh    $v0, 0x46($sp)
/* AFD038 80085E98 87A20046 */  lh    $v0, 0x46($sp)
.L80085E9C:
/* AFD03C 80085E9C 24420001 */  addiu $v0, $v0, 1
/* AFD040 80085EA0 00021400 */  sll   $v0, $v0, 0x10
/* AFD044 80085EA4 00021403 */  sra   $v0, $v0, 0x10
/* AFD048 80085EA8 28410004 */  slti  $at, $v0, 4
/* AFD04C 80085EAC 5420FFF1 */  bnezl $at, .L80085E74
/* AFD050 80085EB0 02221821 */   addu  $v1, $s1, $v0
/* AFD054 80085EB4 1000012F */  b     .L80086374
/* AFD058 80085EB8 240200FF */   li    $v0, 255
/* AFD05C 80085EBC 24010010 */  li    $at, 16
.L80085EC0:
/* AFD060 80085EC0 5601001E */  bnel  $s0, $at, .L80085F3C
/* AFD064 80085EC4 2401007A */   li    $at, 122
/* AFD068 80085EC8 91590074 */  lbu   $t9, 0x74($t2)
/* AFD06C 80085ECC 240500FF */  li    $a1, 255
/* AFD070 80085ED0 54B9000E */  bnel  $a1, $t9, .L80085F0C
/* AFD074 80085ED4 912C0010 */   lbu   $t4, 0x10($t1)
/* AFD078 80085ED8 91780000 */  lbu   $t8, ($t3)
/* AFD07C 80085EDC 93AC004F */  lbu   $t4, 0x4f($sp)
/* AFD080 80085EE0 240200FF */  li    $v0, 255
/* AFD084 80085EE4 02387821 */  addu  $t7, $s1, $t8
/* AFD088 80085EE8 A1EC0074 */  sb    $t4, 0x74($t7)
/* AFD08C 80085EEC 912D0010 */  lbu   $t5, 0x10($t1)
/* AFD090 80085EF0 022D7021 */  addu  $t6, $s1, $t5
/* AFD094 80085EF4 A1C6008C */  sb    $a2, 0x8c($t6)
/* AFD098 80085EF8 91390011 */  lbu   $t9, 0x11($t1)
/* AFD09C 80085EFC 0239C021 */  addu  $t8, $s1, $t9
/* AFD0A0 80085F00 1000011C */  b     .L80086374
/* AFD0A4 80085F04 A306008C */   sb    $a2, 0x8c($t8)
/* AFD0A8 80085F08 912C0010 */  lbu   $t4, 0x10($t1)
.L80085F0C:
/* AFD0AC 80085F0C 912E0011 */  lbu   $t6, 0x11($t1)
/* AFD0B0 80085F10 022C1021 */  addu  $v0, $s1, $t4
/* AFD0B4 80085F14 804F008C */  lb    $t7, 0x8c($v0)
/* AFD0B8 80085F18 022E1821 */  addu  $v1, $s1, $t6
/* AFD0BC 80085F1C 25ED0001 */  addiu $t5, $t7, 1
/* AFD0C0 80085F20 A04D008C */  sb    $t5, 0x8c($v0)
/* AFD0C4 80085F24 8079008C */  lb    $t9, 0x8c($v1)
/* AFD0C8 80085F28 27380001 */  addiu $t8, $t9, 1
/* AFD0CC 80085F2C A078008C */  sb    $t8, 0x8c($v1)
/* AFD0D0 80085F30 10000110 */  b     .L80086374
/* AFD0D4 80085F34 240200FF */   li    $v0, 255
/* AFD0D8 80085F38 2401007A */  li    $at, 122
.L80085F3C:
/* AFD0DC 80085F3C 12010003 */  beq   $s0, $at, .L80085F4C
/* AFD0E0 80085F40 24010073 */   li    $at, 115
/* AFD0E4 80085F44 56010008 */  bnel  $s0, $at, .L80085F68
/* AFD0E8 80085F48 24010072 */   li    $at, 114
.L80085F4C:
/* AFD0EC 80085F4C 8E2C00A4 */  lw    $t4, 0xa4($s1)
/* AFD0F0 80085F50 3C011000 */  lui   $at, 0x1000
/* AFD0F4 80085F54 240200FF */  li    $v0, 255
/* AFD0F8 80085F58 01817821 */  addu  $t7, $t4, $at
/* AFD0FC 80085F5C 10000105 */  b     .L80086374
/* AFD100 80085F60 AE2F00A4 */   sw    $t7, 0xa4($s1)
/* AFD104 80085F64 24010072 */  li    $at, 114
.L80085F68:
/* AFD108 80085F68 5601000A */  bnel  $s0, $at, .L80085F94
/* AFD10C 80085F6C 24010083 */   li    $at, 131
/* AFD110 80085F70 862D002E */  lh    $t5, 0x2e($s1)
/* AFD114 80085F74 86390030 */  lh    $t9, 0x30($s1)
/* AFD118 80085F78 240200FF */  li    $v0, 255
/* AFD11C 80085F7C 25AE0010 */  addiu $t6, $t5, 0x10
/* AFD120 80085F80 27380010 */  addiu $t8, $t9, 0x10
/* AFD124 80085F84 A62E002E */  sh    $t6, 0x2e($s1)
/* AFD128 80085F88 100000FA */  b     .L80086374
/* AFD12C 80085F8C A6380030 */   sh    $t8, 0x30($s1)
/* AFD130 80085F90 24010083 */  li    $at, 131
.L80085F94:
/* AFD134 80085F94 16010008 */  bne   $s0, $at, .L80085FB8
/* AFD138 80085F98 3C048014 */   lui   $a0, %hi(D_8013E060) # $a0, 0x8014
/* AFD13C 80085F9C 0C00084C */  jal   osSyncPrintf
/* AFD140 80085FA0 2484E060 */   addiu $a0, %lo(D_8013E060) # addiu $a0, $a0, -0x1fa0
/* AFD144 80085FA4 8FA40048 */  lw    $a0, 0x48($sp)
/* AFD148 80085FA8 0C021C5D */  jal   Health_ChangeBy
/* AFD14C 80085FAC 24050010 */   li    $a1, 16
/* AFD150 80085FB0 100000F0 */  b     .L80086374
/* AFD154 80085FB4 93A2004F */   lbu   $v0, 0x4f($sp)
.L80085FB8:
/* AFD158 80085FB8 24010078 */  li    $at, 120
/* AFD15C 80085FBC 56010015 */  bnel  $s0, $at, .L80086014
/* AFD160 80085FC0 24010079 */   li    $at, 121
/* AFD164 80085FC4 862C13F0 */  lh    $t4, 0x13f0($s1)
/* AFD168 80085FC8 2401000A */  li    $at, 10
/* AFD16C 80085FCC 51810004 */  beql  $t4, $at, .L80085FE0
/* AFD170 80085FD0 8FA40048 */   lw    $a0, 0x48($sp)
/* AFD174 80085FD4 0C021DA0 */  jal   func_80087680
/* AFD178 80085FD8 8FA40048 */   lw    $a0, 0x48($sp)
/* AFD17C 80085FDC 8FA40048 */  lw    $a0, 0x48($sp)
.L80085FE0:
/* AFD180 80085FE0 2405000C */  li    $a1, 12
/* AFD184 80085FE4 0C021DC2 */  jal   func_80087708
/* AFD188 80085FE8 24060005 */   li    $a2, 5
/* AFD18C 80085FEC 96230F2A */  lhu   $v1, 0xf2a($s1)
/* AFD190 80085FF0 240200FF */  li    $v0, 255
/* AFD194 80085FF4 306F0100 */  andi  $t7, $v1, 0x100
/* AFD198 80085FF8 15E00003 */  bnez  $t7, .L80086008
/* AFD19C 80085FFC 346D0100 */   ori   $t5, $v1, 0x100
/* AFD1A0 80086000 100000DC */  b     .L80086374
/* AFD1A4 80086004 A62D0F2A */   sh    $t5, 0xf2a($s1)
.L80086008:
/* AFD1A8 80086008 100000DA */  b     .L80086374
/* AFD1AC 8008600C 93A2004F */   lbu   $v0, 0x4f($sp)
/* AFD1B0 80086010 24010079 */  li    $at, 121
.L80086014:
/* AFD1B4 80086014 56010015 */  bnel  $s0, $at, .L8008606C
/* AFD1B8 80086018 2A010084 */   slti  $at, $s0, 0x84
/* AFD1BC 8008601C 862E13F0 */  lh    $t6, 0x13f0($s1)
/* AFD1C0 80086020 2401000A */  li    $at, 10
/* AFD1C4 80086024 51C10004 */  beql  $t6, $at, .L80086038
/* AFD1C8 80086028 8FA40048 */   lw    $a0, 0x48($sp)
/* AFD1CC 8008602C 0C021DA0 */  jal   func_80087680
/* AFD1D0 80086030 8FA40048 */   lw    $a0, 0x48($sp)
/* AFD1D4 80086034 8FA40048 */  lw    $a0, 0x48($sp)
.L80086038:
/* AFD1D8 80086038 24050018 */  li    $a1, 24
/* AFD1DC 8008603C 0C021DC2 */  jal   func_80087708
/* AFD1E0 80086040 24060005 */   li    $a2, 5
/* AFD1E4 80086044 96230F2A */  lhu   $v1, 0xf2a($s1)
/* AFD1E8 80086048 240200FF */  li    $v0, 255
/* AFD1EC 8008604C 30790100 */  andi  $t9, $v1, 0x100
/* AFD1F0 80086050 17200003 */  bnez  $t9, .L80086060
/* AFD1F4 80086054 34780100 */   ori   $t8, $v1, 0x100
/* AFD1F8 80086058 100000C6 */  b     .L80086374
/* AFD1FC 8008605C A6380F2A */   sh    $t8, 0xf2a($s1)
.L80086060:
/* AFD200 80086060 100000C4 */  b     .L80086374
/* AFD204 80086064 93A2004F */   lbu   $v0, 0x4f($sp)
/* AFD208 80086068 2A010084 */  slti  $at, $s0, 0x84
.L8008606C:
/* AFD20C 8008606C 1420000A */  bnez  $at, .L80086098
/* AFD210 80086070 24050014 */   li    $a1, 20
/* AFD214 80086074 2A01008A */  slti  $at, $s0, 0x8a
/* AFD218 80086078 10200007 */  beqz  $at, .L80086098
/* AFD21C 8008607C 00106040 */   sll   $t4, $s0, 1
/* AFD220 80086080 3C048012 */  lui   $a0, %hi(sAmmoRefillCounts-0x7a*2)
/* AFD224 80086084 008C2021 */  addu  $a0, $a0, $t4
/* AFD228 80086088 0C021CC3 */  jal   Rupees_ChangeBy
/* AFD22C 8008608C 84845994 */   lh    $a0, %lo(sAmmoRefillCounts-0x7a*2)($a0)
/* AFD230 80086090 100000B8 */  b     .L80086374
/* AFD234 80086094 240200FF */   li    $v0, 255
.L80086098:
/* AFD238 80086098 14B00015 */  bne   $a1, $s0, .L800860F0
/* AFD23C 8008609C 2A010015 */   slti  $at, $s0, 0x15
/* AFD240 800860A0 91680000 */  lbu   $t0, ($t3)
/* AFD244 800860A4 00001025 */  move  $v0, $zero
/* AFD248 800860A8 240500FF */  li    $a1, 255
/* AFD24C 800860AC 02282021 */  addu  $a0, $s1, $t0
/* AFD250 800860B0 00821821 */  addu  $v1, $a0, $v0
.L800860B4:
/* AFD254 800860B4 906F0074 */  lbu   $t7, 0x74($v1)
/* AFD258 800860B8 93AD004F */  lbu   $t5, 0x4f($sp)
/* AFD25C 800860BC 54AF0005 */  bnel  $a1, $t7, .L800860D4
/* AFD260 800860C0 24420001 */   addiu $v0, $v0, 1
/* AFD264 800860C4 A06D0074 */  sb    $t5, 0x74($v1)
/* AFD268 800860C8 100000AA */  b     .L80086374
/* AFD26C 800860CC 240200FF */   li    $v0, 255
/* AFD270 800860D0 24420001 */  addiu $v0, $v0, 1
.L800860D4:
/* AFD274 800860D4 00021400 */  sll   $v0, $v0, 0x10
/* AFD278 800860D8 00021403 */  sra   $v0, $v0, 0x10
/* AFD27C 800860DC 28410004 */  slti  $at, $v0, 4
/* AFD280 800860E0 5420FFF4 */  bnezl $at, .L800860B4
/* AFD284 800860E4 00821821 */   addu  $v1, $a0, $v0
/* AFD288 800860E8 10000094 */  b     .L8008633C
/* AFD28C 800860EC 91470074 */   lbu   $a3, 0x74($t2)
.L800860F0:
/* AFD290 800860F0 14200002 */  bnez  $at, .L800860FC
/* AFD294 800860F4 2A010021 */   slti  $at, $s0, 0x21
/* AFD298 800860F8 14200002 */  bnez  $at, .L80086104
.L800860FC:
/* AFD29C 800860FC 24010082 */   li    $at, 130
/* AFD2A0 80086100 16010063 */  bne   $s0, $at, .L80086290
.L80086104:
/* AFD2A4 80086104 2401001A */   li    $at, 26
/* AFD2A8 80086108 1201004E */  beq   $s0, $at, .L80086244
/* AFD2AC 8008610C 91680000 */   lbu   $t0, ($t3)
/* AFD2B0 80086110 2401001B */  li    $at, 27
/* AFD2B4 80086114 1201004B */  beq   $s0, $at, .L80086244
/* AFD2B8 80086118 00001025 */   move  $v0, $zero
/* AFD2BC 8008611C 24010082 */  li    $at, 130
/* AFD2C0 80086120 16010005 */  bne   $s0, $at, .L80086138
/* AFD2C4 80086124 240E001A */   li    $t6, 26
/* AFD2C8 80086128 3C088012 */  lui   $t0, %hi(gItemSlots+0x1a) # $t0, 0x8012
/* AFD2CC 8008612C A3AE004F */  sb    $t6, 0x4f($sp)
/* AFD2D0 80086130 9108747E */  lbu   $t0, %lo(gItemSlots+0x1a)($t0)
/* AFD2D4 80086134 2410001A */  li    $s0, 26
.L80086138:
/* AFD2D8 80086138 02282021 */  addu  $a0, $s1, $t0
/* AFD2DC 8008613C 00821821 */  addu  $v1, $a0, $v0
.L80086140:
/* AFD2E0 80086140 90790074 */  lbu   $t9, 0x74($v1)
/* AFD2E4 80086144 01024821 */  addu  $t1, $t0, $v0
/* AFD2E8 80086148 54B90034 */  bnel  $a1, $t9, .L8008621C
/* AFD2EC 8008614C 24420001 */   addiu $v0, $v0, 1
/* AFD2F0 80086150 3C048014 */  lui   $a0, %hi(D_8013E080) # $a0, 0x8014
/* AFD2F4 80086154 2484E080 */  addiu $a0, %lo(D_8013E080) # addiu $a0, $a0, -0x1f80
/* AFD2F8 80086158 9225006C */  lbu   $a1, 0x6c($s1)
/* AFD2FC 8008615C 9226006D */  lbu   $a2, 0x6d($s1)
/* AFD300 80086160 9227006E */  lbu   $a3, 0x6e($s1)
/* AFD304 80086164 AFA90010 */  sw    $t1, 0x10($sp)
/* AFD308 80086168 AFB00014 */  sw    $s0, 0x14($sp)
/* AFD30C 8008616C AFA3002C */  sw    $v1, 0x2c($sp)
/* AFD310 80086170 0C00084C */  jal   osSyncPrintf
/* AFD314 80086174 AFA9003C */   sw    $t1, 0x3c($sp)
/* AFD318 80086178 8FA9003C */  lw    $t1, 0x3c($sp)
/* AFD31C 8008617C 9238006C */  lbu   $t8, 0x6c($s1)
/* AFD320 80086180 8FA3002C */  lw    $v1, 0x2c($sp)
/* AFD324 80086184 93AC004F */  lbu   $t4, 0x4f($sp)
/* AFD328 80086188 15380008 */  bne   $t1, $t8, .L800861AC
/* AFD32C 8008618C 24050001 */   li    $a1, 1
/* AFD330 80086190 A22C0069 */  sb    $t4, 0x69($s1)
/* AFD334 80086194 8FA40048 */  lw    $a0, 0x48($sp)
/* AFD338 80086198 0C0212CC */  jal   Interface_LoadItemIcon2
/* AFD33C 8008619C AFA3002C */   sw    $v1, 0x2c($sp)
/* AFD340 800861A0 8FA3002C */  lw    $v1, 0x2c($sp)
/* AFD344 800861A4 10000018 */  b     .L80086208
/* AFD348 800861A8 A22013E3 */   sb    $zero, 0x13e3($s1)
.L800861AC:
/* AFD34C 800861AC 922F006D */  lbu   $t7, 0x6d($s1)
/* AFD350 800861B0 93AD004F */  lbu   $t5, 0x4f($sp)
/* AFD354 800861B4 24050002 */  li    $a1, 2
/* AFD358 800861B8 552F0009 */  bnel  $t1, $t7, .L800861E0
/* AFD35C 800861BC 922E006E */   lbu   $t6, 0x6e($s1)
/* AFD360 800861C0 A22D006A */  sb    $t5, 0x6a($s1)
/* AFD364 800861C4 8FA40048 */  lw    $a0, 0x48($sp)
/* AFD368 800861C8 0C0212CC */  jal   Interface_LoadItemIcon2
/* AFD36C 800861CC AFA3002C */   sw    $v1, 0x2c($sp)
/* AFD370 800861D0 8FA3002C */  lw    $v1, 0x2c($sp)
/* AFD374 800861D4 1000000C */  b     .L80086208
/* AFD378 800861D8 A22013E4 */   sb    $zero, 0x13e4($s1)
/* AFD37C 800861DC 922E006E */  lbu   $t6, 0x6e($s1)
.L800861E0:
/* AFD380 800861E0 93B9004F */  lbu   $t9, 0x4f($sp)
/* AFD384 800861E4 24050003 */  li    $a1, 3
/* AFD388 800861E8 552E0008 */  bnel  $t1, $t6, .L8008620C
/* AFD38C 800861EC 93B8004F */   lbu   $t8, 0x4f($sp)
/* AFD390 800861F0 A239006B */  sb    $t9, 0x6b($s1)
/* AFD394 800861F4 8FA40048 */  lw    $a0, 0x48($sp)
/* AFD398 800861F8 0C02129B */  jal   Interface_LoadItemIcon1
/* AFD39C 800861FC AFA3002C */   sw    $v1, 0x2c($sp)
/* AFD3A0 80086200 8FA3002C */  lw    $v1, 0x2c($sp)
/* AFD3A4 80086204 A22013E5 */  sb    $zero, 0x13e5($s1)
.L80086208:
/* AFD3A8 80086208 93B8004F */  lbu   $t8, 0x4f($sp)
.L8008620C:
/* AFD3AC 8008620C 240200FF */  li    $v0, 255
/* AFD3B0 80086210 10000058 */  b     .L80086374
/* AFD3B4 80086214 A0780074 */   sb    $t8, 0x74($v1)
/* AFD3B8 80086218 24420001 */  addiu $v0, $v0, 1
.L8008621C:
/* AFD3BC 8008621C 00021400 */  sll   $v0, $v0, 0x10
/* AFD3C0 80086220 00021403 */  sra   $v0, $v0, 0x10
/* AFD3C4 80086224 28410004 */  slti  $at, $v0, 4
/* AFD3C8 80086228 5420FFC5 */  bnezl $at, .L80086140
/* AFD3CC 8008622C 00821821 */   addu  $v1, $a0, $v0
/* AFD3D0 80086230 93AC004F */  lbu   $t4, 0x4f($sp)
/* AFD3D4 80086234 3C0F8012 */  lui   $t7, %hi(gItemSlots) # $t7, 0x8012
/* AFD3D8 80086238 25EF7464 */  addiu $t7, %lo(gItemSlots) # addiu $t7, $t7, 0x7464
/* AFD3DC 8008623C 1000003E */  b     .L80086338
/* AFD3E0 80086240 018F5821 */   addu  $t3, $t4, $t7
.L80086244:
/* AFD3E4 80086244 00001025 */  move  $v0, $zero
/* AFD3E8 80086248 02282021 */  addu  $a0, $s1, $t0
/* AFD3EC 8008624C 240500FF */  li    $a1, 255
/* AFD3F0 80086250 00821821 */  addu  $v1, $a0, $v0
.L80086254:
/* AFD3F4 80086254 906D0074 */  lbu   $t5, 0x74($v1)
/* AFD3F8 80086258 93AE004F */  lbu   $t6, 0x4f($sp)
/* AFD3FC 8008625C 54AD0005 */  bnel  $a1, $t5, .L80086274
/* AFD400 80086260 24420001 */   addiu $v0, $v0, 1
/* AFD404 80086264 A06E0074 */  sb    $t6, 0x74($v1)
/* AFD408 80086268 10000042 */  b     .L80086374
/* AFD40C 8008626C 240200FF */   li    $v0, 255
/* AFD410 80086270 24420001 */  addiu $v0, $v0, 1
.L80086274:
/* AFD414 80086274 00021400 */  sll   $v0, $v0, 0x10
/* AFD418 80086278 00021403 */  sra   $v0, $v0, 0x10
/* AFD41C 8008627C 28410004 */  slti  $at, $v0, 4
/* AFD420 80086280 5420FFF4 */  bnezl $at, .L80086254
/* AFD424 80086284 00821821 */   addu  $v1, $a0, $v0
/* AFD428 80086288 1000002C */  b     .L8008633C
/* AFD42C 8008628C 91470074 */   lbu   $a3, 0x74($t2)
.L80086290:
/* AFD430 80086290 2A010021 */  slti  $at, $s0, 0x21
/* AFD434 80086294 14200028 */  bnez  $at, .L80086338
/* AFD438 80086298 2A010038 */   slti  $at, $s0, 0x38
/* AFD43C 8008629C 10200026 */  beqz  $at, .L80086338
/* AFD440 800862A0 24010032 */   li    $at, 50
/* AFD444 800862A4 56010005 */  bnel  $s0, $at, .L800862BC
/* AFD448 800862A8 916C0000 */   lbu   $t4, ($t3)
/* AFD44C 800862AC 96390EF2 */  lhu   $t9, 0xef2($s1)
/* AFD450 800862B0 37388000 */  ori   $t8, $t9, 0x8000
/* AFD454 800862B4 A6380EF2 */  sh    $t8, 0xef2($s1)
/* AFD458 800862B8 916C0000 */  lbu   $t4, ($t3)
.L800862BC:
/* AFD45C 800862BC 93AF004F */  lbu   $t7, 0x4f($sp)
/* AFD460 800862C0 240500FF */  li    $a1, 255
/* AFD464 800862C4 022C1021 */  addu  $v0, $s1, $t4
/* AFD468 800862C8 90480074 */  lbu   $t0, 0x74($v0)
/* AFD46C 800862CC A04F0074 */  sb    $t7, 0x74($v0)
/* AFD470 800862D0 24020001 */  li    $v0, 1
/* AFD474 800862D4 11050016 */  beq   $t0, $a1, .L80086330
/* AFD478 800862D8 02221821 */   addu  $v1, $s1, $v0
.L800862DC:
/* AFD47C 800862DC 906D0068 */  lbu   $t5, 0x68($v1)
/* AFD480 800862E0 150D000D */  bne   $t0, $t5, .L80086318
/* AFD484 800862E4 2401002C */   li    $at, 44
/* AFD488 800862E8 12010008 */  beq   $s0, $at, .L8008630C
/* AFD48C 800862EC 241900FF */   li    $t9, 255
/* AFD490 800862F0 93AE004F */  lbu   $t6, 0x4f($sp)
/* AFD494 800862F4 8FA40048 */  lw    $a0, 0x48($sp)
/* AFD498 800862F8 3045FFFF */  andi  $a1, $v0, 0xffff
/* AFD49C 800862FC 0C02129B */  jal   Interface_LoadItemIcon1
/* AFD4A0 80086300 A06E0068 */   sb    $t6, 0x68($v1)
/* AFD4A4 80086304 1000001B */  b     .L80086374
/* AFD4A8 80086308 240200FF */   li    $v0, 255
.L8008630C:
/* AFD4AC 8008630C A0790068 */  sb    $t9, 0x68($v1)
/* AFD4B0 80086310 10000018 */  b     .L80086374
/* AFD4B4 80086314 240200FF */   li    $v0, 255
.L80086318:
/* AFD4B8 80086318 24420001 */  addiu $v0, $v0, 1
/* AFD4BC 8008631C 00021400 */  sll   $v0, $v0, 0x10
/* AFD4C0 80086320 00021403 */  sra   $v0, $v0, 0x10
/* AFD4C4 80086324 28410004 */  slti  $at, $v0, 4
/* AFD4C8 80086328 5420FFEC */  bnezl $at, .L800862DC
/* AFD4CC 8008632C 02221821 */   addu  $v1, $s1, $v0
.L80086330:
/* AFD4D0 80086330 10000010 */  b     .L80086374
/* AFD4D4 80086334 240200FF */   li    $v0, 255
.L80086338:
/* AFD4D8 80086338 91470074 */  lbu   $a3, 0x74($t2)
.L8008633C:
/* AFD4DC 8008633C 3C048014 */  lui   $a0, %hi(D_8013E0C0) # $a0, 0x8014
/* AFD4E0 80086340 2484E0C0 */  addiu $a0, %lo(D_8013E0C0) # addiu $a0, $a0, -0x1f40
/* AFD4E4 80086344 87A50044 */  lh    $a1, 0x44($sp)
/* AFD4E8 80086348 02003025 */  move  $a2, $s0
/* AFD4EC 8008634C AFAB003C */  sw    $t3, 0x3c($sp)
/* AFD4F0 80086350 0C00084C */  jal   osSyncPrintf
/* AFD4F4 80086354 A7A70042 */   sh    $a3, 0x42($sp)
/* AFD4F8 80086358 8FAB003C */  lw    $t3, 0x3c($sp)
/* AFD4FC 8008635C 87A80042 */  lh    $t0, 0x42($sp)
/* AFD500 80086360 93B8004F */  lbu   $t8, 0x4f($sp)
/* AFD504 80086364 916C0000 */  lbu   $t4, ($t3)
/* AFD508 80086368 310200FF */  andi  $v0, $t0, 0xff
/* AFD50C 8008636C 022C7821 */  addu  $t7, $s1, $t4
/* AFD510 80086370 A1F80074 */  sb    $t8, 0x74($t7)
.L80086374:
/* AFD514 80086374 8FBF0024 */  lw    $ra, 0x24($sp)
/* AFD518 80086378 8FB0001C */  lw    $s0, 0x1c($sp)
/* AFD51C 8008637C 8FB10020 */  lw    $s1, 0x20($sp)
/* AFD520 80086380 03E00008 */  jr    $ra
/* AFD524 80086384 27BD0048 */   addiu $sp, $sp, 0x48

