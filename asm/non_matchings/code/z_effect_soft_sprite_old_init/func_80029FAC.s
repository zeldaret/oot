.late_rodata
glabel D_80135C54
    .float -0.2

glabel D_80135C58
    .float 1.3

glabel D_80135C5C
    .float 0.18

.text
glabel func_80029FAC
/* AA114C 80029FAC 3C018013 */  lui   $at, %hi(D_80135C54)
/* AA1150 80029FB0 C4245C54 */  lwc1  $f4, %lo(D_80135C54)($at)
/* AA1154 80029FB4 27BDFF70 */  addiu $sp, $sp, -0x90
/* AA1158 80029FB8 3C018011 */  lui   $at, %hi(D_80115920+4)
/* AA115C 80029FBC E4245924 */  swc1  $f4, %lo(D_80115920+4)($at)
/* AA1160 80029FC0 3C018013 */  lui   $at, %hi(D_80135C58)
/* AA1164 80029FC4 44866000 */  mtc1  $a2, $f12
/* AA1168 80029FC8 C4265C58 */  lwc1  $f6, %lo(D_80135C58)($at)
/* AA116C 80029FCC 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* AA1170 80029FD0 44815000 */  mtc1  $at, $f10
/* AA1174 80029FD4 46066202 */  mul.s $f8, $f12, $f6
/* AA1178 80029FD8 F7B80030 */  sdc1  $f24, 0x30($sp)
/* AA117C 80029FDC 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AA1180 80029FE0 4481C000 */  mtc1  $at, $f24
/* AA1184 80029FE4 F7B60028 */  sdc1  $f22, 0x28($sp)
/* AA1188 80029FE8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AA118C 80029FEC AFB60058 */  sw    $s6, 0x58($sp)
/* AA1190 80029FF0 AFB50054 */  sw    $s5, 0x54($sp)
/* AA1194 80029FF4 AFB00040 */  sw    $s0, 0x40($sp)
/* AA1198 80029FF8 F7BA0038 */  sdc1  $f26, 0x38($sp)
/* AA119C 80029FFC 4481B000 */  mtc1  $at, $f22
/* AA11A0 8002A000 AFB40050 */  sw    $s4, 0x50($sp)
/* AA11A4 8002A004 AFB3004C */  sw    $s3, 0x4c($sp)
/* AA11A8 8002A008 AFB20048 */  sw    $s2, 0x48($sp)
/* AA11AC 8002A00C AFB10044 */  sw    $s1, 0x44($sp)
/* AA11B0 8002A010 F7B40020 */  sdc1  $f20, 0x20($sp)
/* AA11B4 8002A014 3C018013 */  lui   $at, %hi(D_80135C5C)
/* AA11B8 8002A018 3C108011 */  lui   $s0, %hi(D_8011592C) # $s0, 0x8011
/* AA11BC 8002A01C 3C158011 */  lui   $s5, %hi(D_80115920) # $s5, 0x8011
/* AA11C0 8002A020 3C168011 */  lui   $s6, %hi(D_801159A4) # $s6, 0x8011
/* AA11C4 8002A024 460A4682 */  mul.s $f26, $f8, $f10
/* AA11C8 8002A028 00A09025 */  move  $s2, $a1
/* AA11CC 8002A02C 00809825 */  move  $s3, $a0
/* AA11D0 8002A030 AFBF005C */  sw    $ra, 0x5c($sp)
/* AA11D4 8002A034 26D659A4 */  addiu $s6, %lo(D_801159A4) # addiu $s6, $s6, 0x59a4
/* AA11D8 8002A038 26B55920 */  addiu $s5, %lo(D_80115920) # addiu $s5, $s5, 0x5920
/* AA11DC 8002A03C 2610592C */  addiu $s0, %lo(D_8011592C) # addiu $s0, $s0, 0x592c
/* AA11E0 8002A040 C4345C5C */  lwc1  $f20, %lo(D_80135C5C)($at)
/* AA11E4 8002A044 27B10074 */  addiu $s1, $sp, 0x74
/* AA11E8 8002A048 27B40080 */  addiu $s4, $sp, 0x80
/* AA11EC 8002A04C 8E4F0000 */  lw    $t7, ($s2)
.L8002A050:
/* AA11F0 8002A050 4600B306 */  mov.s $f12, $f22
/* AA11F4 8002A054 AE2F0000 */  sw    $t7, ($s1)
/* AA11F8 8002A058 8E4E0004 */  lw    $t6, 4($s2)
/* AA11FC 8002A05C AE2E0004 */  sw    $t6, 4($s1)
/* AA1200 8002A060 8E4F0008 */  lw    $t7, 8($s2)
/* AA1204 8002A064 0C00CFBE */  jal   Math_Rand_ZeroFloat
/* AA1208 8002A068 AE2F0008 */   sw    $t7, 8($s1)
/* AA120C 8002A06C C60E0000 */  lwc1  $f14, ($s0)
/* AA1210 8002A070 46180080 */  add.s $f2, $f0, $f24
/* AA1214 8002A074 C6100004 */  lwc1  $f16, 4($s0)
/* AA1218 8002A078 46147102 */  mul.s $f4, $f14, $f20
/* AA121C 8002A07C C6120008 */  lwc1  $f18, 8($s0)
/* AA1220 8002A080 4600B306 */  mov.s $f12, $f22
/* AA1224 8002A084 46022182 */  mul.s $f6, $f4, $f2
/* AA1228 8002A088 00000000 */  nop   
/* AA122C 8002A08C 46148202 */  mul.s $f8, $f16, $f20
/* AA1230 8002A090 E7A60080 */  swc1  $f6, 0x80($sp)
/* AA1234 8002A094 46024282 */  mul.s $f10, $f8, $f2
/* AA1238 8002A098 C7A80074 */  lwc1  $f8, 0x74($sp)
/* AA123C 8002A09C 46149102 */  mul.s $f4, $f18, $f20
/* AA1240 8002A0A0 E7AA0084 */  swc1  $f10, 0x84($sp)
/* AA1244 8002A0A4 460E4280 */  add.s $f10, $f8, $f14
/* AA1248 8002A0A8 C7A8007C */  lwc1  $f8, 0x7c($sp)
/* AA124C 8002A0AC 46022182 */  mul.s $f6, $f4, $f2
/* AA1250 8002A0B0 C7A40078 */  lwc1  $f4, 0x78($sp)
/* AA1254 8002A0B4 E7AA0074 */  swc1  $f10, 0x74($sp)
/* AA1258 8002A0B8 46124280 */  add.s $f10, $f8, $f18
/* AA125C 8002A0BC E7A60088 */  swc1  $f6, 0x88($sp)
/* AA1260 8002A0C0 46102180 */  add.s $f6, $f4, $f16
/* AA1264 8002A0C4 E7AA007C */  swc1  $f10, 0x7c($sp)
/* AA1268 8002A0C8 0C00CFBE */  jal   Math_Rand_ZeroFloat
/* AA126C 8002A0CC E7A60078 */   swc1  $f6, 0x78($sp)
/* AA1270 8002A0D0 46180100 */  add.s $f4, $f0, $f24
/* AA1274 8002A0D4 24180019 */  li    $t8, 25
/* AA1278 8002A0D8 AFB80014 */  sw    $t8, 0x14($sp)
/* AA127C 8002A0DC 02602025 */  move  $a0, $s3
/* AA1280 8002A0E0 461A2182 */  mul.s $f6, $f4, $f26
/* AA1284 8002A0E4 02202825 */  move  $a1, $s1
/* AA1288 8002A0E8 02803825 */  move  $a3, $s4
/* AA128C 8002A0EC AFB50010 */  sw    $s5, 0x10($sp)
/* AA1290 8002A0F0 44063000 */  mfc1  $a2, $f6
/* AA1294 8002A0F4 0C00A7D1 */  jal   func_80029F44
/* AA1298 8002A0F8 00000000 */   nop   
/* AA129C 8002A0FC 2610000C */  addiu $s0, $s0, 0xc
/* AA12A0 8002A100 5616FFD3 */  bnel  $s0, $s6, .L8002A050
/* AA12A4 8002A104 8E4F0000 */   lw    $t7, ($s2)
/* AA12A8 8002A108 8FBF005C */  lw    $ra, 0x5c($sp)
/* AA12AC 8002A10C D7B40020 */  ldc1  $f20, 0x20($sp)
/* AA12B0 8002A110 D7B60028 */  ldc1  $f22, 0x28($sp)
/* AA12B4 8002A114 D7B80030 */  ldc1  $f24, 0x30($sp)
/* AA12B8 8002A118 D7BA0038 */  ldc1  $f26, 0x38($sp)
/* AA12BC 8002A11C 8FB00040 */  lw    $s0, 0x40($sp)
/* AA12C0 8002A120 8FB10044 */  lw    $s1, 0x44($sp)
/* AA12C4 8002A124 8FB20048 */  lw    $s2, 0x48($sp)
/* AA12C8 8002A128 8FB3004C */  lw    $s3, 0x4c($sp)
/* AA12CC 8002A12C 8FB40050 */  lw    $s4, 0x50($sp)
/* AA12D0 8002A130 8FB50054 */  lw    $s5, 0x54($sp)
/* AA12D4 8002A134 8FB60058 */  lw    $s6, 0x58($sp)
/* AA12D8 8002A138 03E00008 */  jr    $ra
/* AA12DC 8002A13C 27BD0090 */   addiu $sp, $sp, 0x90

