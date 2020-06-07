.rdata
glabel D_80139BB4
    .asciz "+=+(%d)+=+ recive request -> %s\n"
    .balign 4

glabel D_80139BD8
    .asciz "camera: error sound\n"
    .balign 4

glabel D_80139BF0
    .asciz "\x1B[43;30mcamera: change camera mode: force NORMAL: %s %s refused\n\x1B[m"
    .balign 4

.late_rodata
glabel jtbl_8013A450
    .word L8005A28C # 1
    .word L8005A268 # 2
    .word L8005A28C # 3
    .word L8005A260 # 4
    .word L8005A290
    .word L8005A258 # 6
    .word L8005A290
    .word L8005A28C # 8
    .word L8005A290
    .word L8005A290
    .word L8005A290
    .word L8005A290
    .word L8005A290
    .word L8005A290
    .word L8005A28C # 15
    .word L8005A290
    .word L8005A290
    .word L8005A290
    .word L8005A28C # 19

glabel jtbl_8013A49C
    .word L8005A320 # 0
    .word L8005A2C8 # 1
    .word L8005A2E8 # 2
    .word L8005A330
    .word L8005A300 # 4
    .word L8005A330
    .word L8005A2B4 # 6
    .word L8005A330
    .word L8005A318 # 8
    .word L8005A330
    .word L8005A330
    .word L8005A330
    .word L8005A330
    .word L8005A330
    .word L8005A330
    .word L8005A318 # 15
    .word L8005A330
    .word L8005A2E0 # 17
    .word L8005A330
    .word L8005A318 # 19

.text
glabel Camera_ChangeMode
/* AD11EC 8005A04C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD11F0 8005A050 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AD11F4 8005A054 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AD11F8 8005A058 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD11FC 8005A05C AFA5001C */  sw    $a1, 0x1c($sp)
/* AD1200 8005A060 AFA60020 */  sw    $a2, 0x20($sp)
/* AD1204 8005A064 85CF03C6 */  lh    $t7, 0x3c6($t6)
/* AD1208 8005A068 00803825 */  move  $a3, $a0
/* AD120C 8005A06C 3C048014 */  lui   $a0, %hi(D_80139BB4) # $a0, 0x8014
/* AD1210 8005A070 11E0000D */  beqz  $t7, .L8005A0A8
/* AD1214 8005A074 24849BB4 */   addiu $a0, %lo(D_80139BB4) # addiu $a0, $a0, -0x644c
/* AD1218 8005A078 87B9001E */  lh    $t9, 0x1e($sp)
/* AD121C 8005A07C 8CF8008C */  lw    $t8, 0x8c($a3)
/* AD1220 8005A080 3C098012 */  lui   $t1, %hi(sCameraModeNames) # $t1, 0x8012
/* AD1224 8005A084 00194080 */  sll   $t0, $t9, 2
/* AD1228 8005A088 01194023 */  subu  $t0, $t0, $t9
/* AD122C 8005A08C 00084080 */  sll   $t0, $t0, 2
/* AD1230 8005A090 2529A2A4 */  addiu $t1, %lo(sCameraModeNames) # addiu $t1, $t1, -0x5d5c
/* AD1234 8005A094 8F05009C */  lw    $a1, 0x9c($t8)
/* AD1238 8005A098 AFA70018 */  sw    $a3, 0x18($sp)
/* AD123C 8005A09C 0C00084C */  jal   osSyncPrintf
/* AD1240 8005A0A0 01093021 */   addu  $a2, $t0, $t1
/* AD1244 8005A0A4 8FA70018 */  lw    $a3, 0x18($sp)
.L8005A0A8:
/* AD1248 8005A0A8 84EA014C */  lh    $t2, 0x14c($a3)
/* AD124C 8005A0AC 93AC0023 */  lbu   $t4, 0x23($sp)
/* AD1250 8005A0B0 3C198012 */  lui   $t9, %hi(sCameraSettings)
/* AD1254 8005A0B4 314B0020 */  andi  $t3, $t2, 0x20
/* AD1258 8005A0B8 11600008 */  beqz  $t3, .L8005A0DC
/* AD125C 8005A0BC 3C013FFF */   lui   $at, (0x3FFFFFFF >> 16) # lui $at, 0x3fff
/* AD1260 8005A0C0 55800007 */  bnezl $t4, .L8005A0E0
/* AD1264 8005A0C4 84EF0142 */   lh    $t7, 0x142($a3)
/* AD1268 8005A0C8 84ED014A */  lh    $t5, 0x14a($a3)
/* AD126C 8005A0CC 2402FFFF */  li    $v0, -1
/* AD1270 8005A0D0 35AE0020 */  ori   $t6, $t5, 0x20
/* AD1274 8005A0D4 100000D7 */  b     .L8005A434
/* AD1278 8005A0D8 A4EE014A */   sh    $t6, 0x14a($a3)
.L8005A0DC:
/* AD127C 8005A0DC 84EF0142 */  lh    $t7, 0x142($a3)
.L8005A0E0:
/* AD1280 8005A0E0 87A9001E */  lh    $t1, 0x1e($sp)
/* AD1284 8005A0E4 3421FFFF */  ori   $at, (0x3FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* AD1288 8005A0E8 000FC0C0 */  sll   $t8, $t7, 3
/* AD128C 8005A0EC 0338C821 */  addu  $t9, $t9, $t8
/* AD1290 8005A0F0 8F39D064 */  lw    $t9, %lo(sCameraSettings)($t9)
/* AD1294 8005A0F4 240A0001 */  li    $t2, 1
/* AD1298 8005A0F8 012A5804 */  sllv  $t3, $t2, $t1
/* AD129C 8005A0FC 03214024 */  and   $t0, $t9, $at
/* AD12A0 8005A100 010B6024 */  and   $t4, $t0, $t3
/* AD12A4 8005A104 15800030 */  bnez  $t4, .L8005A1C8
/* AD12A8 8005A108 87AE001E */   lh    $t6, 0x1e($sp)
/* AD12AC 8005A10C 24010006 */  li    $at, 6
/* AD12B0 8005A110 15210007 */  bne   $t1, $at, .L8005A130
/* AD12B4 8005A114 3C048014 */   lui   $a0, %hi(D_80139BD8) # $a0, 0x8014
/* AD12B8 8005A118 24849BD8 */  addiu $a0, %lo(D_80139BD8) # addiu $a0, $a0, -0x6428
/* AD12BC 8005A11C 0C00084C */  jal   osSyncPrintf
/* AD12C0 8005A120 AFA70018 */   sw    $a3, 0x18($sp)
/* AD12C4 8005A124 0C01E221 */  jal   func_80078884
/* AD12C8 8005A128 24044806 */   li    $a0, 18438
/* AD12CC 8005A12C 8FA70018 */  lw    $a3, 0x18($sp)
.L8005A130:
/* AD12D0 8005A130 84ED0144 */  lh    $t5, 0x144($a3)
/* AD12D4 8005A134 3C048014 */  lui   $a0, %hi(D_80139BF0) # $a0, 0x8014
/* AD12D8 8005A138 24849BF0 */  addiu $a0, %lo(D_80139BF0) # addiu $a0, $a0, -0x6410
/* AD12DC 8005A13C 11A0001A */  beqz  $t5, .L8005A1A8
/* AD12E0 8005A140 3C188012 */   lui   $t8, %hi(sCameraSettingNames) # $t8, 0x8012
/* AD12E4 8005A144 84EE0142 */  lh    $t6, 0x142($a3)
/* AD12E8 8005A148 87B9001E */  lh    $t9, 0x1e($sp)
/* AD12EC 8005A14C 3C088012 */  lui   $t0, %hi(sCameraModeNames) # $t0, 0x8012
/* AD12F0 8005A150 000E7880 */  sll   $t7, $t6, 2
/* AD12F4 8005A154 00195080 */  sll   $t2, $t9, 2
/* AD12F8 8005A158 01EE7823 */  subu  $t7, $t7, $t6
/* AD12FC 8005A15C 01595023 */  subu  $t2, $t2, $t9
/* AD1300 8005A160 000A5080 */  sll   $t2, $t2, 2
/* AD1304 8005A164 000F7880 */  sll   $t7, $t7, 2
/* AD1308 8005A168 2508A2A4 */  addiu $t0, %lo(sCameraModeNames) # addiu $t0, $t0, -0x5d5c
/* AD130C 8005A16C 27189F8C */  addiu $t8, %lo(sCameraSettingNames) # addiu $t8, $t8, -0x6074
/* AD1310 8005A170 01F82821 */  addu  $a1, $t7, $t8
/* AD1314 8005A174 01483021 */  addu  $a2, $t2, $t0
/* AD1318 8005A178 0C00084C */  jal   osSyncPrintf
/* AD131C 8005A17C AFA70018 */   sw    $a3, 0x18($sp)
/* AD1320 8005A180 8FA40018 */  lw    $a0, 0x18($sp)
/* AD1324 8005A184 A4800144 */  sh    $zero, 0x144($a0)
/* AD1328 8005A188 0C01144A */  jal   Camera_CopyModeValuesToPREG
/* AD132C 8005A18C 84850144 */   lh    $a1, 0x144($a0)
/* AD1330 8005A190 0C01680B */  jal   func_8005A02C
/* AD1334 8005A194 8FA40018 */   lw    $a0, 0x18($sp)
/* AD1338 8005A198 87A2001E */  lh    $v0, 0x1e($sp)
/* AD133C 8005A19C 3C01C000 */  lui   $at, 0xc000
/* AD1340 8005A1A0 100000A4 */  b     .L8005A434
/* AD1344 8005A1A4 00411025 */   or    $v0, $v0, $at
.L8005A1A8:
/* AD1348 8005A1A8 84EB014A */  lh    $t3, 0x14a($a3)
/* AD134C 8005A1AC 00001025 */  move  $v0, $zero
/* AD1350 8005A1B0 356C0020 */  ori   $t4, $t3, 0x20
/* AD1354 8005A1B4 A4EC014A */  sh    $t4, 0x14a($a3)
/* AD1358 8005A1B8 84E9014A */  lh    $t1, 0x14a($a3)
/* AD135C 8005A1BC 352D0002 */  ori   $t5, $t1, 2
/* AD1360 8005A1C0 1000009C */  b     .L8005A434
/* AD1364 8005A1C4 A4ED014A */   sh    $t5, 0x14a($a3)
.L8005A1C8:
/* AD1368 8005A1C8 84EF0144 */  lh    $t7, 0x144($a3)
/* AD136C 8005A1CC 93B80023 */  lbu   $t8, 0x23($sp)
/* AD1370 8005A1D0 55CF000C */  bnel  $t6, $t7, .L8005A204
/* AD1374 8005A1D4 84EC014A */   lh    $t4, 0x14a($a3)
/* AD1378 8005A1D8 5700000A */  bnezl $t8, .L8005A204
/* AD137C 8005A1DC 84EC014A */   lh    $t4, 0x14a($a3)
/* AD1380 8005A1E0 84F9014A */  lh    $t9, 0x14a($a3)
/* AD1384 8005A1E4 2402FFFF */  li    $v0, -1
/* AD1388 8005A1E8 372A0020 */  ori   $t2, $t9, 0x20
/* AD138C 8005A1EC A4EA014A */  sh    $t2, 0x14a($a3)
/* AD1390 8005A1F0 84E8014A */  lh    $t0, 0x14a($a3)
/* AD1394 8005A1F4 350B0002 */  ori   $t3, $t0, 2
/* AD1398 8005A1F8 1000008E */  b     .L8005A434
/* AD139C 8005A1FC A4EB014A */   sh    $t3, 0x14a($a3)
/* AD13A0 8005A200 84EC014A */  lh    $t4, 0x14a($a3)
.L8005A204:
/* AD13A4 8005A204 00E02025 */  move  $a0, $a3
/* AD13A8 8005A208 35890020 */  ori   $t1, $t4, 0x20
/* AD13AC 8005A20C A4E9014A */  sh    $t1, 0x14a($a3)
/* AD13B0 8005A210 84ED014A */  lh    $t5, 0x14a($a3)
/* AD13B4 8005A214 35AE0002 */  ori   $t6, $t5, 2
/* AD13B8 8005A218 A4EE014A */  sh    $t6, 0x14a($a3)
/* AD13BC 8005A21C AFA70018 */  sw    $a3, 0x18($sp)
/* AD13C0 8005A220 0C01144A */  jal   Camera_CopyModeValuesToPREG
/* AD13C4 8005A224 87A5001E */   lh    $a1, 0x1e($sp)
/* AD13C8 8005A228 87AF001E */  lh    $t7, 0x1e($sp)
/* AD13CC 8005A22C 8FA70018 */  lw    $a3, 0x18($sp)
/* AD13D0 8005A230 00001025 */  move  $v0, $zero
/* AD13D4 8005A234 25F8FFFF */  addiu $t8, $t7, -1
/* AD13D8 8005A238 2F010013 */  sltiu $at, $t8, 0x13
/* AD13DC 8005A23C 10200014 */  beqz  $at, .L8005A290
/* AD13E0 8005A240 0018C080 */   sll   $t8, $t8, 2
/* AD13E4 8005A244 3C018014 */  lui   $at, %hi(jtbl_8013A450)
/* AD13E8 8005A248 00380821 */  addu  $at, $at, $t8
/* AD13EC 8005A24C 8C38A450 */  lw    $t8, %lo(jtbl_8013A450)($at)
/* AD13F0 8005A250 03000008 */  jr    $t8
/* AD13F4 8005A254 00000000 */   nop

glabel L8005A258
/* AD13F8 8005A258 1000000D */  b     .L8005A290
/* AD13FC 8005A25C 24020020 */   li    $v0, 32

glabel L8005A260
/* AD1400 8005A260 1000000B */  b     .L8005A290
/* AD1404 8005A264 24020004 */   li    $v0, 4

glabel L8005A268
/* AD1408 8005A268 8CE300A8 */  lw    $v1, 0xa8($a3)
/* AD140C 8005A26C 50600009 */  beql  $v1, $zero, .L8005A294
/* AD1410 8005A270 94EA0144 */   lhu   $t2, 0x144($a3)
/* AD1414 8005A274 84790000 */  lh    $t9, ($v1)
/* AD1418 8005A278 24010032 */  li    $at, 50
/* AD141C 8005A27C 53210005 */  beql  $t9, $at, .L8005A294
/* AD1420 8005A280 94EA0144 */   lhu   $t2, 0x144($a3)
/* AD1424 8005A284 10000002 */  b     .L8005A290
/* AD1428 8005A288 24020008 */   li    $v0, 8

glabel L8005A28C
/* AD142C 8005A28C 24020002 */  li    $v0, 2

.L8005A290:
glabel L8005A290
/* AD1430 8005A290 94EA0144 */  lhu   $t2, 0x144($a3)
.L8005A294:
/* AD1434 8005A294 2D410014 */  sltiu $at, $t2, 0x14
/* AD1438 8005A298 10200025 */  beqz  $at, .L8005A330
/* AD143C 8005A29C 000A5080 */   sll   $t2, $t2, 2
/* AD1440 8005A2A0 3C018014 */  lui   $at, %hi(jtbl_8013A49C)
/* AD1444 8005A2A4 002A0821 */  addu  $at, $at, $t2
/* AD1448 8005A2A8 8C2AA49C */  lw    $t2, %lo(jtbl_8013A49C)($at)
/* AD144C 8005A2AC 01400008 */  jr    $t2
/* AD1450 8005A2B0 00000000 */   nop

glabel L8005A2B4
/* AD1454 8005A2B4 30480020 */  andi  $t0, $v0, 0x20
/* AD1458 8005A2B8 1100001D */  beqz  $t0, .L8005A330
/* AD145C 8005A2BC 240B000A */   li    $t3, 10
/* AD1460 8005A2C0 1000001B */  b     .L8005A330
/* AD1464 8005A2C4 A4EB015E */   sh    $t3, 0x15e($a3)

glabel L8005A2C8
/* AD1468 8005A2C8 304C0010 */  andi  $t4, $v0, 0x10
/* AD146C 8005A2CC 11800002 */  beqz  $t4, .L8005A2D8
/* AD1470 8005A2D0 2409000A */   li    $t1, 10
/* AD1474 8005A2D4 A4E9015E */  sh    $t1, 0x15e($a3)
.L8005A2D8:
/* AD1478 8005A2D8 10000015 */  b     .L8005A330
/* AD147C 8005A2DC 34420001 */   ori   $v0, $v0, 1

glabel L8005A2E0
/* AD1480 8005A2E0 10000013 */  b     .L8005A330
/* AD1484 8005A2E4 34420001 */   ori   $v0, $v0, 1

glabel L8005A2E8
/* AD1488 8005A2E8 304D0008 */  andi  $t5, $v0, 8
/* AD148C 8005A2EC 11A00002 */  beqz  $t5, .L8005A2F8
/* AD1490 8005A2F0 240E000A */   li    $t6, 10
/* AD1494 8005A2F4 A4EE015E */  sh    $t6, 0x15e($a3)
.L8005A2F8:
/* AD1498 8005A2F8 1000000D */  b     .L8005A330
/* AD149C 8005A2FC 34420001 */   ori   $v0, $v0, 1

glabel L8005A300
/* AD14A0 8005A300 304F0004 */  andi  $t7, $v0, 4
/* AD14A4 8005A304 11E00002 */  beqz  $t7, .L8005A310
/* AD14A8 8005A308 2418000A */   li    $t8, 10
/* AD14AC 8005A30C A4F8015E */  sh    $t8, 0x15e($a3)
.L8005A310:
/* AD14B0 8005A310 10000007 */  b     .L8005A330
/* AD14B4 8005A314 34420001 */   ori   $v0, $v0, 1

glabel L8005A318
/* AD14B8 8005A318 10000005 */  b     .L8005A330
/* AD14BC 8005A31C 34420001 */   ori   $v0, $v0, 1

glabel L8005A320
/* AD14C0 8005A320 30590010 */  andi  $t9, $v0, 0x10
/* AD14C4 8005A324 13200002 */  beqz  $t9, .L8005A330
/* AD14C8 8005A328 240A000A */   li    $t2, 10
/* AD14CC 8005A32C A4EA015E */  sh    $t2, 0x15e($a3)

.L8005A330:
glabel L8005A330
/* AD14D0 8005A330 2401FFEF */  li    $at, -17
/* AD14D4 8005A334 00411024 */  and   $v0, $v0, $at
/* AD14D8 8005A338 3C018012 */  lui   $at, %hi(D_8011DB14) # $at, 0x8012
/* AD14DC 8005A33C AC22DB14 */  sw    $v0, %lo(D_8011DB14)($at)
/* AD14E0 8005A340 84E80140 */  lh    $t0, 0x140($a3)
/* AD14E4 8005A344 24010007 */  li    $at, 7
/* AD14E8 8005A348 24030001 */  li    $v1, 1
/* AD14EC 8005A34C 55010031 */  bnel  $t0, $at, .L8005A414
/* AD14F0 8005A350 00E02025 */   move  $a0, $a3
/* AD14F4 8005A354 1043000D */  beq   $v0, $v1, .L8005A38C
/* AD14F8 8005A358 3C018012 */   lui   $at, %hi(D_8011DB14)
/* AD14FC 8005A35C 24010002 */  li    $at, 2
/* AD1500 8005A360 10410010 */  beq   $v0, $at, .L8005A3A4
/* AD1504 8005A364 24010004 */   li    $at, 4
/* AD1508 8005A368 10410020 */  beq   $v0, $at, .L8005A3EC
/* AD150C 8005A36C 24044837 */   li    $a0, 18487
/* AD1510 8005A370 3C018012 */  lui   $at, %hi(D_8011DB14) # $at, 0x8012
/* AD1514 8005A374 AC22DB14 */  sw    $v0, %lo(D_8011DB14)($at)
/* AD1518 8005A378 24010008 */  li    $at, 8
/* AD151C 8005A37C 10410021 */  beq   $v0, $at, .L8005A404
/* AD1520 8005A380 2404480C */   li    $a0, 18444
/* AD1524 8005A384 10000023 */  b     .L8005A414
/* AD1528 8005A388 00E02025 */   move  $a0, $a3
.L8005A38C:
/* AD152C 8005A38C AC22DB14 */  sw    $v0, %lo(D_8011DB14)($at)
/* AD1530 8005A390 00002025 */  move  $a0, $zero
/* AD1534 8005A394 0C01E221 */  jal   func_80078884
/* AD1538 8005A398 AFA70018 */   sw    $a3, 0x18($sp)
/* AD153C 8005A39C 1000001C */  b     .L8005A410
/* AD1540 8005A3A0 8FA70018 */   lw    $a3, 0x18($sp)
.L8005A3A4:
/* AD1544 8005A3A4 3C018012 */  lui   $at, %hi(D_8011DB14) # $at, 0x8012
/* AD1548 8005A3A8 AC22DB14 */  sw    $v0, %lo(D_8011DB14)($at)
/* AD154C 8005A3AC 8CEB008C */  lw    $t3, 0x8c($a3)
/* AD1550 8005A3B0 3C0C0001 */  lui   $t4, 1
/* AD1554 8005A3B4 2404480C */  li    $a0, 18444
/* AD1558 8005A3B8 018B6021 */  addu  $t4, $t4, $t3
/* AD155C 8005A3BC 918C1CBF */  lbu   $t4, 0x1cbf($t4)
/* AD1560 8005A3C0 146C0006 */  bne   $v1, $t4, .L8005A3DC
/* AD1564 8005A3C4 00000000 */   nop
/* AD1568 8005A3C8 24044837 */  li    $a0, 18487
/* AD156C 8005A3CC 0C01E221 */  jal   func_80078884
/* AD1570 8005A3D0 AFA70018 */   sw    $a3, 0x18($sp)
/* AD1574 8005A3D4 1000000E */  b     .L8005A410
/* AD1578 8005A3D8 8FA70018 */   lw    $a3, 0x18($sp)
.L8005A3DC:
/* AD157C 8005A3DC 0C01E221 */  jal   func_80078884
/* AD1580 8005A3E0 AFA70018 */   sw    $a3, 0x18($sp)
/* AD1584 8005A3E4 1000000A */  b     .L8005A410
/* AD1588 8005A3E8 8FA70018 */   lw    $a3, 0x18($sp)
.L8005A3EC:
/* AD158C 8005A3EC 3C018012 */  lui   $at, %hi(D_8011DB14) # $at, 0x8012
/* AD1590 8005A3F0 AC22DB14 */  sw    $v0, %lo(D_8011DB14)($at)
/* AD1594 8005A3F4 0C01E221 */  jal   func_80078884
/* AD1598 8005A3F8 AFA70018 */   sw    $a3, 0x18($sp)
/* AD159C 8005A3FC 10000004 */  b     .L8005A410
/* AD15A0 8005A400 8FA70018 */   lw    $a3, 0x18($sp)
.L8005A404:
/* AD15A4 8005A404 0C01E221 */  jal   func_80078884
/* AD15A8 8005A408 AFA70018 */   sw    $a3, 0x18($sp)
/* AD15AC 8005A40C 8FA70018 */  lw    $a3, 0x18($sp)
.L8005A410:
/* AD15B0 8005A410 00E02025 */  move  $a0, $a3
.L8005A414:
/* AD15B4 8005A414 0C01680B */  jal   func_8005A02C
/* AD15B8 8005A418 AFA70018 */   sw    $a3, 0x18($sp)
/* AD15BC 8005A41C 8FA70018 */  lw    $a3, 0x18($sp)
/* AD15C0 8005A420 87A9001E */  lh    $t1, 0x1e($sp)
/* AD15C4 8005A424 3C018000 */  lui   $at, 0x8000
/* AD15C8 8005A428 A4E90144 */  sh    $t1, 0x144($a3)
/* AD15CC 8005A42C 87A2001E */  lh    $v0, 0x1e($sp)
/* AD15D0 8005A430 00411025 */  or    $v0, $v0, $at
.L8005A434:
/* AD15D4 8005A434 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD15D8 8005A438 27BD0018 */  addiu $sp, $sp, 0x18
/* AD15DC 8005A43C 03E00008 */  jr    $ra
/* AD15E0 8005A440 00000000 */   nop

