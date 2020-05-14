.late_rodata
glabel D_801450E8
    .float 0.833

.text
glabel GameState_Update
/* B3BC68 800C4AC8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B3BC6C 800C4ACC AFBF0014 */  sw    $ra, 0x14($sp)
/* B3BC70 800C4AD0 AFA40020 */  sw    $a0, 0x20($sp)
/* B3BC74 800C4AD4 8C860000 */  lw    $a2, ($a0)
/* B3BC78 800C4AD8 00C02025 */  move  $a0, $a2
/* B3BC7C 800C4ADC 0C031233 */  jal   GameState_SetFrameBuffer
/* B3BC80 800C4AE0 AFA6001C */   sw    $a2, 0x1c($sp)
/* B3BC84 800C4AE4 8FA40020 */  lw    $a0, 0x20($sp)
/* B3BC88 800C4AE8 8C990004 */  lw    $t9, 4($a0)
/* B3BC8C 800C4AEC 0320F809 */  jalr  $t9
/* B3BC90 800C4AF0 00000000 */  nop
/* B3BC94 800C4AF4 0C0310D1 */  jal   func_800C4344
/* B3BC98 800C4AF8 8FA40020 */   lw    $a0, 0x20($sp)
/* B3BC9C 800C4AFC 3C078016 */  lui   $a3, %hi(gGameInfo) # $a3, 0x8016
/* B3BCA0 800C4B00 24E7FA90 */  addiu $a3, %lo(gGameInfo) # addiu $a3, $a3, -0x570
/* B3BCA4 800C4B04 8CE20000 */  lw    $v0, ($a3)
/* B3BCA8 800C4B08 24040001 */  li    $a0, 1
/* B3BCAC 800C4B0C 8FA6001C */  lw    $a2, 0x1c($sp)
/* B3BCB0 800C4B10 84430152 */  lh    $v1, 0x152($v0)
/* B3BCB4 800C4B14 1483002D */  bne   $a0, $v1, .L800C4BCC
/* B3BCB8 800C4B18 28610002 */   slti  $at, $v1, 2
/* B3BCBC 800C4B1C 84430134 */  lh    $v1, 0x134($v0)
/* B3BCC0 800C4B20 3C0F8001 */  lui   $t7, %hi(gViConfigMode) # $t7, 0x8001
/* B3BCC4 800C4B24 25EF3910 */  addiu $t7, %lo(gViConfigMode) # addiu $t7, $t7, 0x3910
/* B3BCC8 800C4B28 04610010 */  bgez  $v1, .L800C4B6C
/* B3BCCC 800C4B2C 3C188001 */   lui   $t8, %hi(gViConfigFeatures) # $t8, 0x8001
/* B3BCD0 800C4B30 A4400134 */  sh    $zero, 0x134($v0)
/* B3BCD4 800C4B34 ACCF0284 */  sw    $t7, 0x284($a2)
/* B3BCD8 800C4B38 8F18943C */  lw    $t8, %lo(gViConfigFeatures)($t8)
/* B3BCDC 800C4B3C 3C018001 */  lui   $at, %hi(gViConfigXScale)
/* B3BCE0 800C4B40 24050002 */  li    $a1, 2
/* B3BCE4 800C4B44 ACD802E4 */  sw    $t8, 0x2e4($a2)
/* B3BCE8 800C4B48 C4249440 */  lwc1  $f4, %lo(gViConfigXScale)($at)
/* B3BCEC 800C4B4C 3C018001 */  lui   $at, %hi(gViConfigYScale)
/* B3BCF0 800C4B50 E4C402F4 */  swc1  $f4, 0x2f4($a2)
/* B3BCF4 800C4B54 C4269444 */  lwc1  $f6, %lo(gViConfigYScale)($at)
/* B3BCF8 800C4B58 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B3BCFC 800C4B5C 44810000 */  mtc1  $at, $f0
/* B3BD00 800C4B60 E4C602F8 */  swc1  $f6, 0x2f8($a2)
/* B3BD04 800C4B64 1000006D */  b     .L800C4D1C
/* B3BD08 800C4B68 8CE20000 */   lw    $v0, ($a3)
.L800C4B6C:
/* B3BD0C 800C4B6C 18600013 */  blez  $v1, .L800C4BBC
/* B3BD10 800C4B70 3C048016 */   lui   $a0, %hi(D_80166528) # $a0, 0x8016
/* B3BD14 800C4B74 8FA50020 */  lw    $a1, 0x20($sp)
/* B3BD18 800C4B78 24846528 */  addiu $a0, %lo(D_80166528) # addiu $a0, $a0, 0x6528
/* B3BD1C 800C4B7C AFA6001C */  sw    $a2, 0x1c($sp)
/* B3BD20 800C4B80 0C02B2BE */  jal   func_800ACAF8
/* B3BD24 800C4B84 24A50014 */   addiu $a1, $a1, 0x14
/* B3BD28 800C4B88 8FA6001C */  lw    $a2, 0x1c($sp)
/* B3BD2C 800C4B8C 3C038016 */  lui   $v1, %hi(D_80166528) # $v1, 0x8016
/* B3BD30 800C4B90 24636528 */  addiu $v1, %lo(D_80166528) # addiu $v1, $v1, 0x6528
/* B3BD34 800C4B94 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B3BD38 800C4B98 44810000 */  mtc1  $at, $f0
/* B3BD3C 800C4B9C ACC30284 */  sw    $v1, 0x284($a2)
/* B3BD40 800C4BA0 8C690080 */  lw    $t1, 0x80($v1)
/* B3BD44 800C4BA4 3C078016 */  lui   $a3, %hi(gGameInfo) # $a3, 0x8016
/* B3BD48 800C4BA8 24E7FA90 */  addiu $a3, %lo(gGameInfo) # addiu $a3, $a3, -0x570
/* B3BD4C 800C4BAC E4C002F4 */  swc1  $f0, 0x2f4($a2)
/* B3BD50 800C4BB0 E4C002F8 */  swc1  $f0, 0x2f8($a2)
/* B3BD54 800C4BB4 ACC902E4 */  sw    $t1, 0x2e4($a2)
/* B3BD58 800C4BB8 8CE20000 */  lw    $v0, ($a3)
.L800C4BBC:
/* B3BD5C 800C4BBC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B3BD60 800C4BC0 44810000 */  mtc1  $at, $f0
/* B3BD64 800C4BC4 10000055 */  b     .L800C4D1C
/* B3BD68 800C4BC8 24050002 */   li    $a1, 2
.L800C4BCC:
/* B3BD6C 800C4BCC 1420004F */  bnez  $at, .L800C4D0C
/* B3BD70 800C4BD0 24050002 */   li    $a1, 2
/* B3BD74 800C4BD4 3C0A8001 */  lui   $t2, %hi(gViConfigMode) # $t2, 0x8001
/* B3BD78 800C4BD8 254A3910 */  addiu $t2, %lo(gViConfigMode) # addiu $t2, $t2, 0x3910
/* B3BD7C 800C4BDC ACCA0284 */  sw    $t2, 0x284($a2)
/* B3BD80 800C4BE0 3C0B8001 */  lui   $t3, %hi(gViConfigFeatures) # $t3, 0x8001
/* B3BD84 800C4BE4 8D6B943C */  lw    $t3, %lo(gViConfigFeatures)($t3)
/* B3BD88 800C4BE8 3C018001 */  lui   $at, %hi(gViConfigXScale)
/* B3BD8C 800C4BEC 3C198001 */  lui   $t9, %hi(osViModeMpalLan1) # $t9, 0x8001
/* B3BD90 800C4BF0 ACCB02E4 */  sw    $t3, 0x2e4($a2)
/* B3BD94 800C4BF4 C4289440 */  lwc1  $f8, %lo(gViConfigXScale)($at)
/* B3BD98 800C4BF8 3C018001 */  lui   $at, %hi(gViConfigYScale)
/* B3BD9C 800C4BFC 3C188001 */  lui   $t8, %hi(osViModePalLan1) # $t8, 0x8001
/* B3BDA0 800C4C00 E4C802F4 */  swc1  $f8, 0x2f4($a2)
/* B3BDA4 800C4C04 C42A9444 */  lwc1  $f10, %lo(gViConfigYScale)($at)
/* B3BDA8 800C4C08 24010006 */  li    $at, 6
/* B3BDAC 800C4C0C 3C0A8001 */  lui   $t2, %hi(osViModeFpalLan1) # $t2, 0x8001
/* B3BDB0 800C4C10 E4CA02F8 */  swc1  $f10, 0x2f8($a2)
/* B3BDB4 800C4C14 8CE20000 */  lw    $v0, ($a3)
/* B3BDB8 800C4C18 24050002 */  li    $a1, 2
/* B3BDBC 800C4C1C 3C0D8001 */  lui   $t5, %hi(osViModeNtscLan1) # $t5, 0x8001
/* B3BDC0 800C4C20 84430152 */  lh    $v1, 0x152($v0)
/* B3BDC4 800C4C24 2739AE50 */  addiu $t9, %lo(osViModeMpalLan1) # addiu $t9, $t9, -0x51b0
/* B3BDC8 800C4C28 2718ACA0 */  addiu $t8, %lo(osViModePalLan1) # addiu $t8, $t8, -0x5360
/* B3BDCC 800C4C2C 10610006 */  beq   $v1, $at, .L800C4C48
/* B3BDD0 800C4C30 254AAF20 */   addiu $t2, %lo(osViModeFpalLan1) # addiu $t2, $t2, -0x50e0
/* B3BDD4 800C4C34 14A3000C */  bne   $a1, $v1, .L800C4C68
/* B3BDD8 800C4C38 3C088000 */   lui   $t0, %hi(osTvType) # $t0, 0x8000
/* B3BDDC 800C4C3C 25080300 */  addiu $t0, %lo(osTvType) # addiu $t0, $t0, 0x300
/* B3BDE0 800C4C40 8D0C0000 */  lw    $t4, ($t0)
/* B3BDE4 800C4C44 148C0008 */  bne   $a0, $t4, .L800C4C68
.L800C4C48:
/* B3BDE8 800C4C48 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* B3BDEC 800C4C4C 44810000 */  mtc1  $at, $f0
/* B3BDF0 800C4C50 25ADAE00 */  addiu $t5, %lo(osViModeNtscLan1) # addiu $t5, $t5, -0x5200
/* B3BDF4 800C4C54 ACCD0284 */  sw    $t5, 0x284($a2)
/* B3BDF8 800C4C58 E4C002F8 */  swc1  $f0, 0x2f8($a2)
/* B3BDFC 800C4C5C 8CE20000 */  lw    $v0, ($a3)
/* B3BE00 800C4C60 24050002 */  li    $a1, 2
/* B3BE04 800C4C64 84430152 */  lh    $v1, 0x152($v0)
.L800C4C68:
/* B3BE08 800C4C68 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B3BE0C 800C4C6C 44810000 */  mtc1  $at, $f0
/* B3BE10 800C4C70 3C088000 */  lui   $t0, %hi(osTvType) # $t0, 0x8000
/* B3BE14 800C4C74 24010005 */  li    $at, 5
/* B3BE18 800C4C78 10610006 */  beq   $v1, $at, .L800C4C94
/* B3BE1C 800C4C7C 25080300 */   addiu $t0, %lo(osTvType) # addiu $t0, $t0, 0x300
/* B3BE20 800C4C80 54A30009 */  bnel  $a1, $v1, .L800C4CA8
/* B3BE24 800C4C84 24010004 */   li    $at, 4
/* B3BE28 800C4C88 8D0E0000 */  lw    $t6, ($t0)
/* B3BE2C 800C4C8C 54AE0006 */  bnel  $a1, $t6, .L800C4CA8
/* B3BE30 800C4C90 24010004 */   li    $at, 4
.L800C4C94:
/* B3BE34 800C4C94 ACD90284 */  sw    $t9, 0x284($a2)
/* B3BE38 800C4C98 E4C002F8 */  swc1  $f0, 0x2f8($a2)
/* B3BE3C 800C4C9C 8CE20000 */  lw    $v0, ($a3)
/* B3BE40 800C4CA0 84430152 */  lh    $v1, 0x152($v0)
/* B3BE44 800C4CA4 24010004 */  li    $at, 4
.L800C4CA8:
/* B3BE48 800C4CA8 50610007 */  beql  $v1, $at, .L800C4CC8
/* B3BE4C 800C4CAC ACD80284 */   sw    $t8, 0x284($a2)
/* B3BE50 800C4CB0 54A30009 */  bnel  $a1, $v1, .L800C4CD8
/* B3BE54 800C4CB4 24010003 */   li    $at, 3
/* B3BE58 800C4CB8 8D0F0000 */  lw    $t7, ($t0)
/* B3BE5C 800C4CBC 55E00006 */  bnezl $t7, .L800C4CD8
/* B3BE60 800C4CC0 24010003 */   li    $at, 3
/* B3BE64 800C4CC4 ACD80284 */  sw    $t8, 0x284($a2)
.L800C4CC8:
/* B3BE68 800C4CC8 E4C002F8 */  swc1  $f0, 0x2f8($a2)
/* B3BE6C 800C4CCC 8CE20000 */  lw    $v0, ($a3)
/* B3BE70 800C4CD0 84430152 */  lh    $v1, 0x152($v0)
/* B3BE74 800C4CD4 24010003 */  li    $at, 3
.L800C4CD8:
/* B3BE78 800C4CD8 50610007 */  beql  $v1, $at, .L800C4CF8
/* B3BE7C 800C4CDC ACCA0284 */   sw    $t2, 0x284($a2)
/* B3BE80 800C4CE0 54A3000F */  bnel  $a1, $v1, .L800C4D20
/* B3BE84 800C4CE4 844B1074 */   lh    $t3, 0x1074($v0)
/* B3BE88 800C4CE8 8D090000 */  lw    $t1, ($t0)
/* B3BE8C 800C4CEC 5520000C */  bnezl $t1, .L800C4D20
/* B3BE90 800C4CF0 844B1074 */   lh    $t3, 0x1074($v0)
/* B3BE94 800C4CF4 ACCA0284 */  sw    $t2, 0x284($a2)
.L800C4CF8:
/* B3BE98 800C4CF8 3C018014 */  lui   $at, %hi(D_801450E8)
/* B3BE9C 800C4CFC C43050E8 */  lwc1  $f16, %lo(D_801450E8)($at)
/* B3BEA0 800C4D00 E4D002F8 */  swc1  $f16, 0x2f8($a2)
/* B3BEA4 800C4D04 10000005 */  b     .L800C4D1C
/* B3BEA8 800C4D08 8CE20000 */   lw    $v0, ($a3)
.L800C4D0C:
/* B3BEAC 800C4D0C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B3BEB0 800C4D10 ACC00284 */  sw    $zero, 0x284($a2)
/* B3BEB4 800C4D14 44810000 */  mtc1  $at, $f0
/* B3BEB8 800C4D18 8CE20000 */  lw    $v0, ($a3)
.L800C4D1C:
/* B3BEBC 800C4D1C 844B1074 */  lh    $t3, 0x1074($v0)
.L800C4D20:
/* B3BEC0 800C4D20 24030015 */  li    $v1, 21
/* B3BEC4 800C4D24 546B0046 */  bnel  $v1, $t3, .L800C4E40
/* B3BEC8 800C4D28 84490190 */   lh    $t1, 0x190($v0)
/* B3BECC 800C4D2C 844C1092 */  lh    $t4, 0x1092($v0)
/* B3BED0 800C4D30 24090030 */  li    $t1, 48
/* B3BED4 800C4D34 506C000F */  beql  $v1, $t4, .L800C4D74
/* B3BED8 800C4D38 84431078 */   lh    $v1, 0x1078($v0)
/* B3BEDC 800C4D3C A4431092 */  sh    $v1, 0x1092($v0)
/* B3BEE0 800C4D40 8CED0000 */  lw    $t5, ($a3)
/* B3BEE4 800C4D44 3C048001 */  lui   $a0, %hi(gViConfigAdditionalScanLines) # $a0, 0x8001
/* B3BEE8 800C4D48 24849438 */  addiu $a0, %lo(gViConfigAdditionalScanLines) # addiu $a0, $a0, -0x6bc8
/* B3BEEC 800C4D4C A5A01076 */  sh    $zero, 0x1076($t5)
/* B3BEF0 800C4D50 8CF90000 */  lw    $t9, ($a3)
/* B3BEF4 800C4D54 908E0000 */  lbu   $t6, ($a0)
/* B3BEF8 800C4D58 A72E1078 */  sh    $t6, 0x1078($t9)
/* B3BEFC 800C4D5C 8CEF0000 */  lw    $t7, ($a3)
/* B3BF00 800C4D60 A5E0107A */  sh    $zero, 0x107a($t7)
/* B3BF04 800C4D64 8CF80000 */  lw    $t8, ($a3)
/* B3BF08 800C4D68 A700107C */  sh    $zero, 0x107c($t8)
/* B3BF0C 800C4D6C 8CE20000 */  lw    $v0, ($a3)
/* B3BF10 800C4D70 84431078 */  lh    $v1, 0x1078($v0)
.L800C4D74:
/* B3BF14 800C4D74 3C048001 */  lui   $a0, %hi(gViConfigAdditionalScanLines)
/* B3BF18 800C4D78 24849438 */  addiu $a0, %lo(gViConfigAdditionalScanLines) # addiu $a0, $a0, -0x6bc8
/* B3BF1C 800C4D7C 04630005 */  bgezl $v1, .L800C4D94
/* B3BF20 800C4D80 28610031 */   slti  $at, $v1, 0x31
/* B3BF24 800C4D84 A4401078 */  sh    $zero, 0x1078($v0)
/* B3BF28 800C4D88 8CE20000 */  lw    $v0, ($a3)
/* B3BF2C 800C4D8C 84431078 */  lh    $v1, 0x1078($v0)
/* B3BF30 800C4D90 28610031 */  slti  $at, $v1, 0x31
.L800C4D94:
/* B3BF34 800C4D94 54200005 */  bnezl $at, .L800C4DAC
/* B3BF38 800C4D98 844A107A */   lh    $t2, 0x107a($v0)
/* B3BF3C 800C4D9C A4491078 */  sh    $t1, 0x1078($v0)
/* B3BF40 800C4DA0 8CE20000 */  lw    $v0, ($a3)
/* B3BF44 800C4DA4 84431078 */  lh    $v1, 0x1078($v0)
/* B3BF48 800C4DA8 844A107A */  lh    $t2, 0x107a($v0)
.L800C4DAC:
/* B3BF4C 800C4DAC 55430006 */  bnel  $t2, $v1, .L800C4DC8
/* B3BF50 800C4DB0 A443107A */   sh    $v1, 0x107a($v0)
/* B3BF54 800C4DB4 844B107C */  lh    $t3, 0x107c($v0)
/* B3BF58 800C4DB8 844C1076 */  lh    $t4, 0x1076($v0)
/* B3BF5C 800C4DBC 516C0020 */  beql  $t3, $t4, .L800C4E40
/* B3BF60 800C4DC0 84490190 */   lh    $t1, 0x190($v0)
/* B3BF64 800C4DC4 A443107A */  sh    $v1, 0x107a($v0)
.L800C4DC8:
/* B3BF68 800C4DC8 8CE20000 */  lw    $v0, ($a3)
/* B3BF6C 800C4DCC 3C014370 */  li    $at, 0x43700000 # 0.000000
/* B3BF70 800C4DD0 844D1076 */  lh    $t5, 0x1076($v0)
/* B3BF74 800C4DD4 A44D107C */  sh    $t5, 0x107c($v0)
/* B3BF78 800C4DD8 8CE20000 */  lw    $v0, ($a3)
/* B3BF7C 800C4DDC 844E1078 */  lh    $t6, 0x1078($v0)
/* B3BF80 800C4DE0 A08E0000 */  sb    $t6, ($a0)
/* B3BF84 800C4DE4 84591076 */  lh    $t9, 0x1076($v0)
/* B3BF88 800C4DE8 31CF00FF */  andi  $t7, $t6, 0xff
/* B3BF8C 800C4DEC 1720000E */  bnez  $t9, .L800C4E28
/* B3BF90 800C4DF0 00000000 */   nop
/* B3BF94 800C4DF4 448F9000 */  mtc1  $t7, $f18
/* B3BF98 800C4DF8 44810000 */  mtc1  $at, $f0
/* B3BF9C 800C4DFC 05E10005 */  bgez  $t7, .L800C4E14
/* B3BFA0 800C4E00 46809120 */   cvt.s.w $f4, $f18
/* B3BFA4 800C4E04 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B3BFA8 800C4E08 44813000 */  mtc1  $at, $f6
/* B3BFAC 800C4E0C 00000000 */  nop
/* B3BFB0 800C4E10 46062100 */  add.s $f4, $f4, $f6
.L800C4E14:
/* B3BFB4 800C4E14 46002200 */  add.s $f8, $f4, $f0
/* B3BFB8 800C4E18 3C018001 */  lui   $at, %hi(gViConfigYScale)
/* B3BFBC 800C4E1C 46080283 */  div.s $f10, $f0, $f8
/* B3BFC0 800C4E20 10000003 */  b     .L800C4E30
/* B3BFC4 800C4E24 E42A9444 */   swc1  $f10, %lo(gViConfigYScale)($at)
.L800C4E28:
/* B3BFC8 800C4E28 3C018001 */  lui   $at, %hi(gViConfigYScale)
/* B3BFCC 800C4E2C E4209444 */  swc1  $f0, %lo(gViConfigYScale)($at)
.L800C4E30:
/* B3BFD0 800C4E30 24180001 */  li    $t8, 1
/* B3BFD4 800C4E34 3C018001 */  lui   $at, %hi(D_80009430) # $at, 0x8001
/* B3BFD8 800C4E38 A0389430 */  sb    $t8, %lo(D_80009430)($at)
/* B3BFDC 800C4E3C 84490190 */  lh    $t1, 0x190($v0)
.L800C4E40:
/* B3BFE0 800C4E40 50A90008 */  beql  $a1, $t1, .L800C4E64
/* B3BFE4 800C4E44 8FA20020 */   lw    $v0, 0x20($sp)
/* B3BFE8 800C4E48 8FA40020 */  lw    $a0, 0x20($sp)
/* B3BFEC 800C4E4C 00C02825 */  move  $a1, $a2
/* B3BFF0 800C4E50 0C0311BB */  jal   GameState_Draw
/* B3BFF4 800C4E54 AFA6001C */   sw    $a2, 0x1c($sp)
/* B3BFF8 800C4E58 0C03127D */  jal   func_800C49F4
/* B3BFFC 800C4E5C 8FA4001C */   lw    $a0, 0x1c($sp)
/* B3C000 800C4E60 8FA20020 */  lw    $v0, 0x20($sp)
.L800C4E64:
/* B3C004 800C4E64 8C4A009C */  lw    $t2, 0x9c($v0)
/* B3C008 800C4E68 254B0001 */  addiu $t3, $t2, 1
/* B3C00C 800C4E6C AC4B009C */  sw    $t3, 0x9c($v0)
/* B3C010 800C4E70 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3C014 800C4E74 27BD0020 */  addiu $sp, $sp, 0x20
/* B3C018 800C4E78 03E00008 */  jr    $ra
/* B3C01C 800C4E7C 00000000 */   nop
