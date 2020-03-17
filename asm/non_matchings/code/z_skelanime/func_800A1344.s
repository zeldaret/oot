.rdata
glabel D_801400C8
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801400DC
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801400F0
    .asciz "../z_skelanime.c"
    .balign 4

.text
glabel func_800A1344
/* B184E4 800A1344 27BDFF98 */  addiu $sp, $sp, -0x68
/* B184E8 800A1348 AFBF0024 */  sw    $ra, 0x24($sp)
/* B184EC 800A134C AFA40068 */  sw    $a0, 0x68($sp)
/* B184F0 800A1350 AFA5006C */  sw    $a1, 0x6c($sp)
/* B184F4 800A1354 AFA60070 */  sw    $a2, 0x70($sp)
/* B184F8 800A1358 AFA70074 */  sw    $a3, 0x74($sp)
/* B184FC 800A135C 8C850000 */  lw    $a1, ($a0)
/* B18500 800A1360 3C068014 */  lui   $a2, %hi(D_801400C8) # $a2, 0x8014
/* B18504 800A1364 24C600C8 */  addiu $a2, %lo(D_801400C8) # addiu $a2, $a2, 0xc8
/* B18508 800A1368 27A40038 */  addiu $a0, $sp, 0x38
/* B1850C 800A136C 24070434 */  li    $a3, 1076
/* B18510 800A1370 0C031AB1 */  jal   func_800C6AC4
/* B18514 800A1374 AFA50048 */   sw    $a1, 0x48($sp)
/* B18518 800A1378 0C034213 */  jal   Matrix_Push
/* B1851C 800A137C 00000000 */   nop   
/* B18520 800A1380 8FB8006C */  lw    $t8, 0x6c($sp)
/* B18524 800A1384 8FAF0070 */  lw    $t7, 0x70($sp)
/* B18528 800A1388 3C0E8016 */  lui   $t6, %hi(gSegments)
/* B1852C 800A138C 0018C880 */  sll   $t9, $t8, 2
/* B18530 800A1390 01F94821 */  addu  $t1, $t7, $t9
/* B18534 800A1394 8D220000 */  lw    $v0, ($t1)
/* B18538 800A1398 270F0001 */  addiu $t7, $t8, 1
/* B1853C 800A139C 8FA90074 */  lw    $t1, 0x74($sp)
/* B18540 800A13A0 00025900 */  sll   $t3, $v0, 4
/* B18544 800A13A4 000B6702 */  srl   $t4, $t3, 0x1c
/* B18548 800A13A8 000C6880 */  sll   $t5, $t4, 2
/* B1854C 800A13AC 01CD7021 */  addu  $t6, $t6, $t5
/* B18550 800A13B0 8DCE6FA8 */  lw    $t6, %lo(gSegments)($t6)
/* B18554 800A13B4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B18558 800A13B8 000F5880 */  sll   $t3, $t7, 2
/* B1855C 800A13BC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B18560 800A13C0 016F5823 */  subu  $t3, $t3, $t7
/* B18564 800A13C4 000B5840 */  sll   $t3, $t3, 1
/* B18568 800A13C8 00415024 */  and   $t2, $v0, $at
/* B1856C 800A13CC AFAF006C */  sw    $t7, 0x6c($sp)
/* B18570 800A13D0 012B6021 */  addu  $t4, $t1, $t3
/* B18574 800A13D4 014E4021 */  addu  $t0, $t2, $t6
/* B18578 800A13D8 898A0000 */  lwl   $t2, ($t4)
/* B1857C 800A13DC 998A0003 */  lwr   $t2, 3($t4)
/* B18580 800A13E0 27B9004C */  addiu $t9, $sp, 0x4c
/* B18584 800A13E4 3C018000 */  lui   $at, 0x8000
/* B18588 800A13E8 AF2A0000 */  sw    $t2, ($t9)
/* B1858C 800A13EC 958A0004 */  lhu   $t2, 4($t4)
/* B18590 800A13F0 01014021 */  addu  $t0, $t0, $at
/* B18594 800A13F4 27A60060 */  addiu $a2, $sp, 0x60
/* B18598 800A13F8 A72A0004 */  sh    $t2, 4($t9)
/* B1859C 800A13FC 850E0000 */  lh    $t6, ($t0)
/* B185A0 800A1400 8FAB0078 */  lw    $t3, 0x78($sp)
/* B185A4 800A1404 8FA5006C */  lw    $a1, 0x6c($sp)
/* B185A8 800A1408 448E2000 */  mtc1  $t6, $f4
/* B185AC 800A140C 8FA40068 */  lw    $a0, 0x68($sp)
/* B185B0 800A1410 27B9004C */  addiu $t9, $sp, 0x4c
/* B185B4 800A1414 468021A0 */  cvt.s.w $f6, $f4
/* B185B8 800A1418 27A70054 */  addiu $a3, $sp, 0x54
/* B185BC 800A141C E7A60054 */  swc1  $f6, 0x54($sp)
/* B185C0 800A1420 85180002 */  lh    $t8, 2($t0)
/* B185C4 800A1424 44984000 */  mtc1  $t8, $f8
/* B185C8 800A1428 00000000 */  nop   
/* B185CC 800A142C 468042A0 */  cvt.s.w $f10, $f8
/* B185D0 800A1430 E7AA0058 */  swc1  $f10, 0x58($sp)
/* B185D4 800A1434 850F0004 */  lh    $t7, 4($t0)
/* B185D8 800A1438 448F8000 */  mtc1  $t7, $f16
/* B185DC 800A143C 00000000 */  nop   
/* B185E0 800A1440 468084A0 */  cvt.s.w $f18, $f16
/* B185E4 800A1444 E7B2005C */  swc1  $f18, 0x5c($sp)
/* B185E8 800A1448 8D090008 */  lw    $t1, 8($t0)
/* B185EC 800A144C 11600008 */  beqz  $t3, .L800A1470
/* B185F0 800A1450 AFA90060 */   sw    $t1, 0x60($sp)
/* B185F4 800A1454 8FAC0080 */  lw    $t4, 0x80($sp)
/* B185F8 800A1458 AFB90010 */  sw    $t9, 0x10($sp)
/* B185FC 800A145C AFA80064 */  sw    $t0, 0x64($sp)
/* B18600 800A1460 0160F809 */  jalr  $t3
/* B18604 800A1464 AFAC0014 */  sw    $t4, 0x14($sp)
/* B18608 800A1468 14400022 */  bnez  $v0, .L800A14F4
/* B1860C 800A146C 8FA80064 */   lw    $t0, 0x64($sp)
.L800A1470:
/* B18610 800A1470 27A40054 */  addiu $a0, $sp, 0x54
/* B18614 800A1474 27A5004C */  addiu $a1, $sp, 0x4c
/* B18618 800A1478 0C0344D0 */  jal   func_800D1340
/* B1861C 800A147C AFA80064 */   sw    $t0, 0x64($sp)
/* B18620 800A1480 8FAD0060 */  lw    $t5, 0x60($sp)
/* B18624 800A1484 8FA80064 */  lw    $t0, 0x64($sp)
/* B18628 800A1488 8FA70048 */  lw    $a3, 0x48($sp)
/* B1862C 800A148C 11A00019 */  beqz  $t5, .L800A14F4
/* B18630 800A1490 3C0EDA38 */   lui   $t6, (0xDA380003 >> 16) # lui $t6, 0xda38
/* B18634 800A1494 8CE202C0 */  lw    $v0, 0x2c0($a3)
/* B18638 800A1498 35CE0003 */  ori   $t6, (0xDA380003 & 0xFFFF) # ori $t6, $t6, 3
/* B1863C 800A149C 3C058014 */  lui   $a1, %hi(D_801400DC) # $a1, 0x8014
/* B18640 800A14A0 244A0008 */  addiu $t2, $v0, 8
/* B18644 800A14A4 ACEA02C0 */  sw    $t2, 0x2c0($a3)
/* B18648 800A14A8 AC4E0000 */  sw    $t6, ($v0)
/* B1864C 800A14AC 8FB80068 */  lw    $t8, 0x68($sp)
/* B18650 800A14B0 24A500DC */  addiu $a1, %lo(D_801400DC) # addiu $a1, $a1, 0xdc
/* B18654 800A14B4 2406044F */  li    $a2, 1103
/* B18658 800A14B8 8F040000 */  lw    $a0, ($t8)
/* B1865C 800A14BC AFA80064 */  sw    $t0, 0x64($sp)
/* B18660 800A14C0 0C0346A2 */  jal   Matrix_NewMtx
/* B18664 800A14C4 AFA20034 */   sw    $v0, 0x34($sp)
/* B18668 800A14C8 8FA30034 */  lw    $v1, 0x34($sp)
/* B1866C 800A14CC 8FA80064 */  lw    $t0, 0x64($sp)
/* B18670 800A14D0 3C19DE00 */  lui   $t9, 0xde00
/* B18674 800A14D4 AC620004 */  sw    $v0, 4($v1)
/* B18678 800A14D8 8FAF0048 */  lw    $t7, 0x48($sp)
/* B1867C 800A14DC 8DE202C0 */  lw    $v0, 0x2c0($t7)
/* B18680 800A14E0 24490008 */  addiu $t1, $v0, 8
/* B18684 800A14E4 ADE902C0 */  sw    $t1, 0x2c0($t7)
/* B18688 800A14E8 AC590000 */  sw    $t9, ($v0)
/* B1868C 800A14EC 8FAC0060 */  lw    $t4, 0x60($sp)
/* B18690 800A14F0 AC4C0004 */  sw    $t4, 4($v0)
.L800A14F4:
/* B18694 800A14F4 8FAB007C */  lw    $t3, 0x7c($sp)
/* B18698 800A14F8 8FA40068 */  lw    $a0, 0x68($sp)
/* B1869C 800A14FC 8FA5006C */  lw    $a1, 0x6c($sp)
/* B186A0 800A1500 11600007 */  beqz  $t3, .L800A1520
/* B186A4 800A1504 27A60060 */   addiu $a2, $sp, 0x60
/* B186A8 800A1508 8FAD0080 */  lw    $t5, 0x80($sp)
/* B186AC 800A150C 27A7004C */  addiu $a3, $sp, 0x4c
/* B186B0 800A1510 AFA80064 */  sw    $t0, 0x64($sp)
/* B186B4 800A1514 0160F809 */  jalr  $t3
/* B186B8 800A1518 AFAD0010 */  sw    $t5, 0x10($sp)
/* B186BC 800A151C 8FA80064 */  lw    $t0, 0x64($sp)
.L800A1520:
/* B186C0 800A1520 91050006 */  lbu   $a1, 6($t0)
/* B186C4 800A1524 240100FF */  li    $at, 255
/* B186C8 800A1528 8FA40068 */  lw    $a0, 0x68($sp)
/* B186CC 800A152C 10A1000B */  beq   $a1, $at, .L800A155C
/* B186D0 800A1530 8FA60070 */   lw    $a2, 0x70($sp)
/* B186D4 800A1534 8FAA0078 */  lw    $t2, 0x78($sp)
/* B186D8 800A1538 8FAE007C */  lw    $t6, 0x7c($sp)
/* B186DC 800A153C 8FB80080 */  lw    $t8, 0x80($sp)
/* B186E0 800A1540 8FA70074 */  lw    $a3, 0x74($sp)
/* B186E4 800A1544 AFA80064 */  sw    $t0, 0x64($sp)
/* B186E8 800A1548 AFAA0010 */  sw    $t2, 0x10($sp)
/* B186EC 800A154C AFAE0014 */  sw    $t6, 0x14($sp)
/* B186F0 800A1550 0C0284D1 */  jal   func_800A1344
/* B186F4 800A1554 AFB80018 */   sw    $t8, 0x18($sp)
/* B186F8 800A1558 8FA80064 */  lw    $t0, 0x64($sp)
.L800A155C:
/* B186FC 800A155C 0C034221 */  jal   Matrix_Pull
/* B18700 800A1560 AFA80064 */   sw    $t0, 0x64($sp)
/* B18704 800A1564 8FA80064 */  lw    $t0, 0x64($sp)
/* B18708 800A1568 240100FF */  li    $at, 255
/* B1870C 800A156C 8FA40068 */  lw    $a0, 0x68($sp)
/* B18710 800A1570 91050007 */  lbu   $a1, 7($t0)
/* B18714 800A1574 8FA60070 */  lw    $a2, 0x70($sp)
/* B18718 800A1578 8FA70074 */  lw    $a3, 0x74($sp)
/* B1871C 800A157C 10A10007 */  beq   $a1, $at, .L800A159C
/* B18720 800A1580 8FA90078 */   lw    $t1, 0x78($sp)
/* B18724 800A1584 8FAF007C */  lw    $t7, 0x7c($sp)
/* B18728 800A1588 8FB90080 */  lw    $t9, 0x80($sp)
/* B1872C 800A158C AFA90010 */  sw    $t1, 0x10($sp)
/* B18730 800A1590 AFAF0014 */  sw    $t7, 0x14($sp)
/* B18734 800A1594 0C0284D1 */  jal   func_800A1344
/* B18738 800A1598 AFB90018 */   sw    $t9, 0x18($sp)
.L800A159C:
/* B1873C 800A159C 8FAC0068 */  lw    $t4, 0x68($sp)
/* B18740 800A15A0 3C068014 */  lui   $a2, %hi(D_801400F0) # $a2, 0x8014
/* B18744 800A15A4 24C600F0 */  addiu $a2, %lo(D_801400F0) # addiu $a2, $a2, 0xf0
/* B18748 800A15A8 27A40038 */  addiu $a0, $sp, 0x38
/* B1874C 800A15AC 24070461 */  li    $a3, 1121
/* B18750 800A15B0 0C031AD5 */  jal   func_800C6B54
/* B18754 800A15B4 8D850000 */   lw    $a1, ($t4)
/* B18758 800A15B8 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1875C 800A15BC 27BD0068 */  addiu $sp, $sp, 0x68
/* B18760 800A15C0 03E00008 */  jr    $ra
/* B18764 800A15C4 00000000 */   nop   

