.rdata
glabel D_801441E8
    .asciz "\nSCENE_NO=%d COUNTER=%d\n"
    .balign 4

glabel D_80144204
    .asciz "エンディングはじまるよー\n"
    # Translates to: "The ending starts?"
    .balign 4

glabel D_80144220
    .asciz "出戻り？\n"
    # Translates to: "Return?"
    .balign 4

glabel D_8014422C
    .asciz "ZELDA ALLOC SIZE=%x\n"
    .balign 4

glabel D_80144244
    .asciz "../z_play.c"
    .balign 4

glabel D_80144250
    .asciz "ゼルダヒープ %08x-%08x\n"
    # Translates to: "Zelda heap"
    .balign 4

glabel D_80144268
    .asciz "player has start camera ID (\x1b[34m%d\x1b[m)\n"
    .balign 4

glabel D_80144294
    .asciz "\nkawauso_data=[%x]"
    .balign 4

.text
glabel Gameplay_Init
/* B33C04 800BCA64 27BDFF70 */  addiu $sp, $sp, -0x90
/* B33C08 800BCA68 AFB20028 */  sw    $s2, 0x28($sp)
/* B33C0C 800BCA6C 3C128016 */  lui   $s2, %hi(gSaveContext) # $s2, 0x8016
/* B33C10 800BCA70 2652E660 */  addiu $s2, %lo(gSaveContext) # addiu $s2, $s2, -0x19a0
/* B33C14 800BCA74 8E4E0000 */  lw    $t6, ($s2)
/* B33C18 800BCA78 AFBF002C */  sw    $ra, 0x2c($sp)
/* B33C1C 800BCA7C AFB10024 */  sw    $s1, 0x24($sp)
/* B33C20 800BCA80 AFB00020 */  sw    $s0, 0x20($sp)
/* B33C24 800BCA84 2401FFFF */  li    $at, -1
/* B33C28 800BCA88 00808825 */  move  $s1, $a0
/* B33C2C 800BCA8C 15C10009 */  bne   $t6, $at, .L800BCAB4
/* B33C30 800BCA90 8C900000 */   lw    $s0, ($a0)
/* B33C34 800BCA94 AE400000 */  sw    $zero, ($s2)
/* B33C38 800BCA98 3C0F8080 */  lui   $t7, %hi(Opening_Init) # $t7, 0x8080
/* B33C3C 800BCA9C 25EF3CAC */  addiu $t7, %lo(Opening_Init) # addiu $t7, $t7, 0x3cac
/* B33C40 800BCAA0 241801D0 */  li    $t8, 464
/* B33C44 800BCAA4 AC800098 */  sw    $zero, 0x98($a0)
/* B33C48 800BCAA8 AC980010 */  sw    $t8, 0x10($a0)
/* B33C4C 800BCAAC 10000213 */  b     .L800BD2FC
/* B33C50 800BCAB0 AC8F000C */   sw    $t7, 0xc($a0)
.L800BCAB4:
/* B33C54 800BCAB4 0C03F616 */  jal   SystemArena_Display
/* B33C58 800BCAB8 00000000 */   nop
/* B33C5C 800BCABC 3C05001D */  lui   $a1, (0x001D4790 >> 16) # lui $a1, 0x1d
/* B33C60 800BCAC0 34A54790 */  ori   $a1, (0x001D4790 & 0xFFFF) # ori $a1, $a1, 0x4790
/* B33C64 800BCAC4 0C0313C8 */  jal   func_800C4F20
/* B33C68 800BCAC8 02202025 */   move  $a0, $s1
/* B33C6C 800BCACC 0C02EF6D */  jal   KaleidoManager_Init
/* B33C70 800BCAD0 02202025 */   move  $a0, $s1
/* B33C74 800BCAD4 262400B8 */  addiu $a0, $s1, 0xb8
/* B33C78 800BCAD8 AFA4003C */  sw    $a0, 0x3c($sp)
/* B33C7C 800BCADC 0C02A89E */  jal   View_Init
/* B33C80 800BCAE0 02002825 */   move  $a1, $s0
/* B33C84 800BCAE4 0C03DA0A */  jal   func_800F6828
/* B33C88 800BCAE8 00002025 */   move  $a0, $zero
/* B33C8C 800BCAEC 0C024BCE */  jal   Quake_Init
/* B33C90 800BCAF0 00000000 */   nop
/* B33C94 800BCAF4 00002025 */  move  $a0, $zero
/* B33C98 800BCAF8 02201025 */  move  $v0, $s1
.L800BCAFC:
/* B33C9C 800BCAFC 24840001 */  addiu $a0, $a0, 1
/* B33CA0 800BCB00 28810004 */  slti  $at, $a0, 4
/* B33CA4 800BCB04 24420004 */  addiu $v0, $v0, 4
/* B33CA8 800BCB08 1420FFFC */  bnez  $at, .L800BCAFC
/* B33CAC 800BCB0C AC40078C */   sw    $zero, 0x78c($v0)
/* B33CB0 800BCB10 262401E0 */  addiu $a0, $s1, 0x1e0
/* B33CB4 800BCB14 262607C0 */  addiu $a2, $s1, 0x7c0
/* B33CB8 800BCB18 AFA60034 */  sw    $a2, 0x34($sp)
/* B33CBC 800BCB1C AFA40038 */  sw    $a0, 0x38($sp)
/* B33CC0 800BCB20 8FA5003C */  lw    $a1, 0x3c($sp)
/* B33CC4 800BCB24 0C015F1B */  jal   func_80057C6C
/* B33CC8 800BCB28 02203825 */   move  $a3, $s1
/* B33CCC 800BCB2C 8FA40038 */  lw    $a0, 0x38($sp)
/* B33CD0 800BCB30 0C0160D5 */  jal   Camera_ChangeStatus
/* B33CD4 800BCB34 24050007 */   li    $a1, 7
/* B33CD8 800BCB38 00004025 */  move  $t0, $zero
/* B33CDC 800BCB3C 2630034C */  addiu $s0, $s1, 0x34c
/* B33CE0 800BCB40 02002025 */  move  $a0, $s0
.L800BCB44:
/* B33CE4 800BCB44 8FA5003C */  lw    $a1, 0x3c($sp)
/* B33CE8 800BCB48 8FA60034 */  lw    $a2, 0x34($sp)
/* B33CEC 800BCB4C 02203825 */  move  $a3, $s1
/* B33CF0 800BCB50 0C015F1B */  jal   func_80057C6C
/* B33CF4 800BCB54 AFA80044 */   sw    $t0, 0x44($sp)
/* B33CF8 800BCB58 02002025 */  move  $a0, $s0
/* B33CFC 800BCB5C 0C0160D5 */  jal   Camera_ChangeStatus
/* B33D00 800BCB60 24050100 */   li    $a1, 256
/* B33D04 800BCB64 8FA80044 */  lw    $t0, 0x44($sp)
/* B33D08 800BCB68 24010444 */  li    $at, 1092
/* B33D0C 800BCB6C 2610016C */  addiu $s0, $s0, 0x16c
/* B33D10 800BCB70 2508016C */  addiu $t0, $t0, 0x16c
/* B33D14 800BCB74 5501FFF3 */  bnel  $t0, $at, .L800BCB44
/* B33D18 800BCB78 02002025 */   move  $a0, $s0
/* B33D1C 800BCB7C 8FA40038 */  lw    $a0, 0x38($sp)
/* B33D20 800BCB80 240500FF */  li    $a1, 255
/* B33D24 800BCB84 AE240790 */  sw    $a0, 0x790($s1)
/* B33D28 800BCB88 A4800130 */  sh    $zero, 0x130($a0)
/* B33D2C 800BCB8C 0C016B12 */  jal   func_8005AC48
/* B33D30 800BCB90 A62007A0 */   sh    $zero, 0x7a0($s1)
/* B33D34 800BCB94 02202025 */  move  $a0, $s1
/* B33D38 800BCB98 0C02A74A */  jal   func_800A9D28
/* B33D3C 800BCB9C 26251F74 */   addiu $a1, $s1, 0x1f74
/* B33D40 800BCBA0 0C044826 */  jal   func_80112098
/* B33D44 800BCBA4 02202025 */   move  $a0, $s1
/* B33D48 800BCBA8 0C0443DA */  jal   func_80110F68
/* B33D4C 800BCBAC 02202025 */   move  $a0, $s1
/* B33D50 800BCBB0 0C044114 */  jal   func_80110450
/* B33D54 800BCBB4 02202025 */   move  $a0, $s1
/* B33D58 800BCBB8 0C01AE80 */  jal   func_8006BA00
/* B33D5C 800BCBBC 02202025 */   move  $a0, $s1
/* B33D60 800BCBC0 0C009B0B */  jal   func_80026C2C
/* B33D64 800BCBC4 02202025 */   move  $a0, $s1
/* B33D68 800BCBC8 02202025 */  move  $a0, $s1
/* B33D6C 800BCBCC 0C009CAC */  jal   func_800272B0
/* B33D70 800BCBD0 24050055 */   li    $a1, 85
/* B33D74 800BCBD4 3C010001 */  lui   $at, (0x00011E60 >> 16) # lui $at, 1
/* B33D78 800BCBD8 34211E60 */  ori   $at, (0x00011E60 & 0xFFFF) # ori $at, $at, 0x1e60
/* B33D7C 800BCBDC 02212821 */  addu  $a1, $s1, $at
/* B33D80 800BCBE0 0C0174EF */  jal   func_8005D3BC
/* B33D84 800BCBE4 02202025 */   move  $a0, $s1
/* B33D88 800BCBE8 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B33D8C 800BCBEC 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B33D90 800BCBF0 02212021 */  addu  $a0, $s1, $at
/* B33D94 800BCBF4 0C028CBB */  jal   SkelAnime_AnimationCtxReset
/* B33D98 800BCBF8 AFA4003C */   sw    $a0, 0x3c($sp)
/* B33D9C 800BCBFC 02202025 */  move  $a0, $s1
/* B33DA0 800BCC00 0C019143 */  jal   func_8006450C
/* B33DA4 800BCC04 26251D64 */   addiu $a1, $s1, 0x1d64
/* B33DA8 800BCC08 96421412 */  lhu   $v0, 0x1412($s2)
/* B33DAC 800BCC0C 3401FFEF */  li    $at, 65519
/* B33DB0 800BCC10 10410003 */  beq   $v0, $at, .L800BCC20
/* B33DB4 800BCC14 3419FFEF */   li    $t9, 65519
/* B33DB8 800BCC18 AE420008 */  sw    $v0, 8($s2)
/* B33DBC 800BCC1C A6591412 */  sh    $t9, 0x1412($s2)
.L800BCC20:
/* B33DC0 800BCC20 8E490008 */  lw    $t1, 8($s2)
/* B33DC4 800BCC24 3401FFFD */  li    $at, 65533
/* B33DC8 800BCC28 55210003 */  bnel  $t1, $at, .L800BCC38
/* B33DCC 800BCC2C 96421416 */   lhu   $v0, 0x1416($s2)
/* B33DD0 800BCC30 AE400008 */  sw    $zero, 8($s2)
/* B33DD4 800BCC34 96421416 */  lhu   $v0, 0x1416($s2)
.L800BCC38:
/* B33DD8 800BCC38 3401FFFF */  li    $at, 65535
/* B33DDC 800BCC3C 50410004 */  beql  $v0, $at, .L800BCC50
/* B33DE0 800BCC40 9642000C */   lhu   $v0, 0xc($s2)
/* B33DE4 800BCC44 A642000C */  sh    $v0, 0xc($s2)
/* B33DE8 800BCC48 A642141A */  sh    $v0, 0x141a($s2)
/* B33DEC 800BCC4C 9642000C */  lhu   $v0, 0xc($s2)
.L800BCC50:
/* B33DF0 800BCC50 3401C001 */  li    $at, 49153
/* B33DF4 800BCC54 0041082A */  slt   $at, $v0, $at
/* B33DF8 800BCC58 10200002 */  beqz  $at, .L800BCC64
/* B33DFC 800BCC5C 28414555 */   slti  $at, $v0, 0x4555
/* B33E00 800BCC60 10200003 */  beqz  $at, .L800BCC70
.L800BCC64:
/* B33E04 800BCC64 240A0001 */   li    $t2, 1
/* B33E08 800BCC68 10000002 */  b     .L800BCC74
/* B33E0C 800BCC6C AE4A0010 */   sw    $t2, 0x10($s2)
.L800BCC70:
/* B33E10 800BCC70 AE400010 */  sw    $zero, 0x10($s2)
.L800BCC74:
/* B33E14 800BCC74 0C01A470 */  jal   Cutscene_HandleConditionalTriggers
/* B33E18 800BCC78 02202025 */   move  $a0, $s1
/* B33E1C 800BCC7C 8E4B135C */  lw    $t3, 0x135c($s2)
/* B33E20 800BCC80 55600007 */  bnezl $t3, .L800BCCA0
/* B33E24 800BCC84 A64013C8 */   sh    $zero, 0x13c8($s2)
/* B33E28 800BCC88 8E4C0008 */  lw    $t4, 8($s2)
/* B33E2C 800BCC8C 3401FFF0 */  li    $at, 65520
/* B33E30 800BCC90 0181082A */  slt   $at, $t4, $at
/* B33E34 800BCC94 5420000A */  bnezl $at, .L800BCCC0
/* B33E38 800BCC98 8E420004 */   lw    $v0, 4($s2)
/* B33E3C 800BCC9C A64013C8 */  sh    $zero, 0x13c8($s2)
.L800BCCA0:
/* B33E40 800BCCA0 0C021DB2 */  jal   func_800876C8
/* B33E44 800BCCA4 02202025 */   move  $a0, $s1
/* B33E48 800BCCA8 8E4D0008 */  lw    $t5, 8($s2)
/* B33E4C 800BCCAC 31AE000F */  andi  $t6, $t5, 0xf
/* B33E50 800BCCB0 25CF0004 */  addiu $t7, $t6, 4
/* B33E54 800BCCB4 1000001A */  b     .L800BCD20
/* B33E58 800BCCB8 AE4F1360 */   sw    $t7, 0x1360($s2)
/* B33E5C 800BCCBC 8E420004 */  lw    $v0, 4($s2)
.L800BCCC0:
/* B33E60 800BCCC0 10400006 */  beqz  $v0, .L800BCCDC
/* B33E64 800BCCC4 00000000 */   nop
/* B33E68 800BCCC8 8E580010 */  lw    $t8, 0x10($s2)
/* B33E6C 800BCCCC 17000003 */  bnez  $t8, .L800BCCDC
/* B33E70 800BCCD0 00000000 */   nop
/* B33E74 800BCCD4 10000012 */  b     .L800BCD20
/* B33E78 800BCCD8 AE401360 */   sw    $zero, 0x1360($s2)
.L800BCCDC:
/* B33E7C 800BCCDC 10400007 */  beqz  $v0, .L800BCCFC
/* B33E80 800BCCE0 00000000 */   nop
/* B33E84 800BCCE4 8E590010 */  lw    $t9, 0x10($s2)
/* B33E88 800BCCE8 24090001 */  li    $t1, 1
/* B33E8C 800BCCEC 13200003 */  beqz  $t9, .L800BCCFC
/* B33E90 800BCCF0 00000000 */   nop
/* B33E94 800BCCF4 1000000A */  b     .L800BCD20
/* B33E98 800BCCF8 AE491360 */   sw    $t1, 0x1360($s2)
.L800BCCFC:
/* B33E9C 800BCCFC 14400007 */  bnez  $v0, .L800BCD1C
/* B33EA0 800BCD00 240C0003 */   li    $t4, 3
/* B33EA4 800BCD04 8E4A0010 */  lw    $t2, 0x10($s2)
/* B33EA8 800BCD08 240B0002 */  li    $t3, 2
/* B33EAC 800BCD0C 55400004 */  bnezl $t2, .L800BCD20
/* B33EB0 800BCD10 AE4C1360 */   sw    $t4, 0x1360($s2)
/* B33EB4 800BCD14 10000002 */  b     .L800BCD20
/* B33EB8 800BCD18 AE4B1360 */   sw    $t3, 0x1360($s2)
.L800BCD1C:
/* B33EBC 800BCD1C AE4C1360 */  sw    $t4, 0x1360($s2)
.L800BCD20:
/* B33EC0 800BCD20 8E470000 */  lw    $a3, ($s2)
/* B33EC4 800BCD24 3C088013 */  lui   $t0, %hi(gEntranceTable) # $t0, 0x8013
/* B33EC8 800BCD28 250881C0 */  addiu $t0, %lo(gEntranceTable) # addiu $t0, $t0, -0x7e40
/* B33ECC 800BCD2C 00076880 */  sll   $t5, $a3, 2
/* B33ED0 800BCD30 010D7021 */  addu  $t6, $t0, $t5
/* B33ED4 800BCD34 81CF0000 */  lb    $t7, ($t6)
/* B33ED8 800BCD38 8E431360 */  lw    $v1, 0x1360($s2)
/* B33EDC 800BCD3C 24010051 */  li    $at, 81
/* B33EE0 800BCD40 00E08025 */  move  $s0, $a3
/* B33EE4 800BCD44 15E1001C */  bne   $t7, $at, .L800BCDB8
/* B33EE8 800BCD48 A3A3006F */   sb    $v1, 0x6f($sp)
/* B33EEC 800BCD4C 8E580004 */  lw    $t8, 4($s2)
/* B33EF0 800BCD50 28610004 */  slti  $at, $v1, 4
/* B33EF4 800BCD54 53000019 */  beql  $t8, $zero, .L800BCDBC
/* B33EF8 800BCD58 00107880 */   sll   $t7, $s0, 2
/* B33EFC 800BCD5C 50200017 */  beql  $at, $zero, .L800BCDBC
/* B33F00 800BCD60 00107880 */   sll   $t7, $s0, 2
/* B33F04 800BCD64 3C038012 */  lui   $v1, %hi(gBitFlags) # $v1, 0x8012
/* B33F08 800BCD68 24637120 */  addiu $v1, %lo(gBitFlags) # addiu $v1, $v1, 0x7120
/* B33F0C 800BCD6C 8C790048 */  lw    $t9, 0x48($v1)
/* B33F10 800BCD70 8E4200A4 */  lw    $v0, 0xa4($s2)
/* B33F14 800BCD74 03224824 */  and   $t1, $t9, $v0
/* B33F18 800BCD78 5120000D */  beql  $t1, $zero, .L800BCDB0
/* B33F1C 800BCD7C AE401360 */   sw    $zero, 0x1360($s2)
/* B33F20 800BCD80 8C6A004C */  lw    $t2, 0x4c($v1)
/* B33F24 800BCD84 01425824 */  and   $t3, $t2, $v0
/* B33F28 800BCD88 51600009 */  beql  $t3, $zero, .L800BCDB0
/* B33F2C 800BCD8C AE401360 */   sw    $zero, 0x1360($s2)
/* B33F30 800BCD90 8C6C0050 */  lw    $t4, 0x50($v1)
/* B33F34 800BCD94 240E0001 */  li    $t6, 1
/* B33F38 800BCD98 01826824 */  and   $t5, $t4, $v0
/* B33F3C 800BCD9C 51A00004 */  beql  $t5, $zero, .L800BCDB0
/* B33F40 800BCDA0 AE401360 */   sw    $zero, 0x1360($s2)
/* B33F44 800BCDA4 10000002 */  b     .L800BCDB0
/* B33F48 800BCDA8 AE4E1360 */   sw    $t6, 0x1360($s2)
/* B33F4C 800BCDAC AE401360 */  sw    $zero, 0x1360($s2)
.L800BCDB0:
/* B33F50 800BCDB0 10000016 */  b     .L800BCE0C
/* B33F54 800BCDB4 8E431360 */   lw    $v1, 0x1360($s2)
.L800BCDB8:
/* B33F58 800BCDB8 00107880 */  sll   $t7, $s0, 2
.L800BCDBC:
/* B33F5C 800BCDBC 010FC021 */  addu  $t8, $t0, $t7
/* B33F60 800BCDC0 83190000 */  lb    $t9, ($t8)
/* B33F64 800BCDC4 24010055 */  li    $at, 85
/* B33F68 800BCDC8 57210011 */  bnel  $t9, $at, .L800BCE10
/* B33F6C 800BCDCC 00037080 */   sll   $t6, $v1, 2
/* B33F70 800BCDD0 8E490004 */  lw    $t1, 4($s2)
/* B33F74 800BCDD4 28610004 */  slti  $at, $v1, 4
/* B33F78 800BCDD8 5520000D */  bnezl $t1, .L800BCE10
/* B33F7C 800BCDDC 00037080 */   sll   $t6, $v1, 2
/* B33F80 800BCDE0 5020000B */  beql  $at, $zero, .L800BCE10
/* B33F84 800BCDE4 00037080 */   sll   $t6, $v1, 2
/* B33F88 800BCDE8 964A0EDC */  lhu   $t2, 0xedc($s2)
/* B33F8C 800BCDEC 24030002 */  li    $v1, 2
/* B33F90 800BCDF0 314B0100 */  andi  $t3, $t2, 0x100
/* B33F94 800BCDF4 51600005 */  beql  $t3, $zero, .L800BCE0C
/* B33F98 800BCDF8 AE431360 */   sw    $v1, 0x1360($s2)
/* B33F9C 800BCDFC 24030003 */  li    $v1, 3
/* B33FA0 800BCE00 10000002 */  b     .L800BCE0C
/* B33FA4 800BCE04 AE431360 */   sw    $v1, 0x1360($s2)
/* B33FA8 800BCE08 AE431360 */  sw    $v1, 0x1360($s2)
.L800BCE0C:
/* B33FAC 800BCE0C 00037080 */  sll   $t6, $v1, 2
.L800BCE10:
/* B33FB0 800BCE10 010E7821 */  addu  $t7, $t0, $t6
/* B33FB4 800BCE14 0007C080 */  sll   $t8, $a3, 2
/* B33FB8 800BCE18 01F81021 */  addu  $v0, $t7, $t8
/* B33FBC 800BCE1C 80450000 */  lb    $a1, ($v0)
/* B33FC0 800BCE20 80460001 */  lb    $a2, 1($v0)
/* B33FC4 800BCE24 0C030002 */  jal   Gameplay_SpawnScene
/* B33FC8 800BCE28 02202025 */   move  $a0, $s1
/* B33FCC 800BCE2C 3C048014 */  lui   $a0, %hi(D_801441E8) # $a0, 0x8014
/* B33FD0 800BCE30 248441E8 */  addiu $a0, %lo(D_801441E8) # addiu $a0, $a0, 0x41e8
/* B33FD4 800BCE34 8E450000 */  lw    $a1, ($s2)
/* B33FD8 800BCE38 0C00084C */  jal   osSyncPrintf
/* B33FDC 800BCE3C 8E461360 */   lw    $a2, 0x1360($s2)
/* B33FE0 800BCE40 8E500000 */  lw    $s0, ($s2)
/* B33FE4 800BCE44 3C098013 */  lui   $t1, %hi(gEntranceTable)
/* B33FE8 800BCE48 2401005A */  li    $at, 90
/* B33FEC 800BCE4C 0010C880 */  sll   $t9, $s0, 2
/* B33FF0 800BCE50 01394821 */  addu  $t1, $t1, $t9
/* B33FF4 800BCE54 812981C0 */  lb    $t1, %lo(gEntranceTable)($t1)
/* B33FF8 800BCE58 1521000E */  bne   $t1, $at, .L800BCE94
/* B33FFC 800BCE5C 00000000 */   nop
/* B34000 800BCE60 8E4A1360 */  lw    $t2, 0x1360($s2)
/* B34004 800BCE64 24010006 */  li    $at, 6
/* B34008 800BCE68 3C048014 */  lui   $a0, %hi(D_80144204) # $a0, 0x8014
/* B3400C 800BCE6C 15410009 */  bne   $t2, $at, .L800BCE94
/* B34010 800BCE70 00000000 */   nop
/* B34014 800BCE74 0C00084C */  jal   osSyncPrintf
/* B34018 800BCE78 24844204 */   addiu $a0, %lo(D_80144204) # addiu $a0, $a0, 0x4204
/* B3401C 800BCE7C 3C198100 */  lui   $t9, 0x8100
/* B34020 800BCE80 0320F809 */  jalr  $t9
/* B34024 800BCE84 00000000 */  nop
/* B34028 800BCE88 3C048014 */  lui   $a0, %hi(D_80144220) # $a0, 0x8014
/* B3402C 800BCE8C 0C00084C */  jal   osSyncPrintf
/* B34030 800BCE90 24844220 */   addiu $a0, %lo(D_80144220) # addiu $a0, $a0, 0x4220
.L800BCE94:
/* B34034 800BCE94 0C01A428 */  jal   Cutscene_HandleEntranceTriggers
/* B34038 800BCE98 02202025 */   move  $a0, $s1
/* B3403C 800BCE9C 0C02F014 */  jal   KaleidoScopeCall_Init
/* B34040 800BCEA0 02202025 */   move  $a0, $s1
/* B34044 800BCEA4 0C04426C */  jal   func_801109B0
/* B34048 800BCEA8 02202025 */   move  $a0, $s1
/* B3404C 800BCEAC 96421416 */  lhu   $v0, 0x1416($s2)
/* B34050 800BCEB0 3401FFFF */  li    $at, 65535
/* B34054 800BCEB4 1041001D */  beq   $v0, $at, .L800BCF2C
/* B34058 800BCEB8 34018001 */   li    $at, 32769
/* B3405C 800BCEBC 1441001A */  bne   $v0, $at, .L800BCF28
/* B34060 800BCEC0 3409FFFD */   li    $t1, 65533
/* B34064 800BCEC4 8E4B0014 */  lw    $t3, 0x14($s2)
/* B34068 800BCEC8 8E4D0018 */  lw    $t5, 0x18($s2)
/* B3406C 800BCECC 240F0001 */  li    $t7, 1
/* B34070 800BCED0 256C0001 */  addiu $t4, $t3, 1
/* B34074 800BCED4 25AE0001 */  addiu $t6, $t5, 1
/* B34078 800BCED8 AE4C0014 */  sw    $t4, 0x14($s2)
/* B3407C 800BCEDC AE4E0018 */  sw    $t6, 0x18($s2)
/* B34080 800BCEE0 A24F141C */  sb    $t7, 0x141c($s2)
/* B34084 800BCEE4 02202025 */  move  $a0, $s1
/* B34088 800BCEE8 24050021 */  li    $a1, 33
/* B3408C 800BCEEC 0C021A79 */  jal   Inventory_ReplaceItem
/* B34090 800BCEF0 24060022 */   li    $a2, 34
/* B34094 800BCEF4 14400005 */  bnez  $v0, .L800BCF0C
/* B34098 800BCEF8 02202025 */   move  $a0, $s1
/* B3409C 800BCEFC 2405002D */  li    $a1, 45
/* B340A0 800BCF00 0C021A79 */  jal   Inventory_ReplaceItem
/* B340A4 800BCF04 2406002E */   li    $a2, 46
/* B340A8 800BCF08 10400004 */  beqz  $v0, .L800BCF1C
.L800BCF0C:
/* B340AC 800BCF0C 02202025 */   move  $a0, $s1
/* B340B0 800BCF10 24053066 */  li    $a1, 12390
/* B340B4 800BCF14 0C042DA0 */  jal   func_8010B680
/* B340B8 800BCF18 00003025 */   move  $a2, $zero
.L800BCF1C:
/* B340BC 800BCF1C 3418FFFE */  li    $t8, 65534
/* B340C0 800BCF20 10000002 */  b     .L800BCF2C
/* B340C4 800BCF24 A6581416 */   sh    $t8, 0x1416($s2)
.L800BCF28:
/* B340C8 800BCF28 A6491416 */  sh    $t1, 0x1416($s2)
.L800BCF2C:
/* B340CC 800BCF2C 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B340D0 800BCF30 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B340D4 800BCF34 8C590000 */  lw    $t9, ($v0)
/* B340D8 800BCF38 240AFFFF */  li    $t2, -1
/* B340DC 800BCF3C 3C010001 */  lui   $at, (0x00012124 >> 16) # lui $at, 1
/* B340E0 800BCF40 A72A018A */  sh    $t2, 0x18a($t9)
/* B340E4 800BCF44 8C4B0000 */  lw    $t3, ($v0)
/* B340E8 800BCF48 34212124 */  ori   $at, (0x00012124 & 0xFFFF) # ori $at, $at, 0x2124
/* B340EC 800BCF4C 02218021 */  addu  $s0, $s1, $at
/* B340F0 800BCF50 02002025 */  move  $a0, $s0
/* B340F4 800BCF54 0C0303AA */  jal   func_800C0EA8
/* B340F8 800BCF58 A5600190 */   sh    $zero, 0x190($t3)
/* B340FC 800BCF5C 02002025 */  move  $a0, $s0
/* B34100 800BCF60 24050140 */  li    $a1, 320
/* B34104 800BCF64 240600F0 */  li    $a2, 240
/* B34108 800BCF68 00003825 */  move  $a3, $zero
/* B3410C 800BCF6C AFA00010 */  sw    $zero, 0x10($sp)
/* B34110 800BCF70 0C03039C */  jal   func_800C0E70
/* B34114 800BCF74 AFA00014 */   sw    $zero, 0x14($sp)
/* B34118 800BCF78 02002025 */  move  $a0, $s0
/* B3411C 800BCF7C 24050140 */  li    $a1, 320
/* B34120 800BCF80 240600F0 */  li    $a2, 240
/* B34124 800BCF84 00003825 */  move  $a3, $zero
/* B34128 800BCF88 0C0303B6 */  jal   func_800C0ED8
/* B3412C 800BCF8C AFA00010 */   sw    $zero, 0x10($sp)
/* B34130 800BCF90 3C018016 */  lui   $at, %hi(D_80161490) # $at, 0x8016
/* B34134 800BCF94 AC201490 */  sw    $zero, %lo(D_80161490)($at)
/* B34138 800BCF98 3C010001 */  lui   $at, 1
/* B3413C 800BCF9C 00310821 */  addu  $at, $at, $s1
/* B34140 800BCFA0 A020241B */  sb    $zero, 0x241b($at)
/* B34144 800BCFA4 0C0239A8 */  jal   func_8008E6A0
/* B34148 800BCFA8 262407B8 */   addiu $a0, $s1, 0x7b8
/* B3414C 800BCFAC 0C001A78 */  jal   osGetTime
/* B34150 800BCFB0 00000000 */   nop
/* B34154 800BCFB4 0C03F668 */  jal   func_800FD9A0
/* B34158 800BCFB8 00602025 */   move  $a0, $v1
/* B3415C 800BCFBC 0C034204 */  jal   Matrix_Init
/* B34160 800BCFC0 02202025 */   move  $a0, $s1
/* B34164 800BCFC4 3C0C800C */  lui   $t4, %hi(Gameplay_Main) # $t4, 0x800c
/* B34168 800BCFC8 3C0D800C */  lui   $t5, %hi(Gameplay_Destroy) # $t5, 0x800c
/* B3416C 800BCFCC 258CFAE4 */  addiu $t4, %lo(Gameplay_Main) # addiu $t4, $t4, -0x51c
/* B34170 800BCFD0 25ADC8EC */  addiu $t5, %lo(Gameplay_Destroy) # addiu $t5, $t5, -0x3714
/* B34174 800BCFD4 3C010001 */  lui   $at, 1
/* B34178 800BCFD8 AE2C0004 */  sw    $t4, 4($s1)
/* B3417C 800BCFDC AE2D0008 */  sw    $t5, 8($s1)
/* B34180 800BCFE0 00310821 */  addu  $at, $at, $s1
/* B34184 800BCFE4 240EFFEC */  li    $t6, -20
/* B34188 800BCFE8 A02E1E15 */  sb    $t6, 0x1e15($at)
/* B3418C 800BCFEC 3C010001 */  lui   $at, 1
/* B34190 800BCFF0 240300FF */  li    $v1, 255
/* B34194 800BCFF4 00310821 */  addu  $at, $at, $s1
/* B34198 800BCFF8 A4231E16 */  sh    $v1, 0x1e16($at)
/* B3419C 800BCFFC 3C010001 */  lui   $at, 1
/* B341A0 800BD000 00310821 */  addu  $at, $at, $s1
/* B341A4 800BD004 A4201E18 */  sh    $zero, 0x1e18($at)
/* B341A8 800BD008 3C010001 */  lui   $at, 1
/* B341AC 800BD00C 00310821 */  addu  $at, $at, $s1
/* B341B0 800BD010 A0201DE9 */  sb    $zero, 0x1de9($at)
/* B341B4 800BD014 8E4F135C */  lw    $t7, 0x135c($s2)
/* B341B8 800BD018 24010001 */  li    $at, 1
/* B341BC 800BD01C 51E10018 */  beql  $t7, $at, .L800BD080
/* B341C0 800BD020 3C010001 */   lui   $at, 1
/* B341C4 800BD024 9242141D */  lbu   $v0, 0x141d($s2)
/* B341C8 800BD028 3C010001 */  lui   $at, 1
/* B341CC 800BD02C 00310821 */  addu  $at, $at, $s1
/* B341D0 800BD030 1462000F */  bne   $v1, $v0, .L800BD070
/* B341D4 800BD034 240E00FF */   li    $t6, 255
/* B341D8 800BD038 8E500000 */  lw    $s0, ($s2)
/* B341DC 800BD03C 93A9006F */  lbu   $t1, 0x6f($sp)
/* B341E0 800BD040 3C0B8013 */  lui   $t3, %hi(gEntranceTable+2)
/* B341E4 800BD044 0010C080 */  sll   $t8, $s0, 2
/* B341E8 800BD048 00095080 */  sll   $t2, $t1, 2
/* B341EC 800BD04C 030AC821 */  addu  $t9, $t8, $t2
/* B341F0 800BD050 01795821 */  addu  $t3, $t3, $t9
/* B341F4 800BD054 956B81C2 */  lhu   $t3, %lo(gEntranceTable+2)($t3)
/* B341F8 800BD058 3C010001 */  lui   $at, 1
/* B341FC 800BD05C 00310821 */  addu  $at, $at, $s1
/* B34200 800BD060 000B61C3 */  sra   $t4, $t3, 7
/* B34204 800BD064 318D007F */  andi  $t5, $t4, 0x7f
/* B34208 800BD068 10000008 */  b     .L800BD08C
/* B3420C 800BD06C A02D1E5E */   sb    $t5, 0x1e5e($at)
.L800BD070:
/* B34210 800BD070 A0221E5E */  sb    $v0, 0x1e5e($at)
/* B34214 800BD074 10000005 */  b     .L800BD08C
/* B34218 800BD078 A24E141D */   sb    $t6, 0x141d($s2)
/* B3421C 800BD07C 3C010001 */  lui   $at, 1
.L800BD080:
/* B34220 800BD080 00310821 */  addu  $at, $at, $s1
/* B34224 800BD084 240F0006 */  li    $t7, 6
/* B34228 800BD088 A02F1E5E */  sb    $t7, 0x1e5e($at)
.L800BD08C:
/* B3422C 800BD08C 0C02CE42 */  jal   func_800B3908
/* B34230 800BD090 00000000 */   nop
/* B34234 800BD094 3C010001 */  lui   $at, (0x0001241C >> 16) # lui $at, 1
/* B34238 800BD098 3421241C */  ori   $at, (0x0001241C & 0xFFFF) # ori $at, $at, 0x241c
/* B3423C 800BD09C 02218021 */  addu  $s0, $s1, $at
/* B34240 800BD0A0 0C02CD4E */  jal   func_800B3538
/* B34244 800BD0A4 02002025 */   move  $a0, $s0
/* B34248 800BD0A8 02002025 */  move  $a0, $s0
/* B3424C 800BD0AC 0C02CDFB */  jal   func_800B37EC
/* B34250 800BD0B0 24050003 */   li    $a1, 3
/* B34254 800BD0B4 3C05A0A0 */  lui   $a1, (0xA0A0A0FF >> 16) # lui $a1, 0xa0a0
/* B34258 800BD0B8 34A5A0FF */  ori   $a1, (0xA0A0A0FF & 0xFFFF) # ori $a1, $a1, 0xa0ff
/* B3425C 800BD0BC 0C02CDF9 */  jal   func_800B37E4
/* B34260 800BD0C0 02002025 */   move  $a0, $s0
/* B34264 800BD0C4 0C02CD38 */  jal   func_800B34E0
/* B34268 800BD0C8 02002025 */   move  $a0, $s0
/* B3426C 800BD0CC 3C048016 */  lui   $a0, %hi(D_80161498) # $a0, 0x8016
/* B34270 800BD0D0 0C02B400 */  jal   func_800AD000
/* B34274 800BD0D4 24841498 */   addiu $a0, %lo(D_80161498) # addiu $a0, $a0, 0x1498
/* B34278 800BD0D8 3C018016 */  lui   $at, %hi(D_801614B0+3) # $at, 0x8016
/* B3427C 800BD0DC A02014B3 */  sb    $zero, %lo(D_801614B0+3)($at)
/* B34280 800BD0E0 0C01B0E8 */  jal   func_8006C3A0
/* B34284 800BD0E4 02202025 */   move  $a0, $s1
/* B34288 800BD0E8 26300074 */  addiu $s0, $s1, 0x74
/* B3428C 800BD0EC 0C030EE2 */  jal   THA_GetSize
/* B34290 800BD0F0 02002025 */   move  $a0, $s0
/* B34294 800BD0F4 3C048014 */  lui   $a0, %hi(D_8014422C) # $a0, 0x8014
/* B34298 800BD0F8 2484422C */  addiu $a0, %lo(D_8014422C) # addiu $a0, $a0, 0x422c
/* B3429C 800BD0FC 0C00084C */  jal   osSyncPrintf
/* B342A0 800BD100 00402825 */   move  $a1, $v0
/* B342A4 800BD104 0C030EE2 */  jal   THA_GetSize
/* B342A8 800BD108 02002025 */   move  $a0, $s0
/* B342AC 800BD10C 3C068014 */  lui   $a2, %hi(D_80144244) # $a2, 0x8014
/* B342B0 800BD110 AFA2007C */  sw    $v0, 0x7c($sp)
/* B342B4 800BD114 24C64244 */  addiu $a2, %lo(D_80144244) # addiu $a2, $a2, 0x4244
/* B342B8 800BD118 02202025 */  move  $a0, $s1
/* B342BC 800BD11C 00402825 */  move  $a1, $v0
/* B342C0 800BD120 0C031521 */  jal   Game_Alloc
/* B342C4 800BD124 24070B66 */   li    $a3, 2918
/* B342C8 800BD128 8FA9007C */  lw    $t1, 0x7c($sp)
/* B342CC 800BD12C 24460008 */  addiu $a2, $v0, 8
/* B342D0 800BD130 2401FFF0 */  li    $at, -16
/* B342D4 800BD134 00C12024 */  and   $a0, $a2, $at
/* B342D8 800BD138 0124C023 */  subu  $t8, $t1, $a0
/* B342DC 800BD13C AFA20084 */  sw    $v0, 0x84($sp)
/* B342E0 800BD140 00808025 */  move  $s0, $a0
/* B342E4 800BD144 0C01EC81 */  jal   ZeldaArena_Init
/* B342E8 800BD148 03022821 */   addu  $a1, $t8, $v0
/* B342EC 800BD14C 8FAA007C */  lw    $t2, 0x7c($sp)
/* B342F0 800BD150 8FAB0084 */  lw    $t3, 0x84($sp)
/* B342F4 800BD154 3C048014 */  lui   $a0, %hi(D_80144250) # $a0, 0x8014
/* B342F8 800BD158 020AC821 */  addu  $t9, $s0, $t2
/* B342FC 800BD15C 020B6023 */  subu  $t4, $s0, $t3
/* B34300 800BD160 032C3023 */  subu  $a2, $t9, $t4
/* B34304 800BD164 24844250 */  addiu $a0, %lo(D_80144250) # addiu $a0, $a0, 0x4250
/* B34308 800BD168 0C00084C */  jal   osSyncPrintf
/* B3430C 800BD16C 02002825 */   move  $a1, $s0
/* B34310 800BD170 3C048016 */  lui   $a0, %hi(D_801614B8) # $a0, 0x8016
/* B34314 800BD174 3C058008 */  lui   $a1, %hi(ZeldaArena_Display) # $a1, 0x8008
/* B34318 800BD178 24A5B178 */  addiu $a1, %lo(ZeldaArena_Display) # addiu $a1, $a1, -0x4e88
/* B3431C 800BD17C 248414B8 */  addiu $a0, %lo(D_801614B8) # addiu $a0, $a0, 0x14b8
/* B34320 800BD180 00003025 */  move  $a2, $zero
/* B34324 800BD184 0C035077 */  jal   Fault_AddClient
/* B34328 800BD188 00003825 */   move  $a3, $zero
/* B3432C 800BD18C 3C060001 */  lui   $a2, 1
/* B34330 800BD190 00D13021 */  addu  $a2, $a2, $s1
/* B34334 800BD194 8CC61DF4 */  lw    $a2, 0x1df4($a2)
/* B34338 800BD198 02202025 */  move  $a0, $s1
/* B3433C 800BD19C 0C00C137 */  jal   func_800304DC
/* B34340 800BD1A0 26251C24 */   addiu $a1, $s1, 0x1c24
/* B34344 800BD1A4 3C010001 */  lui   $at, (0x00011CBC >> 16) # lui $at, 1
/* B34348 800BD1A8 34211CBC */  ori   $at, (0x00011CBC & 0xFFFF) # ori $at, $at, 0x1cbc
/* B3434C 800BD1AC 02218021 */  addu  $s0, $s1, $at
/* B34350 800BD1B0 02002825 */  move  $a1, $s0
/* B34354 800BD1B4 0C025CFF */  jal   func_800973FC
/* B34358 800BD1B8 02202025 */   move  $a0, $s1
/* B3435C 800BD1BC 14400005 */  bnez  $v0, .L800BD1D4
/* B34360 800BD1C0 02202025 */   move  $a0, $s1
.L800BD1C4:
/* B34364 800BD1C4 0C025CFF */  jal   func_800973FC
/* B34368 800BD1C8 02002825 */   move  $a1, $s0
/* B3436C 800BD1CC 5040FFFD */  beql  $v0, $zero, .L800BD1C4
/* B34370 800BD1D0 02202025 */   move  $a0, $s1
.L800BD1D4:
/* B34374 800BD1D4 8E251C44 */  lw    $a1, 0x1c44($s1)
/* B34378 800BD1D8 8FA40038 */  lw    $a0, 0x38($sp)
/* B3437C 800BD1DC 0C016052 */  jal   func_80058148
/* B34380 800BD1E0 AFA50078 */   sw    $a1, 0x78($sp)
/* B34384 800BD1E4 8FA40038 */  lw    $a0, 0x38($sp)
/* B34388 800BD1E8 0C016911 */  jal   func_8005A444
/* B3438C 800BD1EC 00002825 */   move  $a1, $zero
/* B34390 800BD1F0 8FAD0078 */  lw    $t5, 0x78($sp)
/* B34394 800BD1F4 240100FF */  li    $at, 255
/* B34398 800BD1F8 3C048014 */  lui   $a0, %hi(D_80144268) # $a0, 0x8014
/* B3439C 800BD1FC 85B0001C */  lh    $s0, 0x1c($t5)
/* B343A0 800BD200 24844268 */  addiu $a0, %lo(D_80144268) # addiu $a0, $a0, 0x4268
/* B343A4 800BD204 321000FF */  andi  $s0, $s0, 0xff
/* B343A8 800BD208 12010006 */  beq   $s0, $at, .L800BD224
/* B343AC 800BD20C 00000000 */   nop
/* B343B0 800BD210 0C00084C */  jal   osSyncPrintf
/* B343B4 800BD214 02002825 */   move  $a1, $s0
/* B343B8 800BD218 8FA40038 */  lw    $a0, 0x38($sp)
/* B343BC 800BD21C 0C0169EA */  jal   func_8005A7A8
/* B343C0 800BD220 02002825 */   move  $a1, $s0
.L800BD224:
/* B343C4 800BD224 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* B343C8 800BD228 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B343CC 800BD22C 24010020 */  li    $at, 32
/* B343D0 800BD230 240F0002 */  li    $t7, 2
/* B343D4 800BD234 85C204B2 */  lh    $v0, 0x4b2($t6)
/* B343D8 800BD238 14410004 */  bne   $v0, $at, .L800BD24C
/* B343DC 800BD23C 3C010001 */   lui   $at, 1
/* B343E0 800BD240 00310821 */  addu  $at, $at, $s1
/* B343E4 800BD244 1000000B */  b     .L800BD274
/* B343E8 800BD248 A02F242B */   sb    $t7, 0x242b($at)
.L800BD24C:
/* B343EC 800BD24C 24010010 */  li    $at, 16
/* B343F0 800BD250 14410005 */  bne   $v0, $at, .L800BD268
/* B343F4 800BD254 24090001 */   li    $t1, 1
/* B343F8 800BD258 3C010001 */  lui   $at, 1
/* B343FC 800BD25C 00310821 */  addu  $at, $at, $s1
/* B34400 800BD260 10000004 */  b     .L800BD274
/* B34404 800BD264 A029242B */   sb    $t1, 0x242b($at)
.L800BD268:
/* B34408 800BD268 3C010001 */  lui   $at, 1
/* B3440C 800BD26C 00310821 */  addu  $at, $at, $s1
/* B34410 800BD270 A020242B */  sb    $zero, 0x242b($at)
.L800BD274:
/* B34414 800BD274 0C02101F */  jal   Interface_SetSceneRestrictions
/* B34418 800BD278 02202025 */   move  $a0, $s1
/* B3441C 800BD27C 0C01D62B */  jal   func_800758AC
/* B34420 800BD280 02202025 */   move  $a0, $s1
/* B34424 800BD284 923807A4 */  lbu   $t8, 0x7a4($s1)
/* B34428 800BD288 3C018016 */  lui   $at, %hi(gSaveContext+0x13e0) # $at, 0x8016
/* B3442C 800BD28C 02202025 */  move  $a0, $s1
/* B34430 800BD290 A038FA40 */  sb    $t8, %lo(gSaveContext+0x13e0)($at)
/* B34434 800BD294 922A07A5 */  lbu   $t2, 0x7a5($s1)
/* B34438 800BD298 3C018016 */  lui   $at, %hi(gSaveContext+0x13e1) # $at, 0x8016
/* B3443C 800BD29C A02AFA41 */  sb    $t2, %lo(gSaveContext+0x13e1)($at)
/* B34440 800BD2A0 0C00B7C6 */  jal   func_8002DF18
/* B34444 800BD2A4 8E251C44 */   lw    $a1, 0x1c44($s1)
/* B34448 800BD2A8 02202025 */  move  $a0, $s1
/* B3444C 800BD2AC 0C028E43 */  jal   func_800A390C
/* B34450 800BD2B0 8FA5003C */   lw    $a1, 0x3c($sp)
/* B34454 800BD2B4 AE401364 */  sw    $zero, 0x1364($s2)
/* B34458 800BD2B8 3C0B8016 */  lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* B3445C 800BD2BC 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* B34460 800BD2C0 3C108013 */  lui   $s0, %hi(D_8012D1F0) # $s0, 0x8013
/* B34464 800BD2C4 3C0C8016 */  lui   $t4, %hi(D_801614D0)
/* B34468 800BD2C8 85791452 */  lh    $t9, 0x1452($t3)
/* B3446C 800BD2CC 2610D1F0 */  addiu $s0, %lo(D_8012D1F0) # addiu $s0, $s0, -0x2e10
/* B34470 800BD2D0 258514D0 */  addiu $a1, $t4, %lo(D_801614D0)
/* B34474 800BD2D4 13200009 */  beqz  $t9, .L800BD2FC
/* B34478 800BD2D8 3C048014 */   lui   $a0, %hi(D_80144294) # $a0, 0x8014
/* B3447C 800BD2DC AE050000 */  sw    $a1, ($s0)
/* B34480 800BD2E0 0C00084C */  jal   osSyncPrintf
/* B34484 800BD2E4 24844294 */   addiu $a0, %lo(D_80144294) # addiu $a0, $a0, 0x4294
/* B34488 800BD2E8 3C0403FE */  lui   $a0, (0x03FEB000 >> 16) # lui $a0, 0x3fe
/* B3448C 800BD2EC 3484B000 */  ori   $a0, (0x03FEB000 & 0xFFFF) # ori $a0, $a0, 0xb000
/* B34490 800BD2F0 8E050000 */  lw    $a1, ($s0)
/* B34494 800BD2F4 0C0002FF */  jal   DmaMgr_DMARomToRam
/* B34498 800BD2F8 24065000 */   li    $a2, 20480
.L800BD2FC:
/* B3449C 800BD2FC 8FBF002C */  lw    $ra, 0x2c($sp)
/* B344A0 800BD300 8FB00020 */  lw    $s0, 0x20($sp)
/* B344A4 800BD304 8FB10024 */  lw    $s1, 0x24($sp)
/* B344A8 800BD308 8FB20028 */  lw    $s2, 0x28($sp)
/* B344AC 800BD30C 03E00008 */  jr    $ra
/* B344B0 800BD310 27BD0090 */   addiu $sp, $sp, 0x90

