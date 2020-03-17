.rdata
glabel D_801406B0
    .asciz "../z_skin.c"
    .balign 4

glabel D_801406BC
    .asciz "../z_skin.c"
    .balign 4

.text
glabel func_800A5F60
/* B1D100 800A5F60 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B1D104 800A5F64 AFB00018 */  sw    $s0, 0x18($sp)
/* B1D108 800A5F68 AFA60060 */  sw    $a2, 0x60($sp)
/* B1D10C 800A5F6C 00808025 */  move  $s0, $a0
/* B1D110 800A5F70 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1D114 800A5F74 AFA5005C */  sw    $a1, 0x5c($sp)
/* B1D118 800A5F78 AFA70064 */  sw    $a3, 0x64($sp)
/* B1D11C 800A5F7C 00E04025 */  move  $t0, $a3
/* B1D120 800A5F80 3C068014 */  lui   $a2, %hi(D_801406B0) # $a2, 0x8014
/* B1D124 800A5F84 24C606B0 */  addiu $a2, %lo(D_801406B0) # addiu $a2, $a2, 0x6b0
/* B1D128 800A5F88 AFA80054 */  sw    $t0, 0x54($sp)
/* B1D12C 800A5F8C 2407018B */  li    $a3, 395
/* B1D130 800A5F90 02002825 */  move  $a1, $s0
/* B1D134 800A5F94 0C031AB1 */  jal   func_800C6AC4
/* B1D138 800A5F98 27A40038 */   addiu $a0, $sp, 0x38
/* B1D13C 800A5F9C 8FAE005C */  lw    $t6, 0x5c($sp)
/* B1D140 800A5FA0 3C048016 */  lui   $a0, %hi(gSegments) # $a0, 0x8016
/* B1D144 800A5FA4 24846FA8 */  addiu $a0, %lo(gSegments) # addiu $a0, $a0, 0x6fa8
/* B1D148 800A5FA8 8DCF0000 */  lw    $t7, ($t6)
/* B1D14C 800A5FAC 3C0500FF */  lui   $a1, (0x00FFFFFF >> 16) # lui $a1, 0xff
/* B1D150 800A5FB0 8FAE0064 */  lw    $t6, 0x64($sp)
/* B1D154 800A5FB4 8DE20000 */  lw    $v0, ($t7)
/* B1D158 800A5FB8 34A5FFFF */  ori   $a1, (0x00FFFFFF & 0xFFFF) # ori $a1, $a1, 0xffff
/* B1D15C 800A5FBC 3C068000 */  lui   $a2, 0x8000
/* B1D160 800A5FC0 0002C100 */  sll   $t8, $v0, 4
/* B1D164 800A5FC4 0018CF02 */  srl   $t9, $t8, 0x1c
/* B1D168 800A5FC8 00194880 */  sll   $t1, $t9, 2
/* B1D16C 800A5FCC 00895021 */  addu  $t2, $a0, $t1
/* B1D170 800A5FD0 8D4B0000 */  lw    $t3, ($t2)
/* B1D174 800A5FD4 00456024 */  and   $t4, $v0, $a1
/* B1D178 800A5FD8 8FA70060 */  lw    $a3, 0x60($sp)
/* B1D17C 800A5FDC 016C6821 */  addu  $t5, $t3, $t4
/* B1D180 800A5FE0 8FA80054 */  lw    $t0, 0x54($sp)
/* B1D184 800A5FE4 15C0000D */  bnez  $t6, .L800A601C
/* B1D188 800A5FE8 01A61821 */   addu  $v1, $t5, $a2
/* B1D18C 800A5FEC 00077880 */  sll   $t7, $a3, 2
/* B1D190 800A5FF0 006FC021 */  addu  $t8, $v1, $t7
/* B1D194 800A5FF4 8F020000 */  lw    $v0, ($t8)
/* B1D198 800A5FF8 00024900 */  sll   $t1, $v0, 4
/* B1D19C 800A5FFC 00095702 */  srl   $t2, $t1, 0x1c
/* B1D1A0 800A6000 000A5880 */  sll   $t3, $t2, 2
/* B1D1A4 800A6004 008B6021 */  addu  $t4, $a0, $t3
/* B1D1A8 800A6008 8D8D0000 */  lw    $t5, ($t4)
/* B1D1AC 800A600C 0045C824 */  and   $t9, $v0, $a1
/* B1D1B0 800A6010 032D7021 */  addu  $t6, $t9, $t5
/* B1D1B4 800A6014 01C67821 */  addu  $t7, $t6, $a2
/* B1D1B8 800A6018 8DE8000C */  lw    $t0, 0xc($t7)
.L800A601C:
/* B1D1BC 800A601C 11000023 */  beqz  $t0, .L800A60AC
/* B1D1C0 800A6020 02002025 */   move  $a0, $s0
/* B1D1C4 800A6024 3C098016 */  lui   $t1, %hi(D_801600C0) # $t1, 0x8016
/* B1D1C8 800A6028 252900C0 */  addiu $t1, %lo(D_801600C0) # addiu $t1, $t1, 0xc0
/* B1D1CC 800A602C 0007C180 */  sll   $t8, $a3, 6
/* B1D1D0 800A6030 03092821 */  addu  $a1, $t8, $t1
/* B1D1D4 800A6034 0C029F9C */  jal   func_800A7E70
/* B1D1D8 800A6038 AFA80054 */   sw    $t0, 0x54($sp)
/* B1D1DC 800A603C 1040001B */  beqz  $v0, .L800A60AC
/* B1D1E0 800A6040 8FA80054 */   lw    $t0, 0x54($sp)
/* B1D1E4 800A6044 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B1D1E8 800A6048 3C0BDA38 */  lui   $t3, 0xda38
/* B1D1EC 800A604C 3C19DE00 */  lui   $t9, 0xde00
/* B1D1F0 800A6050 246A0008 */  addiu $t2, $v1, 8
/* B1D1F4 800A6054 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* B1D1F8 800A6058 AC620004 */  sw    $v0, 4($v1)
/* B1D1FC 800A605C AC6B0000 */  sw    $t3, ($v1)
/* B1D200 800A6060 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B1D204 800A6064 3C0ED838 */  lui   $t6, (0xD8380002 >> 16) # lui $t6, 0xd838
/* B1D208 800A6068 35CE0002 */  ori   $t6, (0xD8380002 & 0xFFFF) # ori $t6, $t6, 2
/* B1D20C 800A606C 246C0008 */  addiu $t4, $v1, 8
/* B1D210 800A6070 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B1D214 800A6074 AC680004 */  sw    $t0, 4($v1)
/* B1D218 800A6078 AC790000 */  sw    $t9, ($v1)
/* B1D21C 800A607C 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B1D220 800A6080 240F0040 */  li    $t7, 64
/* B1D224 800A6084 3C09E700 */  lui   $t1, 0xe700
/* B1D228 800A6088 246D0008 */  addiu $t5, $v1, 8
/* B1D22C 800A608C AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B1D230 800A6090 AC6F0004 */  sw    $t7, 4($v1)
/* B1D234 800A6094 AC6E0000 */  sw    $t6, ($v1)
/* B1D238 800A6098 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B1D23C 800A609C 24780008 */  addiu $t8, $v1, 8
/* B1D240 800A60A0 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B1D244 800A60A4 AC600004 */  sw    $zero, 4($v1)
/* B1D248 800A60A8 AC690000 */  sw    $t1, ($v1)
.L800A60AC:
/* B1D24C 800A60AC 3C068014 */  lui   $a2, %hi(D_801406BC) # $a2, 0x8014
/* B1D250 800A60B0 24C606BC */  addiu $a2, %lo(D_801406BC) # addiu $a2, $a2, 0x6bc
/* B1D254 800A60B4 27A40038 */  addiu $a0, $sp, 0x38
/* B1D258 800A60B8 02002825 */  move  $a1, $s0
/* B1D25C 800A60BC 0C031AD5 */  jal   func_800C6B54
/* B1D260 800A60C0 240701B1 */   li    $a3, 433
/* B1D264 800A60C4 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1D268 800A60C8 8FB00018 */  lw    $s0, 0x18($sp)
/* B1D26C 800A60CC 27BD0058 */  addiu $sp, $sp, 0x58
/* B1D270 800A60D0 03E00008 */  jr    $ra
/* B1D274 800A60D4 00000000 */   nop   

