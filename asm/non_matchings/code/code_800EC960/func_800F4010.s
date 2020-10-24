.late_rodata
glabel D_8014A5EC
    .float 0.3

glabel D_8014A5F0
    .float 1.1

    .word 0 # forced padding
glabel D_8014A5F8
    .double 0.7

glabel D_8014A600
    .double 0.3

.text
glabel func_800F4010
/* B6B1B0 800F4010 44866000 */  mtc1  $a2, $f12
/* B6B1B4 800F4014 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B6B1B8 800F4018 AFBF001C */  sw    $ra, 0x1c($sp)
/* B6B1BC 800F401C 3C018013 */  lui   $at, %hi(D_80131C8C)
/* B6B1C0 800F4020 AFA40028 */  sw    $a0, 0x28($sp)
/* B6B1C4 800F4024 AFA5002C */  sw    $a1, 0x2c($sp)
/* B6B1C8 800F4028 E42C1C8C */  swc1  $f12, %lo(D_80131C8C)($at)
/* B6B1CC 800F402C 0C03CFE1 */  jal   func_800F3F84
/* B6B1D0 800F4030 E7AC0030 */   swc1  $f12, 0x30($sp)
/* B6B1D4 800F4034 3C0E8017 */  lui   $t6, %hi(D_8016B7A8) # $t6, 0x8017
/* B6B1D8 800F4038 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B6B1DC 800F403C 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B6B1E0 800F4040 25CEB7A8 */  addiu $t6, %lo(D_8016B7A8) # addiu $t6, $t6, -0x4858
/* B6B1E4 800F4044 3C078017 */  lui   $a3, %hi(D_8016B7B0) # $a3, 0x8017
/* B6B1E8 800F4048 24E7B7B0 */  addiu $a3, %lo(D_8016B7B0) # addiu $a3, $a3, -0x4850
/* B6B1EC 800F404C AFAE0010 */  sw    $t6, 0x10($sp)
/* B6B1F0 800F4050 AFAF0014 */  sw    $t7, 0x14($sp)
/* B6B1F4 800F4054 97A4002E */  lhu   $a0, 0x2e($sp)
/* B6B1F8 800F4058 8FA50028 */  lw    $a1, 0x28($sp)
/* B6B1FC 800F405C 24060004 */  li    $a2, 4
/* B6B200 800F4060 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B6B204 800F4064 E7A00024 */   swc1  $f0, 0x24($sp)
/* B6B208 800F4068 97A3002E */  lhu   $v1, 0x2e($sp)
/* B6B20C 800F406C 240100B0 */  li    $at, 176
/* B6B210 800F4070 C7A20024 */  lwc1  $f2, 0x24($sp)
/* B6B214 800F4074 307800F0 */  andi  $t8, $v1, 0xf0
/* B6B218 800F4078 17010007 */  bne   $t8, $at, .L800F4098
/* B6B21C 800F407C C7A40030 */   lwc1  $f4, 0x30($sp)
/* B6B220 800F4080 3C018015 */  lui   $at, %hi(D_8014A5EC)
/* B6B224 800F4084 C420A5EC */  lwc1  $f0, %lo(D_8014A5EC)($at)
/* B6B228 800F4088 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B6B22C 800F408C 44811000 */  mtc1  $at, $f2
/* B6B230 800F4090 10000007 */  b     .L800F40B0
/* B6B234 800F4094 24020001 */   li    $v0, 1
.L800F4098:
/* B6B238 800F4098 3C028017 */  lui   $v0, %hi(gAudioContext+0x297c) # $v0, 0x8017
/* B6B23C 800F409C 8C421AFC */  lw    $v0, %lo(gAudioContext+0x297c)($v0)
/* B6B240 800F40A0 3C018015 */  lui   $at, %hi(D_8014A5F0)
/* B6B244 800F40A4 C420A5F0 */  lwc1  $f0, %lo(D_8014A5F0)($at)
/* B6B248 800F40A8 30420001 */  andi  $v0, $v0, 1
/* B6B24C 800F40AC 304200FF */  andi  $v0, $v0, 0xff
.L800F40B0:
/* B6B250 800F40B0 4604003C */  c.lt.s $f0, $f4
/* B6B254 800F40B4 00000000 */  nop   
/* B6B258 800F40B8 4502001C */  bc1fl .L800F412C
/* B6B25C 800F40BC 8FBF001C */   lw    $ra, 0x1c($sp)
/* B6B260 800F40C0 10400019 */  beqz  $v0, .L800F4128
/* B6B264 800F40C4 30790080 */   andi  $t9, $v1, 0x80
/* B6B268 800F40C8 13200003 */  beqz  $t9, .L800F40D8
/* B6B26C 800F40CC 3C018015 */   lui   $at, %hi(D_8014A5F8)
/* B6B270 800F40D0 10000002 */  b     .L800F40DC
/* B6B274 800F40D4 24040867 */   li    $a0, 2151
.L800F40D8:
/* B6B278 800F40D8 24040866 */  li    $a0, 2150
.L800F40DC:
/* B6B27C 800F40DC D428A5F8 */  ldc1  $f8, %lo(D_8014A5F8)($at)
/* B6B280 800F40E0 460011A1 */  cvt.d.s $f6, $f2
/* B6B284 800F40E4 3C018015 */  lui   $at, %hi(D_8014A600)
/* B6B288 800F40E8 46283282 */  mul.d $f10, $f6, $f8
/* B6B28C 800F40EC D430A600 */  ldc1  $f16, %lo(D_8014A600)($at)
/* B6B290 800F40F0 3C028017 */  lui   $v0, %hi(D_8016B7AC) # $v0, 0x8017
/* B6B294 800F40F4 3C088013 */  lui   $t0, %hi(D_801333E8) # $t0, 0x8013
/* B6B298 800F40F8 2442B7AC */  addiu $v0, %lo(D_8016B7AC) # addiu $v0, $v0, -0x4854
/* B6B29C 800F40FC 250833E8 */  addiu $t0, %lo(D_801333E8) # addiu $t0, $t0, 0x33e8
/* B6B2A0 800F4100 3C078017 */  lui   $a3, %hi(D_8016B7B0) # $a3, 0x8017
/* B6B2A4 800F4104 24E7B7B0 */  addiu $a3, %lo(D_8016B7B0) # addiu $a3, $a3, -0x4850
/* B6B2A8 800F4108 46305480 */  add.d $f18, $f10, $f16
/* B6B2AC 800F410C AFA80014 */  sw    $t0, 0x14($sp)
/* B6B2B0 800F4110 AFA20010 */  sw    $v0, 0x10($sp)
/* B6B2B4 800F4114 8FA50028 */  lw    $a1, 0x28($sp)
/* B6B2B8 800F4118 46209120 */  cvt.s.d $f4, $f18
/* B6B2BC 800F411C 24060004 */  li    $a2, 4
/* B6B2C0 800F4120 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B6B2C4 800F4124 E4440000 */   swc1  $f4, ($v0)
.L800F4128:
/* B6B2C8 800F4128 8FBF001C */  lw    $ra, 0x1c($sp)
.L800F412C:
/* B6B2CC 800F412C 27BD0028 */  addiu $sp, $sp, 0x28
/* B6B2D0 800F4130 03E00008 */  jr    $ra
/* B6B2D4 800F4134 00000000 */   nop   

