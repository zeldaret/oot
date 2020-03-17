.rdata
glabel D_80144744
    .asciz "../z_play.c"
    .balign 4

glabel D_80144750
    .asciz "1 = %d\n"
    .balign 4

glabel D_80144758
    .asciz "../z_play.c"
    .balign 4

glabel D_80144764
    .asciz "1 = %d\n"
    .balign 4

glabel D_8014476C
    .asciz "../z_play.c"
    .balign 4

glabel D_80144778
    .asciz "1 = %d\n"
    .balign 4

.text
glabel func_800BFAE4
/* B36C84 800BFAE4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B36C88 800BFAE8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B36C8C 800BFAEC 248F0014 */  addiu $t7, $a0, 0x14
/* B36C90 800BFAF0 3C018013 */  lui   $at, %hi(D_8012D1F8) # $at, 0x8013
/* B36C94 800BFAF4 AFA40018 */  sw    $a0, 0x18($sp)
/* B36C98 800BFAF8 0C018FA4 */  jal   DebugDisplay_Init
/* B36C9C 800BFAFC AC2FD1F8 */   sw    $t7, %lo(D_8012D1F8)($at)
/* B36CA0 800BFB00 3C068016 */  lui   $a2, %hi(gGameInfo) # $a2, 0x8016
/* B36CA4 800BFB04 24C6FA90 */  addiu $a2, %lo(gGameInfo) # addiu $a2, $a2, -0x570
/* B36CA8 800BFB08 8CC30000 */  lw    $v1, ($a2)
/* B36CAC 800BFB0C 3C048014 */  lui   $a0, %hi(D_80144744) # $a0, 0x8014
/* B36CB0 800BFB10 24844744 */  addiu $a0, %lo(D_80144744) # addiu $a0, $a0, 0x4744
/* B36CB4 800BFB14 84781052 */  lh    $t8, 0x1052($v1)
/* B36CB8 800BFB18 5300000B */  beql  $t8, $zero, .L800BFB48
/* B36CBC 800BFB1C 84641074 */   lh    $a0, 0x1074($v1)
/* B36CC0 800BFB20 0C000B84 */  jal   LogUtils_LogThreadId
/* B36CC4 800BFB24 240511CC */   li    $a1, 4556
/* B36CC8 800BFB28 3C048014 */  lui   $a0, %hi(D_80144750) # $a0, 0x8014
/* B36CCC 800BFB2C 24844750 */  addiu $a0, %lo(D_80144750) # addiu $a0, $a0, 0x4750
/* B36CD0 800BFB30 0C00084C */  jal   osSyncPrintf
/* B36CD4 800BFB34 24050001 */   li    $a1, 1
/* B36CD8 800BFB38 3C068016 */  lui   $a2, %hi(gGameInfo) # $a2, 0x8016
/* B36CDC 800BFB3C 24C6FA90 */  addiu $a2, %lo(gGameInfo) # addiu $a2, $a2, -0x570
/* B36CE0 800BFB40 8CC30000 */  lw    $v1, ($a2)
/* B36CE4 800BFB44 84641074 */  lh    $a0, 0x1074($v1)
.L800BFB48:
/* B36CE8 800BFB48 2405000A */  li    $a1, 10
/* B36CEC 800BFB4C 14A40024 */  bne   $a1, $a0, .L800BFBE0
/* B36CF0 800BFB50 00000000 */   nop   
/* B36CF4 800BFB54 84791090 */  lh    $t9, 0x1090($v1)
/* B36CF8 800BFB58 24020001 */  li    $v0, 1
/* B36CFC 800BFB5C 10B90020 */  beq   $a1, $t9, .L800BFBE0
/* B36D00 800BFB60 00000000 */   nop   
/* B36D04 800BFB64 A4621076 */  sh    $v0, 0x1076($v1)
/* B36D08 800BFB68 8CC80000 */  lw    $t0, ($a2)
/* B36D0C 800BFB6C 240A0003 */  li    $t2, 3
/* B36D10 800BFB70 2419000F */  li    $t9, 15
/* B36D14 800BFB74 A5021078 */  sh    $v0, 0x1078($t0)
/* B36D18 800BFB78 8CC90000 */  lw    $t1, ($a2)
/* B36D1C 800BFB7C A522107A */  sh    $v0, 0x107a($t1)
/* B36D20 800BFB80 8CCB0000 */  lw    $t3, ($a2)
/* B36D24 800BFB84 A56A107C */  sh    $t2, 0x107c($t3)
/* B36D28 800BFB88 8CCC0000 */  lw    $t4, ($a2)
/* B36D2C 800BFB8C A582107E */  sh    $v0, 0x107e($t4)
/* B36D30 800BFB90 8CCD0000 */  lw    $t5, ($a2)
/* B36D34 800BFB94 A5A21080 */  sh    $v0, 0x1080($t5)
/* B36D38 800BFB98 8CCE0000 */  lw    $t6, ($a2)
/* B36D3C 800BFB9C A5C21082 */  sh    $v0, 0x1082($t6)
/* B36D40 800BFBA0 8CCF0000 */  lw    $t7, ($a2)
/* B36D44 800BFBA4 A5E21084 */  sh    $v0, 0x1084($t7)
/* B36D48 800BFBA8 8CD80000 */  lw    $t8, ($a2)
/* B36D4C 800BFBAC A7021086 */  sh    $v0, 0x1086($t8)
/* B36D50 800BFBB0 8CC80000 */  lw    $t0, ($a2)
/* B36D54 800BFBB4 A5191088 */  sh    $t9, 0x1088($t0)
/* B36D58 800BFBB8 8CC90000 */  lw    $t1, ($a2)
/* B36D5C 800BFBBC A522108A */  sh    $v0, 0x108a($t1)
/* B36D60 800BFBC0 8CCA0000 */  lw    $t2, ($a2)
/* B36D64 800BFBC4 A542108C */  sh    $v0, 0x108c($t2)
/* B36D68 800BFBC8 8CCB0000 */  lw    $t3, ($a2)
/* B36D6C 800BFBCC A562108E */  sh    $v0, 0x108e($t3)
/* B36D70 800BFBD0 8CCC0000 */  lw    $t4, ($a2)
/* B36D74 800BFBD4 A5851090 */  sh    $a1, 0x1090($t4)
/* B36D78 800BFBD8 8CC30000 */  lw    $v1, ($a2)
/* B36D7C 800BFBDC 84641074 */  lh    $a0, 0x1074($v1)
.L800BFBE0:
/* B36D80 800BFBE0 14A40004 */  bne   $a1, $a0, .L800BFBF4
/* B36D84 800BFBE4 00000000 */   nop   
/* B36D88 800BFBE8 846D1076 */  lh    $t5, 0x1076($v1)
/* B36D8C 800BFBEC 51A00007 */  beql  $t5, $zero, .L800BFC0C
/* B36D90 800BFBF0 84621052 */   lh    $v0, 0x1052($v1)
.L800BFBF4:
/* B36D94 800BFBF4 0C02F4C5 */  jal   func_800BD314
/* B36D98 800BFBF8 8FA40018 */   lw    $a0, 0x18($sp)
/* B36D9C 800BFBFC 3C068016 */  lui   $a2, %hi(gGameInfo) # $a2, 0x8016
/* B36DA0 800BFC00 24C6FA90 */  addiu $a2, %lo(gGameInfo) # addiu $a2, $a2, -0x570
/* B36DA4 800BFC04 8CC30000 */  lw    $v1, ($a2)
/* B36DA8 800BFC08 84621052 */  lh    $v0, 0x1052($v1)
.L800BFC0C:
/* B36DAC 800BFC0C 3C048014 */  lui   $a0, %hi(D_80144758) # $a0, 0x8014
/* B36DB0 800BFC10 24844758 */  addiu $a0, %lo(D_80144758) # addiu $a0, $a0, 0x4758
/* B36DB4 800BFC14 10400007 */  beqz  $v0, .L800BFC34
/* B36DB8 800BFC18 00000000 */   nop   
/* B36DBC 800BFC1C 0C000B84 */  jal   LogUtils_LogThreadId
/* B36DC0 800BFC20 240511E7 */   li    $a1, 4583
/* B36DC4 800BFC24 3C048014 */  lui   $a0, %hi(D_80144764) # $a0, 0x8014
/* B36DC8 800BFC28 24844764 */  addiu $a0, %lo(D_80144764) # addiu $a0, $a0, 0x4764
/* B36DCC 800BFC2C 0C00084C */  jal   osSyncPrintf
/* B36DD0 800BFC30 24050001 */   li    $a1, 1
.L800BFC34:
/* B36DD4 800BFC34 0C02FB76 */  jal   func_800BEDD8
/* B36DD8 800BFC38 8FA40018 */   lw    $a0, 0x18($sp)
/* B36DDC 800BFC3C 3C068016 */  lui   $a2, %hi(gGameInfo) # $a2, 0x8016
/* B36DE0 800BFC40 24C6FA90 */  addiu $a2, %lo(gGameInfo) # addiu $a2, $a2, -0x570
/* B36DE4 800BFC44 8CCE0000 */  lw    $t6, ($a2)
/* B36DE8 800BFC48 3C048014 */  lui   $a0, %hi(D_8014476C) # $a0, 0x8014
/* B36DEC 800BFC4C 2484476C */  addiu $a0, %lo(D_8014476C) # addiu $a0, $a0, 0x476c
/* B36DF0 800BFC50 85CF1052 */  lh    $t7, 0x1052($t6)
/* B36DF4 800BFC54 51E00008 */  beql  $t7, $zero, .L800BFC78
/* B36DF8 800BFC58 8FBF0014 */   lw    $ra, 0x14($sp)
/* B36DFC 800BFC5C 0C000B84 */  jal   LogUtils_LogThreadId
/* B36E00 800BFC60 240511EB */   li    $a1, 4587
/* B36E04 800BFC64 3C048014 */  lui   $a0, %hi(D_80144778) # $a0, 0x8014
/* B36E08 800BFC68 24844778 */  addiu $a0, %lo(D_80144778) # addiu $a0, $a0, 0x4778
/* B36E0C 800BFC6C 0C00084C */  jal   osSyncPrintf
/* B36E10 800BFC70 24050001 */   li    $a1, 1
/* B36E14 800BFC74 8FBF0014 */  lw    $ra, 0x14($sp)
.L800BFC78:
/* B36E18 800BFC78 27BD0018 */  addiu $sp, $sp, 0x18
/* B36E1C 800BFC7C 03E00008 */  jr    $ra
/* B36E20 800BFC80 00000000 */   nop   

