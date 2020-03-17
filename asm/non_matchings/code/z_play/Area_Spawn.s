.rdata
glabel D_80144798
    .asciz "\nSCENE SIZE %fK\n"
    .balign 4

glabel D_801447AC
    .incbin "baserom.z64", 0xBBB94C, 0x1C

glabel D_801447C8
    .asciz "../z_play.c"
    .balign 4

glabel D_801447D4
    .asciz "ROOM SIZE=%fK\n"
    .balign 4

.text
glabel Area_Spawn
/* B371A8 800C0008 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B371AC 800C000C 00057080 */  sll   $t6, $a1, 2
/* B371B0 800C0010 01C57021 */  addu  $t6, $t6, $a1
/* B371B4 800C0014 3C0F8013 */  lui   $t7, %hi(gSceneTable) # $t7, 0x8013
/* B371B8 800C0018 AFB00014 */  sw    $s0, 0x14($sp)
/* B371BC 800C001C 25EF9A10 */  addiu $t7, %lo(gSceneTable) # addiu $t7, $t7, -0x65f0
/* B371C0 800C0020 000E7080 */  sll   $t6, $t6, 2
/* B371C4 800C0024 01CF8021 */  addu  $s0, $t6, $t7
/* B371C8 800C0028 3C010001 */  lui   $at, 1
/* B371CC 800C002C AFBF001C */  sw    $ra, 0x1c($sp)
/* B371D0 800C0030 AFB10018 */  sw    $s1, 0x18($sp)
/* B371D4 800C0034 AFA60028 */  sw    $a2, 0x28($sp)
/* B371D8 800C0038 A2000013 */  sb    $zero, 0x13($s0)
/* B371DC 800C003C 00240821 */  addu  $at, $at, $a0
/* B371E0 800C0040 AC30242C */  sw    $s0, 0x242c($at)
/* B371E4 800C0044 A48500A4 */  sh    $a1, 0xa4($a0)
/* B371E8 800C0048 92180011 */  lbu   $t8, 0x11($s0)
/* B371EC 800C004C 00808825 */  move  $s1, $a0
/* B371F0 800C0050 3C014F80 */  lui   $at, 0x4f80
/* B371F4 800C0054 A09800A6 */  sb    $t8, 0xa6($a0)
/* B371F8 800C0058 8E080000 */  lw    $t0, ($s0)
/* B371FC 800C005C 8E190004 */  lw    $t9, 4($s0)
/* B37200 800C0060 3C048014 */  lui   $a0, %hi(D_80144798)
/* B37204 800C0064 24844798 */  addiu $a0, %lo(D_80144798) # addiu $a0, $a0, 0x4798
/* B37208 800C0068 03284823 */  subu  $t1, $t9, $t0
/* B3720C 800C006C 44892000 */  mtc1  $t1, $f4
/* B37210 800C0070 05210004 */  bgez  $t1, .L800C0084
/* B37214 800C0074 468021A0 */   cvt.s.w $f6, $f4
/* B37218 800C0078 44814000 */  mtc1  $at, $f8
/* B3721C 800C007C 00000000 */  nop   
/* B37220 800C0080 46083180 */  add.s $f6, $f6, $f8
.L800C0084:
/* B37224 800C0084 3C013A80 */  li    $at, 0x3A800000 # 0.000000
/* B37228 800C0088 44815000 */  mtc1  $at, $f10
/* B3722C 800C008C 00000000 */  nop   
/* B37230 800C0090 460A3402 */  mul.s $f16, $f6, $f10
/* B37234 800C0094 460084A1 */  cvt.d.s $f18, $f16
/* B37238 800C0098 44079000 */  mfc1  $a3, $f18
/* B3723C 800C009C 44069800 */  mfc1  $a2, $f19
/* B37240 800C00A0 0C00084C */  jal   osSyncPrintf
/* B37244 800C00A4 00000000 */   nop   
/* B37248 800C00A8 02202025 */  move  $a0, $s1
/* B3724C 800C00AC 0C02FF97 */  jal   func_800BFE5C
/* B37250 800C00B0 02002825 */   move  $a1, $s0
/* B37254 800C00B4 AE2200B0 */  sw    $v0, 0xb0($s1)
/* B37258 800C00B8 A2000013 */  sb    $zero, 0x13($s0)
/* B3725C 800C00BC 8E2300B0 */  lw    $v1, 0xb0($s1)
/* B37260 800C00C0 3C048014 */  lui   $a0, %hi(D_801447AC) # $a0, 0x8014
/* B37264 800C00C4 248447AC */  addiu $a0, %lo(D_801447AC) # addiu $a0, $a0, 0x47ac
/* B37268 800C00C8 14600005 */  bnez  $v1, .L800C00E0
/* B3726C 800C00CC 3C058014 */   lui   $a1, %hi(D_801447C8) # $a1, 0x8014
/* B37270 800C00D0 24A547C8 */  addiu $a1, %lo(D_801447C8) # addiu $a1, $a1, 0x47c8
/* B37274 800C00D4 0C0007FC */  jal   __assert
/* B37278 800C00D8 24061360 */   li    $a2, 4960
/* B3727C 800C00DC 8E2300B0 */  lw    $v1, 0xb0($s1)
.L800C00E0:
/* B37280 800C00E0 3C018000 */  lui   $at, 0x8000
/* B37284 800C00E4 00615021 */  addu  $t2, $v1, $at
/* B37288 800C00E8 3C018016 */  lui   $at, %hi(gSegments+8) # $at, 0x8016
/* B3728C 800C00EC AC2A6FB0 */  sw    $t2, %lo(gSegments+8)($at)
/* B37290 800C00F0 02202025 */  move  $a0, $s1
/* B37294 800C00F4 0C02FFC3 */  jal   func_800BFF0C
/* B37298 800C00F8 8FA50028 */   lw    $a1, 0x28($sp)
/* B3729C 800C00FC 3C010001 */  li    $at, 0x00010000 # 0.000000
/* B372A0 800C0100 34211CBC */  ori   $at, (0x00011CBC & 0xFFFF) # ori $at, $at, 0x1cbc
/* B372A4 800C0104 02212821 */  addu  $a1, $s1, $at
/* B372A8 800C0108 0C025BFA */  jal   func_80096FE8
/* B372AC 800C010C 02202025 */   move  $a0, $s1
/* B372B0 800C0110 44822000 */  mtc1  $v0, $f4
/* B372B4 800C0114 3C048014 */  lui   $a0, %hi(D_801447D4) # $a0, 0x8014
/* B372B8 800C0118 248447D4 */  addiu $a0, %lo(D_801447D4) # addiu $a0, $a0, 0x47d4
/* B372BC 800C011C 04410005 */  bgez  $v0, .L800C0134
/* B372C0 800C0120 46802220 */   cvt.s.w $f8, $f4
/* B372C4 800C0124 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B372C8 800C0128 44813000 */  mtc1  $at, $f6
/* B372CC 800C012C 00000000 */  nop   
/* B372D0 800C0130 46064200 */  add.s $f8, $f8, $f6
.L800C0134:
/* B372D4 800C0134 3C013A80 */  li    $at, 0x3A800000 # 0.000000
/* B372D8 800C0138 44815000 */  mtc1  $at, $f10
/* B372DC 800C013C 00000000 */  nop   
/* B372E0 800C0140 460A4402 */  mul.s $f16, $f8, $f10
/* B372E4 800C0144 460084A1 */  cvt.d.s $f18, $f16
/* B372E8 800C0148 44079000 */  mfc1  $a3, $f18
/* B372EC 800C014C 44069800 */  mfc1  $a2, $f19
/* B372F0 800C0150 0C00084C */  jal   osSyncPrintf
/* B372F4 800C0154 00000000 */   nop   
/* B372F8 800C0158 8FBF001C */  lw    $ra, 0x1c($sp)
/* B372FC 800C015C 8FB00014 */  lw    $s0, 0x14($sp)
/* B37300 800C0160 8FB10018 */  lw    $s1, 0x18($sp)
/* B37304 800C0164 03E00008 */  jr    $ra
/* B37308 800C0168 27BD0020 */   addiu $sp, $sp, 0x20

