glabel func_8010B0C0
/* B82260 8010B0C0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B82264 8010B0C4 3C0F0001 */  lui   $t7, 1
/* B82268 8010B0C8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B8226C 8010B0CC AFB00020 */  sw    $s0, 0x20($sp)
/* B82270 8010B0D0 AFA40048 */  sw    $a0, 0x48($sp)
/* B82274 8010B0D4 AFA5004C */  sw    $a1, 0x4c($sp)
/* B82278 8010B0D8 01E47821 */  addu  $t7, $t7, $a0
/* B8227C 8010B0DC 91EF03DC */  lbu   $t7, 0x3dc($t7)
/* B82280 8010B0E0 3C108016 */  lui   $s0, %hi(gGameInfo) # $s0, 0x8016
/* B82284 8010B0E4 30A7FFFF */  andi  $a3, $a1, 0xffff
/* B82288 8010B0E8 15E00005 */  bnez  $t7, .L8010B100
/* B8228C 8010B0EC 2610FA90 */   addiu $s0, %lo(gGameInfo) # addiu $s0, $s0, -0x570
/* B82290 8010B0F0 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B82294 8010B0F4 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B82298 8010B0F8 94B813EA */  lhu   $t8, 0x13ea($a1)
/* B8229C 8010B0FC A4B813EE */  sh    $t8, 0x13ee($a1)
.L8010B100:
/* B822A0 8010B100 8E030000 */  lw    $v1, ($s0)
/* B822A4 8010B104 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B822A8 8010B108 24010010 */  li    $at, 16
/* B822AC 8010B10C 847904B2 */  lh    $t9, 0x4b2($v1)
/* B822B0 8010B110 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B822B4 8010B114 24040005 */  li    $a0, 5
/* B822B8 8010B118 17210007 */  bne   $t9, $at, .L8010B138
/* B822BC 8010B11C 00000000 */   nop   
/* B822C0 8010B120 0C020978 */  jal   Interface_ChangeAlpha
/* B822C4 8010B124 A7A7004E */   sh    $a3, 0x4e($sp)
/* B822C8 8010B128 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B822CC 8010B12C 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B822D0 8010B130 97A7004E */  lhu   $a3, 0x4e($sp)
/* B822D4 8010B134 8E030000 */  lw    $v1, ($s0)
.L8010B138:
/* B822D8 8010B138 3C088015 */  lui   $t0, %hi(D_8014B308) # $t0, 0x8015
/* B822DC 8010B13C 2508B308 */  addiu $t0, %lo(D_8014B308) # addiu $t0, $t0, -0x4cf8
/* B822E0 8010B140 A5000000 */  sh    $zero, ($t0)
/* B822E4 8010B144 850A0000 */  lh    $t2, ($t0)
/* B822E8 8010B148 3C048015 */  lui   $a0, %hi(D_8014B300) # $a0, 0x8015
/* B822EC 8010B14C 3C068015 */  lui   $a2, %hi(D_8014B2F4) # $a2, 0x8015
/* B822F0 8010B150 24C6B2F4 */  addiu $a2, %lo(D_8014B2F4) # addiu $a2, $a2, -0x4d0c
/* B822F4 8010B154 2484B300 */  addiu $a0, %lo(D_8014B300) # addiu $a0, $a0, -0x4d00
/* B822F8 8010B158 3C018015 */  lui   $at, %hi(D_8014B318) # $at, 0x8015
/* B822FC 8010B15C A08A0000 */  sb    $t2, ($a0)
/* B82300 8010B160 A0CA0000 */  sb    $t2, ($a2)
/* B82304 8010B164 314B00FF */  andi  $t3, $t2, 0xff
/* B82308 8010B168 A42BB318 */  sh    $t3, %lo(D_8014B318)($at)
/* B8230C 8010B16C 28E10500 */  slti  $at, $a3, 0x500
/* B82310 8010B170 14200011 */  bnez  $at, .L8010B1B8
/* B82314 8010B174 00E01025 */   move  $v0, $a3
/* B82318 8010B178 28410600 */  slti  $at, $v0, 0x600
/* B8231C 8010B17C 1020000E */  beqz  $at, .L8010B1B8
/* B82320 8010B180 240C0001 */   li    $t4, 1
/* B82324 8010B184 A50C0000 */  sh    $t4, ($t0)
/* B82328 8010B188 240D0055 */  li    $t5, 85
/* B8232C 8010B18C A46D0B06 */  sh    $t5, 0xb06($v1)
/* B82330 8010B190 8E0F0000 */  lw    $t7, ($s0)
/* B82334 8010B194 240E0006 */  li    $t6, 6
/* B82338 8010B198 24180014 */  li    $t8, 20
/* B8233C 8010B19C A5EE0B04 */  sh    $t6, 0xb04($t7)
/* B82340 8010B1A0 8E190000 */  lw    $t9, ($s0)
/* B82344 8010B1A4 24090030 */  li    $t1, 48
/* B82348 8010B1A8 A7380B00 */  sh    $t8, 0xb00($t9)
/* B8234C 8010B1AC 8E0A0000 */  lw    $t2, ($s0)
/* B82350 8010B1B0 10000009 */  b     .L8010B1D8
/* B82354 8010B1B4 A5490496 */   sh    $t1, 0x496($t2)
.L8010B1B8:
/* B82358 8010B1B8 240B004B */  li    $t3, 75
/* B8235C 8010B1BC A46B0B06 */  sh    $t3, 0xb06($v1)
/* B82360 8010B1C0 8E0D0000 */  lw    $t5, ($s0)
/* B82364 8010B1C4 240C000C */  li    $t4, 12
/* B82368 8010B1C8 240E0041 */  li    $t6, 65
/* B8236C 8010B1CC A5AC0B04 */  sh    $t4, 0xb04($t5)
/* B82370 8010B1D0 8E0F0000 */  lw    $t7, ($s0)
/* B82374 8010B1D4 A5EE0B00 */  sh    $t6, 0xb00($t7)
.L8010B1D8:
/* B82378 8010B1D8 240100C2 */  li    $at, 194
/* B8237C 8010B1DC 10410004 */  beq   $v0, $at, .L8010B1F0
/* B82380 8010B1E0 3C03F000 */   lui   $v1, 0xf000
/* B82384 8010B1E4 240100FA */  li    $at, 250
/* B82388 8010B1E8 1441000E */  bne   $v0, $at, .L8010B224
/* B8238C 8010B1EC 8FB00048 */   lw    $s0, 0x48($sp)
.L8010B1F0:
/* B82390 8010B1F0 8CB800A4 */  lw    $t8, 0xa4($a1)
/* B82394 8010B1F4 8FB00048 */  lw    $s0, 0x48($sp)
/* B82398 8010B1F8 34018000 */  li    $at, 32768
/* B8239C 8010B1FC 0303C824 */  and   $t9, $t8, $v1
/* B823A0 8010B200 03234824 */  and   $t1, $t9, $v1
/* B823A4 8010B204 00095702 */  srl   $t2, $t1, 0x1c
/* B823A8 8010B208 004A3821 */  addu  $a3, $v0, $t2
/* B823AC 8010B20C 261020D8 */  addiu $s0, $s0, 0x20d8
/* B823B0 8010B210 02015821 */  addu  $t3, $s0, $at
/* B823B4 8010B214 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B823B8 8010B218 00E01025 */  move  $v0, $a3
/* B823BC 8010B21C 1000001D */  b     .L8010B294
/* B823C0 8010B220 AFAB002C */   sw    $t3, 0x2c($sp)
.L8010B224:
/* B823C4 8010B224 261020D8 */  addiu $s0, $s0, 0x20d8
/* B823C8 8010B228 34018000 */  li    $at, 32768
/* B823CC 8010B22C 02016021 */  addu  $t4, $s0, $at
/* B823D0 8010B230 AFAC002C */  sw    $t4, 0x2c($sp)
/* B823D4 8010B234 958362F8 */  lhu   $v1, 0x62f8($t4)
/* B823D8 8010B238 2401000C */  li    $at, 12
/* B823DC 8010B23C 3C0E8012 */  lui   $t6, %hi(gBitFlags+8) # $t6, 0x8012
/* B823E0 8010B240 1461000B */  bne   $v1, $at, .L8010B270
/* B823E4 8010B244 3C0F8012 */   lui   $t7, %hi(gEquipShifts) # $t7, 0x8012
/* B823E8 8010B248 8DCE7128 */  lw    $t6, %lo(gBitFlags+8)($t6)
/* B823EC 8010B24C 91EF71F0 */  lbu   $t7, %lo(gEquipShifts)($t7)
/* B823F0 8010B250 94B9009C */  lhu   $t9, 0x9c($a1)
/* B823F4 8010B254 01EEC004 */  sllv  $t8, $t6, $t7
/* B823F8 8010B258 03194824 */  and   $t1, $t8, $t9
/* B823FC 8010B25C 51200005 */  beql  $t1, $zero, .L8010B274
/* B82400 8010B260 240100B4 */   li    $at, 180
/* B82404 8010B264 2407000B */  li    $a3, 11
/* B82408 8010B268 1000000A */  b     .L8010B294
/* B8240C 8010B26C 2402000B */   li    $v0, 11
.L8010B270:
/* B82410 8010B270 240100B4 */  li    $at, 180
.L8010B274:
/* B82414 8010B274 54610008 */  bnel  $v1, $at, .L8010B298
/* B82418 8010B278 24014077 */   li    $at, 16503
/* B8241C 8010B27C 94AA0EE6 */  lhu   $t2, 0xee6($a1)
/* B82420 8010B280 314B0040 */  andi  $t3, $t2, 0x40
/* B82424 8010B284 51600004 */  beql  $t3, $zero, .L8010B298
/* B82428 8010B288 24014077 */   li    $at, 16503
/* B8242C 8010B28C 240700B5 */  li    $a3, 181
/* B82430 8010B290 240200B5 */  li    $v0, 181
.L8010B294:
/* B82434 8010B294 24014077 */  li    $at, 16503
.L8010B298:
/* B82438 8010B298 1041000A */  beq   $v0, $at, .L8010B2C4
/* B8243C 8010B29C 24040001 */   li    $a0, 1
/* B82440 8010B2A0 2401407A */  li    $at, 16506
/* B82444 8010B2A4 10410007 */  beq   $v0, $at, .L8010B2C4
/* B82448 8010B2A8 24012061 */   li    $at, 8289
/* B8244C 8010B2AC 10410005 */  beq   $v0, $at, .L8010B2C4
/* B82450 8010B2B0 24015035 */   li    $at, 20533
/* B82454 8010B2B4 10410003 */  beq   $v0, $at, .L8010B2C4
/* B82458 8010B2B8 240140AC */   li    $at, 16556
/* B8245C 8010B2BC 5441000B */  bnel  $v0, $at, .L8010B2EC
/* B82460 8010B2C0 26017FFF */   addiu $at, $s0, 0x7fff
.L8010B2C4:
/* B82464 8010B2C4 AFA20030 */  sw    $v0, 0x30($sp)
/* B82468 8010B2C8 0C020978 */  jal   Interface_ChangeAlpha
/* B8246C 8010B2CC A7A7004E */   sh    $a3, 0x4e($sp)
/* B82470 8010B2D0 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B82474 8010B2D4 3C088015 */  lui   $t0, %hi(D_8014B308) # $t0, 0x8015
/* B82478 8010B2D8 2508B308 */  addiu $t0, %lo(D_8014B308) # addiu $t0, $t0, -0x4cf8
/* B8247C 8010B2DC 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B82480 8010B2E0 8FA20030 */  lw    $v0, 0x30($sp)
/* B82484 8010B2E4 97A7004E */  lhu   $a3, 0x4e($sp)
/* B82488 8010B2E8 26017FFF */  addiu $at, $s0, 0x7fff
.L8010B2EC:
/* B8248C 8010B2EC A42762F9 */  sh    $a3, 0x62f9($at)
/* B82490 8010B2F0 24012030 */  li    $at, 8240
/* B82494 8010B2F4 14410013 */  bne   $v0, $at, .L8010B344
/* B82498 8010B2F8 3C048015 */   lui   $a0, %hi(D_80154230) # $a0, 0x8015
/* B8249C 8010B2FC 24844230 */  addiu $a0, %lo(D_80154230) # addiu $a0, $a0, 0x4230
/* B824A0 8010B300 0C00084C */  jal   osSyncPrintf
/* B824A4 8010B304 A7A7004E */   sh    $a3, 0x4e($sp)
/* B824A8 8010B308 3C048015 */  lui   $a0, %hi(D_80154238) # $a0, 0x8015
/* B824AC 8010B30C 0C00084C */  jal   osSyncPrintf
/* B824B0 8010B310 24844238 */   addiu $a0, %lo(D_80154238) # addiu $a0, $a0, 0x4238
/* B824B4 8010B314 3C048015 */  lui   $a0, %hi(D_80154290) # $a0, 0x8015
/* B824B8 8010B318 0C00084C */  jal   osSyncPrintf
/* B824BC 8010B31C 24844290 */   addiu $a0, %lo(D_80154290) # addiu $a0, $a0, 0x4290
/* B824C0 8010B320 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B824C4 8010B324 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B824C8 8010B328 3C088015 */  lui   $t0, %hi(D_8014B308) # $t0, 0x8015
/* B824CC 8010B32C 97A7004E */  lhu   $a3, 0x4e($sp)
/* B824D0 8010B330 2508B308 */  addiu $t0, %lo(D_8014B308) # addiu $t0, $t0, -0x4cf8
/* B824D4 8010B334 A4A01400 */  sh    $zero, 0x1400($a1)
/* B824D8 8010B338 A4A013FE */  sh    $zero, 0x13fe($a1)
/* B824DC 8010B33C A4A013FC */  sh    $zero, 0x13fc($a1)
/* B824E0 8010B340 A4A013FA */  sh    $zero, 0x13fa($a1)
.L8010B344:
/* B824E4 8010B344 850C0000 */  lh    $t4, ($t0)
/* B824E8 8010B348 8FA40048 */  lw    $a0, 0x48($sp)
/* B824EC 8010B34C 51800018 */  beql  $t4, $zero, .L8010B3B0
/* B824F0 8010B350 90A21409 */   lbu   $v0, 0x1409($a1)
/* B824F4 8010B354 0C041D8A */  jal   func_80107628
/* B824F8 8010B358 30E5FFFF */   andi  $a1, $a3, 0xffff
/* B824FC 8010B35C 8FA20048 */  lw    $v0, 0x48($sp)
/* B82500 8010B360 26017FFF */  addiu $at, $s0, 0x7fff
/* B82504 8010B364 3C0F0097 */  lui   $t7, %hi(_staff_message_data_staticSegmentRomStart) # $t7, 0x97
/* B82508 8010B368 8C4D2204 */  lw    $t5, 0x2204($v0)
/* B8250C 8010B36C 25EF3000 */  addiu $t7, %lo(_staff_message_data_staticSegmentRomStart) # addiu $t7, $t7, 0x3000
/* B82510 8010B370 3C078015 */  lui   $a3, %hi(D_80154294) # $a3, 0x8015
/* B82514 8010B374 AC2D6301 */  sw    $t5, 0x6301($at)
/* B82518 8010B378 8C4E2200 */  lw    $t6, 0x2200($v0)
/* B8251C 8010B37C 3401DC88 */  li    $at, 56456
/* B82520 8010B380 241807A2 */  li    $t8, 1954
/* B82524 8010B384 24422200 */  addiu $v0, $v0, 0x2200
/* B82528 8010B388 8C460004 */  lw    $a2, 4($v0)
/* B8252C 8010B38C AFA20030 */  sw    $v0, 0x30($sp)
/* B82530 8010B390 AFB80010 */  sw    $t8, 0x10($sp)
/* B82534 8010B394 00412021 */  addu  $a0, $v0, $at
/* B82538 8010B398 24E74294 */  addiu $a3, %lo(D_80154294) # addiu $a3, $a3, 0x4294
/* B8253C 8010B39C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B82540 8010B3A0 01CF2821 */   addu  $a1, $t6, $t7
/* B82544 8010B3A4 1000004A */  b     .L8010B4D0
/* B82548 8010B3A8 8FA20030 */   lw    $v0, 0x30($sp)
/* B8254C 8010B3AC 90A21409 */  lbu   $v0, 0x1409($a1)
.L8010B3B0:
/* B82550 8010B3B0 8FA40048 */  lw    $a0, 0x48($sp)
/* B82554 8010B3B4 24010001 */  li    $at, 1
/* B82558 8010B3B8 14400017 */  bnez  $v0, .L8010B418
/* B8255C 8010B3BC 00000000 */   nop   
/* B82560 8010B3C0 0C041D12 */  jal   func_80107448
/* B82564 8010B3C4 30E5FFFF */   andi  $a1, $a3, 0xffff
/* B82568 8010B3C8 8FA20048 */  lw    $v0, 0x48($sp)
/* B8256C 8010B3CC 26017FFF */  addiu $at, $s0, 0x7fff
/* B82570 8010B3D0 3C0A008C */  lui   $t2, %hi(_nes_message_data_staticSegmentRomStart) # $t2, 0x8c
/* B82574 8010B3D4 8C592204 */  lw    $t9, 0x2204($v0)
/* B82578 8010B3D8 254A6000 */  addiu $t2, %lo(_nes_message_data_staticSegmentRomStart) # addiu $t2, $t2, 0x6000
/* B8257C 8010B3DC 3C078015 */  lui   $a3, %hi(D_801542A8) # $a3, 0x8015
/* B82580 8010B3E0 AC396301 */  sw    $t9, 0x6301($at)
/* B82584 8010B3E4 8C492200 */  lw    $t1, 0x2200($v0)
/* B82588 8010B3E8 3401DC88 */  li    $at, 56456
/* B8258C 8010B3EC 240B07AE */  li    $t3, 1966
/* B82590 8010B3F0 24422200 */  addiu $v0, $v0, 0x2200
/* B82594 8010B3F4 8C460004 */  lw    $a2, 4($v0)
/* B82598 8010B3F8 AFA20030 */  sw    $v0, 0x30($sp)
/* B8259C 8010B3FC AFAB0010 */  sw    $t3, 0x10($sp)
/* B825A0 8010B400 00412021 */  addu  $a0, $v0, $at
/* B825A4 8010B404 24E742A8 */  addiu $a3, %lo(D_801542A8) # addiu $a3, $a3, 0x42a8
/* B825A8 8010B408 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B825AC 8010B40C 012A2821 */   addu  $a1, $t1, $t2
/* B825B0 8010B410 1000002F */  b     .L8010B4D0
/* B825B4 8010B414 8FA20030 */   lw    $v0, 0x30($sp)
.L8010B418:
/* B825B8 8010B418 14410018 */  bne   $v0, $at, .L8010B47C
/* B825BC 8010B41C 8FA40048 */   lw    $a0, 0x48($sp)
/* B825C0 8010B420 8FA40048 */  lw    $a0, 0x48($sp)
/* B825C4 8010B424 0C041D12 */  jal   func_80107448
/* B825C8 8010B428 30E5FFFF */   andi  $a1, $a3, 0xffff
/* B825CC 8010B42C 8FA20048 */  lw    $v0, 0x48($sp)
/* B825D0 8010B430 26017FFF */  addiu $at, $s0, 0x7fff
/* B825D4 8010B434 3C0E0090 */  lui   $t6, %hi(_ger_message_data_staticSegmentRomStart) # $t6, 0x90
/* B825D8 8010B438 8C4C2204 */  lw    $t4, 0x2204($v0)
/* B825DC 8010B43C 25CEF000 */  addiu $t6, %lo(_ger_message_data_staticSegmentRomStart) # addiu $t6, $t6, -0x1000
/* B825E0 8010B440 3C078015 */  lui   $a3, %hi(D_801542BC) # $a3, 0x8015
/* B825E4 8010B444 AC2C6301 */  sw    $t4, 0x6301($at)
/* B825E8 8010B448 8C4D2200 */  lw    $t5, 0x2200($v0)
/* B825EC 8010B44C 3401DC88 */  li    $at, 56456
/* B825F0 8010B450 240F07BA */  li    $t7, 1978
/* B825F4 8010B454 24422200 */  addiu $v0, $v0, 0x2200
/* B825F8 8010B458 8C460004 */  lw    $a2, 4($v0)
/* B825FC 8010B45C AFA20030 */  sw    $v0, 0x30($sp)
/* B82600 8010B460 AFAF0010 */  sw    $t7, 0x10($sp)
/* B82604 8010B464 00412021 */  addu  $a0, $v0, $at
/* B82608 8010B468 24E742BC */  addiu $a3, %lo(D_801542BC) # addiu $a3, $a3, 0x42bc
/* B8260C 8010B46C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B82610 8010B470 01AE2821 */   addu  $a1, $t5, $t6
/* B82614 8010B474 10000016 */  b     .L8010B4D0
/* B82618 8010B478 8FA20030 */   lw    $v0, 0x30($sp)
.L8010B47C:
/* B8261C 8010B47C 0C041D12 */  jal   func_80107448
/* B82620 8010B480 30E5FFFF */   andi  $a1, $a3, 0xffff
/* B82624 8010B484 8FA20048 */  lw    $v0, 0x48($sp)
/* B82628 8010B488 26017FFF */  addiu $at, $s0, 0x7fff
/* B8262C 8010B48C 3C090094 */  lui   $t1, %hi(_fra_message_data_staticSegmentRomStart) # $t1, 0x94
/* B82630 8010B490 8C582204 */  lw    $t8, 0x2204($v0)
/* B82634 8010B494 2529B000 */  addiu $t1, %lo(_fra_message_data_staticSegmentRomStart) # addiu $t1, $t1, -0x5000
/* B82638 8010B498 3C078015 */  lui   $a3, %hi(D_801542D0) # $a3, 0x8015
/* B8263C 8010B49C AC386301 */  sw    $t8, 0x6301($at)
/* B82640 8010B4A0 8C592200 */  lw    $t9, 0x2200($v0)
/* B82644 8010B4A4 3401DC88 */  li    $at, 56456
/* B82648 8010B4A8 240A07C6 */  li    $t2, 1990
/* B8264C 8010B4AC 24422200 */  addiu $v0, $v0, 0x2200
/* B82650 8010B4B0 8C460004 */  lw    $a2, 4($v0)
/* B82654 8010B4B4 AFA20030 */  sw    $v0, 0x30($sp)
/* B82658 8010B4B8 AFAA0010 */  sw    $t2, 0x10($sp)
/* B8265C 8010B4BC 00412021 */  addu  $a0, $v0, $at
/* B82660 8010B4C0 24E742D0 */  addiu $a3, %lo(D_801542D0) # addiu $a3, $a3, 0x42d0
/* B82664 8010B4C4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B82668 8010B4C8 03292821 */   addu  $a1, $t9, $t1
/* B8266C 8010B4CC 8FA20030 */  lw    $v0, 0x30($sp)
.L8010B4D0:
/* B82670 8010B4D0 904B0008 */  lbu   $t3, 8($v0)
/* B82674 8010B4D4 26017FFF */  addiu $at, $s0, 0x7fff
/* B82678 8010B4D8 3C048015 */  lui   $a0, %hi(D_801542E4) # $a0, 0x8015
/* B8267C 8010B4DC A02B62FD */  sb    $t3, 0x62fd($at)
/* B82680 8010B4E0 8FAC002C */  lw    $t4, 0x2c($sp)
/* B82684 8010B4E4 248442E4 */  addiu $a0, %lo(D_801542E4) # addiu $a0, $a0, 0x42e4
/* B82688 8010B4E8 918D62FC */  lbu   $t5, 0x62fc($t4)
/* B8268C 8010B4EC 000D7103 */  sra   $t6, $t5, 4
/* B82690 8010B4F0 A02E62FE */  sb    $t6, 0x62fe($at)
/* B82694 8010B4F4 8FAF002C */  lw    $t7, 0x2c($sp)
/* B82698 8010B4F8 91F862FC */  lbu   $t8, 0x62fc($t7)
/* B8269C 8010B4FC 3319000F */  andi  $t9, $t8, 0xf
/* B826A0 8010B500 A03962FF */  sb    $t9, 0x62ff($at)
/* B826A4 8010B504 8FA9002C */  lw    $t1, 0x2c($sp)
/* B826A8 8010B508 912562FD */  lbu   $a1, 0x62fd($t1)
/* B826AC 8010B50C 0C00084C */  jal   osSyncPrintf
/* B826B0 8010B510 A7A5003E */   sh    $a1, 0x3e($sp)
/* B826B4 8010B514 87A3003E */  lh    $v1, 0x3e($sp)
/* B826B8 8010B518 8FAA002C */  lw    $t2, 0x2c($sp)
/* B826BC 8010B51C 3C0C8015 */  lui   $t4, %hi(D_80153C50) # $t4, 0x8015
/* B826C0 8010B520 28610004 */  slti  $at, $v1, 4
/* B826C4 8010B524 10200046 */  beqz  $at, .L8010B640
/* B826C8 8010B528 00035840 */   sll   $t3, $v1, 1
/* B826CC 8010B52C 258C3C50 */  addiu $t4, %lo(D_80153C50) # addiu $t4, $t4, 0x3c50
/* B826D0 8010B530 016C1021 */  addu  $v0, $t3, $t4
/* B826D4 8010B534 844D0000 */  lh    $t5, ($v0)
/* B826D8 8010B538 3C0F008C */  lui   $t7, %hi(_message_staticSegmentRomStart) # $t7, 0x8c
/* B826DC 8010B53C 25EFA000 */  addiu $t7, %lo(_message_staticSegmentRomStart) # addiu $t7, $t7, -0x6000
/* B826E0 8010B540 8D4462B0 */  lw    $a0, 0x62b0($t2)
/* B826E4 8010B544 3C078015 */  lui   $a3, %hi(D_801542F8) # $a3, 0x8015
/* B826E8 8010B548 241807D6 */  li    $t8, 2006
/* B826EC 8010B54C 000D7300 */  sll   $t6, $t5, 0xc
/* B826F0 8010B550 01CF2821 */  addu  $a1, $t6, $t7
/* B826F4 8010B554 AFB80010 */  sw    $t8, 0x10($sp)
/* B826F8 8010B558 24E742F8 */  addiu $a3, %lo(D_801542F8) # addiu $a3, $a3, 0x42f8
/* B826FC 8010B55C AFA20030 */  sw    $v0, 0x30($sp)
/* B82700 8010B560 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B82704 8010B564 24061000 */   li    $a2, 4096
/* B82708 8010B568 8FA20030 */  lw    $v0, 0x30($sp)
/* B8270C 8010B56C 3C198015 */  lui   $t9, %hi(D_80153C50) # $t9, 0x8015
/* B82710 8010B570 27393C50 */  addiu $t9, %lo(D_80153C50) # addiu $t9, $t9, 0x3c50
/* B82714 8010B574 14590006 */  bne   $v0, $t9, .L8010B590
/* B82718 8010B578 3C098015 */   lui   $t1, %hi(D_80153C52) # $t1, 0x8015
/* B8271C 8010B57C 26017FFF */  addiu $at, $s0, 0x7fff
/* B82720 8010B580 A42063FF */  sh    $zero, 0x63ff($at)
/* B82724 8010B584 A4206401 */  sh    $zero, 0x6401($at)
/* B82728 8010B588 1000001A */  b     .L8010B5F4
/* B8272C 8010B58C A4206403 */   sh    $zero, 0x6403($at)
.L8010B590:
/* B82730 8010B590 25293C52 */  addiu $t1, %lo(D_80153C52) # addiu $t1, $t1, 0x3c52
/* B82734 8010B594 14490009 */  bne   $v0, $t1, .L8010B5BC
/* B82738 8010B598 3C0D8015 */   lui   $t5, %hi(D_80153C54) # $t5, 0x8015
/* B8273C 8010B59C 26017FFF */  addiu $at, $s0, 0x7fff
/* B82740 8010B5A0 240A0046 */  li    $t2, 70
/* B82744 8010B5A4 240B0032 */  li    $t3, 50
/* B82748 8010B5A8 240C001E */  li    $t4, 30
/* B8274C 8010B5AC A42A63FF */  sh    $t2, 0x63ff($at)
/* B82750 8010B5B0 A42B6401 */  sh    $t3, 0x6401($at)
/* B82754 8010B5B4 1000000F */  b     .L8010B5F4
/* B82758 8010B5B8 A42C6403 */   sh    $t4, 0x6403($at)
.L8010B5BC:
/* B8275C 8010B5BC 25AD3C54 */  addiu $t5, %lo(D_80153C54) # addiu $t5, $t5, 0x3c54
/* B82760 8010B5C0 144D0008 */  bne   $v0, $t5, .L8010B5E4
/* B82764 8010B5C4 241800FF */   li    $t8, 255
/* B82768 8010B5C8 26017FFF */  addiu $at, $s0, 0x7fff
/* B8276C 8010B5CC 240E000A */  li    $t6, 10
/* B82770 8010B5D0 240F0032 */  li    $t7, 50
/* B82774 8010B5D4 A42063FF */  sh    $zero, 0x63ff($at)
/* B82778 8010B5D8 A42E6401 */  sh    $t6, 0x6401($at)
/* B8277C 8010B5DC 10000005 */  b     .L8010B5F4
/* B82780 8010B5E0 A42F6403 */   sh    $t7, 0x6403($at)
.L8010B5E4:
/* B82784 8010B5E4 26017FFF */  addiu $at, $s0, 0x7fff
/* B82788 8010B5E8 A43863FF */  sh    $t8, 0x63ff($at)
/* B8278C 8010B5EC A4206401 */  sh    $zero, 0x6401($at)
/* B82790 8010B5F0 A4206403 */  sh    $zero, 0x6403($at)
.L8010B5F4:
/* B82794 8010B5F4 3C198015 */  lui   $t9, %hi(D_80153C52) # $t9, 0x8015
/* B82798 8010B5F8 27393C52 */  addiu $t9, %lo(D_80153C52) # addiu $t9, $t9, 0x3c52
/* B8279C 8010B5FC 14590005 */  bne   $v0, $t9, .L8010B614
/* B827A0 8010B600 3C0A8015 */   lui   $t2, %hi(D_80153C56) # $t2, 0x8015
/* B827A4 8010B604 240900E6 */  li    $t1, 230
/* B827A8 8010B608 26017FFF */  addiu $at, $s0, 0x7fff
/* B827AC 8010B60C 1000000A */  b     .L8010B638
/* B827B0 8010B610 A4296405 */   sh    $t1, 0x6405($at)
.L8010B614:
/* B827B4 8010B614 254A3C56 */  addiu $t2, %lo(D_80153C56) # addiu $t2, $t2, 0x3c56
/* B827B8 8010B618 144A0005 */  bne   $v0, $t2, .L8010B630
/* B827BC 8010B61C 240C00AA */   li    $t4, 170
/* B827C0 8010B620 240B00B4 */  li    $t3, 180
/* B827C4 8010B624 26017FFF */  addiu $at, $s0, 0x7fff
/* B827C8 8010B628 10000003 */  b     .L8010B638
/* B827CC 8010B62C A42B6405 */   sh    $t3, 0x6405($at)
.L8010B630:
/* B827D0 8010B630 26017FFF */  addiu $at, $s0, 0x7fff
/* B827D4 8010B634 A42C6405 */  sh    $t4, 0x6405($at)
.L8010B638:
/* B827D8 8010B638 26017FFF */  addiu $at, $s0, 0x7fff
/* B827DC 8010B63C A4206407 */  sh    $zero, 0x6407($at)
.L8010B640:
/* B827E0 8010B640 26017FFF */  addiu $at, $s0, 0x7fff
/* B827E4 8010B644 A02063E5 */  sb    $zero, 0x63e5($at)
/* B827E8 8010B648 8FAD002C */  lw    $t5, 0x2c($sp)
/* B827EC 8010B64C 91A263E4 */  lbu   $v0, 0x63e4($t5)
/* B827F0 8010B650 A42063D3 */  sh    $zero, 0x63d3($at)
/* B827F4 8010B654 A42263D7 */  sh    $v0, 0x63d7($at)
/* B827F8 8010B658 A02263E7 */  sb    $v0, 0x63e7($at)
/* B827FC 8010B65C 8FAE002C */  lw    $t6, 0x2c($sp)
/* B82800 8010B660 95C263D2 */  lhu   $v0, 0x63d2($t6)
/* B82804 8010B664 A42263D1 */  sh    $v0, 0x63d1($at)
/* B82808 8010B668 A42263CF */  sh    $v0, 0x63cf($at)
/* B8280C 8010B66C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B82810 8010B670 8FB00020 */  lw    $s0, 0x20($sp)
/* B82814 8010B674 27BD0048 */  addiu $sp, $sp, 0x48
/* B82818 8010B678 03E00008 */  jr    $ra
/* B8281C 8010B67C 00000000 */   nop   

