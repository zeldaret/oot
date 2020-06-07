glabel func_80044E68
/* ABC008 80044E68 27BDFF38 */  addiu $sp, $sp, -0xc8
/* ABC00C 80044E6C AFBF0024 */  sw    $ra, 0x24($sp)
/* ABC010 80044E70 AFA400C8 */  sw    $a0, 0xc8($sp)
/* ABC014 80044E74 AFA500CC */  sw    $a1, 0xcc($sp)
/* ABC018 80044E78 F7B60018 */  sdc1  $f22, 0x18($sp)
/* ABC01C 80044E7C F7B40010 */  sdc1  $f20, 0x10($sp)
/* ABC020 80044E80 AFA600D0 */  sw    $a2, 0xd0($sp)
/* ABC024 80044E84 AFA700D4 */  sw    $a3, 0xd4($sp)
/* ABC028 80044E88 0C01DE1C */  jal   Math_Sins
/* ABC02C 80044E8C 87A400CE */   lh    $a0, 0xce($sp)
/* ABC030 80044E90 46000586 */  mov.s $f22, $f0
/* ABC034 80044E94 0C01DE0D */  jal   Math_Coss
/* ABC038 80044E98 87A400CE */   lh    $a0, 0xce($sp)
/* ABC03C 80044E9C 46000506 */  mov.s $f20, $f0
/* ABC040 80044EA0 0C01DE1C */  jal   Math_Sins
/* ABC044 80044EA4 87A400D2 */   lh    $a0, 0xd2($sp)
/* ABC048 80044EA8 E7A000BC */  swc1  $f0, 0xbc($sp)
/* ABC04C 80044EAC 0C01DE0D */  jal   Math_Coss
/* ABC050 80044EB0 87A400D2 */   lh    $a0, 0xd2($sp)
/* ABC054 80044EB4 87A400D6 */  lh    $a0, 0xd6($sp)
/* ABC058 80044EB8 E7A000B8 */  swc1  $f0, 0xb8($sp)
/* ABC05C 80044EBC 00042023 */  negu  $a0, $a0
/* ABC060 80044EC0 00042400 */  sll   $a0, $a0, 0x10
/* ABC064 80044EC4 00042403 */  sra   $a0, $a0, 0x10
/* ABC068 80044EC8 0C01DE1C */  jal   Math_Sins
/* ABC06C 80044ECC AFA40060 */   sw    $a0, 0x60($sp)
/* ABC070 80044ED0 8FA40060 */  lw    $a0, 0x60($sp)
/* ABC074 80044ED4 0C01DE0D */  jal   Math_Coss
/* ABC078 80044ED8 E7A000B4 */   swc1  $f0, 0xb4($sp)
/* ABC07C 80044EDC 4600B107 */  neg.s $f4, $f22
/* ABC080 80044EE0 C7A600BC */  lwc1  $f6, 0xbc($sp)
/* ABC084 80044EE4 E7A40060 */  swc1  $f4, 0x60($sp)
/* ABC088 80044EE8 C7AA0060 */  lwc1  $f10, 0x60($sp)
/* ABC08C 80044EEC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABC090 80044EF0 44812000 */  mtc1  $at, $f4
/* ABC094 80044EF4 46065402 */  mul.s $f16, $f10, $f6
/* ABC098 80044EF8 E7AA0028 */  swc1  $f10, 0x28($sp)
/* ABC09C 80044EFC 46002381 */  sub.s $f14, $f4, $f0
/* ABC0A0 80044F00 4606A082 */  mul.s $f2, $f20, $f6
/* ABC0A4 80044F04 C7A400B8 */  lwc1  $f4, 0xb8($sp)
/* ABC0A8 80044F08 27B900A4 */  addiu $t9, $sp, 0xa4
/* ABC0AC 80044F0C 8FA200C8 */  lw    $v0, 0xc8($sp)
/* ABC0B0 80044F10 46021202 */  mul.s $f8, $f2, $f2
/* ABC0B4 80044F14 00000000 */  nop   
/* ABC0B8 80044F18 46161182 */  mul.s $f6, $f2, $f22
/* ABC0BC 80044F1C E7A80054 */  swc1  $f8, 0x54($sp)
/* ABC0C0 80044F20 460E3202 */  mul.s $f8, $f6, $f14
/* ABC0C4 80044F24 C7A600B4 */  lwc1  $f6, 0xb4($sp)
/* ABC0C8 80044F28 4604A302 */  mul.s $f12, $f20, $f4
/* ABC0CC 80044F2C E7A6002C */  swc1  $f6, 0x2c($sp)
/* ABC0D0 80044F30 E7A8004C */  swc1  $f8, 0x4c($sp)
/* ABC0D4 80044F34 46066282 */  mul.s $f10, $f12, $f6
/* ABC0D8 80044F38 E7AA0044 */  swc1  $f10, 0x44($sp)
/* ABC0DC 80044F3C C7AA0028 */  lwc1  $f10, 0x28($sp)
/* ABC0E0 80044F40 E7A80028 */  swc1  $f8, 0x28($sp)
/* ABC0E4 80044F44 C7A80054 */  lwc1  $f8, 0x54($sp)
/* ABC0E8 80044F48 46045482 */  mul.s $f18, $f10, $f4
/* ABC0EC 80044F4C 00000000 */  nop   
/* ABC0F0 80044F50 46026282 */  mul.s $f10, $f12, $f2
/* ABC0F4 80044F54 00000000 */  nop   
/* ABC0F8 80044F58 460E5102 */  mul.s $f4, $f10, $f14
/* ABC0FC 80044F5C 00000000 */  nop   
/* ABC100 80044F60 4606B282 */  mul.s $f10, $f22, $f6
/* ABC104 80044F64 E7A40040 */  swc1  $f4, 0x40($sp)
/* ABC108 80044F68 E7AA003C */  swc1  $f10, 0x3c($sp)
/* ABC10C 80044F6C 44815000 */  mtc1  $at, $f10
/* ABC110 80044F70 00000000 */  nop   
/* ABC114 80044F74 46085281 */  sub.s $f10, $f10, $f8
/* ABC118 80044F78 46005282 */  mul.s $f10, $f10, $f0
/* ABC11C 80044F7C 46085280 */  add.s $f10, $f10, $f8
/* ABC120 80044F80 460A8202 */  mul.s $f8, $f16, $f10
/* ABC124 80044F84 C7AA0028 */  lwc1  $f10, 0x28($sp)
/* ABC128 80044F88 E7A40028 */  swc1  $f4, 0x28($sp)
/* ABC12C 80044F8C C7A40044 */  lwc1  $f4, 0x44($sp)
/* ABC130 80044F90 46045181 */  sub.s $f6, $f10, $f4
/* ABC134 80044F94 E7A40030 */  swc1  $f4, 0x30($sp)
/* ABC138 80044F98 4606A182 */  mul.s $f6, $f20, $f6
/* ABC13C 80044F9C 46064200 */  add.s $f8, $f8, $f6
/* ABC140 80044FA0 C7A60028 */  lwc1  $f6, 0x28($sp)
/* ABC144 80044FA4 E7AA0028 */  swc1  $f10, 0x28($sp)
/* ABC148 80044FA8 C7AA003C */  lwc1  $f10, 0x3c($sp)
/* ABC14C 80044FAC 460A3100 */  add.s $f4, $f6, $f10
/* ABC150 80044FB0 46049102 */  mul.s $f4, $f18, $f4
/* ABC154 80044FB4 46044200 */  add.s $f8, $f8, $f4
/* ABC158 80044FB8 4616B102 */  mul.s $f4, $f22, $f22
/* ABC15C 80044FBC E7A800A4 */  swc1  $f8, 0xa4($sp)
/* ABC160 80044FC0 460CB202 */  mul.s $f8, $f22, $f12
/* ABC164 80044FC4 E7A40054 */  swc1  $f4, 0x54($sp)
/* ABC168 80044FC8 460E4102 */  mul.s $f4, $f8, $f14
/* ABC16C 80044FCC C7A8002C */  lwc1  $f8, 0x2c($sp)
/* ABC170 80044FD0 E7A6002C */  swc1  $f6, 0x2c($sp)
/* ABC174 80044FD4 C7A60030 */  lwc1  $f6, 0x30($sp)
/* ABC178 80044FD8 46081202 */  mul.s $f8, $f2, $f8
/* ABC17C 80044FDC E7AA0030 */  swc1  $f10, 0x30($sp)
/* ABC180 80044FE0 C7AA0054 */  lwc1  $f10, 0x54($sp)
/* ABC184 80044FE4 E7A40050 */  swc1  $f4, 0x50($sp)
/* ABC188 80044FE8 E7A80058 */  swc1  $f8, 0x58($sp)
/* ABC18C 80044FEC C7A80028 */  lwc1  $f8, 0x28($sp)
/* ABC190 80044FF0 46064200 */  add.s $f8, $f8, $f6
/* ABC194 80044FF4 46088182 */  mul.s $f6, $f16, $f8
/* ABC198 80044FF8 44814000 */  mtc1  $at, $f8
/* ABC19C 80044FFC 00000000 */  nop   
/* ABC1A0 80045000 460A4201 */  sub.s $f8, $f8, $f10
/* ABC1A4 80045004 46004282 */  mul.s $f10, $f8, $f0
/* ABC1A8 80045008 C7A80054 */  lwc1  $f8, 0x54($sp)
/* ABC1AC 8004500C 46085280 */  add.s $f10, $f10, $f8
/* ABC1B0 80045010 460AA202 */  mul.s $f8, $f20, $f10
/* ABC1B4 80045014 46083280 */  add.s $f10, $f6, $f8
/* ABC1B8 80045018 C7A60058 */  lwc1  $f6, 0x58($sp)
/* ABC1BC 8004501C 46062201 */  sub.s $f8, $f4, $f6
/* ABC1C0 80045020 46089182 */  mul.s $f6, $f18, $f8
/* ABC1C4 80045024 46065200 */  add.s $f8, $f10, $f6
/* ABC1C8 80045028 460C6282 */  mul.s $f10, $f12, $f12
/* ABC1CC 8004502C C7A6002C */  lwc1  $f6, 0x2c($sp)
/* ABC1D0 80045030 E7A800A8 */  swc1  $f8, 0xa8($sp)
/* ABC1D4 80045034 C7A80030 */  lwc1  $f8, 0x30($sp)
/* ABC1D8 80045038 E7AA0054 */  swc1  $f10, 0x54($sp)
/* ABC1DC 8004503C 46083281 */  sub.s $f10, $f6, $f8
/* ABC1E0 80045040 C7A80058 */  lwc1  $f8, 0x58($sp)
/* ABC1E4 80045044 460A8182 */  mul.s $f6, $f16, $f10
/* ABC1E8 80045048 46082280 */  add.s $f10, $f4, $f8
/* ABC1EC 8004504C 460AA102 */  mul.s $f4, $f20, $f10
/* ABC1F0 80045050 44815000 */  mtc1  $at, $f10
/* ABC1F4 80045054 46043200 */  add.s $f8, $f6, $f4
/* ABC1F8 80045058 C7A60054 */  lwc1  $f6, 0x54($sp)
/* ABC1FC 8004505C 46065101 */  sub.s $f4, $f10, $f6
/* ABC200 80045060 C7A60054 */  lwc1  $f6, 0x54($sp)
/* ABC204 80045064 46002282 */  mul.s $f10, $f4, $f0
/* ABC208 80045068 46065100 */  add.s $f4, $f10, $f6
/* ABC20C 8004506C 46049282 */  mul.s $f10, $f18, $f4
/* ABC210 80045070 460A4180 */  add.s $f6, $f8, $f10
/* ABC214 80045074 E7A600AC */  swc1  $f6, 0xac($sp)
/* ABC218 80045078 8F290000 */  lw    $t1, ($t9)
/* ABC21C 8004507C AC490000 */  sw    $t1, ($v0)
/* ABC220 80045080 8F280004 */  lw    $t0, 4($t9)
/* ABC224 80045084 AC480004 */  sw    $t0, 4($v0)
/* ABC228 80045088 8F290008 */  lw    $t1, 8($t9)
/* ABC22C 8004508C AC490008 */  sw    $t1, 8($v0)
/* ABC230 80045090 8FBF0024 */  lw    $ra, 0x24($sp)
/* ABC234 80045094 D7B60018 */  ldc1  $f22, 0x18($sp)
/* ABC238 80045098 D7B40010 */  ldc1  $f20, 0x10($sp)
/* ABC23C 8004509C 03E00008 */  jr    $ra
/* ABC240 800450A0 27BD00C8 */   addiu $sp, $sp, 0xc8

