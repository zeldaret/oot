.rdata
glabel D_80144720
    .asciz "../z_play.c"
    .balign 4

glabel D_8014472C
    .asciz "../z_play.c"
    .balign 4

glabel D_80144738
    .asciz "../z_play.c"
    .balign 4

.text
glabel Gameplay_Draw
/* B35F78 800BEDD8 27BDFDD0 */  addiu $sp, $sp, -0x230
/* B35F7C 800BEDDC AFBF002C */  sw    $ra, 0x2c($sp)
/* B35F80 800BEDE0 AFB10028 */  sw    $s1, 0x28($sp)
/* B35F84 800BEDE4 AFB00024 */  sw    $s0, 0x24($sp)
/* B35F88 800BEDE8 8C910000 */  lw    $s1, ($a0)
/* B35F8C 800BEDEC 00808025 */  move  $s0, $a0
/* B35F90 800BEDF0 3C068014 */  lui   $a2, %hi(D_80144720) # $a2, 0x8014
/* B35F94 800BEDF4 24C64720 */  addiu $a2, %lo(D_80144720) # addiu $a2, $a2, 0x4720
/* B35F98 800BEDF8 27A40208 */  addiu $a0, $sp, 0x208
/* B35F9C 800BEDFC 24070F43 */  li    $a3, 3907
/* B35FA0 800BEE00 0C031AB1 */  jal   Graph_OpenDisps
/* B35FA4 800BEE04 02202825 */   move  $a1, $s1
/* B35FA8 800BEE08 3C040001 */  lui   $a0, 1
/* B35FAC 800BEE0C 02044021 */  addu  $t0, $s0, $a0
/* B35FB0 800BEE10 910E17AE */  lbu   $t6, 0x17ae($t0)
/* B35FB4 800BEE14 24050044 */  li    $a1, 68
/* B35FB8 800BEE18 3C028016 */  lui   $v0, %hi(gSegments) # $v0, 0x8016
/* B35FBC 800BEE1C 01C50019 */  multu $t6, $a1
/* B35FC0 800BEE20 3C038000 */  lui   $v1, 0x8000
/* B35FC4 800BEE24 24426FA8 */  addiu $v0, %lo(gSegments) # addiu $v0, $v0, 0x6fa8
/* B35FC8 800BEE28 3C06DB06 */  lui   $a2, (0xDB060010 >> 16) # lui $a2, 0xdb06
/* B35FCC 800BEE2C 00003825 */  move  $a3, $zero
/* B35FD0 800BEE30 00007812 */  mflo  $t7
/* B35FD4 800BEE34 020FC021 */  addu  $t8, $s0, $t7
/* B35FD8 800BEE38 0304C821 */  addu  $t9, $t8, $a0
/* B35FDC 800BEE3C 8F2917B4 */  lw    $t1, 0x17b4($t9)
/* B35FE0 800BEE40 01235021 */  addu  $t2, $t1, $v1
/* B35FE4 800BEE44 AC4A0010 */  sw    $t2, 0x10($v0)
/* B35FE8 800BEE48 910B17AF */  lbu   $t3, 0x17af($t0)
/* B35FEC 800BEE4C 01650019 */  multu $t3, $a1
/* B35FF0 800BEE50 00006012 */  mflo  $t4
/* B35FF4 800BEE54 020C6821 */  addu  $t5, $s0, $t4
/* B35FF8 800BEE58 01A47021 */  addu  $t6, $t5, $a0
/* B35FFC 800BEE5C 8DCF17B4 */  lw    $t7, 0x17b4($t6)
/* B36000 800BEE60 01E3C021 */  addu  $t8, $t7, $v1
/* B36004 800BEE64 AC580014 */  sw    $t8, 0x14($v0)
/* B36008 800BEE68 8E1900B0 */  lw    $t9, 0xb0($s0)
/* B3600C 800BEE6C 03234821 */  addu  $t1, $t9, $v1
/* B36010 800BEE70 AC490008 */  sw    $t1, 8($v0)
/* B36014 800BEE74 8E2202C0 */  lw    $v0, 0x2c0($s1)
/* B36018 800BEE78 244A0008 */  addiu $t2, $v0, 8
/* B3601C 800BEE7C AE2A02C0 */  sw    $t2, 0x2c0($s1)
/* B36020 800BEE80 AC400004 */  sw    $zero, 4($v0)
/* B36024 800BEE84 AC460000 */  sw    $a2, ($v0)
/* B36028 800BEE88 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* B3602C 800BEE8C 244B0008 */  addiu $t3, $v0, 8
/* B36030 800BEE90 AE2B02D0 */  sw    $t3, 0x2d0($s1)
/* B36034 800BEE94 AC400004 */  sw    $zero, 4($v0)
/* B36038 800BEE98 AC460000 */  sw    $a2, ($v0)
/* B3603C 800BEE9C 8E2202B0 */  lw    $v0, 0x2b0($s1)
/* B36040 800BEEA0 244C0008 */  addiu $t4, $v0, 8
/* B36044 800BEEA4 AE2C02B0 */  sw    $t4, 0x2b0($s1)
/* B36048 800BEEA8 AC400004 */  sw    $zero, 4($v0)
/* B3604C 800BEEAC AC460000 */  sw    $a2, ($v0)
/* B36050 800BEEB0 8E2202C0 */  lw    $v0, 0x2c0($s1)
/* B36054 800BEEB4 34C60010 */  ori   $a2, (0xDB060010 & 0xFFFF) # ori $a2, $a2, 0x10
/* B36058 800BEEB8 244D0008 */  addiu $t5, $v0, 8
/* B3605C 800BEEBC AE2D02C0 */  sw    $t5, 0x2c0($s1)
/* B36060 800BEEC0 AC460000 */  sw    $a2, ($v0)
/* B36064 800BEEC4 910E17AE */  lbu   $t6, 0x17ae($t0)
/* B36068 800BEEC8 01C50019 */  multu $t6, $a1
/* B3606C 800BEECC 00007812 */  mflo  $t7
/* B36070 800BEED0 020FC021 */  addu  $t8, $s0, $t7
/* B36074 800BEED4 0304C821 */  addu  $t9, $t8, $a0
/* B36078 800BEED8 8F2917B4 */  lw    $t1, 0x17b4($t9)
/* B3607C 800BEEDC AC490004 */  sw    $t1, 4($v0)
/* B36080 800BEEE0 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* B36084 800BEEE4 244A0008 */  addiu $t2, $v0, 8
/* B36088 800BEEE8 AE2A02D0 */  sw    $t2, 0x2d0($s1)
/* B3608C 800BEEEC AC460000 */  sw    $a2, ($v0)
/* B36090 800BEEF0 910B17AE */  lbu   $t3, 0x17ae($t0)
/* B36094 800BEEF4 01650019 */  multu $t3, $a1
/* B36098 800BEEF8 00006012 */  mflo  $t4
/* B3609C 800BEEFC 020C6821 */  addu  $t5, $s0, $t4
/* B360A0 800BEF00 01A47021 */  addu  $t6, $t5, $a0
/* B360A4 800BEF04 8DCF17B4 */  lw    $t7, 0x17b4($t6)
/* B360A8 800BEF08 AC4F0004 */  sw    $t7, 4($v0)
/* B360AC 800BEF0C 8E2202B0 */  lw    $v0, 0x2b0($s1)
/* B360B0 800BEF10 24580008 */  addiu $t8, $v0, 8
/* B360B4 800BEF14 AE3802B0 */  sw    $t8, 0x2b0($s1)
/* B360B8 800BEF18 AC460000 */  sw    $a2, ($v0)
/* B360BC 800BEF1C 911917AE */  lbu   $t9, 0x17ae($t0)
/* B360C0 800BEF20 3C06DB06 */  lui   $a2, (0xDB060014 >> 16) # lui $a2, 0xdb06
/* B360C4 800BEF24 34C60014 */  ori   $a2, (0xDB060014 & 0xFFFF) # ori $a2, $a2, 0x14
/* B360C8 800BEF28 03250019 */  multu $t9, $a1
/* B360CC 800BEF2C 00004812 */  mflo  $t1
/* B360D0 800BEF30 02095021 */  addu  $t2, $s0, $t1
/* B360D4 800BEF34 01445821 */  addu  $t3, $t2, $a0
/* B360D8 800BEF38 8D6C17B4 */  lw    $t4, 0x17b4($t3)
/* B360DC 800BEF3C AC4C0004 */  sw    $t4, 4($v0)
/* B360E0 800BEF40 8E2202C0 */  lw    $v0, 0x2c0($s1)
/* B360E4 800BEF44 244D0008 */  addiu $t5, $v0, 8
/* B360E8 800BEF48 AE2D02C0 */  sw    $t5, 0x2c0($s1)
/* B360EC 800BEF4C AC460000 */  sw    $a2, ($v0)
/* B360F0 800BEF50 910E17AF */  lbu   $t6, 0x17af($t0)
/* B360F4 800BEF54 01C50019 */  multu $t6, $a1
/* B360F8 800BEF58 00007812 */  mflo  $t7
/* B360FC 800BEF5C 020FC021 */  addu  $t8, $s0, $t7
/* B36100 800BEF60 0304C821 */  addu  $t9, $t8, $a0
/* B36104 800BEF64 8F2917B4 */  lw    $t1, 0x17b4($t9)
/* B36108 800BEF68 AC490004 */  sw    $t1, 4($v0)
/* B3610C 800BEF6C 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* B36110 800BEF70 244A0008 */  addiu $t2, $v0, 8
/* B36114 800BEF74 AE2A02D0 */  sw    $t2, 0x2d0($s1)
/* B36118 800BEF78 AC460000 */  sw    $a2, ($v0)
/* B3611C 800BEF7C 910B17AF */  lbu   $t3, 0x17af($t0)
/* B36120 800BEF80 01650019 */  multu $t3, $a1
/* B36124 800BEF84 00006012 */  mflo  $t4
/* B36128 800BEF88 020C6821 */  addu  $t5, $s0, $t4
/* B3612C 800BEF8C 01A47021 */  addu  $t6, $t5, $a0
/* B36130 800BEF90 8DCF17B4 */  lw    $t7, 0x17b4($t6)
/* B36134 800BEF94 AC4F0004 */  sw    $t7, 4($v0)
/* B36138 800BEF98 8E2202B0 */  lw    $v0, 0x2b0($s1)
/* B3613C 800BEF9C 24580008 */  addiu $t8, $v0, 8
/* B36140 800BEFA0 AE3802B0 */  sw    $t8, 0x2b0($s1)
/* B36144 800BEFA4 AC460000 */  sw    $a2, ($v0)
/* B36148 800BEFA8 911917AF */  lbu   $t9, 0x17af($t0)
/* B3614C 800BEFAC 00003025 */  move  $a2, $zero
/* B36150 800BEFB0 03250019 */  multu $t9, $a1
/* B36154 800BEFB4 00002825 */  move  $a1, $zero
/* B36158 800BEFB8 00004812 */  mflo  $t1
/* B3615C 800BEFBC 02095021 */  addu  $t2, $s0, $t1
/* B36160 800BEFC0 01445821 */  addu  $t3, $t2, $a0
/* B36164 800BEFC4 8D6C17B4 */  lw    $t4, 0x17b4($t3)
/* B36168 800BEFC8 3C04DB06 */  lui   $a0, (0xDB060008 >> 16) # lui $a0, 0xdb06
/* B3616C 800BEFCC 34840008 */  ori   $a0, (0xDB060008 & 0xFFFF) # ori $a0, $a0, 8
/* B36170 800BEFD0 AC4C0004 */  sw    $t4, 4($v0)
/* B36174 800BEFD4 8E2202C0 */  lw    $v0, 0x2c0($s1)
/* B36178 800BEFD8 244D0008 */  addiu $t5, $v0, 8
/* B3617C 800BEFDC AE2D02C0 */  sw    $t5, 0x2c0($s1)
/* B36180 800BEFE0 AC440000 */  sw    $a0, ($v0)
/* B36184 800BEFE4 8E0E00B0 */  lw    $t6, 0xb0($s0)
/* B36188 800BEFE8 AC4E0004 */  sw    $t6, 4($v0)
/* B3618C 800BEFEC 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* B36190 800BEFF0 244F0008 */  addiu $t7, $v0, 8
/* B36194 800BEFF4 AE2F02D0 */  sw    $t7, 0x2d0($s1)
/* B36198 800BEFF8 AC440000 */  sw    $a0, ($v0)
/* B3619C 800BEFFC 8E1800B0 */  lw    $t8, 0xb0($s0)
/* B361A0 800BF000 AC580004 */  sw    $t8, 4($v0)
/* B361A4 800BF004 8E2202B0 */  lw    $v0, 0x2b0($s1)
/* B361A8 800BF008 24590008 */  addiu $t9, $v0, 8
/* B361AC 800BF00C AE3902B0 */  sw    $t9, 0x2b0($s1)
/* B361B0 800BF010 AC440000 */  sw    $a0, ($v0)
/* B361B4 800BF014 8E0900B0 */  lw    $t1, 0xb0($s0)
/* B361B8 800BF018 02202025 */  move  $a0, $s1
/* B361BC 800BF01C AC490004 */  sw    $t1, 4($v0)
/* B361C0 800BF020 0C025492 */  jal   func_80095248
/* B361C4 800BF024 AFA8004C */   sw    $t0, 0x4c($sp)
/* B361C8 800BF028 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B361CC 800BF02C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B361D0 800BF030 2401000A */  li    $at, 10
/* B361D4 800BF034 02002025 */  move  $a0, $s0
/* B361D8 800BF038 844A1074 */  lh    $t2, 0x1074($v0)
/* B361DC 800BF03C 15410004 */  bne   $t2, $at, .L800BF050
/* B361E0 800BF040 00000000 */   nop
/* B361E4 800BF044 844B1078 */  lh    $t3, 0x1078($v0)
/* B361E8 800BF048 5160027A */  beql  $t3, $zero, .L800BFA34
/* B361EC 800BF04C 8E1901DC */   lw    $t9, 0x1dc($s0)
.L800BF050:
/* B361F0 800BF050 0C02F228 */  jal   func_800BC8A0
/* B361F4 800BF054 8E2502C0 */   lw    $a1, 0x2c0($s1)
/* B361F8 800BF058 AE2202C0 */  sw    $v0, 0x2c0($s1)
/* B361FC 800BF05C 02002025 */  move  $a0, $s0
/* B36200 800BF060 0C02F228 */  jal   func_800BC8A0
/* B36204 800BF064 8E2502D0 */   lw    $a1, 0x2d0($s1)
/* B36208 800BF068 AE2202D0 */  sw    $v0, 0x2d0($s1)
/* B3620C 800BF06C 860C07B4 */  lh    $t4, 0x7b4($s0)
/* B36210 800BF070 8E0600D4 */  lw    $a2, 0xd4($s0)
/* B36214 800BF074 8E0500D0 */  lw    $a1, 0xd0($s0)
/* B36218 800BF078 448C2000 */  mtc1  $t4, $f4
/* B3621C 800BF07C 260400B8 */  addiu $a0, $s0, 0xb8
/* B36220 800BF080 AFA40040 */  sw    $a0, 0x40($sp)
/* B36224 800BF084 46802120 */  cvt.s.w $f4, $f4
/* B36228 800BF088 44072000 */  mfc1  $a3, $f4
/* B3622C 800BF08C 0C02A918 */  jal   func_800AA460
/* B36230 800BF090 00000000 */   nop
/* B36234 800BF094 8FA40040 */  lw    $a0, 0x40($sp)
/* B36238 800BF098 0C02AA94 */  jal   func_800AAA50
/* B3623C 800BF09C 2405000F */   li    $a1, 15
/* B36240 800BF0A0 3C010001 */  lui   $at, (0x00011DA0 >> 16) # lui $at, 1
/* B36244 800BF0A4 34211DA0 */  ori   $at, (0x00011DA0 & 0xFFFF) # ori $at, $at, 0x1da0
/* B36248 800BF0A8 02012821 */  addu  $a1, $s0, $at
/* B3624C 800BF0AC AFA50048 */  sw    $a1, 0x48($sp)
/* B36250 800BF0B0 0C03472B */  jal   Matrix_MtxToMtxF
/* B36254 800BF0B4 26040158 */   addiu $a0, $s0, 0x158
/* B36258 800BF0B8 3C010001 */  li    $at, 0x00010000 # 0.000000
/* B3625C 800BF0BC 34211D60 */  ori   $at, (0x00011D60 & 0xFFFF) # ori $at, $at, 0x1d60
/* B36260 800BF0C0 02012821 */  addu  $a1, $s0, $at
/* B36264 800BF0C4 AFA50044 */  sw    $a1, 0x44($sp)
/* B36268 800BF0C8 0C03472B */  jal   Matrix_MtxToMtxF
/* B3626C 800BF0CC 26040118 */   addiu $a0, $s0, 0x118
/* B36270 800BF0D0 8FA40044 */  lw    $a0, 0x44($sp)
/* B36274 800BF0D4 0C03424C */  jal   Matrix_Mult
/* B36278 800BF0D8 00002825 */   move  $a1, $zero
/* B3627C 800BF0DC 8FA40048 */  lw    $a0, 0x48($sp)
/* B36280 800BF0E0 0C03424C */  jal   Matrix_Mult
/* B36284 800BF0E4 24050001 */   li    $a1, 1
/* B36288 800BF0E8 0C034236 */  jal   Matrix_Get
/* B3628C 800BF0EC 8FA40044 */   lw    $a0, 0x44($sp)
/* B36290 800BF0F0 8FA2004C */  lw    $v0, 0x4c($sp)
/* B36294 800BF0F4 44800000 */  mtc1  $zero, $f0
/* B36298 800BF0F8 00000000 */  nop
/* B3629C 800BF0FC E4401DD8 */  swc1  $f0, 0x1dd8($v0)
/* B362A0 800BF100 E4401DD4 */  swc1  $f0, 0x1dd4($v0)
/* B362A4 800BF104 E4401DD0 */  swc1  $f0, 0x1dd0($v0)
/* B362A8 800BF108 E4401DCC */  swc1  $f0, 0x1dcc($v0)
/* B362AC 800BF10C E4401DBC */  swc1  $f0, 0x1dbc($v0)
/* B362B0 800BF110 E4401DAC */  swc1  $f0, 0x1dac($v0)
/* B362B4 800BF114 0C0347E8 */  jal   Matrix_Reverse
/* B362B8 800BF118 8FA40048 */   lw    $a0, 0x48($sp)
/* B362BC 800BF11C 3C058014 */  lui   $a1, %hi(D_8014472C) # $a1, 0x8014
/* B362C0 800BF120 24A5472C */  addiu $a1, %lo(D_8014472C) # addiu $a1, $a1, 0x472c
/* B362C4 800BF124 8FA40048 */  lw    $a0, 0x48($sp)
/* B362C8 800BF128 0C034A17 */  jal   Matrix_CheckFloats
/* B362CC 800BF12C 24060FA5 */   li    $a2, 4005
/* B362D0 800BF130 AFA20058 */  sw    $v0, 0x58($sp)
/* B362D4 800BF134 02202025 */  move  $a0, $s1
/* B362D8 800BF138 0C031A73 */  jal   Graph_Alloc
/* B362DC 800BF13C 24050040 */   li    $a1, 64
/* B362E0 800BF140 8FA40058 */  lw    $a0, 0x58($sp)
/* B362E4 800BF144 0C034610 */  jal   Matrix_MtxFToMtx
/* B362E8 800BF148 00402825 */   move  $a1, $v0
/* B362EC 800BF14C 3C010001 */  lui   $at, 1
/* B362F0 800BF150 00300821 */  addu  $at, $at, $s0
/* B362F4 800BF154 AC221DE0 */  sw    $v0, 0x1de0($at)
/* B362F8 800BF158 8E2202C0 */  lw    $v0, 0x2c0($s1)
/* B362FC 800BF15C 3C0EDB06 */  lui   $t6, (0xDB060004 >> 16) # lui $t6, 0xdb06
/* B36300 800BF160 35CE0004 */  ori   $t6, (0xDB060004 & 0xFFFF) # ori $t6, $t6, 4
/* B36304 800BF164 244D0008 */  addiu $t5, $v0, 8
/* B36308 800BF168 AE2D02C0 */  sw    $t5, 0x2c0($s1)
/* B3630C 800BF16C AC4E0000 */  sw    $t6, ($v0)
/* B36310 800BF170 8FAF004C */  lw    $t7, 0x4c($sp)
/* B36314 800BF174 2401000A */  li    $at, 10
/* B36318 800BF178 8DF81DE0 */  lw    $t8, 0x1de0($t7)
/* B3631C 800BF17C AC580004 */  sw    $t8, 4($v0)
/* B36320 800BF180 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B36324 800BF184 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B36328 800BF188 84591074 */  lh    $t9, 0x1074($v0)
/* B3632C 800BF18C 57210005 */  bnel  $t9, $at, .L800BF1A4
/* B36330 800BF190 8E2402C0 */   lw    $a0, 0x2c0($s1)
/* B36334 800BF194 8449108C */  lh    $t1, 0x108c($v0)
/* B36338 800BF198 1120004C */  beqz  $t1, .L800BF2CC
/* B3633C 800BF19C 00000000 */   nop
/* B36340 800BF1A0 8E2402C0 */  lw    $a0, 0x2c0($s1)
.L800BF1A4:
/* B36344 800BF1A4 0C031B08 */  jal   Graph_GfxPlusOne
/* B36348 800BF1A8 AFA401CC */   sw    $a0, 0x1cc($sp)
/* B3634C 800BF1AC AFA201D0 */  sw    $v0, 0x1d0($sp)
/* B36350 800BF1B0 8E2202B0 */  lw    $v0, 0x2b0($s1)
/* B36354 800BF1B4 3C0BDE00 */  lui   $t3, 0xde00
/* B36358 800BF1B8 24010003 */  li    $at, 3
/* B3635C 800BF1BC 244A0008 */  addiu $t2, $v0, 8
/* B36360 800BF1C0 AE2A02B0 */  sw    $t2, 0x2b0($s1)
/* B36364 800BF1C4 AC4B0000 */  sw    $t3, ($v0)
/* B36368 800BF1C8 8FAC01D0 */  lw    $t4, 0x1d0($sp)
/* B3636C 800BF1CC 27A400A0 */  addiu $a0, $sp, 0xa0
/* B36370 800BF1D0 AC4C0004 */  sw    $t4, 4($v0)
/* B36374 800BF1D4 8FAD004C */  lw    $t5, 0x4c($sp)
/* B36378 800BF1D8 91A2241B */  lbu   $v0, 0x241b($t5)
/* B3637C 800BF1DC 10410007 */  beq   $v0, $at, .L800BF1FC
/* B36380 800BF1E0 2401000B */   li    $at, 11
/* B36384 800BF1E4 10410005 */  beq   $v0, $at, .L800BF1FC
/* B36388 800BF1E8 00000000 */   nop
/* B3638C 800BF1EC 8DAE23F0 */  lw    $t6, 0x23f0($t5)
/* B36390 800BF1F0 29C10038 */  slti  $at, $t6, 0x38
/* B36394 800BF1F4 5420001B */  bnezl $at, .L800BF264
/* B36398 800BF1F8 3C010001 */   lui   $at, 1
.L800BF1FC:
/* B3639C 800BF1FC 0C02A89E */  jal   View_Init
/* B363A0 800BF200 02202825 */   move  $a1, $s1
/* B363A4 800BF204 240F000A */  li    $t7, 10
/* B363A8 800BF208 241800F0 */  li    $t8, 240
/* B363AC 800BF20C 24190140 */  li    $t9, 320
/* B363B0 800BF210 AFAF01C0 */  sw    $t7, 0x1c0($sp)
/* B363B4 800BF214 AFB9009C */  sw    $t9, 0x9c($sp)
/* B363B8 800BF218 AFB80094 */  sw    $t8, 0x94($sp)
/* B363BC 800BF21C AFA00090 */  sw    $zero, 0x90($sp)
/* B363C0 800BF220 AFA00098 */  sw    $zero, 0x98($sp)
/* B363C4 800BF224 27A400A0 */  addiu $a0, $sp, 0xa0
/* B363C8 800BF228 0C02A93F */  jal   View_SetViewport
/* B363CC 800BF22C 27A50090 */   addiu $a1, $sp, 0x90
/* B363D0 800BF230 27A400A0 */  addiu $a0, $sp, 0xa0
/* B363D4 800BF234 2405000F */  li    $a1, 15
/* B363D8 800BF238 0C02AE7B */  jal   func_800AB9EC
/* B363DC 800BF23C 27A601D0 */   addiu $a2, $sp, 0x1d0
/* B363E0 800BF240 8FA9004C */  lw    $t1, 0x4c($sp)
/* B363E4 800BF244 3C010001 */  lui   $at, (0x000121C8 >> 16) # lui $at, 1
/* B363E8 800BF248 342121C8 */  ori   $at, (0x000121C8 & 0xFFFF) # ori $at, $at, 0x21c8
/* B363EC 800BF24C 8D392400 */  lw    $t9, 0x2400($t1)
/* B363F0 800BF250 02012021 */  addu  $a0, $s0, $at
/* B363F4 800BF254 27A501D0 */  addiu $a1, $sp, 0x1d0
/* B363F8 800BF258 0320F809 */  jalr  $t9
/* B363FC 800BF25C 00000000 */  nop
/* B36400 800BF260 3C010001 */  lui   $at, (0x0001241C >> 16) # lui $at, 1
.L800BF264:
/* B36404 800BF264 3421241C */  ori   $at, (0x0001241C & 0xFFFF) # ori $at, $at, 0x241c
/* B36408 800BF268 02012021 */  addu  $a0, $s0, $at
/* B3640C 800BF26C 0C02CDC6 */  jal   TransitionFade_Draw
/* B36410 800BF270 27A501D0 */   addiu $a1, $sp, 0x1d0
/* B36414 800BF274 3C028016 */  lui   $v0, %hi(D_801614B0) # $v0, 0x8016
/* B36418 800BF278 244214B0 */  addiu $v0, %lo(D_801614B0) # addiu $v0, $v0, 0x14b0
/* B3641C 800BF27C 904A0003 */  lbu   $t2, 3($v0)
/* B36420 800BF280 3C048016 */  lui   $a0, %hi(D_80161498) # $a0, 0x8016
/* B36424 800BF284 24841498 */  addiu $a0, %lo(D_80161498) # addiu $a0, $a0, 0x1498
/* B36428 800BF288 59400006 */  blezl $t2, .L800BF2A4
/* B3642C 800BF28C 8FAC01D0 */   lw    $t4, 0x1d0($sp)
/* B36430 800BF290 8C4B0000 */  lw    $t3, ($v0)
/* B36434 800BF294 27A501D0 */  addiu $a1, $sp, 0x1d0
/* B36438 800BF298 0C02B570 */  jal   VisMono_Draw
/* B3643C 800BF29C AC8B0008 */   sw    $t3, 8($a0)
/* B36440 800BF2A0 8FAC01D0 */  lw    $t4, 0x1d0($sp)
.L800BF2A4:
/* B36444 800BF2A4 3C0EDF00 */  lui   $t6, 0xdf00
/* B36448 800BF2A8 258D0008 */  addiu $t5, $t4, 8
/* B3644C 800BF2AC AFAD01D0 */  sw    $t5, 0x1d0($sp)
/* B36450 800BF2B0 AD800004 */  sw    $zero, 4($t4)
/* B36454 800BF2B4 AD8E0000 */  sw    $t6, ($t4)
/* B36458 800BF2B8 8FA501D0 */  lw    $a1, 0x1d0($sp)
/* B3645C 800BF2BC 0C031B0A */  jal   Graph_BranchDlist
/* B36460 800BF2C0 8FA401CC */   lw    $a0, 0x1cc($sp)
/* B36464 800BF2C4 8FAF01D0 */  lw    $t7, 0x1d0($sp)
/* B36468 800BF2C8 AE2F02C0 */  sw    $t7, 0x2c0($s1)
.L800BF2CC:
/* B3646C 800BF2CC 3C188016 */  lui   $t8, %hi(gTrnsnUnkState) # $t8, 0x8016
/* B36470 800BF2D0 8F181490 */  lw    $t8, %lo(gTrnsnUnkState)($t8)
/* B36474 800BF2D4 24010003 */  li    $at, 3
/* B36478 800BF2D8 24050140 */  li    $a1, 320
/* B3647C 800BF2DC 1701000D */  bne   $t8, $at, .L800BF314
/* B36480 800BF2E0 240600F0 */   li    $a2, 240
/* B36484 800BF2E4 8E2902C0 */  lw    $t1, 0x2c0($s1)
/* B36488 800BF2E8 3C048016 */  lui   $a0, %hi(sTrnsnUnk) # $a0, 0x8016
/* B3648C 800BF2EC 248413B0 */  addiu $a0, %lo(sTrnsnUnk) # addiu $a0, $a0, 0x13b0
/* B36490 800BF2F0 27A50088 */  addiu $a1, $sp, 0x88
/* B36494 800BF2F4 0C02C862 */  jal   TransitionUnk_Draw
/* B36498 800BF2F8 AFA90088 */   sw    $t1, 0x88($sp)
/* B3649C 800BF2FC 8FB90088 */  lw    $t9, 0x88($sp)
/* B364A0 800BF300 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B364A4 800BF304 AE3902C0 */  sw    $t9, 0x2c0($s1)
/* B364A8 800BF308 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B364AC 800BF30C 100001C0 */  b     .L800BFA10
/* B364B0 800BF310 84431074 */   lh    $v1, 0x1074($v0)
.L800BF314:
/* B364B4 800BF314 3C010001 */  lui   $at, (0x00012124 >> 16) # lui $at, 1
/* B364B8 800BF318 34212124 */  ori   $at, (0x00012124 & 0xFFFF) # ori $at, $at, 0x2124
/* B364BC 800BF31C 3C0A8017 */  lui   $t2, %hi(D_801759C0) # $t2, 0x8017
/* B364C0 800BF320 254A59C0 */  addiu $t2, %lo(D_801759C0) # addiu $t2, $t2, 0x59c0
/* B364C4 800BF324 02012021 */  addu  $a0, $s0, $at
/* B364C8 800BF328 8E2702DC */  lw    $a3, 0x2dc($s1)
/* B364CC 800BF32C AFA4003C */  sw    $a0, 0x3c($sp)
/* B364D0 800BF330 0C0303B6 */  jal   func_800C0ED8
/* B364D4 800BF334 AFAA0010 */   sw    $t2, 0x10($sp)
/* B364D8 800BF338 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B364DC 800BF33C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B364E0 800BF340 24010002 */  li    $at, 2
/* B364E4 800BF344 84430190 */  lh    $v1, 0x190($v0)
/* B364E8 800BF348 5461000E */  bnel  $v1, $at, .L800BF384
/* B364EC 800BF34C 28610004 */   slti  $at, $v1, 4
/* B364F0 800BF350 0C01EFC4 */  jal   MsgEvent_SendNullTask
/* B364F4 800BF354 00000000 */   nop
/* B364F8 800BF358 0C030DDC */  jal   func_800C3770
/* B364FC 800BF35C 8FA4003C */   lw    $a0, 0x3c($sp)
/* B36500 800BF360 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* B36504 800BF364 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* B36508 800BF368 240B0003 */  li    $t3, 3
/* B3650C 800BF36C 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B36510 800BF370 A58B0190 */  sh    $t3, 0x190($t4)
/* B36514 800BF374 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B36518 800BF378 10000008 */  b     .L800BF39C
/* B3651C 800BF37C 84430190 */   lh    $v1, 0x190($v0)
/* B36520 800BF380 28610004 */  slti  $at, $v1, 4
.L800BF384:
/* B36524 800BF384 54200006 */  bnezl $at, .L800BF3A0
/* B36528 800BF388 24010003 */   li    $at, 3
/* B3652C 800BF38C A4400190 */  sh    $zero, 0x190($v0)
/* B36530 800BF390 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B36534 800BF394 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B36538 800BF398 84430190 */  lh    $v1, 0x190($v0)
.L800BF39C:
/* B3653C 800BF39C 24010003 */  li    $at, 3
.L800BF3A0:
/* B36540 800BF3A0 5461000D */  bnel  $v1, $at, .L800BF3D8
/* B36544 800BF3A4 84431074 */   lh    $v1, 0x1074($v0)
/* B36548 800BF3A8 8E2D02C0 */  lw    $t5, 0x2c0($s1)
/* B3654C 800BF3AC 8FA4003C */  lw    $a0, 0x3c($sp)
/* B36550 800BF3B0 27A50084 */  addiu $a1, $sp, 0x84
/* B36554 800BF3B4 0C03092F */  jal   func_800C24BC
/* B36558 800BF3B8 AFAD0084 */   sw    $t5, 0x84($sp)
/* B3655C 800BF3BC 8FAE0084 */  lw    $t6, 0x84($sp)
/* B36560 800BF3C0 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B36564 800BF3C4 AE2E02C0 */  sw    $t6, 0x2c0($s1)
/* B36568 800BF3C8 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3656C 800BF3CC 10000190 */  b     .L800BFA10
/* B36570 800BF3D0 84431074 */   lh    $v1, 0x1074($v0)
/* B36574 800BF3D4 84431074 */  lh    $v1, 0x1074($v0)
.L800BF3D8:
/* B36578 800BF3D8 2401000A */  li    $at, 10
/* B3657C 800BF3DC 54610005 */  bnel  $v1, $at, .L800BF3F4
/* B36580 800BF3E0 8FB8004C */   lw    $t8, 0x4c($sp)
/* B36584 800BF3E4 844F107A */  lh    $t7, 0x107a($v0)
/* B36588 800BF3E8 51E00038 */  beql  $t7, $zero, .L800BF4CC
/* B3658C 800BF3EC 2401000A */   li    $at, 10
/* B36590 800BF3F0 8FB8004C */  lw    $t8, 0x4c($sp)
.L800BF3F4:
/* B36594 800BF3F4 2401001D */  li    $at, 29
/* B36598 800BF3F8 93041E14 */  lbu   $a0, 0x1e14($t8)
/* B3659C 800BF3FC 50800033 */  beql  $a0, $zero, .L800BF4CC
/* B365A0 800BF400 2401000A */   li    $at, 10
/* B365A4 800BF404 10810030 */  beq   $a0, $at, .L800BF4C8
/* B365A8 800BF408 00804025 */   move  $t0, $a0
/* B365AC 800BF40C 93090A39 */  lbu   $t1, 0xa39($t8)
/* B365B0 800BF410 24010001 */  li    $at, 1
/* B365B4 800BF414 5520002D */  bnezl $t1, .L800BF4CC
/* B365B8 800BF418 2401000A */   li    $at, 10
/* B365BC 800BF41C 10810003 */  beq   $a0, $at, .L800BF42C
/* B365C0 800BF420 26061F78 */   addiu $a2, $s0, 0x1f78
/* B365C4 800BF424 24010005 */  li    $at, 5
/* B365C8 800BF428 15010015 */  bne   $t0, $at, .L800BF480
.L800BF42C:
/* B365CC 800BF42C 3C010001 */   lui   $at, (0x00010A24 >> 16) # lui $at, 1
/* B365D0 800BF430 34210A24 */  ori   $at, (0x00010A24 & 0xFFFF) # ori $at, $at, 0xa24
/* B365D4 800BF434 02012821 */  addu  $a1, $s0, $at
/* B365D8 800BF438 0C01BF22 */  jal   func_8006FC88
/* B365DC 800BF43C AFA60048 */   sw    $a2, 0x48($sp)
/* B365E0 800BF440 8FB9004C */  lw    $t9, 0x4c($sp)
/* B365E4 800BF444 C60600E0 */  lwc1  $f6, 0xe0($s0)
/* B365E8 800BF448 8FA40048 */  lw    $a0, 0x48($sp)
/* B365EC 800BF44C 93261E14 */  lbu   $a2, 0x1e14($t9)
/* B365F0 800BF450 93270A37 */  lbu   $a3, 0xa37($t9)
/* B365F4 800BF454 E7A60010 */  swc1  $f6, 0x10($sp)
/* B365F8 800BF458 C60800E4 */  lwc1  $f8, 0xe4($s0)
/* B365FC 800BF45C 02202825 */  move  $a1, $s1
/* B36600 800BF460 E7A80014 */  swc1  $f8, 0x14($sp)
/* B36604 800BF464 C60A00E8 */  lwc1  $f10, 0xe8($s0)
/* B36608 800BF468 0C02C431 */  jal   func_800B10C4
/* B3660C 800BF46C E7AA0018 */   swc1  $f10, 0x18($sp)
/* B36610 800BF470 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B36614 800BF474 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B36618 800BF478 10000013 */  b     .L800BF4C8
/* B3661C 800BF47C 84431074 */   lh    $v1, 0x1074($v0)
.L800BF480:
/* B36620 800BF480 860A20B8 */  lh    $t2, 0x20b8($s0)
/* B36624 800BF484 55400011 */  bnezl $t2, .L800BF4CC
/* B36628 800BF488 2401000A */   li    $at, 10
/* B3662C 800BF48C C61000E0 */  lwc1  $f16, 0xe0($s0)
/* B36630 800BF490 00083400 */  sll   $a2, $t0, 0x10
/* B36634 800BF494 00063403 */  sra   $a2, $a2, 0x10
/* B36638 800BF498 E7B00010 */  swc1  $f16, 0x10($sp)
/* B3663C 800BF49C C61200E4 */  lwc1  $f18, 0xe4($s0)
/* B36640 800BF4A0 26041F78 */  addiu $a0, $s0, 0x1f78
/* B36644 800BF4A4 02202825 */  move  $a1, $s1
/* B36648 800BF4A8 E7B20014 */  swc1  $f18, 0x14($sp)
/* B3664C 800BF4AC C60400E8 */  lwc1  $f4, 0xe8($s0)
/* B36650 800BF4B0 00003825 */  move  $a3, $zero
/* B36654 800BF4B4 0C02C431 */  jal   func_800B10C4
/* B36658 800BF4B8 E7A40018 */   swc1  $f4, 0x18($sp)
/* B3665C 800BF4BC 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B36660 800BF4C0 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B36664 800BF4C4 84431074 */  lh    $v1, 0x1074($v0)
.L800BF4C8:
/* B36668 800BF4C8 2401000A */  li    $at, 10
.L800BF4CC:
/* B3666C 800BF4CC 54610006 */  bnel  $v1, $at, .L800BF4E8
/* B36670 800BF4D0 8FAD004C */   lw    $t5, 0x4c($sp)
/* B36674 800BF4D4 844B1088 */  lh    $t3, 0x1088($v0)
/* B36678 800BF4D8 316C0002 */  andi  $t4, $t3, 2
/* B3667C 800BF4DC 5180000B */  beql  $t4, $zero, .L800BF50C
/* B36680 800BF4E0 2401000A */   li    $at, 10
/* B36684 800BF4E4 8FAD004C */  lw    $t5, 0x4c($sp)
.L800BF4E8:
/* B36688 800BF4E8 91AE0A3A */  lbu   $t6, 0xa3a($t5)
/* B3668C 800BF4EC 55C00007 */  bnezl $t6, .L800BF50C
/* B36690 800BF4F0 2401000A */   li    $at, 10
/* B36694 800BF4F4 0C01CC37 */  jal   func_800730DC
/* B36698 800BF4F8 02002025 */   move  $a0, $s0
/* B3669C 800BF4FC 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B366A0 800BF500 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B366A4 800BF504 84431074 */  lh    $v1, 0x1074($v0)
/* B366A8 800BF508 2401000A */  li    $at, 10
.L800BF50C:
/* B366AC 800BF50C 14610005 */  bne   $v1, $at, .L800BF524
/* B366B0 800BF510 00000000 */   nop
/* B366B4 800BF514 844F1088 */  lh    $t7, 0x1088($v0)
/* B366B8 800BF518 31F80001 */  andi  $t8, $t7, 1
/* B366BC 800BF51C 53000007 */  beql  $t8, $zero, .L800BF53C
/* B366C0 800BF520 2401000A */   li    $at, 10
.L800BF524:
/* B366C4 800BF524 0C01D35B */  jal   func_80074D6C
/* B366C8 800BF528 02002025 */   move  $a0, $s0
/* B366CC 800BF52C 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B366D0 800BF530 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B366D4 800BF534 84431074 */  lh    $v1, 0x1074($v0)
/* B366D8 800BF538 2401000A */  li    $at, 10
.L800BF53C:
/* B366DC 800BF53C 14610005 */  bne   $v1, $at, .L800BF554
/* B366E0 800BF540 00000000 */   nop
/* B366E4 800BF544 84491088 */  lh    $t1, 0x1088($v0)
/* B366E8 800BF548 31390004 */  andi  $t9, $t1, 4
/* B366EC 800BF54C 5320000A */  beql  $t9, $zero, .L800BF578
/* B366F0 800BF550 2401000A */   li    $at, 10
.L800BF554:
/* B366F4 800BF554 0C01D430 */  jal   func_800750C0
/* B366F8 800BF558 02002025 */   move  $a0, $s0
/* B366FC 800BF55C 02002025 */  move  $a0, $s0
/* B36700 800BF560 0C01D50B */  jal   func_8007542C
/* B36704 800BF564 00002825 */   move  $a1, $zero
/* B36708 800BF568 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3670C 800BF56C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B36710 800BF570 84431074 */  lh    $v1, 0x1074($v0)
/* B36714 800BF574 2401000A */  li    $at, 10
.L800BF578:
/* B36718 800BF578 54610005 */  bnel  $v1, $at, .L800BF590
/* B3671C 800BF57C 260407A8 */   addiu $a0, $s0, 0x7a8
/* B36720 800BF580 844A1088 */  lh    $t2, 0x1088($v0)
/* B36724 800BF584 314B0008 */  andi  $t3, $t2, 8
/* B36728 800BF588 1160000E */  beqz  $t3, .L800BF5C4
/* B3672C 800BF58C 260407A8 */   addiu $a0, $s0, 0x7a8
.L800BF590:
/* B36730 800BF590 0C01E9B1 */  jal   Lights_CreateMapper
/* B36734 800BF594 02202825 */   move  $a1, $s1
/* B36738 800BF598 AFA20228 */  sw    $v0, 0x228($sp)
/* B3673C 800BF59C 8E0507A8 */  lw    $a1, 0x7a8($s0)
/* B36740 800BF5A0 00402025 */  move  $a0, $v0
/* B36744 800BF5A4 0C01E91D */  jal   func_8007A474
/* B36748 800BF5A8 00003025 */   move  $a2, $zero
/* B3674C 800BF5AC 8FA40228 */  lw    $a0, 0x228($sp)
/* B36750 800BF5B0 0C01E7BF */  jal   func_80079EFC
/* B36754 800BF5B4 02202825 */   move  $a1, $s1
/* B36758 800BF5B8 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3675C 800BF5BC 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B36760 800BF5C0 84431074 */  lh    $v1, 0x1074($v0)
.L800BF5C4:
/* B36764 800BF5C4 2401000A */  li    $at, 10
/* B36768 800BF5C8 54610005 */  bnel  $v1, $at, .L800BF5E0
/* B3676C 800BF5CC 844D0FD0 */   lh    $t5, 0xfd0($v0)
/* B36770 800BF5D0 844C107C */  lh    $t4, 0x107c($v0)
/* B36774 800BF5D4 5180001F */  beql  $t4, $zero, .L800BF654
/* B36778 800BF5D8 2401000A */   li    $at, 10
/* B3677C 800BF5DC 844D0FD0 */  lh    $t5, 0xfd0($v0)
.L800BF5E0:
/* B36780 800BF5E0 2401000A */  li    $at, 10
/* B36784 800BF5E4 02002025 */  move  $a0, $s0
/* B36788 800BF5E8 55A0001A */  bnezl $t5, .L800BF654
/* B3678C 800BF5EC 2401000A */   li    $at, 10
/* B36790 800BF5F0 50610004 */  beql  $v1, $at, .L800BF604
/* B36794 800BF5F4 8443107C */   lh    $v1, 0x107c($v0)
/* B36798 800BF5F8 10000002 */  b     .L800BF604
/* B3679C 800BF5FC 24030003 */   li    $v1, 3
/* B367A0 800BF600 8443107C */  lh    $v1, 0x107c($v0)
.L800BF604:
/* B367A4 800BF604 0C0281BE */  jal   Scene_Draw
/* B367A8 800BF608 AFA30080 */   sw    $v1, 0x80($sp)
/* B367AC 800BF60C 8FA30080 */  lw    $v1, 0x80($sp)
/* B367B0 800BF610 3C010001 */  lui   $at, (0x00011CBC >> 16) # lui $at, 1
/* B367B4 800BF614 34211CBC */  ori   $at, (0x00011CBC & 0xFFFF) # ori $at, $at, 0x1cbc
/* B367B8 800BF618 30660003 */  andi  $a2, $v1, 3
/* B367BC 800BF61C AFA60048 */  sw    $a2, 0x48($sp)
/* B367C0 800BF620 02012821 */  addu  $a1, $s0, $at
/* B367C4 800BF624 0C025D28 */  jal   Room_Draw
/* B367C8 800BF628 02002025 */   move  $a0, $s0
/* B367CC 800BF62C 3C010001 */  lui   $at, (0x00011CD0 >> 16) # lui $at, 1
/* B367D0 800BF630 34211CD0 */  ori   $at, (0x00011CD0 & 0xFFFF) # ori $at, $at, 0x1cd0
/* B367D4 800BF634 8FA60048 */  lw    $a2, 0x48($sp)
/* B367D8 800BF638 02012821 */  addu  $a1, $s0, $at
/* B367DC 800BF63C 0C025D28 */  jal   Room_Draw
/* B367E0 800BF640 02002025 */   move  $a0, $s0
/* B367E4 800BF644 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B367E8 800BF648 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B367EC 800BF64C 84431074 */  lh    $v1, 0x1074($v0)
/* B367F0 800BF650 2401000A */  li    $at, 10
.L800BF654:
/* B367F4 800BF654 54610005 */  bnel  $v1, $at, .L800BF66C
/* B367F8 800BF658 860F20B8 */   lh    $t7, 0x20b8($s0)
/* B367FC 800BF65C 844E107A */  lh    $t6, 0x107a($v0)
/* B36800 800BF660 51C00023 */  beql  $t6, $zero, .L800BF6F0
/* B36804 800BF664 8FAD004C */   lw    $t5, 0x4c($sp)
/* B36808 800BF668 860F20B8 */  lh    $t7, 0x20b8($s0)
.L800BF66C:
/* B3680C 800BF66C 51E00020 */  beql  $t7, $zero, .L800BF6F0
/* B36810 800BF670 8FAD004C */   lw    $t5, 0x4c($sp)
/* B36814 800BF674 861807A0 */  lh    $t8, 0x7a0($s0)
/* B36818 800BF678 24010019 */  li    $at, 25
/* B3681C 800BF67C 27A40074 */  addiu $a0, $sp, 0x74
/* B36820 800BF680 00184880 */  sll   $t1, $t8, 2
/* B36824 800BF684 0209C821 */  addu  $t9, $s0, $t1
/* B36828 800BF688 8F250790 */  lw    $a1, 0x790($t9)
/* B3682C 800BF68C 260B1F78 */  addiu $t3, $s0, 0x1f78
/* B36830 800BF690 84AA0142 */  lh    $t2, 0x142($a1)
/* B36834 800BF694 51410016 */  beql  $t2, $at, .L800BF6F0
/* B36838 800BF698 8FAD004C */   lw    $t5, 0x4c($sp)
/* B3683C 800BF69C 0C016BED */  jal   func_8005AFB4
/* B36840 800BF6A0 AFAB0048 */   sw    $t3, 0x48($sp)
/* B36844 800BF6A4 C60600E0 */  lwc1  $f6, 0xe0($s0)
/* B36848 800BF6A8 C7A80074 */  lwc1  $f8, 0x74($sp)
/* B3684C 800BF6AC 8FAC004C */  lw    $t4, 0x4c($sp)
/* B36850 800BF6B0 C7B20078 */  lwc1  $f18, 0x78($sp)
/* B36854 800BF6B4 46083280 */  add.s $f10, $f6, $f8
/* B36858 800BF6B8 91861E14 */  lbu   $a2, 0x1e14($t4)
/* B3685C 800BF6BC C7A8007C */  lwc1  $f8, 0x7c($sp)
/* B36860 800BF6C0 8FA40048 */  lw    $a0, 0x48($sp)
/* B36864 800BF6C4 E7AA0010 */  swc1  $f10, 0x10($sp)
/* B36868 800BF6C8 C61000E4 */  lwc1  $f16, 0xe4($s0)
/* B3686C 800BF6CC 02202825 */  move  $a1, $s1
/* B36870 800BF6D0 00003825 */  move  $a3, $zero
/* B36874 800BF6D4 46128100 */  add.s $f4, $f16, $f18
/* B36878 800BF6D8 E7A40014 */  swc1  $f4, 0x14($sp)
/* B3687C 800BF6DC C60600E8 */  lwc1  $f6, 0xe8($s0)
/* B36880 800BF6E0 46083280 */  add.s $f10, $f6, $f8
/* B36884 800BF6E4 0C02C431 */  jal   func_800B10C4
/* B36888 800BF6E8 E7AA0018 */   swc1  $f10, 0x18($sp)
/* B3688C 800BF6EC 8FAD004C */  lw    $t5, 0x4c($sp)
.L800BF6F0:
/* B36890 800BF6F0 02002025 */  move  $a0, $s0
/* B36894 800BF6F4 8FA50040 */  lw    $a1, 0x40($sp)
/* B36898 800BF6F8 91AE0B13 */  lbu   $t6, 0xb13($t5)
/* B3689C 800BF6FC 11C00003 */  beqz  $t6, .L800BF70C
/* B368A0 800BF700 00000000 */   nop
/* B368A4 800BF704 0C01D1C1 */  jal   func_80074704
/* B368A8 800BF708 02203025 */   move  $a2, $s1
.L800BF70C:
/* B368AC 800BF70C 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B368B0 800BF710 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B368B4 800BF714 2401000A */  li    $at, 10
/* B368B8 800BF718 02202025 */  move  $a0, $s1
/* B368BC 800BF71C 84431074 */  lh    $v1, 0x1074($v0)
/* B368C0 800BF720 00002825 */  move  $a1, $zero
/* B368C4 800BF724 00003025 */  move  $a2, $zero
/* B368C8 800BF728 14610004 */  bne   $v1, $at, .L800BF73C
/* B368CC 800BF72C 8FB8004C */   lw    $t8, 0x4c($sp)
/* B368D0 800BF730 844F107C */  lh    $t7, 0x107c($v0)
/* B368D4 800BF734 51E0000B */  beql  $t7, $zero, .L800BF764
/* B368D8 800BF738 2401000A */   li    $at, 10
.L800BF73C:
/* B368DC 800BF73C 87091E18 */  lh    $t1, 0x1e18($t8)
/* B368E0 800BF740 24190001 */  li    $t9, 1
/* B368E4 800BF744 AFB90014 */  sw    $t9, 0x14($sp)
/* B368E8 800BF748 00003825 */  move  $a3, $zero
/* B368EC 800BF74C 0C01D9CB */  jal   func_8007672C
/* B368F0 800BF750 AFA90010 */   sw    $t1, 0x10($sp)
/* B368F4 800BF754 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B368F8 800BF758 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B368FC 800BF75C 84431074 */  lh    $v1, 0x1074($v0)
/* B36900 800BF760 2401000A */  li    $at, 10
.L800BF764:
/* B36904 800BF764 14610004 */  bne   $v1, $at, .L800BF778
/* B36908 800BF768 02002025 */   move  $a0, $s0
/* B3690C 800BF76C 844A107E */  lh    $t2, 0x107e($v0)
/* B36910 800BF770 51400007 */  beql  $t2, $zero, .L800BF790
/* B36914 800BF774 2401000A */   li    $at, 10
.L800BF778:
/* B36918 800BF778 0C00C56B */  jal   func_800315AC
/* B3691C 800BF77C 26051C24 */   addiu $a1, $s0, 0x1c24
/* B36920 800BF780 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B36924 800BF784 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B36928 800BF788 84431074 */  lh    $v1, 0x1074($v0)
/* B3692C 800BF78C 2401000A */  li    $at, 10
.L800BF790:
/* B36930 800BF790 14610004 */  bne   $v1, $at, .L800BF7A4
/* B36934 800BF794 8FAC004C */   lw    $t4, 0x4c($sp)
/* B36938 800BF798 844B1080 */  lh    $t3, 0x1080($v0)
/* B3693C 800BF79C 51600025 */  beql  $t3, $zero, .L800BF834
/* B36940 800BF7A0 2401000A */   li    $at, 10
.L800BF7A4:
/* B36944 800BF7A4 918D0A3A */  lbu   $t5, 0xa3a($t4)
/* B36948 800BF7A8 15A0001C */  bnez  $t5, .L800BF81C
/* B3694C 800BF7AC 00000000 */   nop
/* B36950 800BF7B0 C61000E0 */  lwc1  $f16, 0xe0($s0)
/* B36954 800BF7B4 C5920A28 */  lwc1  $f18, 0xa28($t4)
/* B36958 800BF7B8 27AE021C */  addiu $t6, $sp, 0x21c
/* B3695C 800BF7BC 3C010001 */  lui   $at, (0x00010A24 >> 16) # lui $at, 1
/* B36960 800BF7C0 46128100 */  add.s $f4, $f16, $f18
/* B36964 800BF7C4 34210A24 */  ori   $at, (0x00010A24 & 0xFFFF) # ori $at, $at, 0xa24
/* B36968 800BF7C8 02012821 */  addu  $a1, $s0, $at
/* B3696C 800BF7CC 02002025 */  move  $a0, $s0
/* B36970 800BF7D0 E7A4021C */  swc1  $f4, 0x21c($sp)
/* B36974 800BF7D4 C5880A2C */  lwc1  $f8, 0xa2c($t4)
/* B36978 800BF7D8 C60600E4 */  lwc1  $f6, 0xe4($s0)
/* B3697C 800BF7DC 8FA60040 */  lw    $a2, 0x40($sp)
/* B36980 800BF7E0 02203825 */  move  $a3, $s1
/* B36984 800BF7E4 46083280 */  add.s $f10, $f6, $f8
/* B36988 800BF7E8 E7AA0220 */  swc1  $f10, 0x220($sp)
/* B3698C 800BF7EC C5920A30 */  lwc1  $f18, 0xa30($t4)
/* B36990 800BF7F0 C61000E8 */  lwc1  $f16, 0xe8($s0)
/* B36994 800BF7F4 46128100 */  add.s $f4, $f16, $f18
/* B36998 800BF7F8 E7A40224 */  swc1  $f4, 0x224($sp)
/* B3699C 800BF7FC 8DD80000 */  lw    $t8, ($t6)
/* B369A0 800BF800 AFB80010 */  sw    $t8, 0x10($sp)
/* B369A4 800BF804 8DCF0004 */  lw    $t7, 4($t6)
/* B369A8 800BF808 AFAF0014 */  sw    $t7, 0x14($sp)
/* B369AC 800BF80C 8DD80008 */  lw    $t8, 8($t6)
/* B369B0 800BF810 AFA0001C */  sw    $zero, 0x1c($sp)
/* B369B4 800BF814 0C01CE62 */  jal   func_80073988
/* B369B8 800BF818 AFB80018 */   sw    $t8, 0x18($sp)
.L800BF81C:
/* B369BC 800BF81C 0C01D79A */  jal   func_80075E68
/* B369C0 800BF820 02002025 */   move  $a0, $s0
/* B369C4 800BF824 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B369C8 800BF828 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B369CC 800BF82C 84431074 */  lh    $v1, 0x1074($v0)
/* B369D0 800BF830 2401000A */  li    $at, 10
.L800BF834:
/* B369D4 800BF834 54610005 */  bnel  $v1, $at, .L800BF84C
/* B369D8 800BF838 84590454 */   lh    $t9, 0x454($v0)
/* B369DC 800BF83C 84491082 */  lh    $t1, 0x1082($v0)
/* B369E0 800BF840 51200024 */  beql  $t1, $zero, .L800BF8D4
/* B369E4 800BF844 2401000A */   li    $at, 10
/* B369E8 800BF848 84590454 */  lh    $t9, 0x454($v0)
.L800BF84C:
/* B369EC 800BF84C 02202025 */  move  $a0, $s1
/* B369F0 800BF850 240B0003 */  li    $t3, 3
/* B369F4 800BF854 53200009 */  beql  $t9, $zero, .L800BF87C
/* B369F8 800BF858 8FAD004C */   lw    $t5, 0x4c($sp)
/* B369FC 800BF85C 844A045C */  lh    $t2, 0x45c($v0)
/* B36A00 800BF860 90450457 */  lbu   $a1, 0x457($v0)
/* B36A04 800BF864 90460459 */  lbu   $a2, 0x459($v0)
/* B36A08 800BF868 9047045B */  lbu   $a3, 0x45b($v0)
/* B36A0C 800BF86C AFAB0014 */  sw    $t3, 0x14($sp)
/* B36A10 800BF870 0C01D9CB */  jal   func_8007672C
/* B36A14 800BF874 AFAA0010 */   sw    $t2, 0x10($sp)
/* B36A18 800BF878 8FAD004C */  lw    $t5, 0x4c($sp)
.L800BF87C:
/* B36A1C 800BF87C 24010001 */  li    $at, 1
/* B36A20 800BF880 8FAE004C */  lw    $t6, 0x4c($sp)
/* B36A24 800BF884 91AC0B05 */  lbu   $t4, 0xb05($t5)
/* B36A28 800BF888 24180003 */  li    $t8, 3
/* B36A2C 800BF88C 3C028016 */  lui   $v0, %hi(gGameInfo)
/* B36A30 800BF890 1581000D */  bne   $t4, $at, .L800BF8C8
/* B36A34 800BF894 00000000 */   nop
/* B36A38 800BF898 91CF0B09 */  lbu   $t7, 0xb09($t6)
/* B36A3C 800BF89C 91C50B06 */  lbu   $a1, 0xb06($t6)
/* B36A40 800BF8A0 91C60B07 */  lbu   $a2, 0xb07($t6)
/* B36A44 800BF8A4 91C70B08 */  lbu   $a3, 0xb08($t6)
/* B36A48 800BF8A8 AFB80014 */  sw    $t8, 0x14($sp)
/* B36A4C 800BF8AC 02202025 */  move  $a0, $s1
/* B36A50 800BF8B0 0C01D9CB */  jal   func_8007672C
/* B36A54 800BF8B4 AFAF0010 */   sw    $t7, 0x10($sp)
/* B36A58 800BF8B8 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B36A5C 800BF8BC 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B36A60 800BF8C0 10000003 */  b     .L800BF8D0
/* B36A64 800BF8C4 84431074 */   lh    $v1, 0x1074($v0)
.L800BF8C8:
/* B36A68 800BF8C8 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B36A6C 800BF8CC 84431074 */  lh    $v1, 0x1074($v0)
.L800BF8D0:
/* B36A70 800BF8D0 2401000A */  li    $at, 10
.L800BF8D4:
/* B36A74 800BF8D4 14610004 */  bne   $v1, $at, .L800BF8E8
/* B36A78 800BF8D8 8FB9004C */   lw    $t9, 0x4c($sp)
/* B36A7C 800BF8DC 84491084 */  lh    $t1, 0x1084($v0)
/* B36A80 800BF8E0 5120000A */  beql  $t1, $zero, .L800BF90C
/* B36A84 800BF8E4 2401000A */   li    $at, 10
.L800BF8E8:
/* B36A88 800BF8E8 93250B0A */  lbu   $a1, 0xb0a($t9)
/* B36A8C 800BF8EC 50A00007 */  beql  $a1, $zero, .L800BF90C
/* B36A90 800BF8F0 2401000A */   li    $at, 10
/* B36A94 800BF8F4 0C01DA4D */  jal   func_80076934
/* B36A98 800BF8F8 02002025 */   move  $a0, $s0
/* B36A9C 800BF8FC 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B36AA0 800BF900 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B36AA4 800BF904 84431074 */  lh    $v1, 0x1074($v0)
/* B36AA8 800BF908 2401000A */  li    $at, 10
.L800BF90C:
/* B36AAC 800BF90C 14610004 */  bne   $v1, $at, .L800BF920
/* B36AB0 800BF910 00000000 */   nop
/* B36AB4 800BF914 844A108E */  lh    $t2, 0x108e($v0)
/* B36AB8 800BF918 51400006 */  beql  $t2, $zero, .L800BF934
/* B36ABC 800BF91C 844B0190 */   lh    $t3, 0x190($v0)
.L800BF920:
/* B36AC0 800BF920 0C018FE8 */  jal   DebugDisplay_DrawObjects
/* B36AC4 800BF924 02002025 */   move  $a0, $s0
/* B36AC8 800BF928 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B36ACC 800BF92C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B36AD0 800BF930 844B0190 */  lh    $t3, 0x190($v0)
.L800BF934:
/* B36AD4 800BF934 24010001 */  li    $at, 1
/* B36AD8 800BF938 3C0D8016 */  lui   $t5, %hi(gTrnsnUnkState) # $t5, 0x8016
/* B36ADC 800BF93C 11610005 */  beq   $t3, $at, .L800BF954
/* B36AE0 800BF940 3C0F8017 */   lui   $t7, %hi(D_801759C0) # $t7, 0x8017
/* B36AE4 800BF944 8DAD1490 */  lw    $t5, %lo(gTrnsnUnkState)($t5)
/* B36AE8 800BF948 24010001 */  li    $at, 1
/* B36AEC 800BF94C 55A10030 */  bnel  $t5, $at, .L800BFA10
/* B36AF0 800BF950 84431074 */   lh    $v1, 0x1074($v0)
.L800BF954:
/* B36AF4 800BF954 8E2C02B0 */  lw    $t4, 0x2b0($s1)
/* B36AF8 800BF958 3C010001 */  lui   $at, 1
/* B36AFC 800BF95C 00300821 */  addu  $at, $at, $s0
/* B36B00 800BF960 AFAC0070 */  sw    $t4, 0x70($sp)
/* B36B04 800BF964 8E2E02DC */  lw    $t6, 0x2dc($s1)
/* B36B08 800BF968 25EF59C0 */  addiu $t7, %lo(D_801759C0) # addiu $t7, $t7, 0x59c0
/* B36B0C 800BF96C 27A50070 */  addiu $a1, $sp, 0x70
/* B36B10 800BF970 AC2E2134 */  sw    $t6, 0x2134($at)
/* B36B14 800BF974 3C010001 */  lui   $at, 1
/* B36B18 800BF978 00300821 */  addu  $at, $at, $s0
/* B36B1C 800BF97C AC2F2138 */  sw    $t7, 0x2138($at)
/* B36B20 800BF980 0C0307C8 */  jal   func_800C1F20
/* B36B24 800BF984 8FA4003C */   lw    $a0, 0x3c($sp)
/* B36B28 800BF988 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* B36B2C 800BF98C 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* B36B30 800BF990 24010001 */  li    $at, 1
/* B36B34 800BF994 27A50070 */  addiu $a1, $sp, 0x70
/* B36B38 800BF998 87090190 */  lh    $t1, 0x190($t8)
/* B36B3C 800BF99C 240D0002 */  li    $t5, 2
/* B36B40 800BF9A0 1521000C */  bne   $t1, $at, .L800BF9D4
/* B36B44 800BF9A4 00000000 */   nop
/* B36B48 800BF9A8 8E3902DC */  lw    $t9, 0x2dc($s1)
/* B36B4C 800BF9AC 3C010001 */  lui   $at, 1
/* B36B50 800BF9B0 00300821 */  addu  $at, $at, $s0
/* B36B54 800BF9B4 AC39213C */  sw    $t9, 0x213c($at)
/* B36B58 800BF9B8 0C03082D */  jal   func_800C20B4
/* B36B5C 800BF9BC 8FA4003C */   lw    $a0, 0x3c($sp)
/* B36B60 800BF9C0 3C0B8016 */  lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* B36B64 800BF9C4 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* B36B68 800BF9C8 240A0002 */  li    $t2, 2
/* B36B6C 800BF9CC 10000003 */  b     .L800BF9DC
/* B36B70 800BF9D0 A56A0190 */   sh    $t2, 0x190($t3)
.L800BF9D4:
/* B36B74 800BF9D4 3C018016 */  lui   $at, %hi(gTrnsnUnkState) # $at, 0x8016
/* B36B78 800BF9D8 AC2D1490 */  sw    $t5, %lo(gTrnsnUnkState)($at)
.L800BF9DC:
/* B36B7C 800BF9DC 8FAC0070 */  lw    $t4, 0x70($sp)
/* B36B80 800BF9E0 3C010001 */  lui   $at, 1
/* B36B84 800BF9E4 00300821 */  addu  $at, $at, $s0
/* B36B88 800BF9E8 240E0002 */  li    $t6, 2
/* B36B8C 800BF9EC AE2C02B0 */  sw    $t4, 0x2b0($s1)
/* B36B90 800BF9F0 A02E21C7 */  sb    $t6, 0x21c7($at)
/* B36B94 800BF9F4 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B36B98 800BF9F8 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B36B9C 800BF9FC 844F0116 */  lh    $t7, 0x116($v0)
/* B36BA0 800BFA00 35F80001 */  ori   $t8, $t7, 1
/* B36BA4 800BFA04 1000000A */  b     .L800BFA30
/* B36BA8 800BFA08 A4580116 */   sh    $t8, 0x116($v0)
/* B36BAC 800BFA0C 84431074 */  lh    $v1, 0x1074($v0)
.L800BFA10:
/* B36BB0 800BFA10 2401000A */  li    $at, 10
/* B36BB4 800BFA14 14610004 */  bne   $v1, $at, .L800BFA28
/* B36BB8 800BFA18 00000000 */   nop
/* B36BBC 800BFA1C 84491086 */  lh    $t1, 0x1086($v0)
/* B36BC0 800BFA20 51200004 */  beql  $t1, $zero, .L800BFA34
/* B36BC4 800BFA24 8E1901DC */   lw    $t9, 0x1dc($s0)
.L800BFA28:
/* B36BC8 800BFA28 0C02FB50 */  jal   Gameplay_DrawOverlayElements
/* B36BCC 800BFA2C 02002025 */   move  $a0, $s0
.L800BFA30:
/* B36BD0 800BFA30 8E1901DC */  lw    $t9, 0x1dc($s0)
.L800BFA34:
/* B36BD4 800BFA34 5320001C */  beql  $t9, $zero, .L800BFAA8
/* B36BD8 800BFA38 860F07A0 */   lh    $t7, 0x7a0($s0)
/* B36BDC 800BFA3C 860A07A0 */  lh    $t2, 0x7a0($s0)
/* B36BE0 800BFA40 260C00B8 */  addiu $t4, $s0, 0xb8
/* B36BE4 800BFA44 27A40050 */  addiu $a0, $sp, 0x50
/* B36BE8 800BFA48 000A5880 */  sll   $t3, $t2, 2
/* B36BEC 800BFA4C 020B6821 */  addu  $t5, $s0, $t3
/* B36BF0 800BFA50 8DA50790 */  lw    $a1, 0x790($t5)
/* B36BF4 800BFA54 0C01647B */  jal   func_800591EC
/* B36BF8 800BFA58 AFAC0040 */   sw    $t4, 0x40($sp)
/* B36BFC 800BFA5C 0C02AE51 */  jal   func_800AB944
/* B36C00 800BFA60 8FA40040 */   lw    $a0, 0x40($sp)
/* B36C04 800BFA64 8FA3004C */  lw    $v1, 0x4c($sp)
/* B36C08 800BFA68 AE0001DC */  sw    $zero, 0x1dc($s0)
/* B36C0C 800BFA6C 2401001D */  li    $at, 29
/* B36C10 800BFA70 90641E14 */  lbu   $a0, 0x1e14($v1)
/* B36C14 800BFA74 5080000C */  beql  $a0, $zero, .L800BFAA8
/* B36C18 800BFA78 860F07A0 */   lh    $t7, 0x7a0($s0)
/* B36C1C 800BFA7C 5081000A */  beql  $a0, $at, .L800BFAA8
/* B36C20 800BFA80 860F07A0 */   lh    $t7, 0x7a0($s0)
/* B36C24 800BFA84 906E0A39 */  lbu   $t6, 0xa39($v1)
/* B36C28 800BFA88 26041F78 */  addiu $a0, $s0, 0x1f78
/* B36C2C 800BFA8C 55C00006 */  bnezl $t6, .L800BFAA8
/* B36C30 800BFA90 860F07A0 */   lh    $t7, 0x7a0($s0)
/* B36C34 800BFA94 8E0500E0 */  lw    $a1, 0xe0($s0)
/* B36C38 800BFA98 8E0600E4 */  lw    $a2, 0xe4($s0)
/* B36C3C 800BFA9C 0C02C40C */  jal   func_800B1030
/* B36C40 800BFAA0 8E0700E8 */   lw    $a3, 0xe8($s0)
/* B36C44 800BFAA4 860F07A0 */  lh    $t7, 0x7a0($s0)
.L800BFAA8:
/* B36C48 800BFAA8 000FC080 */  sll   $t8, $t7, 2
/* B36C4C 800BFAAC 02184821 */  addu  $t1, $s0, $t8
/* B36C50 800BFAB0 0C0167B2 */  jal   func_80059EC8
/* B36C54 800BFAB4 8D240790 */   lw    $a0, 0x790($t1)
/* B36C58 800BFAB8 3C068014 */  lui   $a2, %hi(D_80144738) # $a2, 0x8014
/* B36C5C 800BFABC 24C64738 */  addiu $a2, %lo(D_80144738) # addiu $a2, $a2, 0x4738
/* B36C60 800BFAC0 27A40208 */  addiu $a0, $sp, 0x208
/* B36C64 800BFAC4 02202825 */  move  $a1, $s1
/* B36C68 800BFAC8 0C031AD5 */  jal   Graph_CloseDisps
/* B36C6C 800BFACC 2407119C */   li    $a3, 4508
/* B36C70 800BFAD0 8FBF002C */  lw    $ra, 0x2c($sp)
/* B36C74 800BFAD4 8FB00024 */  lw    $s0, 0x24($sp)
/* B36C78 800BFAD8 8FB10028 */  lw    $s1, 0x28($sp)
/* B36C7C 800BFADC 03E00008 */  jr    $ra
/* B36C80 800BFAE0 27BD0230 */   addiu $sp, $sp, 0x230

