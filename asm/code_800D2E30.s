.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800D2E30
/* B49FD0 800D2E30 2402FFFF */  li    $v0, -1
/* B49FD4 800D2E34 00001825 */  move  $v1, $zero
/* B49FD8 800D2E38 00802825 */  move  $a1, $a0
.L800D2E3C:
/* B49FDC 800D2E3C 24630001 */  addiu $v1, $v1, 1
/* B49FE0 800D2E40 28610004 */  slti  $at, $v1, 4
/* B49FE4 800D2E44 24A50001 */  addiu $a1, $a1, 1
/* B49FE8 800D2E48 1420FFFC */  bnez  $at, .L800D2E3C
/* B49FEC 800D2E4C A0A0FFFF */   sb    $zero, -1($a1)
/* B49FF0 800D2E50 90830105 */  lbu   $v1, 0x105($a0)
/* B49FF4 800D2E54 3C0E8013 */  lui   $t6, %hi(D_8012DBB0) # $t6, 0x8013
/* B49FF8 800D2E58 3C018013 */  lui   $at, %hi(D_8012DBB0)
/* B49FFC 800D2E5C 14600010 */  bnez  $v1, .L800D2EA0
/* B4A000 800D2E60 00000000 */   nop   
/* B4A004 800D2E64 91CEDBB0 */  lbu   $t6, %lo(D_8012DBB0)($t6)
/* B4A008 800D2E68 3C018016 */  lui   $at, %hi(gPadMgr+0x2AE) # $at, 0x8016
/* B4A00C 800D2E6C 11C00009 */  beqz  $t6, .L800D2E94
/* B4A010 800D2E70 00000000 */   nop   
/* B4A014 800D2E74 A0206B6E */  sb    $zero, %lo(gPadMgr+0x2AE)($at)
/* B4A018 800D2E78 3C018016 */  lui   $at, %hi(gPadMgr+0x2AF) # $at, 0x8016
/* B4A01C 800D2E7C A0206B6F */  sb    $zero, %lo(gPadMgr+0x2AF)($at)
/* B4A020 800D2E80 3C018016 */  lui   $at, %hi(gPadMgr+0x2B0) # $at, 0x8016
/* B4A024 800D2E84 A0206B70 */  sb    $zero, %lo(gPadMgr+0x2B0)($at)
/* B4A028 800D2E88 3C018016 */  lui   $at, %hi(gPadMgr+0x2B1) # $at, 0x8016
/* B4A02C 800D2E8C A0206B71 */  sb    $zero, %lo(gPadMgr+0x2B1)($at)
/* B4A030 800D2E90 90830105 */  lbu   $v1, 0x105($a0)
.L800D2E94:
/* B4A034 800D2E94 3C018013 */  lui   $at, %hi(D_8012DBB0)
/* B4A038 800D2E98 03E00008 */  jr    $ra
/* B4A03C 800D2E9C A023DBB0 */   sb    $v1, %lo(D_8012DBB0)($at)
.L800D2EA0:
/* B4A040 800D2EA0 A023DBB0 */  sb    $v1, %lo(D_8012DBB0)($at)
/* B4A044 800D2EA4 90850104 */  lbu   $a1, 0x104($a0)
/* B4A048 800D2EA8 24010002 */  li    $at, 2
/* B4A04C 800D2EAC 3C038016 */  lui   $v1, %hi(gPadMgr+4) # $v1, 0x8016
/* B4A050 800D2EB0 14A10027 */  bne   $a1, $at, .L800D2F50
/* B4A054 800D2EB4 246368C4 */   addiu $v1, %lo(gPadMgr+4) # addiu $v1, $v1, 0x68c4
/* B4A058 800D2EB8 3C058016 */  lui   $a1, %hi(gPadMgr) # $a1, 0x8016
/* B4A05C 800D2EBC 24A568C0 */  addiu $a1, %lo(gPadMgr) # addiu $a1, $a1, 0x68c0
.L800D2EC0:
/* B4A060 800D2EC0 24A50001 */  addiu $a1, $a1, 1
/* B4A064 800D2EC4 00A3082B */  sltu  $at, $a1, $v1
/* B4A068 800D2EC8 1420FFFD */  bnez  $at, .L800D2EC0
/* B4A06C 800D2ECC A0A002AD */   sb    $zero, 0x2ad($a1)
/* B4A070 800D2ED0 00001825 */  move  $v1, $zero
/* B4A074 800D2ED4 00802825 */  move  $a1, $a0
/* B4A078 800D2ED8 24080040 */  li    $t0, 64
.L800D2EDC:
/* B4A07C 800D2EDC 24630004 */  addiu $v1, $v1, 4
/* B4A080 800D2EE0 A0A000C5 */  sb    $zero, 0xc5($a1)
/* B4A084 800D2EE4 A0A00085 */  sb    $zero, 0x85($a1)
/* B4A088 800D2EE8 A0A00045 */  sb    $zero, 0x45($a1)
/* B4A08C 800D2EEC A0A00005 */  sb    $zero, 5($a1)
/* B4A090 800D2EF0 A0A000C6 */  sb    $zero, 0xc6($a1)
/* B4A094 800D2EF4 A0A00086 */  sb    $zero, 0x86($a1)
/* B4A098 800D2EF8 A0A00046 */  sb    $zero, 0x46($a1)
/* B4A09C 800D2EFC A0A00006 */  sb    $zero, 6($a1)
/* B4A0A0 800D2F00 A0A000C7 */  sb    $zero, 0xc7($a1)
/* B4A0A4 800D2F04 A0A00087 */  sb    $zero, 0x87($a1)
/* B4A0A8 800D2F08 A0A00047 */  sb    $zero, 0x47($a1)
/* B4A0AC 800D2F0C A0A00007 */  sb    $zero, 7($a1)
/* B4A0B0 800D2F10 24A50004 */  addiu $a1, $a1, 4
/* B4A0B4 800D2F14 A0A000C0 */  sb    $zero, 0xc0($a1)
/* B4A0B8 800D2F18 A0A00080 */  sb    $zero, 0x80($a1)
/* B4A0BC 800D2F1C A0A00040 */  sb    $zero, 0x40($a1)
/* B4A0C0 800D2F20 1468FFEE */  bne   $v1, $t0, .L800D2EDC
/* B4A0C4 800D2F24 A0A00000 */   sb    $zero, ($a1)
/* B4A0C8 800D2F28 300300FF */  andi  $v1, $zero, 0xff
/* B4A0CC 800D2F2C 240F0001 */  li    $t7, 1
/* B4A0D0 800D2F30 A083010C */  sb    $v1, 0x10c($a0)
/* B4A0D4 800D2F34 A083010B */  sb    $v1, 0x10b($a0)
/* B4A0D8 800D2F38 A083010A */  sb    $v1, 0x10a($a0)
/* B4A0DC 800D2F3C A4830108 */  sh    $v1, 0x108($a0)
/* B4A0E0 800D2F40 A4830106 */  sh    $v1, 0x106($a0)
/* B4A0E4 800D2F44 A080010D */  sb    $zero, 0x10d($a0)
/* B4A0E8 800D2F48 A08F0104 */  sb    $t7, 0x104($a0)
/* B4A0EC 800D2F4C 31E500FF */  andi  $a1, $t7, 0xff
.L800D2F50:
/* B4A0F0 800D2F50 10A0005D */  beqz  $a1, .L800D30C8
/* B4A0F4 800D2F54 24080040 */   li    $t0, 64
/* B4A0F8 800D2F58 00001825 */  move  $v1, $zero
/* B4A0FC 800D2F5C 00802825 */  move  $a1, $a0
/* B4A100 800D2F60 2409FFFF */  li    $t1, -1
.L800D2F64:
/* B4A104 800D2F64 90A60004 */  lbu   $a2, 4($a1)
/* B4A108 800D2F68 50C00021 */  beql  $a2, $zero, .L800D2FF0
/* B4A10C 800D2F6C 24630001 */   addiu $v1, $v1, 1
/* B4A110 800D2F70 90A70044 */  lbu   $a3, 0x44($a1)
/* B4A114 800D2F74 00826021 */  addu  $t4, $a0, $v0
/* B4A118 800D2F78 18E00003 */  blez  $a3, .L800D2F88
/* B4A11C 800D2F7C 24F8FFFF */   addiu $t8, $a3, -1
/* B4A120 800D2F80 10000008 */  b     .L800D2FA4
/* B4A124 800D2F84 A0B80044 */   sb    $t8, 0x44($a1)
.L800D2F88:
/* B4A128 800D2F88 90B90084 */  lbu   $t9, 0x84($a1)
/* B4A12C 800D2F8C 00D93823 */  subu  $a3, $a2, $t9
/* B4A130 800D2F90 58E00004 */  blezl $a3, .L800D2FA4
/* B4A134 800D2F94 A0A00004 */   sb    $zero, 4($a1)
/* B4A138 800D2F98 10000002 */  b     .L800D2FA4
/* B4A13C 800D2F9C A0A70004 */   sb    $a3, 4($a1)
/* B4A140 800D2FA0 A0A00004 */  sb    $zero, 4($a1)
.L800D2FA4:
/* B4A144 800D2FA4 90A60004 */  lbu   $a2, 4($a1)
/* B4A148 800D2FA8 90AA00C4 */  lbu   $t2, 0xc4($a1)
/* B4A14C 800D2FAC 00CA3821 */  addu  $a3, $a2, $t2
/* B4A150 800D2FB0 14490006 */  bne   $v0, $t1, .L800D2FCC
/* B4A154 800D2FB4 A0A700C4 */   sb    $a3, 0xc4($a1)
/* B4A158 800D2FB8 28EB0100 */  slti  $t3, $a3, 0x100
/* B4A15C 800D2FBC 396B0001 */  xori  $t3, $t3, 1
/* B4A160 800D2FC0 00601025 */  move  $v0, $v1
/* B4A164 800D2FC4 10000009 */  b     .L800D2FEC
/* B4A168 800D2FC8 A08B0000 */   sb    $t3, ($a0)
.L800D2FCC:
/* B4A16C 800D2FCC 918D0004 */  lbu   $t5, 4($t4)
/* B4A170 800D2FD0 28EE0100 */  slti  $t6, $a3, 0x100
/* B4A174 800D2FD4 39CE0001 */  xori  $t6, $t6, 1
/* B4A178 800D2FD8 01A6082A */  slt   $at, $t5, $a2
/* B4A17C 800D2FDC 50200004 */  beql  $at, $zero, .L800D2FF0
/* B4A180 800D2FE0 24630001 */   addiu $v1, $v1, 1
/* B4A184 800D2FE4 00601025 */  move  $v0, $v1
/* B4A188 800D2FE8 A08E0000 */  sb    $t6, ($a0)
.L800D2FEC:
/* B4A18C 800D2FEC 24630001 */  addiu $v1, $v1, 1
.L800D2FF0:
/* B4A190 800D2FF0 1468FFDC */  bne   $v1, $t0, .L800D2F64
/* B4A194 800D2FF4 24A50001 */   addiu $a1, $a1, 1
/* B4A198 800D2FF8 9083010A */  lbu   $v1, 0x10a($a0)
/* B4A19C 800D2FFC 10600014 */  beqz  $v1, .L800D3050
/* B4A1A0 800D3000 00000000 */   nop   
/* B4A1A4 800D3004 9085010B */  lbu   $a1, 0x10b($a0)
/* B4A1A8 800D3008 18A00003 */  blez  $a1, .L800D3018
/* B4A1AC 800D300C 24AFFFFF */   addiu $t7, $a1, -1
/* B4A1B0 800D3010 10000008 */  b     .L800D3034
/* B4A1B4 800D3014 A08F010B */   sb    $t7, 0x10b($a0)
.L800D3018:
/* B4A1B8 800D3018 9098010C */  lbu   $t8, 0x10c($a0)
/* B4A1BC 800D301C 00783823 */  subu  $a3, $v1, $t8
/* B4A1C0 800D3020 58E00004 */  blezl $a3, .L800D3034
/* B4A1C4 800D3024 A080010A */   sb    $zero, 0x10a($a0)
/* B4A1C8 800D3028 10000002 */  b     .L800D3034
/* B4A1CC 800D302C A087010A */   sb    $a3, 0x10a($a0)
/* B4A1D0 800D3030 A080010A */  sb    $zero, 0x10a($a0)
.L800D3034:
/* B4A1D4 800D3034 9083010A */  lbu   $v1, 0x10a($a0)
/* B4A1D8 800D3038 9099010D */  lbu   $t9, 0x10d($a0)
/* B4A1DC 800D303C 03233821 */  addu  $a3, $t9, $v1
/* B4A1E0 800D3040 28EA0100 */  slti  $t2, $a3, 0x100
/* B4A1E4 800D3044 394A0001 */  xori  $t2, $t2, 1
/* B4A1E8 800D3048 A087010D */  sb    $a3, 0x10d($a0)
/* B4A1EC 800D304C A08A0000 */  sb    $t2, ($a0)
.L800D3050:
/* B4A1F0 800D3050 10600003 */  beqz  $v1, .L800D3060
/* B4A1F4 800D3054 00000000 */   nop   
/* B4A1F8 800D3058 10000006 */  b     .L800D3074
/* B4A1FC 800D305C 00603825 */   move  $a3, $v1
.L800D3060:
/* B4A200 800D3060 14490003 */  bne   $v0, $t1, .L800D3070
/* B4A204 800D3064 00825821 */   addu  $t3, $a0, $v0
/* B4A208 800D3068 10000002 */  b     .L800D3074
/* B4A20C 800D306C 00003825 */   move  $a3, $zero
.L800D3070:
/* B4A210 800D3070 91670004 */  lbu   $a3, 4($t3)
.L800D3074:
/* B4A214 800D3074 54E0000C */  bnezl $a3, .L800D30A8
/* B4A218 800D3078 94980106 */   lhu   $t8, 0x106($a0)
/* B4A21C 800D307C 948C0108 */  lhu   $t4, 0x108($a0)
/* B4A220 800D3080 240F0005 */  li    $t7, 5
/* B4A224 800D3084 258D0001 */  addiu $t5, $t4, 1
/* B4A228 800D3088 31AEFFFF */  andi  $t6, $t5, 0xffff
/* B4A22C 800D308C 29C10006 */  slti  $at, $t6, 6
/* B4A230 800D3090 14200029 */  bnez  $at, .L800D3138
/* B4A234 800D3094 A48D0108 */   sh    $t5, 0x108($a0)
/* B4A238 800D3098 A4800106 */  sh    $zero, 0x106($a0)
/* B4A23C 800D309C 03E00008 */  jr    $ra
/* B4A240 800D30A0 A48F0108 */   sh    $t7, 0x108($a0)
/* B4A244 800D30A4 94980106 */  lhu   $t8, 0x106($a0)
.L800D30A8:
/* B4A248 800D30A8 A4800108 */  sh    $zero, 0x108($a0)
/* B4A24C 800D30AC 27190001 */  addiu $t9, $t8, 1
/* B4A250 800D30B0 332AFFFF */  andi  $t2, $t9, 0xffff
/* B4A254 800D30B4 29411C21 */  slti  $at, $t2, 0x1c21
/* B4A258 800D30B8 1420001F */  bnez  $at, .L800D3138
/* B4A25C 800D30BC A4990106 */   sh    $t9, 0x106($a0)
/* B4A260 800D30C0 03E00008 */  jr    $ra
/* B4A264 800D30C4 A0800104 */   sb    $zero, 0x104($a0)
.L800D30C8:
/* B4A268 800D30C8 00001825 */  move  $v1, $zero
/* B4A26C 800D30CC 00802825 */  move  $a1, $a0
.L800D30D0:
/* B4A270 800D30D0 24630004 */  addiu $v1, $v1, 4
/* B4A274 800D30D4 A0A000C5 */  sb    $zero, 0xc5($a1)
/* B4A278 800D30D8 A0A00085 */  sb    $zero, 0x85($a1)
/* B4A27C 800D30DC A0A00045 */  sb    $zero, 0x45($a1)
/* B4A280 800D30E0 A0A00005 */  sb    $zero, 5($a1)
/* B4A284 800D30E4 A0A000C6 */  sb    $zero, 0xc6($a1)
/* B4A288 800D30E8 A0A00086 */  sb    $zero, 0x86($a1)
/* B4A28C 800D30EC A0A00046 */  sb    $zero, 0x46($a1)
/* B4A290 800D30F0 A0A00006 */  sb    $zero, 6($a1)
/* B4A294 800D30F4 A0A000C7 */  sb    $zero, 0xc7($a1)
/* B4A298 800D30F8 A0A00087 */  sb    $zero, 0x87($a1)
/* B4A29C 800D30FC A0A00047 */  sb    $zero, 0x47($a1)
/* B4A2A0 800D3100 A0A00007 */  sb    $zero, 7($a1)
/* B4A2A4 800D3104 24A50004 */  addiu $a1, $a1, 4
/* B4A2A8 800D3108 A0A000C0 */  sb    $zero, 0xc0($a1)
/* B4A2AC 800D310C A0A00080 */  sb    $zero, 0x80($a1)
/* B4A2B0 800D3110 A0A00040 */  sb    $zero, 0x40($a1)
/* B4A2B4 800D3114 1468FFEE */  bne   $v1, $t0, .L800D30D0
/* B4A2B8 800D3118 A0A00000 */   sb    $zero, ($a1)
/* B4A2BC 800D311C 300300FF */  andi  $v1, $zero, 0xff
/* B4A2C0 800D3120 A083010C */  sb    $v1, 0x10c($a0)
/* B4A2C4 800D3124 A083010B */  sb    $v1, 0x10b($a0)
/* B4A2C8 800D3128 A083010A */  sb    $v1, 0x10a($a0)
/* B4A2CC 800D312C A4830108 */  sh    $v1, 0x108($a0)
/* B4A2D0 800D3130 A4830106 */  sh    $v1, 0x106($a0)
/* B4A2D4 800D3134 A080010D */  sb    $zero, 0x10d($a0)
.L800D3138:
/* B4A2D8 800D3138 03E00008 */  jr    $ra
/* B4A2DC 800D313C 00000000 */   nop   

glabel func_800D3140
/* B4A2E0 800D3140 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4A2E4 800D3144 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4A2E8 800D3148 AFA40018 */  sw    $a0, 0x18($sp)
/* B4A2EC 800D314C 0C001114 */  jal   bzero
/* B4A2F0 800D3150 2405010E */   li    $a1, 270
/* B4A2F4 800D3154 8FA40018 */  lw    $a0, 0x18($sp)
/* B4A2F8 800D3158 240E0002 */  li    $t6, 2
/* B4A2FC 800D315C 240F0001 */  li    $t7, 1
/* B4A300 800D3160 A08E0104 */  sb    $t6, 0x104($a0)
/* B4A304 800D3164 A08F0105 */  sb    $t7, 0x105($a0)
/* B4A308 800D3168 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4A30C 800D316C 27BD0018 */  addiu $sp, $sp, 0x18
/* B4A310 800D3170 03E00008 */  jr    $ra
/* B4A314 800D3174 00000000 */   nop   

glabel func_800D3178
/* B4A318 800D3178 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4A31C 800D317C AFBF0014 */  sw    $ra, 0x14($sp)
/* B4A320 800D3180 0C001114 */  jal   bzero
/* B4A324 800D3184 2405010E */   li    $a1, 270
/* B4A328 800D3188 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4A32C 800D318C 27BD0018 */  addiu $sp, $sp, 0x18
/* B4A330 800D3190 03E00008 */  jr    $ra
/* B4A334 800D3194 00000000 */   nop   
