glabel func_800A9258
/* B203F8 800A9258 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B203FC 800A925C AFB60040 */  sw    $s6, 0x40($sp)
/* B20400 800A9260 3C160001 */  lui   $s6, (0x00018000 >> 16) # lui $s6, 1
/* B20404 800A9264 36D68000 */  ori   $s6, (0x00018000 & 0xFFFF) # ori $s6, $s6, 0x8000
/* B20408 800A9268 AFB1002C */  sw    $s1, 0x2c($sp)
/* B2040C 800A926C AFBF0044 */  sw    $ra, 0x44($sp)
/* B20410 800A9270 AFB5003C */  sw    $s5, 0x3c($sp)
/* B20414 800A9274 AFB40038 */  sw    $s4, 0x38($sp)
/* B20418 800A9278 AFB30034 */  sw    $s3, 0x34($sp)
/* B2041C 800A927C AFB20030 */  sw    $s2, 0x30($sp)
/* B20420 800A9280 AFB00028 */  sw    $s0, 0x28($sp)
/* B20424 800A9284 AFA5004C */  sw    $a1, 0x4c($sp)
/* B20428 800A9288 00968821 */  addu  $s1, $a0, $s6
/* B2042C 800A928C 862E4A38 */  lh    $t6, 0x4a38($s1)
/* B20430 800A9290 0080A825 */  move  $s5, $a0
/* B20434 800A9294 11C00005 */  beqz  $t6, .L800A92AC
/* B20438 800A9298 00000000 */   nop   
/* B2043C 800A929C 0C02A068 */  jal   func_800A81A0
/* B20440 800A92A0 00000000 */   nop   
/* B20444 800A92A4 10000003 */  b     .L800A92B4
/* B20448 800A92A8 00000000 */   nop   
.L800A92AC:
/* B2044C 800A92AC 0C02A0B2 */  jal   func_800A82C8
/* B20450 800A92B0 00000000 */   nop   
.L800A92B4:
/* B20454 800A92B4 3C148016 */  lui   $s4, %hi(gSaveContext) # $s4, 0x8016
/* B20458 800A92B8 2694E660 */  addiu $s4, %lo(gSaveContext) # addiu $s4, $s4, -0x19a0
/* B2045C 800A92BC 240F00BB */  li    $t7, 187
/* B20460 800A92C0 24180001 */  li    $t8, 1
/* B20464 800A92C4 24196AAB */  li    $t9, 27307
/* B20468 800A92C8 3408FFF1 */  li    $t0, 65521
/* B2046C 800A92CC AE8F0000 */  sw    $t7, ($s4)
/* B20470 800A92D0 AE980004 */  sw    $t8, 4($s4)
/* B20474 800A92D4 A699000C */  sh    $t9, 0xc($s4)
/* B20478 800A92D8 AE880008 */  sw    $t0, 8($s4)
/* B2047C 800A92DC 86294A38 */  lh    $t1, 0x4a38($s1)
/* B20480 800A92E0 00008025 */  move  $s0, $zero
/* B20484 800A92E4 2402005A */  li    $v0, 90
/* B20488 800A92E8 15200002 */  bnez  $t1, .L800A92F4
/* B2048C 800A92EC 24190045 */   li    $t9, 69
/* B20490 800A92F0 AE800008 */  sw    $zero, 8($s4)
.L800A92F4:
/* B20494 800A92F4 862A4A38 */  lh    $t2, 0x4a38($s1)
/* B20498 800A92F8 0290C021 */  addu  $t8, $s4, $s0
/* B2049C 800A92FC 000A58C0 */  sll   $t3, $t2, 3
/* B204A0 800A9300 02AB6021 */  addu  $t4, $s5, $t3
/* B204A4 800A9304 01906821 */  addu  $t5, $t4, $s0
/* B204A8 800A9308 26100001 */  addiu $s0, $s0, 1
/* B204AC 800A930C 01B67021 */  addu  $t6, $t5, $s6
/* B204B0 800A9310 91CF49FC */  lbu   $t7, 0x49fc($t6)
/* B204B4 800A9314 3210FFFF */  andi  $s0, $s0, 0xffff
/* B204B8 800A9318 2A010008 */  slti  $at, $s0, 8
/* B204BC 800A931C 1420FFF5 */  bnez  $at, .L800A92F4
/* B204C0 800A9320 A30F0024 */   sb    $t7, 0x24($t8)
/* B204C4 800A9324 2408004C */  li    $t0, 76
/* B204C8 800A9328 24090044 */  li    $t1, 68
/* B204CC 800A932C 240A0041 */  li    $t2, 65
/* B204D0 800A9330 A282001C */  sb    $v0, 0x1c($s4)
/* B204D4 800A9334 A299001D */  sb    $t9, 0x1d($s4)
/* B204D8 800A9338 A288001E */  sb    $t0, 0x1e($s4)
/* B204DC 800A933C A289001F */  sb    $t1, 0x1f($s4)
/* B204E0 800A9340 A28A0020 */  sb    $t2, 0x20($s4)
/* B204E4 800A9344 A2820021 */  sb    $v0, 0x21($s4)
/* B204E8 800A9348 922B49F4 */  lbu   $t3, 0x49f4($s1)
/* B204EC 800A934C 3C048014 */  lui   $a0, %hi(D_80140CDC) # $a0, 0x8014
/* B204F0 800A9350 24840CDC */  addiu $a0, %lo(D_80140CDC) # addiu $a0, $a0, 0xcdc
/* B204F4 800A9354 A68B002C */  sh    $t3, 0x2c($s4)
/* B204F8 800A9358 0C00084C */  jal   osSyncPrintf
/* B204FC 800A935C 922549F4 */   lbu   $a1, 0x49f4($s1)
/* B20500 800A9360 928C001F */  lbu   $t4, 0x1f($s4)
/* B20504 800A9364 928D0020 */  lbu   $t5, 0x20($s4)
/* B20508 800A9368 928E0021 */  lbu   $t6, 0x21($s4)
/* B2050C 800A936C 3C048014 */  lui   $a0, %hi(D_80140CF0) # $a0, 0x8014
/* B20510 800A9370 24840CF0 */  addiu $a0, %lo(D_80140CF0) # addiu $a0, $a0, 0xcf0
/* B20514 800A9374 9285001C */  lbu   $a1, 0x1c($s4)
/* B20518 800A9378 9286001D */  lbu   $a2, 0x1d($s4)
/* B2051C 800A937C 9287001E */  lbu   $a3, 0x1e($s4)
/* B20520 800A9380 AFAC0010 */  sw    $t4, 0x10($sp)
/* B20524 800A9384 AFAD0014 */  sw    $t5, 0x14($sp)
/* B20528 800A9388 0C00084C */  jal   osSyncPrintf
/* B2052C 800A938C AFAE0018 */   sw    $t6, 0x18($sp)
/* B20530 800A9390 3C048014 */  lui   $a0, %hi(D_80140D08) # $a0, 0x8014
/* B20534 800A9394 0C00084C */  jal   osSyncPrintf
/* B20538 800A9398 24840D08 */   addiu $a0, %lo(D_80140D08) # addiu $a0, $a0, 0xd08
/* B2053C 800A939C 02808825 */  move  $s1, $s4
/* B20540 800A93A0 00009025 */  move  $s2, $zero
/* B20544 800A93A4 00009825 */  move  $s3, $zero
/* B20548 800A93A8 00008025 */  move  $s0, $zero
.L800A93AC:
/* B2054C 800A93AC 3C048014 */  lui   $a0, %hi(D_80140D58) # $a0, 0x8014
/* B20550 800A93B0 24840D58 */  addiu $a0, %lo(D_80140D58) # addiu $a0, $a0, 0xd58
/* B20554 800A93B4 0C00084C */  jal   osSyncPrintf
/* B20558 800A93B8 96250000 */   lhu   $a1, ($s1)
/* B2055C 800A93BC 962F0000 */  lhu   $t7, ($s1)
/* B20560 800A93C0 26520001 */  addiu $s2, $s2, 1
/* B20564 800A93C4 3252FFFF */  andi  $s2, $s2, 0xffff
/* B20568 800A93C8 24010020 */  li    $at, 32
/* B2056C 800A93CC 026F9821 */  addu  $s3, $s3, $t7
/* B20570 800A93D0 3273FFFF */  andi  $s3, $s3, 0xffff
/* B20574 800A93D4 16410005 */  bne   $s2, $at, .L800A93EC
/* B20578 800A93D8 26310002 */   addiu $s1, $s1, 2
/* B2057C 800A93DC 3C048014 */  lui   $a0, %hi(D_80140D5C) # $a0, 0x8014
/* B20580 800A93E0 0C00084C */  jal   osSyncPrintf
/* B20584 800A93E4 24840D5C */   addiu $a0, %lo(D_80140D5C) # addiu $a0, $a0, 0xd5c
/* B20588 800A93E8 00009025 */  move  $s2, $zero
.L800A93EC:
/* B2058C 800A93EC 26100001 */  addiu $s0, $s0, 1
/* B20590 800A93F0 3210FFFF */  andi  $s0, $s0, 0xffff
/* B20594 800A93F4 2E0109AA */  sltiu $at, $s0, 0x9aa
/* B20598 800A93F8 1420FFEC */  bnez  $at, .L800A93AC
/* B2059C 800A93FC 00000000 */   nop   
/* B205A0 800A9400 3C048014 */  lui   $a0, %hi(D_80140D60) # $a0, 0x8014
/* B205A4 800A9404 A6931352 */  sh    $s3, 0x1352($s4)
/* B205A8 800A9408 24840D60 */  addiu $a0, %lo(D_80140D60) # addiu $a0, $a0, 0xd60
/* B205AC 800A940C 0C00084C */  jal   osSyncPrintf
/* B205B0 800A9410 3265FFFF */   andi  $a1, $s3, 0xffff
/* B205B4 800A9414 8E861354 */  lw    $a2, 0x1354($s4)
/* B205B8 800A9418 3C138013 */  lui   $s3, %hi(D_8012A4E0) # $s3, 0x8013
/* B205BC 800A941C 2673A4E0 */  addiu $s3, %lo(D_8012A4E0) # addiu $s3, $s3, -0x5b20
/* B205C0 800A9420 0006C040 */  sll   $t8, $a2, 1
/* B205C4 800A9424 0278C821 */  addu  $t9, $s3, $t8
/* B205C8 800A9428 97300000 */  lhu   $s0, ($t9)
/* B205CC 800A942C 3C048014 */  lui   $a0, %hi(D_80140D74) # $a0, 0x8014
/* B205D0 800A9430 24840D74 */  addiu $a0, %lo(D_80140D74) # addiu $a0, $a0, 0xd74
/* B205D4 800A9434 0C00084C */  jal   osSyncPrintf
/* B205D8 800A9438 02002825 */   move  $a1, $s0
/* B205DC 800A943C 8FA8004C */  lw    $t0, 0x4c($sp)
/* B205E0 800A9440 02802825 */  move  $a1, $s4
/* B205E4 800A9444 24061354 */  li    $a2, 4948
/* B205E8 800A9448 8D090000 */  lw    $t1, ($t0)
/* B205EC 800A944C 0C01A508 */  jal   MemCopy
/* B205F0 800A9450 01302021 */   addu  $a0, $t1, $s0
/* B205F4 800A9454 8E911354 */  lw    $s1, 0x1354($s4)
/* B205F8 800A9458 3C048014 */  lui   $a0, %hi(D_80140D80) # $a0, 0x8014
/* B205FC 800A945C 24840D80 */  addiu $a0, %lo(D_80140D80) # addiu $a0, $a0, 0xd80
/* B20600 800A9460 00115040 */  sll   $t2, $s1, 1
/* B20604 800A9464 026A5821 */  addu  $t3, $s3, $t2
/* B20608 800A9468 95700006 */  lhu   $s0, 6($t3)
/* B2060C 800A946C 26260003 */  addiu $a2, $s1, 3
/* B20610 800A9470 0C00084C */  jal   osSyncPrintf
/* B20614 800A9474 02002825 */   move  $a1, $s0
/* B20618 800A9478 8FAC004C */  lw    $t4, 0x4c($sp)
/* B2061C 800A947C 02802825 */  move  $a1, $s4
/* B20620 800A9480 24061354 */  li    $a2, 4948
/* B20624 800A9484 8D8D0000 */  lw    $t5, ($t4)
/* B20628 800A9488 0C01A508 */  jal   MemCopy
/* B2062C 800A948C 01B02021 */   addu  $a0, $t5, $s0
/* B20630 800A9490 8FAE004C */  lw    $t6, 0x4c($sp)
/* B20634 800A9494 3C040800 */  lui   $a0, 0x800
/* B20638 800A9498 34068000 */  li    $a2, 32768
/* B2063C 800A949C 24070001 */  li    $a3, 1
/* B20640 800A94A0 0C02A7A8 */  jal   Sram_ReadWrite
/* B20644 800A94A4 8DC50000 */   lw    $a1, ($t6)
/* B20648 800A94A8 3C048014 */  lui   $a0, %hi(D_80140D8C) # $a0, 0x8014
/* B2064C 800A94AC 0C00084C */  jal   osSyncPrintf
/* B20650 800A94B0 24840D8C */   addiu $a0, %lo(D_80140D8C) # addiu $a0, $a0, 0xd8c
/* B20654 800A94B4 3C048014 */  lui   $a0, %hi(D_80140D9C) # $a0, 0x8014
/* B20658 800A94B8 24840D9C */  addiu $a0, %lo(D_80140D9C) # addiu $a0, $a0, 0xd9c
/* B2065C 800A94BC 0C00084C */  jal   osSyncPrintf
/* B20660 800A94C0 8E851354 */   lw    $a1, 0x1354($s4)
/* B20664 800A94C4 3C048014 */  lui   $a0, %hi(D_80140DB8) # $a0, 0x8014
/* B20668 800A94C8 240F00A4 */  li    $t7, 164
/* B2066C 800A94CC 2418002C */  li    $t8, 44
/* B20670 800A94D0 AFB80014 */  sw    $t8, 0x14($sp)
/* B20674 800A94D4 AFAF0010 */  sw    $t7, 0x10($sp)
/* B20678 800A94D8 24840DB8 */  addiu $a0, %lo(D_80140DB8) # addiu $a0, $a0, 0xdb8
/* B2067C 800A94DC 24050022 */  li    $a1, 34
/* B20680 800A94E0 24060024 */  li    $a2, 36
/* B20684 800A94E4 0C00084C */  jal   osSyncPrintf
/* B20688 800A94E8 2407002E */   li    $a3, 46
/* B2068C 800A94EC 8E821354 */  lw    $v0, 0x1354($s4)
/* B20690 800A94F0 8FA8004C */  lw    $t0, 0x4c($sp)
/* B20694 800A94F4 3C010001 */  lui   $at, (0x0001C9F6 >> 16) # lui $at, 1
/* B20698 800A94F8 00021040 */  sll   $v0, $v0, 1
/* B2069C 800A94FC 0262C821 */  addu  $t9, $s3, $v0
/* B206A0 800A9500 97320000 */  lhu   $s2, ($t9)
/* B206A4 800A9504 8D090000 */  lw    $t1, ($t0)
/* B206A8 800A9508 02A22021 */  addu  $a0, $s5, $v0
/* B206AC 800A950C 3421C9F6 */  ori   $at, (0x0001C9F6 & 0xFFFF) # ori $at, $at, 0xc9f6
/* B206B0 800A9510 01322821 */  addu  $a1, $t1, $s2
/* B206B4 800A9514 24A50022 */  addiu $a1, $a1, 0x22
/* B206B8 800A9518 00812021 */  addu  $a0, $a0, $at
/* B206BC 800A951C 0C01A508 */  jal   MemCopy
/* B206C0 800A9520 24060002 */   li    $a2, 2
/* B206C4 800A9524 8FAC004C */  lw    $t4, 0x4c($sp)
/* B206C8 800A9528 8E8A1354 */  lw    $t2, 0x1354($s4)
/* B206CC 800A952C 3C010001 */  lui   $at, (0x0001C9FC >> 16) # lui $at, 1
/* B206D0 800A9530 8D8D0000 */  lw    $t5, ($t4)
/* B206D4 800A9534 000A58C0 */  sll   $t3, $t2, 3
/* B206D8 800A9538 02AB2021 */  addu  $a0, $s5, $t3
/* B206DC 800A953C 3421C9FC */  ori   $at, (0x0001C9FC & 0xFFFF) # ori $at, $at, 0xc9fc
/* B206E0 800A9540 01B22821 */  addu  $a1, $t5, $s2
/* B206E4 800A9544 24A50024 */  addiu $a1, $a1, 0x24
/* B206E8 800A9548 00812021 */  addu  $a0, $a0, $at
/* B206EC 800A954C 0C01A508 */  jal   MemCopy
/* B206F0 800A9550 24060008 */   li    $a2, 8
/* B206F4 800A9554 8FB8004C */  lw    $t8, 0x4c($sp)
/* B206F8 800A9558 8E8E1354 */  lw    $t6, 0x1354($s4)
/* B206FC 800A955C 3C010001 */  lui   $at, (0x0001CA14 >> 16) # lui $at, 1
/* B20700 800A9560 8F190000 */  lw    $t9, ($t8)
/* B20704 800A9564 000E7840 */  sll   $t7, $t6, 1
/* B20708 800A9568 02AF2021 */  addu  $a0, $s5, $t7
/* B2070C 800A956C 3421CA14 */  ori   $at, (0x0001CA14 & 0xFFFF) # ori $at, $at, 0xca14
/* B20710 800A9570 03322821 */  addu  $a1, $t9, $s2
/* B20714 800A9574 24A5002E */  addiu $a1, $a1, 0x2e
/* B20718 800A9578 00812021 */  addu  $a0, $a0, $at
/* B2071C 800A957C 0C01A508 */  jal   MemCopy
/* B20720 800A9580 24060002 */   li    $a2, 2
/* B20724 800A9584 8FAA004C */  lw    $t2, 0x4c($sp)
/* B20728 800A9588 8E881354 */  lw    $t0, 0x1354($s4)
/* B2072C 800A958C 3C010001 */  lui   $at, (0x0001CA1C >> 16) # lui $at, 1
/* B20730 800A9590 8D4B0000 */  lw    $t3, ($t2)
/* B20734 800A9594 00084880 */  sll   $t1, $t0, 2
/* B20738 800A9598 02A92021 */  addu  $a0, $s5, $t1
/* B2073C 800A959C 3421CA1C */  ori   $at, (0x0001CA1C & 0xFFFF) # ori $at, $at, 0xca1c
/* B20740 800A95A0 01722821 */  addu  $a1, $t3, $s2
/* B20744 800A95A4 24A500A4 */  addiu $a1, $a1, 0xa4
/* B20748 800A95A8 00812021 */  addu  $a0, $a0, $at
/* B2074C 800A95AC 0C01A508 */  jal   MemCopy
/* B20750 800A95B0 24060004 */   li    $a2, 4
/* B20754 800A95B4 8FAE004C */  lw    $t6, 0x4c($sp)
/* B20758 800A95B8 8E8C1354 */  lw    $t4, 0x1354($s4)
/* B2075C 800A95BC 3C010001 */  lui   $at, (0x0001CA28 >> 16) # lui $at, 1
/* B20760 800A95C0 8DCF0000 */  lw    $t7, ($t6)
/* B20764 800A95C4 000C6840 */  sll   $t5, $t4, 1
/* B20768 800A95C8 02AD2021 */  addu  $a0, $s5, $t5
/* B2076C 800A95CC 3421CA28 */  ori   $at, (0x0001CA28 & 0xFFFF) # ori $at, $at, 0xca28
/* B20770 800A95D0 01F22821 */  addu  $a1, $t7, $s2
/* B20774 800A95D4 24A5002C */  addiu $a1, $a1, 0x2c
/* B20778 800A95D8 00812021 */  addu  $a0, $a0, $at
/* B2077C 800A95DC 0C01A508 */  jal   MemCopy
/* B20780 800A95E0 24060002 */   li    $a2, 2
/* B20784 800A95E4 8FB9004C */  lw    $t9, 0x4c($sp)
/* B20788 800A95E8 8E981354 */  lw    $t8, 0x1354($s4)
/* B2078C 800A95EC 3C010001 */  lui   $at, (0x0001CA2E >> 16) # lui $at, 1
/* B20790 800A95F0 8F280000 */  lw    $t0, ($t9)
/* B20794 800A95F4 3421CA2E */  ori   $at, (0x0001CA2E & 0xFFFF) # ori $at, $at, 0xca2e
/* B20798 800A95F8 02B82021 */  addu  $a0, $s5, $t8
/* B2079C 800A95FC 01122821 */  addu  $a1, $t0, $s2
/* B207A0 800A9600 24A500CF */  addiu $a1, $a1, 0xcf
/* B207A4 800A9604 00812021 */  addu  $a0, $a0, $at
/* B207A8 800A9608 0C01A508 */  jal   MemCopy
/* B207AC 800A960C 24060001 */   li    $a2, 1
/* B207B0 800A9610 8FAB004C */  lw    $t3, 0x4c($sp)
/* B207B4 800A9614 8E891354 */  lw    $t1, 0x1354($s4)
/* B207B8 800A9618 3C010001 */  lui   $at, (0x0001CA32 >> 16) # lui $at, 1
/* B207BC 800A961C 8D6C0000 */  lw    $t4, ($t3)
/* B207C0 800A9620 00095040 */  sll   $t2, $t1, 1
/* B207C4 800A9624 02AA2021 */  addu  $a0, $s5, $t2
/* B207C8 800A9628 3421CA32 */  ori   $at, (0x0001CA32 & 0xFFFF) # ori $at, $at, 0xca32
/* B207CC 800A962C 01922821 */  addu  $a1, $t4, $s2
/* B207D0 800A9630 24A50030 */  addiu $a1, $a1, 0x30
/* B207D4 800A9634 00812021 */  addu  $a0, $a0, $at
/* B207D8 800A9638 0C01A508 */  jal   MemCopy
/* B207DC 800A963C 24060002 */   li    $a2, 2
/* B207E0 800A9640 8E911354 */  lw    $s1, 0x1354($s4)
/* B207E4 800A9644 3C048014 */  lui   $a0, %hi(D_80140DF0) # $a0, 0x8014
/* B207E8 800A9648 24840DF0 */  addiu $a0, %lo(D_80140DF0) # addiu $a0, $a0, 0xdf0
/* B207EC 800A964C 00116840 */  sll   $t5, $s1, 1
/* B207F0 800A9650 02AD7021 */  addu  $t6, $s5, $t5
/* B207F4 800A9654 01D67821 */  addu  $t7, $t6, $s6
/* B207F8 800A9658 85E64A28 */  lh    $a2, 0x4a28($t7)
/* B207FC 800A965C 0C00084C */  jal   osSyncPrintf
/* B20800 800A9660 02202825 */   move  $a1, $s1
/* B20804 800A9664 8E911354 */  lw    $s1, 0x1354($s4)
/* B20808 800A9668 3C048014 */  lui   $a0, %hi(D_80140E00) # $a0, 0x8014
/* B2080C 800A966C 24840E00 */  addiu $a0, %lo(D_80140E00) # addiu $a0, $a0, 0xe00
/* B20810 800A9670 02B1C021 */  addu  $t8, $s5, $s1
/* B20814 800A9674 0316C821 */  addu  $t9, $t8, $s6
/* B20818 800A9678 83264A2E */  lb    $a2, 0x4a2e($t9)
/* B2081C 800A967C 0C00084C */  jal   osSyncPrintf
/* B20820 800A9680 02202825 */   move  $a1, $s1
/* B20824 800A9684 8E911354 */  lw    $s1, 0x1354($s4)
/* B20828 800A9688 3C048014 */  lui   $a0, %hi(D_80140E18) # $a0, 0x8014
/* B2082C 800A968C 24840E18 */  addiu $a0, %lo(D_80140E18) # addiu $a0, $a0, 0xe18
/* B20830 800A9690 00114040 */  sll   $t0, $s1, 1
/* B20834 800A9694 02A84821 */  addu  $t1, $s5, $t0
/* B20838 800A9698 01365021 */  addu  $t2, $t1, $s6
/* B2083C 800A969C 95464A32 */  lhu   $a2, 0x4a32($t2)
/* B20840 800A96A0 0C00084C */  jal   osSyncPrintf
/* B20844 800A96A4 02202825 */   move  $a1, $s1
/* B20848 800A96A8 8FBF0044 */  lw    $ra, 0x44($sp)
/* B2084C 800A96AC 8FB00028 */  lw    $s0, 0x28($sp)
/* B20850 800A96B0 8FB1002C */  lw    $s1, 0x2c($sp)
/* B20854 800A96B4 8FB20030 */  lw    $s2, 0x30($sp)
/* B20858 800A96B8 8FB30034 */  lw    $s3, 0x34($sp)
/* B2085C 800A96BC 8FB40038 */  lw    $s4, 0x38($sp)
/* B20860 800A96C0 8FB5003C */  lw    $s5, 0x3c($sp)
/* B20864 800A96C4 8FB60040 */  lw    $s6, 0x40($sp)
/* B20868 800A96C8 03E00008 */  jr    $ra
/* B2086C 800A96CC 27BD0048 */   addiu $sp, $sp, 0x48

