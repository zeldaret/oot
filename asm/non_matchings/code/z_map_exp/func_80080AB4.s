.rdata
glabel D_8013D760
    .asciz "\x1b[34m"
    .balign 4

glabel D_8013D768
    .asciz "ＫＫＫ＝%d\n"
    # EUC-JP: ＫＫＫ＝
    .balign 4

glabel D_8013D774
    .asciz "\x1b[m"
    .balign 4

glabel D_8013D778
    .asciz "../z_map_exp.c"
    .balign 4

glabel D_8013D788
    .asciz "\x1b[33m"
    .balign 4

glabel D_8013D790
    .asciz "デクの樹ダンジョンＭＡＰ テクスチャＤＭＡ(%x) scene_id_offset=%d  VREG(30)=%d\n"
    # EUC-JP: デクの樹ダンジョンＭＡＰ テクスチャＤＭＡ | Deck Tree Dungeon MAP Texture DMA
    .balign 4

glabel D_8013D7E0
    .asciz "\x1b[m"
    .balign 4

glabel D_8013D7E4
    .asciz "../z_map_exp.c"
    .balign 4

glabel D_8013D7F4
    .asciz "ＭＡＰ 各階ＯＮチェック\n"
    # EUC-JP: ＭＡＰ 各階ＯＮチェック | MAP ON check on each floor
    .balign 4

.late_rodata
glabel jtbl_8013DA40
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28
    .word L80080B28

glabel jtbl_8013DA90
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080DF4
    .word L80080DF4
    .word L80080DF4
    .word L80080DF4
    .word L80080DF4
    .word L80080DF4
    .word L80080DF4
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC
    .word L80080CBC

.text
glabel func_80080AB4
/* AF7C54 80080AB4 3C068016 */  lui   $a2, %hi(gSaveContext) # $a2, 0x8016
/* AF7C58 80080AB8 24C6E660 */  addiu $a2, %lo(gSaveContext) # addiu $a2, $a2, -0x19a0
/* AF7C5C 80080ABC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AF7C60 80080AC0 94CE1402 */  lhu   $t6, 0x1402($a2)
/* AF7C64 80080AC4 AFBF001C */  sw    $ra, 0x1c($sp)
/* AF7C68 80080AC8 AFA40038 */  sw    $a0, 0x38($sp)
/* AF7C6C 80080ACC AFA5003C */  sw    $a1, 0x3c($sp)
/* AF7C70 80080AD0 AFAE0034 */  sw    $t6, 0x34($sp)
/* AF7C74 80080AD4 848300A4 */  lh    $v1, 0xa4($a0)
/* AF7C78 80080AD8 28610019 */  slti  $at, $v1, 0x19
/* AF7C7C 80080ADC 1420000A */  bnez  $at, .L80080B08
/* AF7C80 80080AE0 00601025 */   move  $v0, $v1
/* AF7C84 80080AE4 2458FFAF */  addiu $t8, $v0, -0x51
/* AF7C88 80080AE8 2F010014 */  sltiu $at, $t8, 0x14
/* AF7C8C 80080AEC 102000C1 */  beqz  $at, .L80080DF4
/* AF7C90 80080AF0 0018C080 */   sll   $t8, $t8, 2
/* AF7C94 80080AF4 3C018014 */  lui   $at, %hi(jtbl_8013DA40)
/* AF7C98 80080AF8 00380821 */  addu  $at, $at, $t8
/* AF7C9C 80080AFC 8C38DA40 */  lw    $t8, %lo(jtbl_8013DA40)($at)
/* AF7CA0 80080B00 03000008 */  jr    $t8
/* AF7CA4 80080B04 00000000 */   nop   
.L80080B08:
/* AF7CA8 80080B08 2C410019 */  sltiu $at, $v0, 0x19
/* AF7CAC 80080B0C 102000B9 */  beqz  $at, .L80080DF4
/* AF7CB0 80080B10 0002C880 */   sll   $t9, $v0, 2
/* AF7CB4 80080B14 3C018014 */  lui   $at, %hi(jtbl_8013DA90)
/* AF7CB8 80080B18 00390821 */  addu  $at, $at, $t9
/* AF7CBC 80080B1C 8C39DA90 */  lw    $t9, %lo(jtbl_8013DA90)($at)
/* AF7CC0 80080B20 03200008 */  jr    $t9
/* AF7CC4 80080B24 00000000 */   nop   
glabel L80080B28
/* AF7CC8 80080B28 24010053 */  li    $at, 83
/* AF7CCC 80080B2C 14610009 */  bne   $v1, $at, .L80080B54
/* AF7CD0 80080B30 87A50036 */   lh    $a1, 0x36($sp)
/* AF7CD4 80080B34 3C098012 */  lui   $t1, %hi(gBitFlags+0x28) # $t1, 0x8012
/* AF7CD8 80080B38 8D297148 */  lw    $t1, %lo(gBitFlags+0x28)($t1)
/* AF7CDC 80080B3C 8CCA00A4 */  lw    $t2, 0xa4($a2)
/* AF7CE0 80080B40 012A5824 */  and   $t3, $t1, $t2
/* AF7CE4 80080B44 11600032 */  beqz  $t3, .L80080C10
/* AF7CE8 80080B48 00000000 */   nop   
/* AF7CEC 80080B4C 10000030 */  b     .L80080C10
/* AF7CF0 80080B50 24050014 */   li    $a1, 20
.L80080B54:
/* AF7CF4 80080B54 24010057 */  li    $at, 87
/* AF7CF8 80080B58 54610012 */  bnel  $v1, $at, .L80080BA4
/* AF7CFC 80080B5C 2401005A */   li    $at, 90
/* AF7D00 80080B60 8CCC0004 */  lw    $t4, 4($a2)
/* AF7D04 80080B64 24010011 */  li    $at, 17
/* AF7D08 80080B68 24020011 */  li    $v0, 17
/* AF7D0C 80080B6C 11800003 */  beqz  $t4, .L80080B7C
/* AF7D10 80080B70 3C0D8012 */   lui   $t5, %hi(gBitFlags+8) # $t5, 0x8012
/* AF7D14 80080B74 10000001 */  b     .L80080B7C
/* AF7D18 80080B78 24020005 */   li    $v0, 5
.L80080B7C:
/* AF7D1C 80080B7C 14410024 */  bne   $v0, $at, .L80080C10
/* AF7D20 80080B80 00000000 */   nop   
/* AF7D24 80080B84 8DAD7128 */  lw    $t5, %lo(gBitFlags+8)($t5)
/* AF7D28 80080B88 8CCE00A4 */  lw    $t6, 0xa4($a2)
/* AF7D2C 80080B8C 01AE7824 */  and   $t7, $t5, $t6
/* AF7D30 80080B90 15E0001F */  bnez  $t7, .L80080C10
/* AF7D34 80080B94 00000000 */   nop   
/* AF7D38 80080B98 1000001D */  b     .L80080C10
/* AF7D3C 80080B9C 24050015 */   li    $a1, 21
/* AF7D40 80080BA0 2401005A */  li    $at, 90
.L80080BA4:
/* AF7D44 80080BA4 54610012 */  bnel  $v1, $at, .L80080BF0
/* AF7D48 80080BA8 2401005D */   li    $at, 93
/* AF7D4C 80080BAC 8CD80004 */  lw    $t8, 4($a2)
/* AF7D50 80080BB0 24010011 */  li    $at, 17
/* AF7D54 80080BB4 24020011 */  li    $v0, 17
/* AF7D58 80080BB8 13000003 */  beqz  $t8, .L80080BC8
/* AF7D5C 80080BBC 00000000 */   nop   
/* AF7D60 80080BC0 10000001 */  b     .L80080BC8
/* AF7D64 80080BC4 24020005 */   li    $v0, 5
.L80080BC8:
/* AF7D68 80080BC8 14410011 */  bne   $v0, $at, .L80080C10
/* AF7D6C 80080BCC 00000000 */   nop   
/* AF7D70 80080BD0 94D90EE6 */  lhu   $t9, 0xee6($a2)
/* AF7D74 80080BD4 2401000F */  li    $at, 15
/* AF7D78 80080BD8 3329000F */  andi  $t1, $t9, 0xf
/* AF7D7C 80080BDC 1121000C */  beq   $t1, $at, .L80080C10
/* AF7D80 80080BE0 00000000 */   nop   
/* AF7D84 80080BE4 1000000A */  b     .L80080C10
/* AF7D88 80080BE8 24050016 */   li    $a1, 22
/* AF7D8C 80080BEC 2401005D */  li    $at, 93
.L80080BF0:
/* AF7D90 80080BF0 14610007 */  bne   $v1, $at, .L80080C10
/* AF7D94 80080BF4 00000000 */   nop   
/* AF7D98 80080BF8 94CA0EE6 */  lhu   $t2, 0xee6($a2)
/* AF7D9C 80080BFC 2401000F */  li    $at, 15
/* AF7DA0 80080C00 314B000F */  andi  $t3, $t2, 0xf
/* AF7DA4 80080C04 15610002 */  bne   $t3, $at, .L80080C10
/* AF7DA8 80080C08 00000000 */   nop   
/* AF7DAC 80080C0C 24050017 */  li    $a1, 23
.L80080C10:
/* AF7DB0 80080C10 3C048014 */  lui   $a0, %hi(D_8013D760) # $a0, 0x8014
/* AF7DB4 80080C14 2484D760 */  addiu $a0, %lo(D_8013D760) # addiu $a0, $a0, -0x28a0
/* AF7DB8 80080C18 0C00084C */  jal   osSyncPrintf
/* AF7DBC 80080C1C A7A5002E */   sh    $a1, 0x2e($sp)
/* AF7DC0 80080C20 3C048014 */  lui   $a0, %hi(D_8013D768) # $a0, 0x8014
/* AF7DC4 80080C24 2484D768 */  addiu $a0, %lo(D_8013D768) # addiu $a0, $a0, -0x2898
/* AF7DC8 80080C28 0C00084C */  jal   osSyncPrintf
/* AF7DCC 80080C2C 87A5002E */   lh    $a1, 0x2e($sp)
/* AF7DD0 80080C30 3C048014 */  lui   $a0, %hi(D_8013D774) # $a0, 0x8014
/* AF7DD4 80080C34 0C00084C */  jal   osSyncPrintf
/* AF7DD8 80080C38 2484D774 */   addiu $a0, %lo(D_8013D774) # addiu $a0, $a0, -0x288c
/* AF7DDC 80080C3C 87A8002E */  lh    $t0, 0x2e($sp)
/* AF7DE0 80080C40 3C028016 */  lui   $v0, %hi(D_8015FFD0) # $v0, 0x8016
/* AF7DE4 80080C44 8C42FFD0 */  lw    $v0, %lo(D_8015FFD0)($v0)
/* AF7DE8 80080C48 3C018012 */  lui   $at, %hi(D_80123A5C) # $at, 0x8012
/* AF7DEC 80080C4C A4283A5C */  sh    $t0, %lo(D_80123A5C)($at)
/* AF7DF0 80080C50 8FA90034 */  lw    $t1, 0x34($sp)
/* AF7DF4 80080C54 8C4C0028 */  lw    $t4, 0x28($v0)
/* AF7DF8 80080C58 8FA30038 */  lw    $v1, 0x38($sp)
/* AF7DFC 80080C5C 8C590024 */  lw    $t9, 0x24($v0)
/* AF7E00 80080C60 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF7E04 80080C64 00086840 */  sll   $t5, $t0, 1
/* AF7E08 80080C68 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF7E0C 80080C6C 00095040 */  sll   $t2, $t1, 1
/* AF7E10 80080C70 018D7021 */  addu  $t6, $t4, $t5
/* AF7E14 80080C74 95CF0000 */  lhu   $t7, ($t6)
/* AF7E18 80080C78 3C180097 */  lui   $t8, %hi(_map_grand_staticSegmentRomStart) # $t8, 0x97
/* AF7E1C 80080C7C 00611821 */  addu  $v1, $v1, $at
/* AF7E20 80080C80 032A5821 */  addu  $t3, $t9, $t2
/* AF7E24 80080C84 95660000 */  lhu   $a2, ($t3)
/* AF7E28 80080C88 8C64013C */  lw    $a0, 0x13c($v1)
/* AF7E2C 80080C8C 27184000 */  addiu $t8, %lo(_map_grand_staticSegmentRomStart) # addiu $t8, $t8, 0x4000
/* AF7E30 80080C90 240C0135 */  li    $t4, 309
/* AF7E34 80080C94 3C078014 */  lui   $a3, %hi(D_8013D778) # $a3, 0x8014
/* AF7E38 80080C98 24E7D778 */  addiu $a3, %lo(D_8013D778) # addiu $a3, $a3, -0x2888
/* AF7E3C 80080C9C AFAC0010 */  sw    $t4, 0x10($sp)
/* AF7E40 80080CA0 AFA30024 */  sw    $v1, 0x24($sp)
/* AF7E44 80080CA4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* AF7E48 80080CA8 01F82821 */   addu  $a1, $t7, $t8
/* AF7E4C 80080CAC 8FA30024 */  lw    $v1, 0x24($sp)
/* AF7E50 80080CB0 8FAD0034 */  lw    $t5, 0x34($sp)
/* AF7E54 80080CB4 1000004F */  b     .L80080DF4
/* AF7E58 80080CB8 A46D0258 */   sh    $t5, 0x258($v1)
glabel L80080CBC
/* AF7E5C 80080CBC 3C048014 */  lui   $a0, %hi(D_8013D788) # $a0, 0x8014
/* AF7E60 80080CC0 0C00084C */  jal   osSyncPrintf
/* AF7E64 80080CC4 2484D788 */   addiu $a0, %lo(D_8013D788) # addiu $a0, $a0, -0x2878
/* AF7E68 80080CC8 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AF7E6C 80080CCC 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AF7E70 80080CD0 3C048014 */  lui   $a0, %hi(D_8013D790) # $a0, 0x8014
/* AF7E74 80080CD4 2484D790 */  addiu $a0, %lo(D_8013D790) # addiu $a0, $a0, -0x2870
/* AF7E78 80080CD8 87A5003E */  lh    $a1, 0x3e($sp)
/* AF7E7C 80080CDC 8FA60034 */  lw    $a2, 0x34($sp)
/* AF7E80 80080CE0 0C00084C */  jal   osSyncPrintf
/* AF7E84 80080CE4 85C70F50 */   lh    $a3, 0xf50($t6)
/* AF7E88 80080CE8 3C048014 */  lui   $a0, %hi(D_8013D7E0) # $a0, 0x8014
/* AF7E8C 80080CEC 0C00084C */  jal   osSyncPrintf
/* AF7E90 80080CF0 2484D7E0 */   addiu $a0, %lo(D_8013D7E0) # addiu $a0, $a0, -0x2820
/* AF7E94 80080CF4 3C188016 */  lui   $t8, %hi(D_8015FFD0) # $t8, 0x8016
/* AF7E98 80080CF8 8F18FFD0 */  lw    $t8, %lo(D_8015FFD0)($t8)
/* AF7E9C 80080CFC 8FB90034 */  lw    $t9, 0x34($sp)
/* AF7EA0 80080D00 8FAF0038 */  lw    $t7, 0x38($sp)
/* AF7EA4 80080D04 8F090020 */  lw    $t1, 0x20($t8)
/* AF7EA8 80080D08 00195040 */  sll   $t2, $t9, 1
/* AF7EAC 80080D0C 87AD003E */  lh    $t5, 0x3e($sp)
/* AF7EB0 80080D10 012A5821 */  addu  $t3, $t1, $t2
/* AF7EB4 80080D14 956C0000 */  lhu   $t4, ($t3)
/* AF7EB8 80080D18 3C040001 */  lui   $a0, 1
/* AF7EBC 80080D1C 008F2021 */  addu  $a0, $a0, $t7
/* AF7EC0 80080D20 018D7021 */  addu  $t6, $t4, $t5
/* AF7EC4 80080D24 000E7A00 */  sll   $t7, $t6, 8
/* AF7EC8 80080D28 01EE7823 */  subu  $t7, $t7, $t6
/* AF7ECC 80080D2C 3C18009A */  lui   $t8, %hi(_map_i_staticSegmentRomStart) # $t8, 0x9a
/* AF7ED0 80080D30 27185000 */  addiu $t8, %lo(_map_i_staticSegmentRomStart) # addiu $t8, $t8, 0x5000
/* AF7ED4 80080D34 000F7900 */  sll   $t7, $t7, 4
/* AF7ED8 80080D38 8C84062C */  lw    $a0, 0x62c($a0)
/* AF7EDC 80080D3C 2419015A */  li    $t9, 346
/* AF7EE0 80080D40 3C078014 */  lui   $a3, %hi(D_8013D7E4) # $a3, 0x8014
/* AF7EE4 80080D44 24E7D7E4 */  addiu $a3, %lo(D_8013D7E4) # addiu $a3, $a3, -0x281c
/* AF7EE8 80080D48 AFB90010 */  sw    $t9, 0x10($sp)
/* AF7EEC 80080D4C 01F82821 */  addu  $a1, $t7, $t8
/* AF7EF0 80080D50 0C0006A8 */  jal   DmaMgr_SendRequest1
/* AF7EF4 80080D54 24060FF0 */   li    $a2, 4080
/* AF7EF8 80080D58 8FAB0034 */  lw    $t3, 0x34($sp)
/* AF7EFC 80080D5C 3C068016 */  lui   $a2, %hi(D_8015FFD0) # $a2, 0x8016
/* AF7F00 80080D60 24C6FFD0 */  addiu $a2, %lo(D_8015FFD0) # addiu $a2, $a2, -0x30
/* AF7F04 80080D64 8CC90000 */  lw    $t1, ($a2)
/* AF7F08 80080D68 000B6080 */  sll   $t4, $t3, 2
/* AF7F0C 80080D6C 018B6023 */  subu  $t4, $t4, $t3
/* AF7F10 80080D70 87A2003E */  lh    $v0, 0x3e($sp)
/* AF7F14 80080D74 8D2A0014 */  lw    $t2, 0x14($t1)
/* AF7F18 80080D78 000C6080 */  sll   $t4, $t4, 2
/* AF7F1C 80080D7C 018B6023 */  subu  $t4, $t4, $t3
/* AF7F20 80080D80 000C60C0 */  sll   $t4, $t4, 3
/* AF7F24 80080D84 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AF7F28 80080D88 00021040 */  sll   $v0, $v0, 1
/* AF7F2C 80080D8C 014C6821 */  addu  $t5, $t2, $t4
/* AF7F30 80080D90 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* AF7F34 80080D94 01A27021 */  addu  $t6, $t5, $v0
/* AF7F38 80080D98 85CF0000 */  lh    $t7, ($t6)
/* AF7F3C 80080D9C 8C780000 */  lw    $t8, ($v1)
/* AF7F40 80080DA0 A70F0F34 */  sh    $t7, 0xf34($t8)
/* AF7F44 80080DA4 8FAB0034 */  lw    $t3, 0x34($sp)
/* AF7F48 80080DA8 8CD90000 */  lw    $t9, ($a2)
/* AF7F4C 80080DAC 8C6F0000 */  lw    $t7, ($v1)
/* AF7F50 80080DB0 000B5080 */  sll   $t2, $t3, 2
/* AF7F54 80080DB4 014B5023 */  subu  $t2, $t2, $t3
/* AF7F58 80080DB8 8F290018 */  lw    $t1, 0x18($t9)
/* AF7F5C 80080DBC 000A5080 */  sll   $t2, $t2, 2
/* AF7F60 80080DC0 014B5023 */  subu  $t2, $t2, $t3
/* AF7F64 80080DC4 000A50C0 */  sll   $t2, $t2, 3
/* AF7F68 80080DC8 012A6021 */  addu  $t4, $t1, $t2
/* AF7F6C 80080DCC 01826821 */  addu  $t5, $t4, $v0
/* AF7F70 80080DD0 85AE0000 */  lh    $t6, ($t5)
/* AF7F74 80080DD4 A5EE0F36 */  sh    $t6, 0xf36($t7)
/* AF7F78 80080DD8 8C780000 */  lw    $t8, ($v1)
/* AF7F7C 80080DDC 8FA40038 */  lw    $a0, 0x38($sp)
/* AF7F80 80080DE0 0C02023F */  jal   func_800808FC
/* AF7F84 80080DE4 87050F50 */   lh    $a1, 0xf50($t8)
/* AF7F88 80080DE8 3C048014 */  lui   $a0, %hi(D_8013D7F4) # $a0, 0x8014
/* AF7F8C 80080DEC 0C00084C */  jal   osSyncPrintf
/* AF7F90 80080DF0 2484D7F4 */   addiu $a0, %lo(D_8013D7F4) # addiu $a0, $a0, -0x280c
glabel L80080DF4
.L80080DF4:
/* AF7F94 80080DF4 8FBF001C */  lw    $ra, 0x1c($sp)
/* AF7F98 80080DF8 27BD0038 */  addiu $sp, $sp, 0x38
/* AF7F9C 80080DFC 03E00008 */  jr    $ra
/* AF7FA0 80080E00 00000000 */   nop   

