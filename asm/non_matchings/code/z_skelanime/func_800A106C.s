.rdata
glabel D_80140048
    .asciz "\x1b[31m"
    .balign 4

glabel D_80140050
    .asciz "Si2_Lod_draw_SV():skelがNULLです。\n"
    # EUC-JP: がNULLです。| Is null
    .balign 4

glabel D_80140074
    .asciz "\x1b[m"
    .balign 4

glabel D_80140078
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014008C
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801400A0
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801400B4
    .asciz "../z_skelanime.c"
    .balign 4

.text
glabel func_800A106C
/* B1820C 800A106C 27BDFF80 */  addiu $sp, $sp, -0x80
/* B18210 800A1070 AFBF002C */  sw    $ra, 0x2c($sp)
/* B18214 800A1074 AFA40080 */  sw    $a0, 0x80($sp)
/* B18218 800A1078 AFA50084 */  sw    $a1, 0x84($sp)
/* B1821C 800A107C AFA60088 */  sw    $a2, 0x88($sp)
/* B18220 800A1080 8C840000 */  lw    $a0, ($a0)
/* B18224 800A1084 0C031A73 */  jal   Graph_Alloc
/* B18228 800A1088 00072980 */   sll   $a1, $a3, 6
/* B1822C 800A108C 8FAF0084 */  lw    $t7, 0x84($sp)
/* B18230 800A1090 AFA20058 */  sw    $v0, 0x58($sp)
/* B18234 800A1094 8FB80080 */  lw    $t8, 0x80($sp)
/* B18238 800A1098 15E0000C */  bnez  $t7, .L800A10CC
/* B1823C 800A109C 27A40044 */   addiu $a0, $sp, 0x44
/* B18240 800A10A0 3C048014 */  lui   $a0, %hi(D_80140048) # $a0, 0x8014
/* B18244 800A10A4 0C00084C */  jal   osSyncPrintf
/* B18248 800A10A8 24840048 */   addiu $a0, %lo(D_80140048) # addiu $a0, $a0, 0x48
/* B1824C 800A10AC 3C048014 */  lui   $a0, %hi(D_80140050) # $a0, 0x8014
/* B18250 800A10B0 0C00084C */  jal   osSyncPrintf
/* B18254 800A10B4 24840050 */   addiu $a0, %lo(D_80140050) # addiu $a0, $a0, 0x50
/* B18258 800A10B8 3C048014 */  lui   $a0, %hi(D_80140074) # $a0, 0x8014
/* B1825C 800A10BC 0C00084C */  jal   osSyncPrintf
/* B18260 800A10C0 24840074 */   addiu $a0, %lo(D_80140074) # addiu $a0, $a0, 0x74
/* B18264 800A10C4 1000009C */  b     .L800A1338
/* B18268 800A10C8 8FBF002C */   lw    $ra, 0x2c($sp)
.L800A10CC:
/* B1826C 800A10CC 8F050000 */  lw    $a1, ($t8)
/* B18270 800A10D0 3C068014 */  lui   $a2, %hi(D_80140078) # $a2, 0x8014
/* B18274 800A10D4 24C60078 */  addiu $a2, %lo(D_80140078) # addiu $a2, $a2, 0x78
/* B18278 800A10D8 240703E8 */  li    $a3, 1000
/* B1827C 800A10DC 0C031AB1 */  jal   func_800C6AC4
/* B18280 800A10E0 AFA50054 */   sw    $a1, 0x54($sp)
/* B18284 800A10E4 8FA80054 */  lw    $t0, 0x54($sp)
/* B18288 800A10E8 3C09DB06 */  lui   $t1, (0xDB060034 >> 16) # lui $t1, 0xdb06
/* B1828C 800A10EC 35290034 */  ori   $t1, (0xDB060034 & 0xFFFF) # ori $t1, $t1, 0x34
/* B18290 800A10F0 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B18294 800A10F4 24590008 */  addiu $t9, $v0, 8
/* B18298 800A10F8 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B1829C 800A10FC AC490000 */  sw    $t1, ($v0)
/* B182A0 800A1100 8FAA0058 */  lw    $t2, 0x58($sp)
/* B182A4 800A1104 AC4A0004 */  sw    $t2, 4($v0)
/* B182A8 800A1108 0C034213 */  jal   Matrix_Push
/* B182AC 800A110C AFA80054 */   sw    $t0, 0x54($sp)
/* B182B0 800A1110 8FAB0084 */  lw    $t3, 0x84($sp)
/* B182B4 800A1114 3C188016 */  lui   $t8, %hi(gSegments)
/* B182B8 800A1118 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B182BC 800A111C 8D620000 */  lw    $v0, ($t3)
/* B182C0 800A1120 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B182C4 800A1124 8FA30088 */  lw    $v1, 0x88($sp)
/* B182C8 800A1128 00026900 */  sll   $t5, $v0, 4
/* B182CC 800A112C 000D7702 */  srl   $t6, $t5, 0x1c
/* B182D0 800A1130 000E7880 */  sll   $t7, $t6, 2
/* B182D4 800A1134 030FC021 */  addu  $t8, $t8, $t7
/* B182D8 800A1138 8F186FA8 */  lw    $t8, %lo(gSegments)($t8)
/* B182DC 800A113C 00416024 */  and   $t4, $v0, $at
/* B182E0 800A1140 3C018000 */  lui   $at, 0x8000
/* B182E4 800A1144 0198C821 */  addu  $t9, $t4, $t8
/* B182E8 800A1148 03214821 */  addu  $t1, $t9, $at
/* B182EC 800A114C AFA9007C */  sw    $t1, 0x7c($sp)
/* B182F0 800A1150 846A0000 */  lh    $t2, ($v1)
/* B182F4 800A1154 8FA80054 */  lw    $t0, 0x54($sp)
/* B182F8 800A1158 27AE005C */  addiu $t6, $sp, 0x5c
/* B182FC 800A115C 448A2000 */  mtc1  $t2, $f4
/* B18300 800A1160 24050001 */  li    $a1, 1
/* B18304 800A1164 27A60074 */  addiu $a2, $sp, 0x74
/* B18308 800A1168 468021A0 */  cvt.s.w $f6, $f4
/* B1830C 800A116C 27A70064 */  addiu $a3, $sp, 0x64
/* B18310 800A1170 E7A60064 */  swc1  $f6, 0x64($sp)
/* B18314 800A1174 846B0002 */  lh    $t3, 2($v1)
/* B18318 800A1178 448B4000 */  mtc1  $t3, $f8
/* B1831C 800A117C 00000000 */  nop
/* B18320 800A1180 468042A0 */  cvt.s.w $f10, $f8
/* B18324 800A1184 E7AA0068 */  swc1  $f10, 0x68($sp)
/* B18328 800A1188 846D0004 */  lh    $t5, 4($v1)
/* B1832C 800A118C 448D8000 */  mtc1  $t5, $f16
/* B18330 800A1190 00000000 */  nop
/* B18334 800A1194 468084A0 */  cvt.s.w $f18, $f16
/* B18338 800A1198 E7B2006C */  swc1  $f18, 0x6c($sp)
/* B1833C 800A119C 886C0006 */  lwl   $t4, 6($v1)
/* B18340 800A11A0 986C0009 */  lwr   $t4, 9($v1)
/* B18344 800A11A4 ADCC0000 */  sw    $t4, ($t6)
/* B18348 800A11A8 946C000A */  lhu   $t4, 0xa($v1)
/* B1834C 800A11AC A5CC0004 */  sh    $t4, 4($t6)
/* B18350 800A11B0 8FB9009C */  lw    $t9, 0x9c($sp)
/* B18354 800A11B4 8FB8007C */  lw    $t8, 0x7c($sp)
/* B18358 800A11B8 8FAD0090 */  lw    $t5, 0x90($sp)
/* B1835C 800A11BC 00194880 */  sll   $t1, $t9, 2
/* B18360 800A11C0 03095021 */  addu  $t2, $t8, $t1
/* B18364 800A11C4 8D4B0008 */  lw    $t3, 8($t2)
/* B18368 800A11C8 8FA40080 */  lw    $a0, 0x80($sp)
/* B1836C 800A11CC 27AE005C */  addiu $t6, $sp, 0x5c
/* B18370 800A11D0 AFAB0070 */  sw    $t3, 0x70($sp)
/* B18374 800A11D4 11A00008 */  beqz  $t5, .L800A11F8
/* B18378 800A11D8 AFAB0074 */   sw    $t3, 0x74($sp)
/* B1837C 800A11DC 8FAF0098 */  lw    $t7, 0x98($sp)
/* B18380 800A11E0 AFAE0010 */  sw    $t6, 0x10($sp)
/* B18384 800A11E4 AFA80054 */  sw    $t0, 0x54($sp)
/* B18388 800A11E8 01A0F809 */  jalr  $t5
/* B1838C 800A11EC AFAF0014 */  sw    $t7, 0x14($sp)
/* B18390 800A11F0 1440002C */  bnez  $v0, .L800A12A4
/* B18394 800A11F4 8FA80054 */   lw    $t0, 0x54($sp)
.L800A11F8:
/* B18398 800A11F8 27A40064 */  addiu $a0, $sp, 0x64
/* B1839C 800A11FC 27A5005C */  addiu $a1, $sp, 0x5c
/* B183A0 800A1200 0C0344D0 */  jal   Matrix_TranslateThenRotateZYX
/* B183A4 800A1204 AFA80054 */   sw    $t0, 0x54($sp)
/* B183A8 800A1208 8FAC0074 */  lw    $t4, 0x74($sp)
/* B183AC 800A120C 8FA80054 */  lw    $t0, 0x54($sp)
/* B183B0 800A1210 8FA40058 */  lw    $a0, 0x58($sp)
/* B183B4 800A1214 11800019 */  beqz  $t4, .L800A127C
/* B183B8 800A1218 3C058014 */   lui   $a1, %hi(D_8014008C) # $a1, 0x8014
/* B183BC 800A121C 24A5008C */  addiu $a1, %lo(D_8014008C) # addiu $a1, $a1, 0x8c
/* B183C0 800A1220 24060409 */  li    $a2, 1033
/* B183C4 800A1224 0C034695 */  jal   Matrix_ToMtx
/* B183C8 800A1228 AFA80054 */   sw    $t0, 0x54($sp)
/* B183CC 800A122C 8FA80054 */  lw    $t0, 0x54($sp)
/* B183D0 800A1230 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* B183D4 800A1234 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* B183D8 800A1238 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B183DC 800A123C 3C0BDE00 */  lui   $t3, 0xde00
/* B183E0 800A1240 24590008 */  addiu $t9, $v0, 8
/* B183E4 800A1244 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B183E8 800A1248 AC580000 */  sw    $t8, ($v0)
/* B183EC 800A124C 8FA90058 */  lw    $t1, 0x58($sp)
/* B183F0 800A1250 AC490004 */  sw    $t1, 4($v0)
/* B183F4 800A1254 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B183F8 800A1258 244A0008 */  addiu $t2, $v0, 8
/* B183FC 800A125C AD0A02C0 */  sw    $t2, 0x2c0($t0)
/* B18400 800A1260 AC4B0000 */  sw    $t3, ($v0)
/* B18404 800A1264 8FAE0074 */  lw    $t6, 0x74($sp)
/* B18408 800A1268 AC4E0004 */  sw    $t6, 4($v0)
/* B1840C 800A126C 8FAF0058 */  lw    $t7, 0x58($sp)
/* B18410 800A1270 25ED0040 */  addiu $t5, $t7, 0x40
/* B18414 800A1274 1000000B */  b     .L800A12A4
/* B18418 800A1278 AFAD0058 */   sw    $t5, 0x58($sp)
.L800A127C:
/* B1841C 800A127C 8FAC0070 */  lw    $t4, 0x70($sp)
/* B18420 800A1280 3C058014 */  lui   $a1, %hi(D_801400A0) # $a1, 0x8014
/* B18424 800A1284 24A500A0 */  addiu $a1, %lo(D_801400A0) # addiu $a1, $a1, 0xa0
/* B18428 800A1288 11800006 */  beqz  $t4, .L800A12A4
/* B1842C 800A128C 8FA40058 */   lw    $a0, 0x58($sp)
/* B18430 800A1290 0C034695 */  jal   Matrix_ToMtx
/* B18434 800A1294 24060410 */   li    $a2, 1040
/* B18438 800A1298 8FB90058 */  lw    $t9, 0x58($sp)
/* B1843C 800A129C 27380040 */  addiu $t8, $t9, 0x40
/* B18440 800A12A0 AFB80058 */  sw    $t8, 0x58($sp)
.L800A12A4:
/* B18444 800A12A4 8FA20094 */  lw    $v0, 0x94($sp)
/* B18448 800A12A8 8FA40080 */  lw    $a0, 0x80($sp)
/* B1844C 800A12AC 24050001 */  li    $a1, 1
/* B18450 800A12B0 10400006 */  beqz  $v0, .L800A12CC
/* B18454 800A12B4 27A60070 */   addiu $a2, $sp, 0x70
/* B18458 800A12B8 8FA90098 */  lw    $t1, 0x98($sp)
/* B1845C 800A12BC 27A7005C */  addiu $a3, $sp, 0x5c
/* B18460 800A12C0 0040F809 */  jalr  $v0
/* B18464 800A12C4 AFA90010 */  sw    $t1, 0x10($sp)
/* B18468 800A12C8 8FA20094 */  lw    $v0, 0x94($sp)
.L800A12CC:
/* B1846C 800A12CC 8FAA007C */  lw    $t2, 0x7c($sp)
/* B18470 800A12D0 240100FF */  li    $at, 255
/* B18474 800A12D4 8FA40080 */  lw    $a0, 0x80($sp)
/* B18478 800A12D8 91450006 */  lbu   $a1, 6($t2)
/* B1847C 800A12DC 8FA60084 */  lw    $a2, 0x84($sp)
/* B18480 800A12E0 8FA70088 */  lw    $a3, 0x88($sp)
/* B18484 800A12E4 10A1000A */  beq   $a1, $at, .L800A1310
/* B18488 800A12E8 8FAB0090 */   lw    $t3, 0x90($sp)
/* B1848C 800A12EC 8FAE0098 */  lw    $t6, 0x98($sp)
/* B18490 800A12F0 8FAF009C */  lw    $t7, 0x9c($sp)
/* B18494 800A12F4 27AD0058 */  addiu $t5, $sp, 0x58
/* B18498 800A12F8 AFAD0020 */  sw    $t5, 0x20($sp)
/* B1849C 800A12FC AFAB0010 */  sw    $t3, 0x10($sp)
/* B184A0 800A1300 AFA20014 */  sw    $v0, 0x14($sp)
/* B184A4 800A1304 AFAE0018 */  sw    $t6, 0x18($sp)
/* B184A8 800A1308 0C028365 */  jal   func_800A0D94
/* B184AC 800A130C AFAF001C */   sw    $t7, 0x1c($sp)
.L800A1310:
/* B184B0 800A1310 0C034221 */  jal   Matrix_Pull
/* B184B4 800A1314 00000000 */   nop
/* B184B8 800A1318 8FAC0080 */  lw    $t4, 0x80($sp)
/* B184BC 800A131C 3C068014 */  lui   $a2, %hi(D_801400B4) # $a2, 0x8014
/* B184C0 800A1320 24C600B4 */  addiu $a2, %lo(D_801400B4) # addiu $a2, $a2, 0xb4
/* B184C4 800A1324 27A40044 */  addiu $a0, $sp, 0x44
/* B184C8 800A1328 2407041D */  li    $a3, 1053
/* B184CC 800A132C 0C031AD5 */  jal   func_800C6B54
/* B184D0 800A1330 8D850000 */   lw    $a1, ($t4)
/* B184D4 800A1334 8FBF002C */  lw    $ra, 0x2c($sp)
.L800A1338:
/* B184D8 800A1338 27BD0080 */  addiu $sp, $sp, 0x80
/* B184DC 800A133C 03E00008 */  jr    $ra
/* B184E0 800A1340 00000000 */   nop

