.text
glabel func_8005FF90
/* AD7130 8005FF90 27BDFF88 */  addiu $sp, $sp, -0x78
/* AD7134 8005FF94 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD7138 8005FF98 AFB10028 */  sw    $s1, 0x28($sp)
/* AD713C 8005FF9C AFB00024 */  sw    $s0, 0x24($sp)
/* AD7140 8005FFA0 AFA40078 */  sw    $a0, 0x78($sp)
/* AD7144 8005FFA4 AFA5007C */  sw    $a1, 0x7c($sp)
/* AD7148 8005FFA8 84CE0042 */  lh    $t6, 0x42($a2)
/* AD714C 8005FFAC 00E08025 */  move  $s0, $a3
/* AD7150 8005FFB0 00C08825 */  move  $s1, $a2
/* AD7154 8005FFB4 59C0008F */  blezl $t6, .L800601F4
/* AD7158 8005FFB8 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD715C 8005FFBC 84CF0040 */  lh    $t7, 0x40($a2)
/* AD7160 8005FFC0 24C40018 */  addiu $a0, $a2, 0x18
/* AD7164 8005FFC4 59E0008B */  blezl $t7, .L800601F4
/* AD7168 8005FFC8 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD716C 8005FFCC 0C0177CB */  jal   func_8005DF2C
/* AD7170 8005FFD0 AFA4003C */   sw    $a0, 0x3c($sp)
/* AD7174 8005FFD4 24010001 */  li    $at, 1
/* AD7178 8005FFD8 10410085 */  beq   $v0, $at, .L800601F0
/* AD717C 8005FFDC 26040018 */   addiu $a0, $s0, 0x18
/* AD7180 8005FFE0 0C0177D4 */  jal   func_8005DF50
/* AD7184 8005FFE4 AFA40038 */   sw    $a0, 0x38($sp)
/* AD7188 8005FFE8 24010001 */  li    $at, 1
/* AD718C 8005FFEC 10410080 */  beq   $v0, $at, .L800601F0
/* AD7190 8005FFF0 8FA4003C */   lw    $a0, 0x3c($sp)
/* AD7194 8005FFF4 0C0177DD */  jal   func_8005DF74
/* AD7198 8005FFF8 8FA50038 */   lw    $a1, 0x38($sp)
/* AD719C 8005FFFC 24010001 */  li    $at, 1
/* AD71A0 80060000 1041007B */  beq   $v0, $at, .L800601F0
/* AD71A4 80060004 3C048016 */   lui   $a0, %hi(D_8015E320) # $a0, 0x8016
/* AD71A8 80060008 26050058 */  addiu $a1, $s0, 0x58
/* AD71AC 8006000C 2607004C */  addiu $a3, $s0, 0x4c
/* AD71B0 80060010 AFA70034 */  sw    $a3, 0x34($sp)
/* AD71B4 80060014 AFA50030 */  sw    $a1, 0x30($sp)
/* AD71B8 80060018 2484E320 */  addiu $a0, %lo(D_8015E320) # addiu $a0, $a0, -0x1ce0
/* AD71BC 8006001C 0C0338F0 */  jal   func_800CE3C0
/* AD71C0 80060020 26060064 */   addiu $a2, $s0, 0x64
/* AD71C4 80060024 3C048016 */  lui   $a0, %hi(D_8015E358) # $a0, 0x8016
/* AD71C8 80060028 2484E358 */  addiu $a0, %lo(D_8015E358) # addiu $a0, $a0, -0x1ca8
/* AD71CC 8006002C 8FA50034 */  lw    $a1, 0x34($sp)
/* AD71D0 80060030 26060040 */  addiu $a2, $s0, 0x40
/* AD71D4 80060034 0C0338F0 */  jal   func_800CE3C0
/* AD71D8 80060038 8FA70030 */   lw    $a3, 0x30($sp)
/* AD71DC 8006003C 26240040 */  addiu $a0, $s1, 0x40
/* AD71E0 80060040 3C058016 */  lui   $a1, %hi(D_8015E320) # $a1, 0x8016
/* AD71E4 80060044 3C068016 */  lui   $a2, %hi(D_8015E390) # $a2, 0x8016
/* AD71E8 80060048 24C6E390 */  addiu $a2, %lo(D_8015E390) # addiu $a2, $a2, -0x1c70
/* AD71EC 8006004C 24A5E320 */  addiu $a1, %lo(D_8015E320) # addiu $a1, $a1, -0x1ce0
/* AD71F0 80060050 0C033DF4 */  jal   func_800CF7D0
/* AD71F4 80060054 AFA40034 */   sw    $a0, 0x34($sp)
/* AD71F8 80060058 24010001 */  li    $at, 1
/* AD71FC 8006005C 14410030 */  bne   $v0, $at, .L80060120
/* AD7200 80060060 8FA40034 */   lw    $a0, 0x34($sp)
/* AD7204 80060064 27A40064 */  addiu $a0, $sp, 0x64
/* AD7208 80060068 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* AD720C 8006006C 26250046 */   addiu $a1, $s1, 0x46
/* AD7210 80060070 C6040058 */  lwc1  $f4, 0x58($s0)
/* AD7214 80060074 C6060064 */  lwc1  $f6, 0x64($s0)
/* AD7218 80060078 C60A004C */  lwc1  $f10, 0x4c($s0)
/* AD721C 8006007C C6120040 */  lwc1  $f18, 0x40($s0)
/* AD7220 80060080 46062200 */  add.s $f8, $f4, $f6
/* AD7224 80060084 3C013E80 */  li    $at, 0x3E800000 # 0.000000
/* AD7228 80060088 44810000 */  mtc1  $at, $f0
/* AD722C 8006008C 8FB80038 */  lw    $t8, 0x38($sp)
/* AD7230 80060090 460A4400 */  add.s $f16, $f8, $f10
/* AD7234 80060094 3C088016 */  lui   $t0, %hi(D_8015E390) # $t0, 0x8016
/* AD7238 80060098 2508E390 */  addiu $t0, %lo(D_8015E390) # addiu $t0, $t0, -0x1c70
/* AD723C 8006009C 27B90058 */  addiu $t9, $sp, 0x58
/* AD7240 800600A0 46128100 */  add.s $f4, $f16, $f18
/* AD7244 800600A4 8FA40078 */  lw    $a0, 0x78($sp)
/* AD7248 800600A8 02202825 */  move  $a1, $s1
/* AD724C 800600AC 8FA6003C */  lw    $a2, 0x3c($sp)
/* AD7250 800600B0 46002182 */  mul.s $f6, $f4, $f0
/* AD7254 800600B4 27A70064 */  addiu $a3, $sp, 0x64
/* AD7258 800600B8 E7A60058 */  swc1  $f6, 0x58($sp)
/* AD725C 800600BC C60A0068 */  lwc1  $f10, 0x68($s0)
/* AD7260 800600C0 C608005C */  lwc1  $f8, 0x5c($s0)
/* AD7264 800600C4 C6120050 */  lwc1  $f18, 0x50($s0)
/* AD7268 800600C8 C6060044 */  lwc1  $f6, 0x44($s0)
/* AD726C 800600CC 460A4400 */  add.s $f16, $f8, $f10
/* AD7270 800600D0 46128100 */  add.s $f4, $f16, $f18
/* AD7274 800600D4 46062200 */  add.s $f8, $f4, $f6
/* AD7278 800600D8 46004282 */  mul.s $f10, $f8, $f0
/* AD727C 800600DC E7AA005C */  swc1  $f10, 0x5c($sp)
/* AD7280 800600E0 C612006C */  lwc1  $f18, 0x6c($s0)
/* AD7284 800600E4 C6100060 */  lwc1  $f16, 0x60($s0)
/* AD7288 800600E8 C6060054 */  lwc1  $f6, 0x54($s0)
/* AD728C 800600EC C60A0048 */  lwc1  $f10, 0x48($s0)
/* AD7290 800600F0 46128100 */  add.s $f4, $f16, $f18
/* AD7294 800600F4 AFA8001C */  sw    $t0, 0x1c($sp)
/* AD7298 800600F8 AFB90018 */  sw    $t9, 0x18($sp)
/* AD729C 800600FC AFB00010 */  sw    $s0, 0x10($sp)
/* AD72A0 80060100 46062200 */  add.s $f8, $f4, $f6
/* AD72A4 80060104 AFB80014 */  sw    $t8, 0x14($sp)
/* AD72A8 80060108 460A4400 */  add.s $f16, $f8, $f10
/* AD72AC 8006010C 46008482 */  mul.s $f18, $f16, $f0
/* AD72B0 80060110 0C017A07 */  jal   func_8005E81C
/* AD72B4 80060114 E7B20060 */   swc1  $f18, 0x60($sp)
/* AD72B8 80060118 10000036 */  b     .L800601F4
/* AD72BC 8006011C 8FBF002C */   lw    $ra, 0x2c($sp)
.L80060120:
/* AD72C0 80060120 3C058016 */  lui   $a1, %hi(D_8015E358) # $a1, 0x8016
/* AD72C4 80060124 3C068016 */  lui   $a2, %hi(D_8015E390) # $a2, 0x8016
/* AD72C8 80060128 24C6E390 */  addiu $a2, %lo(D_8015E390) # addiu $a2, $a2, -0x1c70
/* AD72CC 8006012C 0C033DF4 */  jal   func_800CF7D0
/* AD72D0 80060130 24A5E358 */   addiu $a1, %lo(D_8015E358) # addiu $a1, $a1, -0x1ca8
/* AD72D4 80060134 24010001 */  li    $at, 1
/* AD72D8 80060138 1441002D */  bne   $v0, $at, .L800601F0
/* AD72DC 8006013C 27A4004C */   addiu $a0, $sp, 0x4c
/* AD72E0 80060140 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* AD72E4 80060144 26250046 */   addiu $a1, $s1, 0x46
/* AD72E8 80060148 C6040058 */  lwc1  $f4, 0x58($s0)
/* AD72EC 8006014C C6060064 */  lwc1  $f6, 0x64($s0)
/* AD72F0 80060150 C60A004C */  lwc1  $f10, 0x4c($s0)
/* AD72F4 80060154 C6120040 */  lwc1  $f18, 0x40($s0)
/* AD72F8 80060158 46062200 */  add.s $f8, $f4, $f6
/* AD72FC 8006015C 3C013E80 */  li    $at, 0x3E800000 # 0.000000
/* AD7300 80060160 44810000 */  mtc1  $at, $f0
/* AD7304 80060164 8FA90038 */  lw    $t1, 0x38($sp)
/* AD7308 80060168 460A4400 */  add.s $f16, $f8, $f10
/* AD730C 8006016C 3C0B8016 */  lui   $t3, %hi(D_8015E390) # $t3, 0x8016
/* AD7310 80060170 256BE390 */  addiu $t3, %lo(D_8015E390) # addiu $t3, $t3, -0x1c70
/* AD7314 80060174 27AA0040 */  addiu $t2, $sp, 0x40
/* AD7318 80060178 46128100 */  add.s $f4, $f16, $f18
/* AD731C 8006017C 8FA40078 */  lw    $a0, 0x78($sp)
/* AD7320 80060180 02202825 */  move  $a1, $s1
/* AD7324 80060184 8FA6003C */  lw    $a2, 0x3c($sp)
/* AD7328 80060188 46002182 */  mul.s $f6, $f4, $f0
/* AD732C 8006018C 27A7004C */  addiu $a3, $sp, 0x4c
/* AD7330 80060190 E7A60040 */  swc1  $f6, 0x40($sp)
/* AD7334 80060194 C60A0068 */  lwc1  $f10, 0x68($s0)
/* AD7338 80060198 C608005C */  lwc1  $f8, 0x5c($s0)
/* AD733C 8006019C C6120050 */  lwc1  $f18, 0x50($s0)
/* AD7340 800601A0 C6060044 */  lwc1  $f6, 0x44($s0)
/* AD7344 800601A4 460A4400 */  add.s $f16, $f8, $f10
/* AD7348 800601A8 46128100 */  add.s $f4, $f16, $f18
/* AD734C 800601AC 46062200 */  add.s $f8, $f4, $f6
/* AD7350 800601B0 46004282 */  mul.s $f10, $f8, $f0
/* AD7354 800601B4 E7AA0044 */  swc1  $f10, 0x44($sp)
/* AD7358 800601B8 C612006C */  lwc1  $f18, 0x6c($s0)
/* AD735C 800601BC C6100060 */  lwc1  $f16, 0x60($s0)
/* AD7360 800601C0 C6060054 */  lwc1  $f6, 0x54($s0)
/* AD7364 800601C4 C60A0048 */  lwc1  $f10, 0x48($s0)
/* AD7368 800601C8 46128100 */  add.s $f4, $f16, $f18
/* AD736C 800601CC AFAB001C */  sw    $t3, 0x1c($sp)
/* AD7370 800601D0 AFAA0018 */  sw    $t2, 0x18($sp)
/* AD7374 800601D4 AFB00010 */  sw    $s0, 0x10($sp)
/* AD7378 800601D8 46062200 */  add.s $f8, $f4, $f6
/* AD737C 800601DC AFA90014 */  sw    $t1, 0x14($sp)
/* AD7380 800601E0 460A4400 */  add.s $f16, $f8, $f10
/* AD7384 800601E4 46008482 */  mul.s $f18, $f16, $f0
/* AD7388 800601E8 0C017A07 */  jal   func_8005E81C
/* AD738C 800601EC E7B20048 */   swc1  $f18, 0x48($sp)
.L800601F0:
/* AD7390 800601F0 8FBF002C */  lw    $ra, 0x2c($sp)
.L800601F4:
/* AD7394 800601F4 8FB00024 */  lw    $s0, 0x24($sp)
/* AD7398 800601F8 8FB10028 */  lw    $s1, 0x28($sp)
/* AD739C 800601FC 03E00008 */  jr    $ra
/* AD73A0 80060200 27BD0078 */   addiu $sp, $sp, 0x78
