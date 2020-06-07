glabel func_800A82C8
/* B1F468 800A82C8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1F46C 800A82CC AFBF0014 */  sw    $ra, 0x14($sp)
/* B1F470 800A82D0 3C048016 */  lui   $a0, %hi(gSaveContext+0x1c) # $a0, 0x8016
/* B1F474 800A82D4 2484E67C */  addiu $a0, %lo(gSaveContext+0x1c) # addiu $a0, $a0, -0x1984
/* B1F478 800A82D8 0C001114 */  jal   bzero
/* B1F47C 800A82DC 24051338 */   li    $a1, 4920
/* B1F480 800A82E0 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* B1F484 800A82E4 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* B1F488 800A82E8 3C0F8013 */  lui   $t7, %hi(D_8012A5B4) # $t7, 0x8013
/* B1F48C 800A82EC 25EFA5B4 */  addiu $t7, %lo(D_8012A5B4) # addiu $t7, $t7, -0x5a4c
/* B1F490 800A82F0 3C0E8016 */  lui   $t6, %hi(gSaveContext+0x1c) # $t6, 0x8016
/* B1F494 800A82F4 AC400014 */  sw    $zero, 0x14($v0)
/* B1F498 800A82F8 AC400018 */  sw    $zero, 0x18($v0)
/* B1F49C 800A82FC 25CEE67C */  addiu $t6, %lo(gSaveContext+0x1c) # addiu $t6, $t6, -0x1984
/* B1F4A0 800A8300 25E80048 */  addiu $t0, $t7, 0x48
.L800A8304:
/* B1F4A4 800A8304 8DF90000 */  lw    $t9, ($t7)
/* B1F4A8 800A8308 25EF000C */  addiu $t7, $t7, 0xc
/* B1F4AC 800A830C 25CE000C */  addiu $t6, $t6, 0xc
/* B1F4B0 800A8310 ADD9FFF4 */  sw    $t9, -0xc($t6)
/* B1F4B4 800A8314 8DF8FFF8 */  lw    $t8, -8($t7)
/* B1F4B8 800A8318 ADD8FFF8 */  sw    $t8, -8($t6)
/* B1F4BC 800A831C 8DF9FFFC */  lw    $t9, -4($t7)
/* B1F4C0 800A8320 15E8FFF8 */  bne   $t7, $t0, .L800A8304
/* B1F4C4 800A8324 ADD9FFFC */   sw    $t9, -4($t6)
/* B1F4C8 800A8328 8DF90000 */  lw    $t9, ($t7)
/* B1F4CC 800A832C 3C0A8013 */  lui   $t2, %hi(D_8012A600) # $t2, 0x8013
/* B1F4D0 800A8330 254AA600 */  addiu $t2, %lo(D_8012A600) # addiu $t2, $t2, -0x5a00
/* B1F4D4 800A8334 ADD90000 */  sw    $t9, ($t6)
/* B1F4D8 800A8338 8D4C0000 */  lw    $t4, ($t2)
/* B1F4DC 800A833C 3C098016 */  lui   $t1, %hi(gSaveContext+0x68) # $t1, 0x8016
/* B1F4E0 800A8340 2529E6C8 */  addiu $t1, %lo(gSaveContext+0x68) # addiu $t1, $t1, -0x1938
/* B1F4E4 800A8344 A92C0000 */  swl   $t4, ($t1)
/* B1F4E8 800A8348 8D4B0004 */  lw    $t3, 4($t2)
/* B1F4EC 800A834C B92C0003 */  swr   $t4, 3($t1)
/* B1F4F0 800A8350 954C0008 */  lhu   $t4, 8($t2)
/* B1F4F4 800A8354 3C088013 */  lui   $t0, %hi(D_8012A60C) # $t0, 0x8013
/* B1F4F8 800A8358 2508A60C */  addiu $t0, %lo(D_8012A60C) # addiu $t0, $t0, -0x59f4
/* B1F4FC 800A835C 3C0D8016 */  lui   $t5, %hi(gSaveContext+0x74) # $t5, 0x8016
/* B1F500 800A8360 A92B0004 */  swl   $t3, 4($t1)
/* B1F504 800A8364 25ADE6D4 */  addiu $t5, %lo(gSaveContext+0x74) # addiu $t5, $t5, -0x192c
/* B1F508 800A8368 25180060 */  addiu $t8, $t0, 0x60
/* B1F50C 800A836C B92B0007 */  swr   $t3, 7($t1)
/* B1F510 800A8370 A52C0008 */  sh    $t4, 8($t1)
.L800A8374:
/* B1F514 800A8374 8D0E0000 */  lw    $t6, ($t0)
/* B1F518 800A8378 2508000C */  addiu $t0, $t0, 0xc
/* B1F51C 800A837C 25AD000C */  addiu $t5, $t5, 0xc
/* B1F520 800A8380 ADAEFFF4 */  sw    $t6, -0xc($t5)
/* B1F524 800A8384 8D0FFFF8 */  lw    $t7, -8($t0)
/* B1F528 800A8388 ADAFFFF8 */  sw    $t7, -8($t5)
/* B1F52C 800A838C 8D0EFFFC */  lw    $t6, -4($t0)
/* B1F530 800A8390 1518FFF8 */  bne   $t0, $t8, .L800A8374
/* B1F534 800A8394 ADAEFFFC */   sw    $t6, -4($t5)
/* B1F538 800A8398 3C198013 */  lui   $t9, %hi(D_8012A66C) # $t9, 0x8013
/* B1F53C 800A839C 9739A66C */  lhu   $t9, %lo(D_8012A66C)($t9)
/* B1F540 800A83A0 3C018016 */  lui   $at, %hi(gSaveContext+0x1352) # $at, 0x8016
/* B1F544 800A83A4 240AF8D0 */  li    $t2, -1840
/* B1F548 800A83A8 A439F9B2 */  sh    $t9, %lo(gSaveContext+0x1352)($at)
/* B1F54C 800A83AC A44A134A */  sh    $t2, 0x134a($v0)
/* B1F550 800A83B0 240C1579 */  li    $t4, 5497
/* B1F554 800A83B4 94480EF8 */  lhu   $t0, 0xef8($v0)
/* B1F558 800A83B8 944F0ED4 */  lhu   $t7, 0xed4($v0)
/* B1F55C 800A83BC 94590EE4 */  lhu   $t9, 0xee4($v0)
/* B1F560 800A83C0 944A0EEC */  lhu   $t2, 0xeec($v0)
/* B1F564 800A83C4 A44C134E */  sh    $t4, 0x134e($v0)
/* B1F568 800A83C8 8C4C0004 */  lw    $t4, 4($v0)
/* B1F56C 800A83CC 24090051 */  li    $t1, 81
/* B1F570 800A83D0 240B0048 */  li    $t3, 72
/* B1F574 800A83D4 A4491348 */  sh    $t1, 0x1348($v0)
/* B1F578 800A83D8 A44B134C */  sh    $t3, 0x134c($v0)
/* B1F57C 800A83DC 24189527 */  li    $t8, -27353
/* B1F580 800A83E0 350D5009 */  ori   $t5, $t0, 0x5009
/* B1F584 800A83E4 35EE123F */  ori   $t6, $t7, 0x123f
/* B1F588 800A83E8 37290001 */  ori   $t1, $t9, 1
/* B1F58C 800A83EC 354B0010 */  ori   $t3, $t2, 0x10
/* B1F590 800A83F0 A4581350 */  sh    $t8, 0x1350($v0)
/* B1F594 800A83F4 A44D0EF8 */  sh    $t5, 0xef8($v0)
/* B1F598 800A83F8 A44E0ED4 */  sh    $t6, 0xed4($v0)
/* B1F59C 800A83FC A4490EE4 */  sh    $t1, 0xee4($v0)
/* B1F5A0 800A8400 11800003 */  beqz  $t4, .L800A8410
/* B1F5A4 800A8404 A44B0EEC */   sh    $t3, 0xeec($v0)
/* B1F5A8 800A8408 10000002 */  b     .L800A8414
/* B1F5AC 800A840C 24030005 */   li    $v1, 5
.L800A8410:
/* B1F5B0 800A8410 24030011 */  li    $v1, 17
.L800A8414:
/* B1F5B4 800A8414 24010005 */  li    $at, 5
/* B1F5B8 800A8418 14610012 */  bne   $v1, $at, .L800A8464
/* B1F5BC 800A841C 2418003B */   li    $t8, 59
/* B1F5C0 800A8420 A0580068 */  sb    $t8, 0x68($v0)
/* B1F5C4 800A8424 00002025 */  move  $a0, $zero
/* B1F5C8 800A8428 0C025E80 */  jal   Inventory_ChangeEquipment
/* B1F5CC 800A842C 24050001 */   li    $a1, 1
/* B1F5D0 800A8430 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* B1F5D4 800A8434 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* B1F5D8 800A8438 8C481354 */  lw    $t0, 0x1354($v0)
/* B1F5DC 800A843C 240100FF */  li    $at, 255
/* B1F5E0 800A8440 24030006 */  li    $v1, 6
/* B1F5E4 800A8444 15010007 */  bne   $t0, $at, .L800A8464
/* B1F5E8 800A8448 24040001 */   li    $a0, 1
/* B1F5EC 800A844C A0430069 */  sb    $v1, 0x69($v0)
/* B1F5F0 800A8450 A043006C */  sb    $v1, 0x6c($v0)
/* B1F5F4 800A8454 0C025E80 */  jal   Inventory_ChangeEquipment
/* B1F5F8 800A8458 24050001 */   li    $a1, 1
/* B1F5FC 800A845C 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* B1F600 800A8460 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
.L800A8464:
/* B1F604 800A8464 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1F608 800A8468 240D00CD */  li    $t5, 205
/* B1F60C 800A846C 3C0F4000 */  lui   $t7, 0x4000
/* B1F610 800A8470 AC4D0000 */  sw    $t5, ($v0)
/* B1F614 800A8474 A0400032 */  sb    $zero, 0x32($v0)
/* B1F618 800A8478 AC4F0164 */  sw    $t7, 0x164($v0)
/* B1F61C 800A847C 03E00008 */  jr    $ra
/* B1F620 800A8480 27BD0018 */   addiu $sp, $sp, 0x18

