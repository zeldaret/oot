.late_rodata
glabel D_80139EC4
    .float 0.01

glabel D_80139EC8
    .float 0.01

glabel D_80139ECC
    .float 182.041671753
    .float 0.01


glabel D_80139ED4
    .float 0.01
    .float 0.01

glabel D_80139EDC
    .float 0.01

glabel D_80139EE0
    .float 0.01

glabel D_80139EE4
    .float 0.01

glabel D_80139EE8
    .float 0.01

glabel D_80139EEC
    .float 0.05

.text
glabel Camera_Normal2
/* ABF104 80047F64 27BDFF20 */  addiu $sp, $sp, -0xe0
/* ABF108 80047F68 AFB0001C */  sw    $s0, 0x1c($sp)
/* ABF10C 80047F6C 00808025 */  move  $s0, $a0
/* ABF110 80047F70 AFBF0024 */  sw    $ra, 0x24($sp)
/* ABF114 80047F74 AFB10020 */  sw    $s1, 0x20($sp)
/* ABF118 80047F78 0C00B721 */  jal   Player_GetCameraYOffset
/* ABF11C 80047F7C 8C840090 */   lw    $a0, 0x90($a0)
/* ABF120 80047F80 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* ABF124 80047F84 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* ABF128 80047F88 3C018014 */  lui   $at, %hi(D_80139EC4)
/* ABF12C 80047F8C C4309EC4 */  lwc1  $f16, %lo(D_80139EC4)($at)
/* ABF130 80047F90 846E01F0 */  lh    $t6, 0x1f0($v1)
/* ABF134 80047F94 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABF138 80047F98 44814000 */  mtc1  $at, $f8
/* ABF13C 80047F9C 448E2000 */  mtc1  $t6, $f4
/* ABF140 80047FA0 3C014288 */  li    $at, 0x42880000 # 0.000000
/* ABF144 80047FA4 44819000 */  mtc1  $at, $f18
/* ABF148 80047FA8 468021A0 */  cvt.s.w $f6, $f4
/* ABF14C 80047FAC 846F0314 */  lh    $t7, 0x314($v1)
/* ABF150 80047FB0 46000306 */  mov.s $f12, $f0
/* ABF154 80047FB4 46009103 */  div.s $f4, $f18, $f0
/* ABF158 80047FB8 46103082 */  mul.s $f2, $f6, $f16
/* ABF15C 80047FBC 46024280 */  add.s $f10, $f8, $f2
/* ABF160 80047FC0 46041182 */  mul.s $f6, $f2, $f4
/* ABF164 80047FC4 11E00009 */  beqz  $t7, .L80047FEC
/* ABF168 80047FC8 46065381 */   sub.s $f14, $f10, $f6
/* ABF16C 80047FCC 02002025 */  move  $a0, $s0
/* ABF170 80047FD0 E7AC0060 */  swc1  $f12, 0x60($sp)
/* ABF174 80047FD4 0C011495 */  jal   Camera_CopyPREGToModeValues
/* ABF178 80047FD8 E7AE005C */   swc1  $f14, 0x5c($sp)
/* ABF17C 80047FDC 3C018014 */  lui   $at, %hi(D_80139EC8)
/* ABF180 80047FE0 C4309EC8 */  lwc1  $f16, %lo(D_80139EC8)($at)
/* ABF184 80047FE4 C7AC0060 */  lwc1  $f12, 0x60($sp)
/* ABF188 80047FE8 C7AE005C */  lwc1  $f14, 0x5c($sp)
.L80047FEC:
/* ABF18C 80047FEC 8602015E */  lh    $v0, 0x15e($s0)
/* ABF190 80047FF0 10400009 */  beqz  $v0, .L80048018
/* ABF194 80047FF4 2401000A */   li    $at, 10
/* ABF198 80047FF8 10410007 */  beq   $v0, $at, .L80048018
/* ABF19C 80047FFC 24010014 */   li    $at, 20
/* ABF1A0 80048000 10410005 */  beq   $v0, $at, .L80048018
/* ABF1A4 80048004 3C188016 */   lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* ABF1A8 80048008 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* ABF1AC 8004800C 87030314 */  lh    $v1, 0x314($t8)
/* ABF1B0 80048010 10600050 */  beqz  $v1, .L80048154
/* ABF1B4 80048014 00000000 */   nop
.L80048018:
/* ABF1B8 80048018 86190142 */  lh    $t9, 0x142($s0)
/* ABF1BC 8004801C 3C098012 */  lui   $t1, %hi(sCameraSettings)
/* ABF1C0 80048020 860A0144 */  lh    $t2, 0x144($s0)
/* ABF1C4 80048024 001940C0 */  sll   $t0, $t9, 3
/* ABF1C8 80048028 01284821 */  addu  $t1, $t1, $t0
/* ABF1CC 8004802C 8D29D068 */  lw    $t1, %lo(sCameraSettings+4)($t1)
/* ABF1D0 80048030 000A58C0 */  sll   $t3, $t2, 3
/* ABF1D4 80048034 3C018014 */  lui   $at, %hi(D_80139ECC)
/* ABF1D8 80048038 012B6021 */  addu  $t4, $t1, $t3
/* ABF1DC 8004803C 8D820004 */  lw    $v0, 4($t4)
/* ABF1E0 80048040 844D0000 */  lh    $t5, ($v0)
/* ABF1E4 80048044 24420020 */  addiu $v0, $v0, 0x20
/* ABF1E8 80048048 448D4000 */  mtc1  $t5, $f8
/* ABF1EC 8004804C 00000000 */  nop
/* ABF1F0 80048050 468044A0 */  cvt.s.w $f18, $f8
/* ABF1F4 80048054 46109102 */  mul.s $f4, $f18, $f16
/* ABF1F8 80048058 00000000 */  nop
/* ABF1FC 8004805C 460C2282 */  mul.s $f10, $f4, $f12
/* ABF200 80048060 00000000 */  nop
/* ABF204 80048064 460E5182 */  mul.s $f6, $f10, $f14
/* ABF208 80048068 E6060000 */  swc1  $f6, ($s0)
/* ABF20C 8004806C 844EFFE4 */  lh    $t6, -0x1c($v0)
/* ABF210 80048070 448E4000 */  mtc1  $t6, $f8
/* ABF214 80048074 3C0E8016 */  lui   $t6, %hi(gGameInfo)
/* ABF218 80048078 468044A0 */  cvt.s.w $f18, $f8
/* ABF21C 8004807C 46109102 */  mul.s $f4, $f18, $f16
/* ABF220 80048080 00000000 */  nop
/* ABF224 80048084 460C2282 */  mul.s $f10, $f4, $f12
/* ABF228 80048088 00000000 */  nop
/* ABF22C 8004808C 460E5182 */  mul.s $f6, $f10, $f14
/* ABF230 80048090 E6060004 */  swc1  $f6, 4($s0)
/* ABF234 80048094 844FFFE8 */  lh    $t7, -0x18($v0)
/* ABF238 80048098 448F4000 */  mtc1  $t7, $f8
/* ABF23C 8004809C 00000000 */  nop
/* ABF240 800480A0 468044A0 */  cvt.s.w $f18, $f8
/* ABF244 800480A4 46109102 */  mul.s $f4, $f18, $f16
/* ABF248 800480A8 00000000 */  nop
/* ABF24C 800480AC 460C2282 */  mul.s $f10, $f4, $f12
/* ABF250 800480B0 00000000 */  nop
/* ABF254 800480B4 460E5182 */  mul.s $f6, $f10, $f14
/* ABF258 800480B8 E6060008 */  swc1  $f6, 8($s0)
/* ABF25C 800480BC 8458FFEC */  lh    $t8, -0x14($v0)
/* ABF260 800480C0 C4249ECC */  lwc1  $f4, %lo(D_80139ECC)($at)
/* ABF264 800480C4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ABF268 800480C8 44984000 */  mtc1  $t8, $f8
/* ABF26C 800480CC 44813000 */  mtc1  $at, $f6
/* ABF270 800480D0 468044A0 */  cvt.s.w $f18, $f8
/* ABF274 800480D4 46049282 */  mul.s $f10, $f18, $f4
/* ABF278 800480D8 46065200 */  add.s $f8, $f10, $f6
/* ABF27C 800480DC 4600448D */  trunc.w.s $f18, $f8
/* ABF280 800480E0 44089000 */  mfc1  $t0, $f18
/* ABF284 800480E4 00000000 */  nop
/* ABF288 800480E8 A608001C */  sh    $t0, 0x1c($s0)
/* ABF28C 800480EC 844AFFF0 */  lh    $t2, -0x10($v0)
/* ABF290 800480F0 448A2000 */  mtc1  $t2, $f4
/* ABF294 800480F4 00000000 */  nop
/* ABF298 800480F8 468022A0 */  cvt.s.w $f10, $f4
/* ABF29C 800480FC E60A000C */  swc1  $f10, 0xc($s0)
/* ABF2A0 80048100 8449FFF4 */  lh    $t1, -0xc($v0)
/* ABF2A4 80048104 44893000 */  mtc1  $t1, $f6
/* ABF2A8 80048108 00000000 */  nop
/* ABF2AC 8004810C 46803220 */  cvt.s.w $f8, $f6
/* ABF2B0 80048110 46104482 */  mul.s $f18, $f8, $f16
/* ABF2B4 80048114 E6120010 */  swc1  $f18, 0x10($s0)
/* ABF2B8 80048118 844BFFF8 */  lh    $t3, -8($v0)
/* ABF2BC 8004811C 448B2000 */  mtc1  $t3, $f4
/* ABF2C0 80048120 00000000 */  nop
/* ABF2C4 80048124 468022A0 */  cvt.s.w $f10, $f4
/* ABF2C8 80048128 E60A0014 */  swc1  $f10, 0x14($s0)
/* ABF2CC 8004812C 844CFFFC */  lh    $t4, -4($v0)
/* ABF2D0 80048130 448C3000 */  mtc1  $t4, $f6
/* ABF2D4 80048134 00000000 */  nop
/* ABF2D8 80048138 46803220 */  cvt.s.w $f8, $f6
/* ABF2DC 8004813C 46104482 */  mul.s $f18, $f8, $f16
/* ABF2E0 80048140 E6120018 */  swc1  $f18, 0x18($s0)
/* ABF2E4 80048144 844D0000 */  lh    $t5, ($v0)
/* ABF2E8 80048148 A60D001E */  sh    $t5, 0x1e($s0)
/* ABF2EC 8004814C 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* ABF2F0 80048150 85C30314 */  lh    $v1, 0x314($t6)
.L80048154:
/* ABF2F4 80048154 50600004 */  beql  $v1, $zero, .L80048168
/* ABF2F8 80048158 860F001E */   lh    $t7, 0x1e($s0)
/* ABF2FC 8004815C 0C011495 */  jal   Camera_CopyPREGToModeValues
/* ABF300 80048160 02002025 */   move  $a0, $s0
/* ABF304 80048164 860F001E */  lh    $t7, 0x1e($s0)
.L80048168:
/* ABF308 80048168 3C018012 */  lui   $at, %hi(sCameraInterfaceFlags)
/* ABF30C 8004816C AC2FD3A0 */  sw    $t7, %lo(sCameraInterfaceFlags)($at)
/* ABF310 80048170 8602015E */  lh    $v0, 0x15e($s0)
/* ABF314 80048174 10400007 */  beqz  $v0, .L80048194
/* ABF318 80048178 2401000A */   li    $at, 10
/* ABF31C 8004817C 10410005 */  beq   $v0, $at, .L80048194
/* ABF320 80048180 24010014 */   li    $at, 20
/* ABF324 80048184 10410003 */  beq   $v0, $at, .L80048194
/* ABF328 80048188 24010019 */   li    $at, 25
/* ABF32C 8004818C 14410042 */  bne   $v0, $at, .L80048298
/* ABF330 80048190 26180094 */   addiu $t8, $s0, 0x94
.L80048194:
/* ABF334 80048194 0C0111DB */  jal   func_8004476C
/* ABF338 80048198 02002025 */   move  $a0, $s0
/* ABF33C 8004819C 26110020 */  addiu $s1, $s0, 0x20
/* ABF340 800481A0 02202025 */  move  $a0, $s1
/* ABF344 800481A4 00402825 */  move  $a1, $v0
/* ABF348 800481A8 0C010EF1 */  jal   Camera_Vec3sToVec3f
/* ABF34C 800481AC AFA20064 */   sw    $v0, 0x64($sp)
/* ABF350 800481B0 8FA60064 */  lw    $a2, 0x64($sp)
/* ABF354 800481B4 26080094 */  addiu $t0, $s0, 0x94
/* ABF358 800481B8 2404FFFF */  li    $a0, -1
/* ABF35C 800481BC 84D80006 */  lh    $t8, 6($a2)
/* ABF360 800481C0 27A50088 */  addiu $a1, $sp, 0x88
/* ABF364 800481C4 A6380020 */  sh    $t8, 0x20($s1)
/* ABF368 800481C8 84D90008 */  lh    $t9, 8($a2)
/* ABF36C 800481CC A6390022 */  sh    $t9, 0x22($s1)
/* ABF370 800481D0 AFA8003C */  sw    $t0, 0x3c($sp)
/* ABF374 800481D4 C5040004 */  lwc1  $f4, 4($t0)
/* ABF378 800481D8 E6240024 */  swc1  $f4, 0x24($s1)
/* ABF37C 800481DC 84C3000C */  lh    $v1, 0xc($a2)
/* ABF380 800481E0 14830004 */  bne   $a0, $v1, .L800481F4
/* ABF384 800481E4 28610169 */   slti  $at, $v1, 0x169
/* ABF388 800481E8 C60A0014 */  lwc1  $f10, 0x14($s0)
/* ABF38C 800481EC 1000000E */  b     .L80048228
/* ABF390 800481F0 E62A001C */   swc1  $f10, 0x1c($s1)
.L800481F4:
/* ABF394 800481F4 54200009 */  bnezl $at, .L8004821C
/* ABF398 800481F8 44832000 */   mtc1  $v1, $f4
/* ABF39C 800481FC 44833000 */  mtc1  $v1, $f6
/* ABF3A0 80048200 3C018014 */  lui   $at, %hi(D_80139ED4)
/* ABF3A4 80048204 C4329ED4 */  lwc1  $f18, %lo(D_80139ED4)($at)
/* ABF3A8 80048208 46803220 */  cvt.s.w $f8, $f6
/* ABF3AC 8004820C 46124002 */  mul.s $f0, $f8, $f18
/* ABF3B0 80048210 10000005 */  b     .L80048228
/* ABF3B4 80048214 E620001C */   swc1  $f0, 0x1c($s1)
/* ABF3B8 80048218 44832000 */  mtc1  $v1, $f4
.L8004821C:
/* ABF3BC 8004821C 00000000 */  nop
/* ABF3C0 80048220 46802020 */  cvt.s.w $f0, $f4
/* ABF3C4 80048224 E620001C */  swc1  $f0, 0x1c($s1)
.L80048228:
/* ABF3C8 80048228 84C2000E */  lh    $v0, 0xe($a2)
/* ABF3CC 8004822C 44805000 */  mtc1  $zero, $f10
/* ABF3D0 80048230 54820004 */  bnel  $a0, $v0, .L80048244
/* ABF3D4 80048234 A6220028 */   sh    $v0, 0x28($s1)
/* ABF3D8 80048238 10000002 */  b     .L80048244
/* ABF3DC 8004823C A6200028 */   sh    $zero, 0x28($s1)
/* ABF3E0 80048240 A6220028 */  sh    $v0, 0x28($s1)
.L80048244:
/* ABF3E4 80048244 E62A0018 */  swc1  $f10, 0x18($s1)
/* ABF3E8 80048248 8609001E */  lh    $t1, 0x1e($s0)
/* ABF3EC 8004824C 312B0004 */  andi  $t3, $t1, 4
/* ABF3F0 80048250 5160000C */  beql  $t3, $zero, .L80048284
/* ABF3F4 80048254 3C014248 */   lui   $at, 0x4248
/* ABF3F8 80048258 862C0020 */  lh    $t4, 0x20($s1)
/* ABF3FC 8004825C 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* ABF400 80048260 44813000 */  mtc1  $at, $f6
/* ABF404 80048264 A7AC008C */  sh    $t4, 0x8c($sp)
/* ABF408 80048268 862D0022 */  lh    $t5, 0x22($s1)
/* ABF40C 8004826C 2624000C */  addiu $a0, $s1, 0xc
/* ABF410 80048270 E7A60088 */  swc1  $f6, 0x88($sp)
/* ABF414 80048274 25AE3FFF */  addiu $t6, $t5, 0x3fff
/* ABF418 80048278 0C01F097 */  jal   OLib_VecSphRot90ToVec3f
/* ABF41C 8004827C A7AE008E */   sh    $t6, 0x8e($sp)
/* ABF420 80048280 3C014248 */  li    $at, 0x42480000 # 0.000000
.L80048284:
/* ABF424 80048284 44814000 */  mtc1  $at, $f8
/* ABF428 80048288 240F0001 */  li    $t7, 1
/* ABF42C 8004828C A60F015E */  sh    $t7, 0x15e($s0)
/* ABF430 80048290 1000000A */  b     .L800482BC
/* ABF434 80048294 E60800C8 */   swc1  $f8, 0xc8($s0)
.L80048298:
/* ABF438 80048298 AFB8003C */  sw    $t8, 0x3c($sp)
/* ABF43C 8004829C C6120104 */  lwc1  $f18, 0x104($s0)
/* ABF440 800482A0 C7000004 */  lwc1  $f0, 4($t8)
/* ABF444 800482A4 26110020 */  addiu $s1, $s0, 0x20
/* ABF448 800482A8 46120032 */  c.eq.s $f0, $f18
/* ABF44C 800482AC 00000000 */  nop
/* ABF450 800482B0 45000002 */  bc1f  .L800482BC
/* ABF454 800482B4 00000000 */   nop
/* ABF458 800482B8 E6000044 */  swc1  $f0, 0x44($s0)
.L800482BC:
/* ABF45C 800482BC 26050050 */  addiu $a1, $s0, 0x50
/* ABF460 800482C0 2606005C */  addiu $a2, $s0, 0x5c
/* ABF464 800482C4 AFA60048 */  sw    $a2, 0x48($sp)
/* ABF468 800482C8 AFA50044 */  sw    $a1, 0x44($sp)
/* ABF46C 800482CC 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* ABF470 800482D0 27A40080 */   addiu $a0, $sp, 0x80
/* ABF474 800482D4 26060074 */  addiu $a2, $s0, 0x74
/* ABF478 800482D8 AFA60040 */  sw    $a2, 0x40($sp)
/* ABF47C 800482DC 27A40078 */  addiu $a0, $sp, 0x78
/* ABF480 800482E0 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* ABF484 800482E4 8FA50044 */   lw    $a1, 0x44($sp)
/* ABF488 800482E8 3C018014 */  lui   $at, %hi(D_80139EDC)
/* ABF48C 800482EC C4309EDC */  lwc1  $f16, %lo(D_80139EDC)($at)
/* ABF490 800482F0 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ABF494 800482F4 44815000 */  mtc1  $at, $f10
/* ABF498 800482F8 C60400E0 */  lwc1  $f4, 0xe0($s0)
/* ABF49C 800482FC 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* ABF4A0 80048300 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABF4A4 80048304 460A2182 */  mul.s $f6, $f4, $f10
/* ABF4A8 80048308 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABF4AC 8004830C E60600E0 */  swc1  $f6, 0xe0($s0)
/* ABF4B0 80048310 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* ABF4B4 80048314 C60000E0 */  lwc1  $f0, 0xe0($s0)
/* ABF4B8 80048318 846801C6 */  lh    $t0, 0x1c6($v1)
/* ABF4BC 8004831C 44884000 */  mtc1  $t0, $f8
/* ABF4C0 80048320 00000000 */  nop
/* ABF4C4 80048324 468044A0 */  cvt.s.w $f18, $f8
/* ABF4C8 80048328 46109082 */  mul.s $f2, $f18, $f16
/* ABF4CC 8004832C 00000000 */  nop
/* ABF4D0 80048330 46001102 */  mul.s $f4, $f2, $f0
/* ABF4D4 80048334 44061000 */  mfc1  $a2, $f2
/* ABF4D8 80048338 E7A400A4 */  swc1  $f4, 0xa4($sp)
/* ABF4DC 8004833C 846A01C8 */  lh    $t2, 0x1c8($v1)
/* ABF4E0 80048340 448A5000 */  mtc1  $t2, $f10
/* ABF4E4 80048344 00000000 */  nop
/* ABF4E8 80048348 468051A0 */  cvt.s.w $f6, $f10
/* ABF4EC 8004834C 46103202 */  mul.s $f8, $f6, $f16
/* ABF4F0 80048350 00000000 */  nop
/* ABF4F4 80048354 46004482 */  mul.s $f18, $f8, $f0
/* ABF4F8 80048358 E7B200A0 */  swc1  $f18, 0xa0($sp)
/* ABF4FC 8004835C C60400C8 */  lwc1  $f4, 0xc8($s0)
/* ABF500 80048360 C60C000C */  lwc1  $f12, 0xc($s0)
/* ABF504 80048364 46002382 */  mul.s $f14, $f4, $f0
/* ABF508 80048368 0C010E27 */  jal   Camera_LERPCeilF
/* ABF50C 8004836C 00000000 */   nop
/* ABF510 80048370 E60000C8 */  swc1  $f0, 0xc8($s0)
/* ABF514 80048374 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* ABF518 80048378 8D29FA90 */  lw    $t1, %lo(gGameInfo)($t1)
/* ABF51C 8004837C 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABF520 80048380 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABF524 80048384 852B01A2 */  lh    $t3, 0x1a2($t1)
/* ABF528 80048388 8FA600A0 */  lw    $a2, 0xa0($sp)
/* ABF52C 8004838C C60E00C4 */  lwc1  $f14, 0xc4($s0)
/* ABF530 80048390 448B5000 */  mtc1  $t3, $f10
/* ABF534 80048394 0C010E27 */  jal   Camera_LERPCeilF
/* ABF538 80048398 46805320 */   cvt.s.w $f12, $f10
/* ABF53C 8004839C E60000C4 */  swc1  $f0, 0xc4($s0)
/* ABF540 800483A0 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* ABF544 800483A4 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* ABF548 800483A8 3C018014 */  lui   $at, %hi(D_80139EE0)
/* ABF54C 800483AC C4329EE0 */  lwc1  $f18, %lo(D_80139EE0)($at)
/* ABF550 800483B0 858D0198 */  lh    $t5, 0x198($t4)
/* ABF554 800483B4 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* ABF558 800483B8 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABF55C 800483BC 448D3000 */  mtc1  $t5, $f6
/* ABF560 800483C0 8FA600A4 */  lw    $a2, 0xa4($sp)
/* ABF564 800483C4 C60E00CC */  lwc1  $f14, 0xcc($s0)
/* ABF568 800483C8 46803220 */  cvt.s.w $f8, $f6
/* ABF56C 800483CC 46124302 */  mul.s $f12, $f8, $f18
/* ABF570 800483D0 0C010E27 */  jal   Camera_LERPCeilF
/* ABF574 800483D4 00000000 */   nop
/* ABF578 800483D8 E60000CC */  swc1  $f0, 0xcc($s0)
/* ABF57C 800483DC 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* ABF580 800483E0 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* ABF584 800483E4 3C018014 */  lui   $at, %hi(D_80139EE4)
/* ABF588 800483E8 C4269EE4 */  lwc1  $f6, %lo(D_80139EE4)($at)
/* ABF58C 800483EC 85CF019A */  lh    $t7, 0x19a($t6)
/* ABF590 800483F0 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* ABF594 800483F4 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABF598 800483F8 448F2000 */  mtc1  $t7, $f4
/* ABF59C 800483FC 8FA600A0 */  lw    $a2, 0xa0($sp)
/* ABF5A0 80048400 C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* ABF5A4 80048404 468022A0 */  cvt.s.w $f10, $f4
/* ABF5A8 80048408 46065302 */  mul.s $f12, $f10, $f6
/* ABF5AC 8004840C 0C010E27 */  jal   Camera_LERPCeilF
/* ABF5B0 80048410 00000000 */   nop
/* ABF5B4 80048414 E60000D0 */  swc1  $f0, 0xd0($s0)
/* ABF5B8 80048418 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* ABF5BC 8004841C 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* ABF5C0 80048420 3C018014 */  lui   $at, %hi(D_80139EE8)
/* ABF5C4 80048424 C4249EE8 */  lwc1  $f4, %lo(D_80139EE8)($at)
/* ABF5C8 80048428 8719019C */  lh    $t9, 0x19c($t8)
/* ABF5CC 8004842C 3C018014 */  lui   $at, %hi(D_80139EEC)
/* ABF5D0 80048430 C4269EEC */  lwc1  $f6, %lo(D_80139EEC)($at)
/* ABF5D4 80048434 44994000 */  mtc1  $t9, $f8
/* ABF5D8 80048438 C60A00E0 */  lwc1  $f10, 0xe0($s0)
/* ABF5DC 8004843C 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABF5E0 80048440 468044A0 */  cvt.s.w $f18, $f8
/* ABF5E4 80048444 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABF5E8 80048448 46000386 */  mov.s $f14, $f0
/* ABF5EC 8004844C 46049302 */  mul.s $f12, $f18, $f4
/* ABF5F0 80048450 00000000 */  nop
/* ABF5F4 80048454 46065202 */  mul.s $f8, $f10, $f6
/* ABF5F8 80048458 44064000 */  mfc1  $a2, $f8
/* ABF5FC 8004845C 0C010E27 */  jal   Camera_LERPCeilF
/* ABF600 80048460 00000000 */   nop
/* ABF604 80048464 8602001E */  lh    $v0, 0x1e($s0)
/* ABF608 80048468 E60000D4 */  swc1  $f0, 0xd4($s0)
/* ABF60C 8004846C 30480080 */  andi  $t0, $v0, 0x80
/* ABF610 80048470 15000009 */  bnez  $t0, .L80048498
/* ABF614 80048474 30470001 */   andi  $a3, $v0, 1
/* ABF618 80048478 00073C00 */  sll   $a3, $a3, 0x10
/* ABF61C 8004847C 00073C03 */  sra   $a3, $a3, 0x10
/* ABF620 80048480 02002025 */  move  $a0, $s0
/* ABF624 80048484 27A50078 */  addiu $a1, $sp, 0x78
/* ABF628 80048488 0C0115EA */  jal   func_800457A8
/* ABF62C 8004848C 8E060000 */   lw    $a2, ($s0)
/* ABF630 80048490 10000009 */  b     .L800484B8
/* ABF634 80048494 8609001E */   lh    $t1, 0x1e($s0)
.L80048498:
/* ABF638 80048498 8E060000 */  lw    $a2, ($s0)
/* ABF63C 8004849C 304A0001 */  andi  $t2, $v0, 1
/* ABF640 800484A0 AFAA0010 */  sw    $t2, 0x10($sp)
/* ABF644 800484A4 02002025 */  move  $a0, $s0
/* ABF648 800484A8 27A50078 */  addiu $a1, $sp, 0x78
/* ABF64C 800484AC 0C011635 */  jal   func_800458D4
/* ABF650 800484B0 26270024 */   addiu $a3, $s1, 0x24
/* ABF654 800484B4 8609001E */  lh    $t1, 0x1e($s0)
.L800484B8:
/* ABF658 800484B8 312B0004 */  andi  $t3, $t1, 4
/* ABF65C 800484BC 5160000B */  beql  $t3, $zero, .L800484EC
/* ABF660 800484C0 8FA2003C */   lw    $v0, 0x3c($sp)
/* ABF664 800484C4 8FA2003C */  lw    $v0, 0x3c($sp)
/* ABF668 800484C8 C624000C */  lwc1  $f4, 0xc($s1)
/* ABF66C 800484CC C6280014 */  lwc1  $f8, 0x14($s1)
/* ABF670 800484D0 C4520000 */  lwc1  $f18, ($v0)
/* ABF674 800484D4 46049280 */  add.s $f10, $f18, $f4
/* ABF678 800484D8 E62A0000 */  swc1  $f10, ($s1)
/* ABF67C 800484DC C4460008 */  lwc1  $f6, 8($v0)
/* ABF680 800484E0 46083480 */  add.s $f18, $f6, $f8
/* ABF684 800484E4 E6320008 */  swc1  $f18, 8($s1)
/* ABF688 800484E8 8FA2003C */  lw    $v0, 0x3c($sp)
.L800484EC:
/* ABF68C 800484EC 27A40088 */  addiu $a0, $sp, 0x88
/* ABF690 800484F0 02202825 */  move  $a1, $s1
/* ABF694 800484F4 C4440004 */  lwc1  $f4, 4($v0)
/* ABF698 800484F8 E6240004 */  swc1  $f4, 4($s1)
/* ABF69C 800484FC 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* ABF6A0 80048500 8FA60044 */   lw    $a2, 0x44($sp)
/* ABF6A4 80048504 27A40090 */  addiu $a0, $sp, 0x90
/* ABF6A8 80048508 8FA50044 */  lw    $a1, 0x44($sp)
/* ABF6AC 8004850C 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* ABF6B0 80048510 8FA60040 */   lw    $a2, 0x40($sp)
/* ABF6B4 80048514 862C0028 */  lh    $t4, 0x28($s1)
/* ABF6B8 80048518 318D0002 */  andi  $t5, $t4, 2
/* ABF6BC 8004851C 51A00004 */  beql  $t5, $zero, .L80048530
/* ABF6C0 80048520 8605001C */   lh    $a1, 0x1c($s0)
/* ABF6C4 80048524 10000002 */  b     .L80048530
/* ABF6C8 80048528 86250022 */   lh    $a1, 0x22($s1)
/* ABF6CC 8004852C 8605001C */  lh    $a1, 0x1c($s0)
.L80048530:
/* ABF6D0 80048530 28A14000 */  slti  $at, $a1, 0x4000
/* ABF6D4 80048534 1020000B */  beqz  $at, .L80048564
/* ABF6D8 80048538 87AE0096 */   lh    $t6, 0x96($sp)
/* ABF6DC 8004853C 87AF008E */  lh    $t7, 0x8e($sp)
/* ABF6E0 80048540 01CF1823 */  subu  $v1, $t6, $t7
/* ABF6E4 80048544 00031C00 */  sll   $v1, $v1, 0x10
/* ABF6E8 80048548 00031C03 */  sra   $v1, $v1, 0x10
/* ABF6EC 8004854C 04600003 */  bltz  $v1, .L8004855C
/* ABF6F0 80048550 00031023 */   negu  $v0, $v1
/* ABF6F4 80048554 10000001 */  b     .L8004855C
/* ABF6F8 80048558 00601025 */   move  $v0, $v1
.L8004855C:
/* ABF6FC 8004855C 00A2082A */  slt   $at, $a1, $v0
/* ABF700 80048560 1420000E */  bnez  $at, .L8004859C
.L80048564:
/* ABF704 80048564 28A14000 */   slti  $at, $a1, 0x4000
/* ABF708 80048568 14200030 */  bnez  $at, .L8004862C
/* ABF70C 8004856C 87B80096 */   lh    $t8, 0x96($sp)
/* ABF710 80048570 87B9008E */  lh    $t9, 0x8e($sp)
/* ABF714 80048574 03191823 */  subu  $v1, $t8, $t9
/* ABF718 80048578 00031C00 */  sll   $v1, $v1, 0x10
/* ABF71C 8004857C 00031C03 */  sra   $v1, $v1, 0x10
/* ABF720 80048580 04600003 */  bltz  $v1, .L80048590
/* ABF724 80048584 00031023 */   negu  $v0, $v1
/* ABF728 80048588 10000001 */  b     .L80048590
/* ABF72C 8004858C 00601025 */   move  $v0, $v1
.L80048590:
/* ABF730 80048590 0045082A */  slt   $at, $v0, $a1
/* ABF734 80048594 50200026 */  beql  $at, $zero, .L80048630
/* ABF738 80048598 27AC0090 */   addiu $t4, $sp, 0x90
.L8004859C:
/* ABF73C 8004859C 04610005 */  bgez  $v1, .L800485B4
/* ABF740 800485A0 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* ABF744 800485A4 00052023 */  negu  $a0, $a1
/* ABF748 800485A8 00042400 */  sll   $a0, $a0, 0x10
/* ABF74C 800485AC 10000003 */  b     .L800485BC
/* ABF750 800485B0 00042403 */   sra   $a0, $a0, 0x10
.L800485B4:
/* ABF754 800485B4 00052400 */  sll   $a0, $a1, 0x10
/* ABF758 800485B8 00042403 */  sra   $a0, $a0, 0x10
.L800485BC:
/* ABF75C 800485BC 44815000 */  mtc1  $at, $f10
/* ABF760 800485C0 C60600C8 */  lwc1  $f6, 0xc8($s0)
/* ABF764 800485C4 C61200E0 */  lwc1  $f18, 0xe0($s0)
/* ABF768 800485C8 87A8008E */  lh    $t0, 0x8e($sp)
/* ABF76C 800485CC 46065203 */  div.s $f8, $f10, $f6
/* ABF770 800485D0 87A50086 */  lh    $a1, 0x86($sp)
/* ABF774 800485D4 00882021 */  addu  $a0, $a0, $t0
/* ABF778 800485D8 00042400 */  sll   $a0, $a0, 0x10
/* ABF77C 800485DC 00042403 */  sra   $a0, $a0, 0x10
/* ABF780 800485E0 2407000A */  li    $a3, 10
/* ABF784 800485E4 46124102 */  mul.s $f4, $f8, $f18
/* ABF788 800485E8 44062000 */  mfc1  $a2, $f4
/* ABF78C 800485EC 0C010E47 */  jal   Camera_LERPCeilS
/* ABF790 800485F0 00000000 */   nop
/* ABF794 800485F4 A7A2009E */  sh    $v0, 0x9e($sp)
/* ABF798 800485F8 862A0028 */  lh    $t2, 0x28($s1)
/* ABF79C 800485FC 02002025 */  move  $a0, $s0
/* ABF7A0 80048600 87A5007C */  lh    $a1, 0x7c($sp)
/* ABF7A4 80048604 31490001 */  andi  $t1, $t2, 1
/* ABF7A8 80048608 11200006 */  beqz  $t1, .L80048624
/* ABF7AC 8004860C 87A30084 */   lh    $v1, 0x84($sp)
/* ABF7B0 80048610 86260020 */  lh    $a2, 0x20($s1)
/* ABF7B4 80048614 0C011AD1 */  jal   func_80046B44
/* ABF7B8 80048618 00003825 */   move  $a3, $zero
/* ABF7BC 8004861C 10000009 */  b     .L80048644
/* ABF7C0 80048620 A7A2009C */   sh    $v0, 0x9c($sp)
.L80048624:
/* ABF7C4 80048624 10000007 */  b     .L80048644
/* ABF7C8 80048628 A7A3009C */   sh    $v1, 0x9c($sp)
.L8004862C:
/* ABF7CC 8004862C 27AC0090 */  addiu $t4, $sp, 0x90
.L80048630:
/* ABF7D0 80048630 8D8E0000 */  lw    $t6, ($t4)
/* ABF7D4 80048634 27AB0098 */  addiu $t3, $sp, 0x98
/* ABF7D8 80048638 AD6E0000 */  sw    $t6, ($t3)
/* ABF7DC 8004863C 8D8D0004 */  lw    $t5, 4($t4)
/* ABF7E0 80048640 AD6D0004 */  sw    $t5, 4($t3)
.L80048644:
/* ABF7E4 80048644 8E060004 */  lw    $a2, 4($s0)
/* ABF7E8 80048648 8E070008 */  lw    $a3, 8($s0)
/* ABF7EC 8004864C AFA00010 */  sw    $zero, 0x10($sp)
/* ABF7F0 80048650 02002025 */  move  $a0, $s0
/* ABF7F4 80048654 0C011A70 */  jal   func_800469C0
/* ABF7F8 80048658 8FA50090 */   lw    $a1, 0x90($sp)
/* ABF7FC 8004865C E7A00098 */  swc1  $f0, 0x98($sp)
/* ABF800 80048660 E60000DC */  swc1  $f0, 0xdc($s0)
/* ABF804 80048664 862F0028 */  lh    $t7, 0x28($s1)
/* ABF808 80048668 87A3009C */  lh    $v1, 0x9c($sp)
/* ABF80C 8004866C 27A60098 */  addiu $a2, $sp, 0x98
/* ABF810 80048670 31F80001 */  andi  $t8, $t7, 1
/* ABF814 80048674 17000015 */  bnez  $t8, .L800486CC
/* ABF818 80048678 28610E39 */   slti  $at, $v1, 0xe39
/* ABF81C 8004867C 14200008 */  bnez  $at, .L800486A0
/* ABF820 80048680 24190E38 */   li    $t9, 3640
/* ABF824 80048684 03234023 */  subu  $t0, $t9, $v1
/* ABF828 80048688 00085400 */  sll   $t2, $t0, 0x10
/* ABF82C 8004868C 000A4C03 */  sra   $t1, $t2, 0x10
/* ABF830 80048690 00095883 */  sra   $t3, $t1, 2
/* ABF834 80048694 006B1821 */  addu  $v1, $v1, $t3
/* ABF838 80048698 00031C00 */  sll   $v1, $v1, 0x10
/* ABF83C 8004869C 00031C03 */  sra   $v1, $v1, 0x10
.L800486A0:
/* ABF840 800486A0 0461000A */  bgez  $v1, .L800486CC
/* ABF844 800486A4 A7A3009C */   sh    $v1, 0x9c($sp)
/* ABF848 800486A8 240CFC72 */  li    $t4, -910
/* ABF84C 800486AC 01836823 */  subu  $t5, $t4, $v1
/* ABF850 800486B0 000D7400 */  sll   $t6, $t5, 0x10
/* ABF854 800486B4 000E7C03 */  sra   $t7, $t6, 0x10
/* ABF858 800486B8 000FC083 */  sra   $t8, $t7, 2
/* ABF85C 800486BC 00781821 */  addu  $v1, $v1, $t8
/* ABF860 800486C0 00031C00 */  sll   $v1, $v1, 0x10
/* ABF864 800486C4 00031C03 */  sra   $v1, $v1, 0x10
/* ABF868 800486C8 A7A3009C */  sh    $v1, 0x9c($sp)
.L800486CC:
/* ABF86C 800486CC 8FA40040 */  lw    $a0, 0x40($sp)
/* ABF870 800486D0 0C010F0A */  jal   Camera_Vec3fVecSphAdd
/* ABF874 800486D4 8FA50044 */   lw    $a1, 0x44($sp)
/* ABF878 800486D8 86190140 */  lh    $t9, 0x140($s0)
/* ABF87C 800486DC 24010007 */  li    $at, 7
/* ABF880 800486E0 8FA80040 */  lw    $t0, 0x40($sp)
/* ABF884 800486E4 57210032 */  bnel  $t9, $at, .L800487B0
/* ABF888 800486E8 C62C001C */   lwc1  $f12, 0x1c($s1)
/* ABF88C 800486EC 8D090000 */  lw    $t1, ($t0)
/* ABF890 800486F0 27A600AC */  addiu $a2, $sp, 0xac
/* ABF894 800486F4 3C0C0001 */  lui   $t4, 1
/* ABF898 800486F8 ACC90000 */  sw    $t1, ($a2)
/* ABF89C 800486FC 8D0A0004 */  lw    $t2, 4($t0)
/* ABF8A0 80048700 02002025 */  move  $a0, $s0
/* ABF8A4 80048704 ACCA0004 */  sw    $t2, 4($a2)
/* ABF8A8 80048708 8D090008 */  lw    $t1, 8($t0)
/* ABF8AC 8004870C ACC90008 */  sw    $t1, 8($a2)
/* ABF8B0 80048710 8E0B008C */  lw    $t3, 0x8c($s0)
/* ABF8B4 80048714 018B6021 */  addu  $t4, $t4, $t3
/* ABF8B8 80048718 918C0A39 */  lbu   $t4, 0xa39($t4)
/* ABF8BC 8004871C 11800006 */  beqz  $t4, .L80048738
/* ABF8C0 80048720 00000000 */   nop
/* ABF8C4 80048724 860D001E */  lh    $t5, 0x1e($s0)
/* ABF8C8 80048728 8FA50044 */  lw    $a1, 0x44($sp)
/* ABF8CC 8004872C 31AE0010 */  andi  $t6, $t5, 0x10
/* ABF8D0 80048730 11C0000C */  beqz  $t6, .L80048764
/* ABF8D4 80048734 00000000 */   nop
.L80048738:
/* ABF8D8 80048738 0C010F46 */  jal   func_80043D18
/* ABF8DC 8004873C 8FA50044 */   lw    $a1, 0x44($sp)
/* ABF8E0 80048740 27B800AC */  addiu $t8, $sp, 0xac
/* ABF8E4 80048744 8F080000 */  lw    $t0, ($t8)
/* ABF8E8 80048748 8FAF0048 */  lw    $t7, 0x48($sp)
/* ABF8EC 8004874C ADE80000 */  sw    $t0, ($t7)
/* ABF8F0 80048750 8F190004 */  lw    $t9, 4($t8)
/* ABF8F4 80048754 ADF90004 */  sw    $t9, 4($t7)
/* ABF8F8 80048758 8F080008 */  lw    $t0, 8($t8)
/* ABF8FC 8004875C 10000013 */  b     .L800487AC
/* ABF900 80048760 ADE80008 */   sw    $t0, 8($t7)
.L80048764:
/* ABF904 80048764 0C010FE5 */  jal   func_80043F94
/* ABF908 80048768 02002025 */   move  $a0, $s0
/* ABF90C 8004876C 27AA00AC */  addiu $t2, $sp, 0xac
/* ABF910 80048770 8FA50048 */  lw    $a1, 0x48($sp)
/* ABF914 80048774 8D4B0000 */  lw    $t3, ($t2)
/* ABF918 80048778 27A40098 */  addiu $a0, $sp, 0x98
/* ABF91C 8004877C ACAB0000 */  sw    $t3, ($a1)
/* ABF920 80048780 8D490004 */  lw    $t1, 4($t2)
/* ABF924 80048784 ACA90004 */  sw    $t1, 4($a1)
/* ABF928 80048788 8D4B0008 */  lw    $t3, 8($t2)
/* ABF92C 8004878C ACAB0008 */  sw    $t3, 8($a1)
/* ABF930 80048790 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* ABF934 80048794 8FA60044 */   lw    $a2, 0x44($sp)
/* ABF938 80048798 87AC009C */  lh    $t4, 0x9c($sp)
/* ABF93C 8004879C A60C0134 */  sh    $t4, 0x134($s0)
/* ABF940 800487A0 87AD009E */  lh    $t5, 0x9e($sp)
/* ABF944 800487A4 A6000138 */  sh    $zero, 0x138($s0)
/* ABF948 800487A8 A60D0136 */  sh    $t5, 0x136($s0)
.L800487AC:
/* ABF94C 800487AC C62C001C */  lwc1  $f12, 0x1c($s1)
.L800487B0:
/* ABF950 800487B0 C60E00FC */  lwc1  $f14, 0xfc($s0)
/* ABF954 800487B4 8E0600D4 */  lw    $a2, 0xd4($s0)
/* ABF958 800487B8 0C010E27 */  jal   Camera_LERPCeilF
/* ABF95C 800487BC 3C073F80 */   lui   $a3, 0x3f80
/* ABF960 800487C0 E60000FC */  swc1  $f0, 0xfc($s0)
/* ABF964 800487C4 00002025 */  move  $a0, $zero
/* ABF968 800487C8 8605015A */  lh    $a1, 0x15a($s0)
/* ABF96C 800487CC 3C063F00 */  lui   $a2, 0x3f00
/* ABF970 800487D0 0C010E47 */  jal   Camera_LERPCeilS
/* ABF974 800487D4 2407000A */   li    $a3, 10
/* ABF978 800487D8 A602015A */  sh    $v0, 0x15a($s0)
/* ABF97C 800487DC 02002025 */  move  $a0, $s0
/* ABF980 800487E0 0C011429 */  jal   Camera_ClampLERPScale
/* ABF984 800487E4 8E050018 */   lw    $a1, 0x18($s0)
/* ABF988 800487E8 E6000100 */  swc1  $f0, 0x100($s0)
/* ABF98C 800487EC 8FBF0024 */  lw    $ra, 0x24($sp)
/* ABF990 800487F0 8FB10020 */  lw    $s1, 0x20($sp)
/* ABF994 800487F4 8FB0001C */  lw    $s0, 0x1c($sp)
/* ABF998 800487F8 27BD00E0 */  addiu $sp, $sp, 0xe0
/* ABF99C 800487FC 03E00008 */  jr    $ra
/* ABF9A0 80048800 24020001 */   li    $v0, 1
