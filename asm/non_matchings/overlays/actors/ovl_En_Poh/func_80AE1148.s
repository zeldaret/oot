.rdata
glabel D_80AE1BC0
    .asciz "../z_en_poh.c"
    .balign 4

glabel D_80AE1BD0
    .asciz "../z_en_poh.c"
    .balign 4

glabel D_80AE1BE0
    .asciz "../z_en_poh.c"
    .balign 4

.text
glabel func_80AE1148
/* 033F8 80AE1148 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 033FC 80AE114C AFBF002C */  sw      $ra, 0x002C($sp)
/* 03400 80AE1150 AFB10028 */  sw      $s1, 0x0028($sp)
/* 03404 80AE1154 AFB00024 */  sw      $s0, 0x0024($sp)
/* 03408 80AE1158 AFA5009C */  sw      $a1, 0x009C($sp)
/* 0340C 80AE115C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 03410 80AE1160 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 03414 80AE1164 3C0680AE */  lui     $a2, %hi(D_80AE1BC0)       ## $a2 = 80AE0000
/* 03418 80AE1168 24C61BC0 */  addiu   $a2, $a2, %lo(D_80AE1BC0)  ## $a2 = 80AE1BC0
/* 0341C 80AE116C 27A40078 */  addiu   $a0, $sp, 0x0078           ## $a0 = FFFFFFE0
/* 03420 80AE1170 24070A86 */  addiu   $a3, $zero, 0x0A86         ## $a3 = 00000A86
/* 03424 80AE1174 0C031AB1 */  jal     Graph_OpenDisps
/* 03428 80AE1178 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0342C 80AE117C 0C2B819F */  jal     func_80AE067C
/* 03430 80AE1180 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03434 80AE1184 862F001C */  lh      $t7, 0x001C($s1)           ## 0000001C
/* 03438 80AE1188 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0343C 80AE118C 3C1980AE */  lui     $t9, %hi(D_80AE1B50)       ## $t9 = 80AE0000
/* 03440 80AE1190 15E10007 */  bne     $t7, $at, .L80AE11B0
/* 03444 80AE1194 27391B50 */  addiu   $t9, $t9, %lo(D_80AE1B50)  ## $t9 = 80AE1B50
/* 03448 80AE1198 3C1880AE */  lui     $t8, %hi(D_80AE1B4C)       ## $t8 = 80AE0000
/* 0344C 80AE119C 27181B4C */  addiu   $t8, $t8, %lo(D_80AE1B4C)  ## $t8 = 80AE1B4C
/* 03450 80AE11A0 3C0880AE */  lui     $t0, %hi(D_80AE1B54)       ## $t0 = 80AE0000
/* 03454 80AE11A4 AFB80090 */  sw      $t8, 0x0090($sp)
/* 03458 80AE11A8 10000004 */  beq     $zero, $zero, .L80AE11BC
/* 0345C 80AE11AC 25081B54 */  addiu   $t0, $t0, %lo(D_80AE1B54)  ## $t0 = 80AE1B54
.L80AE11B0:
/* 03460 80AE11B0 3C0880AE */  lui     $t0, %hi(D_80AE1B58)       ## $t0 = 80AE0000
/* 03464 80AE11B4 AFB90090 */  sw      $t9, 0x0090($sp)
/* 03468 80AE11B8 25081B58 */  addiu   $t0, $t0, %lo(D_80AE1B58)  ## $t0 = 80AE1B58
.L80AE11BC:
/* 0346C 80AE11BC 9222029D */  lbu     $v0, 0x029D($s1)           ## 0000029D
/* 03470 80AE11C0 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 03474 80AE11C4 8FAA009C */  lw      $t2, 0x009C($sp)
/* 03478 80AE11C8 50410004 */  beql    $v0, $at, .L80AE11DC
/* 0347C 80AE11CC 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 03480 80AE11D0 14400056 */  bne     $v0, $zero, .L80AE132C
/* 03484 80AE11D4 8FAD009C */  lw      $t5, 0x009C($sp)
/* 03488 80AE11D8 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
.L80AE11DC:
/* 0348C 80AE11DC 0C024F46 */  jal     func_80093D18
/* 03490 80AE11E0 AFA8008C */  sw      $t0, 0x008C($sp)
/* 03494 80AE11E4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03498 80AE11E8 8FA8008C */  lw      $t0, 0x008C($sp)
/* 0349C 80AE11EC 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 034A0 80AE11F0 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 034A4 80AE11F4 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 034A8 80AE11F8 358C0020 */  ori     $t4, $t4, 0x0020           ## $t4 = DB060020
/* 034AC 80AE11FC AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 034B0 80AE1200 8FAD009C */  lw      $t5, 0x009C($sp)
/* 034B4 80AE1204 922E029D */  lbu     $t6, 0x029D($s1)           ## 0000029D
/* 034B8 80AE1208 9227029C */  lbu     $a3, 0x029C($s1)           ## 0000029C
/* 034BC 80AE120C 9226029B */  lbu     $a2, 0x029B($s1)           ## 0000029B
/* 034C0 80AE1210 9225029A */  lbu     $a1, 0x029A($s1)           ## 0000029A
/* 034C4 80AE1214 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 034C8 80AE1218 AFA20074 */  sw      $v0, 0x0074($sp)
/* 034CC 80AE121C AFA8008C */  sw      $t0, 0x008C($sp)
/* 034D0 80AE1220 0C025474 */  jal     Gfx_EnvColor
/* 034D4 80AE1224 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 034D8 80AE1228 8FA30074 */  lw      $v1, 0x0074($sp)
/* 034DC 80AE122C 8FA8008C */  lw      $t0, 0x008C($sp)
/* 034E0 80AE1230 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 034E4 80AE1234 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 034E8 80AE1238 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 034EC 80AE123C 8FA90090 */  lw      $t1, 0x0090($sp)
/* 034F0 80AE1240 37180028 */  ori     $t8, $t8, 0x0028           ## $t8 = DB060028
/* 034F4 80AE1244 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 034F8 80AE1248 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 034FC 80AE124C AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 03500 80AE1250 8FB9009C */  lw      $t9, 0x009C($sp)
/* 03504 80AE1254 922A029D */  lbu     $t2, 0x029D($s1)           ## 0000029D
/* 03508 80AE1258 91270002 */  lbu     $a3, 0x0002($t1)           ## 00000002
/* 0350C 80AE125C 91260001 */  lbu     $a2, 0x0001($t1)           ## 00000001
/* 03510 80AE1260 91250000 */  lbu     $a1, 0x0000($t1)           ## 00000000
/* 03514 80AE1264 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 03518 80AE1268 AFA8008C */  sw      $t0, 0x008C($sp)
/* 0351C 80AE126C AFA20070 */  sw      $v0, 0x0070($sp)
/* 03520 80AE1270 0C025474 */  jal     Gfx_EnvColor
/* 03524 80AE1274 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 03528 80AE1278 8FA30070 */  lw      $v1, 0x0070($sp)
/* 0352C 80AE127C 8FA8008C */  lw      $t0, 0x008C($sp)
/* 03530 80AE1280 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 03534 80AE1284 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03538 80AE1288 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0353C 80AE128C 358C002C */  ori     $t4, $t4, 0x002C           ## $t4 = DB06002C
/* 03540 80AE1290 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 03544 80AE1294 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 03548 80AE1298 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 0354C 80AE129C 8FAD009C */  lw      $t5, 0x009C($sp)
/* 03550 80AE12A0 922E029D */  lbu     $t6, 0x029D($s1)           ## 0000029D
/* 03554 80AE12A4 91070002 */  lbu     $a3, 0x0002($t0)           ## 00000002
/* 03558 80AE12A8 91060001 */  lbu     $a2, 0x0001($t0)           ## 00000001
/* 0355C 80AE12AC 91050000 */  lbu     $a1, 0x0000($t0)           ## 00000000
/* 03560 80AE12B0 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 03564 80AE12B4 AFA2006C */  sw      $v0, 0x006C($sp)
/* 03568 80AE12B8 0C025474 */  jal     Gfx_EnvColor
/* 0356C 80AE12BC AFAE0010 */  sw      $t6, 0x0010($sp)
/* 03570 80AE12C0 8FA3006C */  lw      $v1, 0x006C($sp)
/* 03574 80AE12C4 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 03578 80AE12C8 3C198011 */  lui     $t9, %hi(D_80116280+0x10)
/* 0357C 80AE12CC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03580 80AE12D0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03584 80AE12D4 27396290 */  addiu   $t9, %lo(D_80116280+0x10)
/* 03588 80AE12D8 37180030 */  ori     $t8, $t8, 0x0030           ## $t8 = DB060030
/* 0358C 80AE12DC 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 03590 80AE12E0 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 03594 80AE12E4 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 03598 80AE12E8 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0359C 80AE12EC 9227014E */  lbu     $a3, 0x014E($s1)           ## 0000014E
/* 035A0 80AE12F0 8E26016C */  lw      $a2, 0x016C($s1)           ## 0000016C
/* 035A4 80AE12F4 8E250150 */  lw      $a1, 0x0150($s1)           ## 00000150
/* 035A8 80AE12F8 3C0A80AE */  lui     $t2, %hi(func_80AE0BF8)    ## $t2 = 80AE0000
/* 035AC 80AE12FC 3C0B80AE */  lui     $t3, %hi(func_80AE0CE8)    ## $t3 = 80AE0000
/* 035B0 80AE1300 256B0CE8 */  addiu   $t3, $t3, %lo(func_80AE0CE8) ## $t3 = 80AE0CE8
/* 035B4 80AE1304 254A0BF8 */  addiu   $t2, $t2, %lo(func_80AE0BF8) ## $t2 = 80AE0BF8
/* 035B8 80AE1308 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 035BC 80AE130C AFAB0014 */  sw      $t3, 0x0014($sp)
/* 035C0 80AE1310 AFB10018 */  sw      $s1, 0x0018($sp)
/* 035C4 80AE1314 8E0C02C0 */  lw      $t4, 0x02C0($s0)           ## 000002C0
/* 035C8 80AE1318 8FA4009C */  lw      $a0, 0x009C($sp)
/* 035CC 80AE131C 0C0289CF */  jal     SkelAnime_DrawSV2
/* 035D0 80AE1320 AFAC001C */  sw      $t4, 0x001C($sp)
/* 035D4 80AE1324 10000058 */  beq     $zero, $zero, .L80AE1488
/* 035D8 80AE1328 AE0202C0 */  sw      $v0, 0x02C0($s0)           ## 000002C0
.L80AE132C:
/* 035DC 80AE132C 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 035E0 80AE1330 0C024F46 */  jal     func_80093D18
/* 035E4 80AE1334 AFA8008C */  sw      $t0, 0x008C($sp)
/* 035E8 80AE1338 8FAE009C */  lw      $t6, 0x009C($sp)
/* 035EC 80AE133C 0C024F61 */  jal     func_80093D84
/* 035F0 80AE1340 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 035F4 80AE1344 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 035F8 80AE1348 8FA8008C */  lw      $t0, 0x008C($sp)
/* 035FC 80AE134C 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 03600 80AE1350 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 03604 80AE1354 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 03608 80AE1358 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 0360C 80AE135C AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 03610 80AE1360 8FB9009C */  lw      $t9, 0x009C($sp)
/* 03614 80AE1364 922A029D */  lbu     $t2, 0x029D($s1)           ## 0000029D
/* 03618 80AE1368 9227029C */  lbu     $a3, 0x029C($s1)           ## 0000029C
/* 0361C 80AE136C 9226029B */  lbu     $a2, 0x029B($s1)           ## 0000029B
/* 03620 80AE1370 9225029A */  lbu     $a1, 0x029A($s1)           ## 0000029A
/* 03624 80AE1374 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 03628 80AE1378 AFA20064 */  sw      $v0, 0x0064($sp)
/* 0362C 80AE137C AFA8008C */  sw      $t0, 0x008C($sp)
/* 03630 80AE1380 0C025474 */  jal     Gfx_EnvColor
/* 03634 80AE1384 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 03638 80AE1388 8FA30064 */  lw      $v1, 0x0064($sp)
/* 0363C 80AE138C 8FA8008C */  lw      $t0, 0x008C($sp)
/* 03640 80AE1390 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 03644 80AE1394 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03648 80AE1398 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0364C 80AE139C 358C0028 */  ori     $t4, $t4, 0x0028           ## $t4 = DB060028
/* 03650 80AE13A0 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 03654 80AE13A4 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 03658 80AE13A8 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 0365C 80AE13AC 8FAE0090 */  lw      $t6, 0x0090($sp)
/* 03660 80AE13B0 8FAD009C */  lw      $t5, 0x009C($sp)
/* 03664 80AE13B4 922F029D */  lbu     $t7, 0x029D($s1)           ## 0000029D
/* 03668 80AE13B8 91C50000 */  lbu     $a1, 0x0000($t6)           ## 00000000
/* 0366C 80AE13BC 91C60001 */  lbu     $a2, 0x0001($t6)           ## 00000001
/* 03670 80AE13C0 91C70002 */  lbu     $a3, 0x0002($t6)           ## 00000002
/* 03674 80AE13C4 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 03678 80AE13C8 AFA8008C */  sw      $t0, 0x008C($sp)
/* 0367C 80AE13CC AFA20060 */  sw      $v0, 0x0060($sp)
/* 03680 80AE13D0 0C025474 */  jal     Gfx_EnvColor
/* 03684 80AE13D4 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 03688 80AE13D8 8FA30060 */  lw      $v1, 0x0060($sp)
/* 0368C 80AE13DC 8FA8008C */  lw      $t0, 0x008C($sp)
/* 03690 80AE13E0 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 03694 80AE13E4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03698 80AE13E8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0369C 80AE13EC 3739002C */  ori     $t9, $t9, 0x002C           ## $t9 = DB06002C
/* 036A0 80AE13F0 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 036A4 80AE13F4 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 036A8 80AE13F8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 036AC 80AE13FC 8FAA009C */  lw      $t2, 0x009C($sp)
/* 036B0 80AE1400 922B029D */  lbu     $t3, 0x029D($s1)           ## 0000029D
/* 036B4 80AE1404 91070002 */  lbu     $a3, 0x0002($t0)           ## 00000002
/* 036B8 80AE1408 91060001 */  lbu     $a2, 0x0001($t0)           ## 00000001
/* 036BC 80AE140C 91050000 */  lbu     $a1, 0x0000($t0)           ## 00000000
/* 036C0 80AE1410 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 036C4 80AE1414 AFA2005C */  sw      $v0, 0x005C($sp)
/* 036C8 80AE1418 0C025474 */  jal     Gfx_EnvColor
/* 036CC 80AE141C AFAB0010 */  sw      $t3, 0x0010($sp)
/* 036D0 80AE1420 8FA3005C */  lw      $v1, 0x005C($sp)
/* 036D4 80AE1424 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 036D8 80AE1428 3C0E8011 */  lui     $t6, %hi(D_80116280)
/* 036DC 80AE142C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 036E0 80AE1430 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 036E4 80AE1434 25CE6280 */  addiu   $t6, %lo(D_80116280)
/* 036E8 80AE1438 35AD0030 */  ori     $t5, $t5, 0x0030           ## $t5 = DB060030
/* 036EC 80AE143C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 036F0 80AE1440 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 036F4 80AE1444 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 036F8 80AE1448 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 036FC 80AE144C 9227014E */  lbu     $a3, 0x014E($s1)           ## 0000014E
/* 03700 80AE1450 8E26016C */  lw      $a2, 0x016C($s1)           ## 0000016C
/* 03704 80AE1454 8E250150 */  lw      $a1, 0x0150($s1)           ## 00000150
/* 03708 80AE1458 3C0F80AE */  lui     $t7, %hi(func_80AE0BF8)    ## $t7 = 80AE0000
/* 0370C 80AE145C 3C1880AE */  lui     $t8, %hi(func_80AE0CE8)    ## $t8 = 80AE0000
/* 03710 80AE1460 27180CE8 */  addiu   $t8, $t8, %lo(func_80AE0CE8) ## $t8 = 80AE0CE8
/* 03714 80AE1464 25EF0BF8 */  addiu   $t7, $t7, %lo(func_80AE0BF8) ## $t7 = 80AE0BF8
/* 03718 80AE1468 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 0371C 80AE146C AFB80014 */  sw      $t8, 0x0014($sp)
/* 03720 80AE1470 AFB10018 */  sw      $s1, 0x0018($sp)
/* 03724 80AE1474 8E1902D0 */  lw      $t9, 0x02D0($s0)           ## 000002D0
/* 03728 80AE1478 8FA4009C */  lw      $a0, 0x009C($sp)
/* 0372C 80AE147C 0C0289CF */  jal     SkelAnime_DrawSV2
/* 03730 80AE1480 AFB9001C */  sw      $t9, 0x001C($sp)
/* 03734 80AE1484 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
.L80AE1488:
/* 03738 80AE1488 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0373C 80AE148C 3C0BE700 */  lui     $t3, 0xE700                ## $t3 = E7000000
/* 03740 80AE1490 3C0DFB00 */  lui     $t5, 0xFB00                ## $t5 = FB000000
/* 03744 80AE1494 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 03748 80AE1498 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 0374C 80AE149C AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 03750 80AE14A0 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 03754 80AE14A4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03758 80AE14A8 26240368 */  addiu   $a0, $s1, 0x0368           ## $a0 = 00000368
/* 0375C 80AE14AC 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 03760 80AE14B0 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 03764 80AE14B4 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 03768 80AE14B8 922F029E */  lbu     $t7, 0x029E($s1)           ## 0000029E
/* 0376C 80AE14BC 922A029F */  lbu     $t2, 0x029F($s1)           ## 0000029F
/* 03770 80AE14C0 922E02A0 */  lbu     $t6, 0x02A0($s1)           ## 000002A0
/* 03774 80AE14C4 000FC600 */  sll     $t8, $t7, 24
/* 03778 80AE14C8 000A5C00 */  sll     $t3, $t2, 16
/* 0377C 80AE14CC 030B6025 */  or      $t4, $t8, $t3              ## $t4 = E7000000
/* 03780 80AE14D0 000E7A00 */  sll     $t7, $t6,  8
/* 03784 80AE14D4 018FC825 */  or      $t9, $t4, $t7              ## $t9 = E7000000
/* 03788 80AE14D8 372A00FF */  ori     $t2, $t9, 0x00FF           ## $t2 = E70000FF
/* 0378C 80AE14DC 0C03423F */  jal     Matrix_Put
/* 03790 80AE14E0 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 03794 80AE14E4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03798 80AE14E8 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 0379C 80AE14EC 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 037A0 80AE14F0 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 037A4 80AE14F4 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 037A8 80AE14F8 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 037AC 80AE14FC 8FAD009C */  lw      $t5, 0x009C($sp)
/* 037B0 80AE1500 3C0580AE */  lui     $a1, %hi(D_80AE1BD0)       ## $a1 = 80AE0000
/* 037B4 80AE1504 24A51BD0 */  addiu   $a1, $a1, %lo(D_80AE1BD0)  ## $a1 = 80AE1BD0
/* 037B8 80AE1508 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 037BC 80AE150C 24060AE3 */  addiu   $a2, $zero, 0x0AE3         ## $a2 = 00000AE3
/* 037C0 80AE1510 0C0346A2 */  jal     Matrix_NewMtx
/* 037C4 80AE1514 AFA2004C */  sw      $v0, 0x004C($sp)
/* 037C8 80AE1518 8FA3004C */  lw      $v1, 0x004C($sp)
/* 037CC 80AE151C 3C04DE00 */  lui     $a0, 0xDE00                ## $a0 = DE000000
/* 037D0 80AE1520 3C0A0600 */  lui     $t2, 0x0600                ## $t2 = 06000000
/* 037D4 80AE1524 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 037D8 80AE1528 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 037DC 80AE152C 254A4498 */  addiu   $t2, $t2, 0x4498           ## $t2 = 06004498
/* 037E0 80AE1530 3C0BE700 */  lui     $t3, 0xE700                ## $t3 = E7000000
/* 037E4 80AE1534 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 037E8 80AE1538 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 037EC 80AE153C AC440000 */  sw      $a0, 0x0000($v0)           ## 00000000
/* 037F0 80AE1540 8E2C02A4 */  lw      $t4, 0x02A4($s1)           ## 000002A4
/* 037F4 80AE1544 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 037F8 80AE1548 3C0680AE */  lui     $a2, %hi(D_80AE1BE0)       ## $a2 = 80AE0000
/* 037FC 80AE154C 8D8F001C */  lw      $t7, 0x001C($t4)           ## 0000001C
/* 03800 80AE1550 24C61BE0 */  addiu   $a2, $a2, %lo(D_80AE1BE0)  ## $a2 = 80AE1BE0
/* 03804 80AE1554 24070AF2 */  addiu   $a3, $zero, 0x0AF2         ## $a3 = 00000AF2
/* 03808 80AE1558 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 0380C 80AE155C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03810 80AE1560 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 03814 80AE1564 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 03818 80AE1568 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 0381C 80AE156C AC440000 */  sw      $a0, 0x0000($v0)           ## 00000000
/* 03820 80AE1570 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03824 80AE1574 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 03828 80AE1578 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 0382C 80AE157C AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 03830 80AE1580 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 03834 80AE1584 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03838 80AE1588 8FA50090 */  lw      $a1, 0x0090($sp)
/* 0383C 80AE158C 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 03840 80AE1590 AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 03844 80AE1594 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 03848 80AE1598 90AF0000 */  lbu     $t7, 0x0000($a1)           ## 00000000
/* 0384C 80AE159C 90B80001 */  lbu     $t8, 0x0001($a1)           ## 00000001
/* 03850 80AE15A0 90AC0002 */  lbu     $t4, 0x0002($a1)           ## 00000002
/* 03854 80AE15A4 000FCE00 */  sll     $t9, $t7, 24
/* 03858 80AE15A8 00185C00 */  sll     $t3, $t8, 16
/* 0385C 80AE15AC 032B6825 */  or      $t5, $t9, $t3              ## $t5 = E7000008
/* 03860 80AE15B0 000C7A00 */  sll     $t7, $t4,  8
/* 03864 80AE15B4 01AF5025 */  or      $t2, $t5, $t7              ## $t2 = E7000008
/* 03868 80AE15B8 355800FF */  ori     $t8, $t2, 0x00FF           ## $t8 = E70000FF
/* 0386C 80AE15BC AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 03870 80AE15C0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03874 80AE15C4 3C0B0600 */  lui     $t3, 0x0600                ## $t3 = 06000000
/* 03878 80AE15C8 256B4530 */  addiu   $t3, $t3, 0x4530           ## $t3 = 06004530
/* 0387C 80AE15CC 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 03880 80AE15D0 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 03884 80AE15D4 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 03888 80AE15D8 AC440000 */  sw      $a0, 0x0000($v0)           ## 00000000
/* 0388C 80AE15DC 8FAE009C */  lw      $t6, 0x009C($sp)
/* 03890 80AE15E0 27A40078 */  addiu   $a0, $sp, 0x0078           ## $a0 = FFFFFFE0
/* 03894 80AE15E4 0C031AD5 */  jal     Graph_CloseDisps
/* 03898 80AE15E8 8DC50000 */  lw      $a1, 0x0000($t6)           ## FB000000
/* 0389C 80AE15EC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 038A0 80AE15F0 8FB00024 */  lw      $s0, 0x0024($sp)
/* 038A4 80AE15F4 8FB10028 */  lw      $s1, 0x0028($sp)
/* 038A8 80AE15F8 03E00008 */  jr      $ra
/* 038AC 80AE15FC 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
