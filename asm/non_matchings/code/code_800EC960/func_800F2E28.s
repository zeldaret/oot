glabel func_800F2E28
/* B69FC8 800F2E28 3C0E8013 */  lui   $t6, %hi(D_80131C98) # $t6, 0x8013
/* B69FCC 800F2E2C 91CE1C98 */  lbu   $t6, %lo(D_80131C98)($t6)
/* B69FD0 800F2E30 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B69FD4 800F2E34 AFBF0014 */  sw    $ra, 0x14($sp)
/* B69FD8 800F2E38 11C00082 */  beqz  $t6, .L800F3044
/* B69FDC 800F2E3C 3C058013 */   lui   $a1, %hi(D_80131C9C) # $a1, 0x8013
/* B69FE0 800F2E40 24A51C9C */  addiu $a1, %lo(D_80131C9C) # addiu $a1, $a1, 0x1c9c
/* B69FE4 800F2E44 90AF0000 */  lbu   $t7, ($a1)
/* B69FE8 800F2E48 11E00005 */  beqz  $t7, .L800F2E60
/* B69FEC 800F2E4C 00000000 */   nop   
/* B69FF0 800F2E50 0C03DC98 */  jal   func_800F7260
/* B69FF4 800F2E54 2404006F */   li    $a0, 111
/* B69FF8 800F2E58 3C058013 */  lui   $a1, %hi(D_80131C9C) # $a1, 0x8013
/* B69FFC 800F2E5C 24A51C9C */  addiu $a1, %lo(D_80131C9C) # addiu $a1, $a1, 0x1c9c
.L800F2E60:
/* B6A000 800F2E60 3C038017 */  lui   $v1, %hi(D_8016BAB8) # $v1, 0x8017
/* B6A004 800F2E64 8C63BAB8 */  lw    $v1, %lo(D_8016BAB8)($v1)
/* B6A008 800F2E68 3C048013 */  lui   $a0, %hi(D_80131CA0) # $a0, 0x8013
/* B6A00C 800F2E6C 24841CA0 */  addiu $a0, %lo(D_80131CA0) # addiu $a0, $a0, 0x1ca0
/* B6A010 800F2E70 30780020 */  andi  $t8, $v1, 0x20
/* B6A014 800F2E74 13000008 */  beqz  $t8, .L800F2E98
/* B6A018 800F2E78 30680010 */   andi  $t0, $v1, 0x10
/* B6A01C 800F2E7C 90820000 */  lbu   $v0, ($a0)
/* B6A020 800F2E80 2841000E */  slti  $at, $v0, 0xe
/* B6A024 800F2E84 10200003 */  beqz  $at, .L800F2E94
/* B6A028 800F2E88 24590001 */   addiu $t9, $v0, 1
/* B6A02C 800F2E8C 10000002 */  b     .L800F2E98
/* B6A030 800F2E90 A0990000 */   sb    $t9, ($a0)
.L800F2E94:
/* B6A034 800F2E94 A0800000 */  sb    $zero, ($a0)
.L800F2E98:
/* B6A038 800F2E98 3C048013 */  lui   $a0, %hi(D_80131CA0) # $a0, 0x8013
/* B6A03C 800F2E9C 11000008 */  beqz  $t0, .L800F2EC0
/* B6A040 800F2EA0 24841CA0 */   addiu $a0, %lo(D_80131CA0) # addiu $a0, $a0, 0x1ca0
/* B6A044 800F2EA4 90820000 */  lbu   $v0, ($a0)
/* B6A048 800F2EA8 240A000E */  li    $t2, 14
/* B6A04C 800F2EAC 18400003 */  blez  $v0, .L800F2EBC
/* B6A050 800F2EB0 2449FFFF */   addiu $t1, $v0, -1
/* B6A054 800F2EB4 10000002 */  b     .L800F2EC0
/* B6A058 800F2EB8 A0890000 */   sb    $t1, ($a0)
.L800F2EBC:
/* B6A05C 800F2EBC A08A0000 */  sb    $t2, ($a0)
.L800F2EC0:
/* B6A060 800F2EC0 306B2000 */  andi  $t3, $v1, 0x2000
/* B6A064 800F2EC4 11600007 */  beqz  $t3, .L800F2EE4
/* B6A068 800F2EC8 3C028013 */   lui   $v0, %hi(D_80131CA8) # $v0, 0x8013
/* B6A06C 800F2ECC 24421CA8 */  addiu $v0, %lo(D_80131CA8) # addiu $v0, $v0, 0x1ca8
/* B6A070 800F2ED0 904C0000 */  lbu   $t4, ($v0)
/* B6A074 800F2ED4 258E0001 */  addiu $t6, $t4, 1
/* B6A078 800F2ED8 A04E0000 */  sb    $t6, ($v0)
/* B6A07C 800F2EDC 31CF0007 */  andi  $t7, $t6, 7
/* B6A080 800F2EE0 A04F0000 */  sb    $t7, ($v0)
.L800F2EE4:
/* B6A084 800F2EE4 90980000 */  lbu   $t8, ($a0)
/* B6A088 800F2EE8 2F01000F */  sltiu $at, $t8, 0xf
/* B6A08C 800F2EEC 10200051 */  beqz  $at, .L800F3034
/* B6A090 800F2EF0 0018C080 */   sll   $t8, $t8, 2
/* B6A094 800F2EF4 3C018015 */  lui   $at, %hi(jtbl_8014A520)
/* B6A098 800F2EF8 00380821 */  addu  $at, $at, $t8
/* B6A09C 800F2EFC 8C38A520 */  lw    $t8, %lo(jtbl_8014A520)($at)
/* B6A0A0 800F2F00 03000008 */  jr    $t8
/* B6A0A4 800F2F04 00000000 */   nop   
glabel L800F2F08
/* B6A0A8 800F2F08 30798000 */  andi  $t9, $v1, 0x8000
/* B6A0AC 800F2F0C 1320001B */  beqz  $t9, .L800F2F7C
/* B6A0B0 800F2F10 3C028013 */   lui   $v0, %hi(D_80131E08) # $v0, 0x8013
/* B6A0B4 800F2F14 24421E08 */  addiu $v0, %lo(D_80131E08) # addiu $v0, $v0, 0x1e08
/* B6A0B8 800F2F18 9448000A */  lhu   $t0, 0xa($v0)
/* B6A0BC 800F2F1C 3C01E000 */  lui   $at, (0xE0000100 >> 16) # lui $at, 0xe000
/* B6A0C0 800F2F20 34210100 */  ori   $at, (0xE0000100 & 0xFFFF) # ori $at, $at, 0x100
/* B6A0C4 800F2F24 39090001 */  xori  $t1, $t0, 1
/* B6A0C8 800F2F28 3124FFFF */  andi  $a0, $t1, 0xffff
/* B6A0CC 800F2F2C A449000A */  sh    $t1, 0xa($v0)
/* B6A0D0 800F2F30 0C03E803 */  jal   Audio_SetBGM
/* B6A0D4 800F2F34 00812025 */   or    $a0, $a0, $at
/* B6A0D8 800F2F38 0C03E82D */  jal   func_800FA0B4
/* B6A0DC 800F2F3C 00002025 */   move  $a0, $zero
/* B6A0E0 800F2F40 24010001 */  li    $at, 1
/* B6A0E4 800F2F44 10410003 */  beq   $v0, $at, .L800F2F54
/* B6A0E8 800F2F48 3C041000 */   lui   $a0, (0x100000FF >> 16) # lui $a0, 0x1000
/* B6A0EC 800F2F4C 0C03E803 */  jal   Audio_SetBGM
/* B6A0F0 800F2F50 348400FF */   ori   $a0, (0x100000FF & 0xFFFF) # ori $a0, $a0, 0xff
.L800F2F54:
/* B6A0F4 800F2F54 3C041100 */  lui   $a0, (0x110000FF >> 16) # lui $a0, 0x1100
/* B6A0F8 800F2F58 0C03E803 */  jal   Audio_SetBGM
/* B6A0FC 800F2F5C 348400FF */   ori   $a0, (0x110000FF & 0xFFFF) # ori $a0, $a0, 0xff
/* B6A100 800F2F60 3C041300 */  lui   $a0, (0x130000FF >> 16) # lui $a0, 0x1300
/* B6A104 800F2F64 0C03E803 */  jal   Audio_SetBGM
/* B6A108 800F2F68 348400FF */   ori   $a0, (0x130000FF & 0xFFFF) # ori $a0, $a0, 0xff
/* B6A10C 800F2F6C 3C038017 */  lui   $v1, %hi(D_8016BAB8) # $v1, 0x8017
/* B6A110 800F2F70 3C058013 */  lui   $a1, %hi(D_80131C9C) # $a1, 0x8013
/* B6A114 800F2F74 24A51C9C */  addiu $a1, %lo(D_80131C9C) # addiu $a1, $a1, 0x1c9c
/* B6A118 800F2F78 8C63BAB8 */  lw    $v1, %lo(D_8016BAB8)($v1)
.L800F2F7C:
/* B6A11C 800F2F7C 306A4000 */  andi  $t2, $v1, 0x4000
/* B6A120 800F2F80 1140002C */  beqz  $t2, .L800F3034
/* B6A124 800F2F84 00000000 */   nop   
/* B6A128 800F2F88 90AB0000 */  lbu   $t3, ($a1)
/* B6A12C 800F2F8C 396C0001 */  xori  $t4, $t3, 1
/* B6A130 800F2F90 318D00FF */  andi  $t5, $t4, 0xff
/* B6A134 800F2F94 15A00027 */  bnez  $t5, .L800F3034
/* B6A138 800F2F98 A0AC0000 */   sb    $t4, ($a1)
/* B6A13C 800F2F9C 0C03DC98 */  jal   func_800F7260
/* B6A140 800F2FA0 00002025 */   move  $a0, $zero
/* B6A144 800F2FA4 10000023 */  b     .L800F3034
/* B6A148 800F2FA8 00000000 */   nop   
glabel L800F2FAC
/* B6A14C 800F2FAC 0C03C6F7 */  jal   func_800F1BDC
/* B6A150 800F2FB0 00000000 */   nop   
/* B6A154 800F2FB4 1000001F */  b     .L800F3034
/* B6A158 800F2FB8 00000000 */   nop   
glabel L800F2FBC
/* B6A15C 800F2FBC 0C03C854 */  jal   func_800F2150
/* B6A160 800F2FC0 00000000 */   nop   
/* B6A164 800F2FC4 1000001B */  b     .L800F3034
/* B6A168 800F2FC8 00000000 */   nop   
glabel L800F2FCC
/* B6A16C 800F2FCC 0C03C89F */  jal   func_800F227C
/* B6A170 800F2FD0 00000000 */   nop   
/* B6A174 800F2FD4 10000017 */  b     .L800F3034
/* B6A178 800F2FD8 00000000 */   nop   
glabel L800F2FDC
/* B6A17C 800F2FDC 0C03C919 */  jal   func_800F2464
/* B6A180 800F2FE0 00000000 */   nop   
/* B6A184 800F2FE4 10000013 */  b     .L800F3034
/* B6A188 800F2FE8 00000000 */   nop   
glabel L800F2FEC
/* B6A18C 800F2FEC 0C03C9E8 */  jal   func_800F27A0
/* B6A190 800F2FF0 00000000 */   nop   
/* B6A194 800F2FF4 1000000F */  b     .L800F3034
/* B6A198 800F2FF8 00000000 */   nop   
glabel L800F2FFC
/* B6A19C 800F2FFC 0C03CA2B */  jal   func_800F28AC
/* B6A1A0 800F3000 00000000 */   nop   
/* B6A1A4 800F3004 1000000B */  b     .L800F3034
/* B6A1A8 800F3008 00000000 */   nop   
glabel L800F300C
/* B6A1AC 800F300C 0C03CA2D */  jal   func_800F28B4
/* B6A1B0 800F3010 00000000 */   nop   
/* B6A1B4 800F3014 10000007 */  b     .L800F3034
/* B6A1B8 800F3018 00000000 */   nop   
glabel L800F301C
/* B6A1BC 800F301C 0C03CA7F */  jal   func_800F29FC
/* B6A1C0 800F3020 00000000 */   nop   
/* B6A1C4 800F3024 10000003 */  b     .L800F3034
/* B6A1C8 800F3028 00000000 */   nop   
glabel L800F302C
/* B6A1CC 800F302C 0C03CA81 */  jal   func_800F2A04
/* B6A1D0 800F3030 00000000 */   nop   
glabel L800F3034
.L800F3034:
/* B6A1D4 800F3034 3C0E8013 */  lui   $t6, %hi(D_80131EEE) # $t6, 0x8013
/* B6A1D8 800F3038 91CE1EEE */  lbu   $t6, %lo(D_80131EEE)($t6)
/* B6A1DC 800F303C 3C018013 */  lui   $at, %hi(D_8013340C) # $at, 0x8013
/* B6A1E0 800F3040 A02E340C */  sb    $t6, %lo(D_8013340C)($at)
.L800F3044:
/* B6A1E4 800F3044 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6A1E8 800F3048 27BD0018 */  addiu $sp, $sp, 0x18
/* B6A1EC 800F304C 03E00008 */  jr    $ra
/* B6A1F0 800F3050 00000000 */   nop   

