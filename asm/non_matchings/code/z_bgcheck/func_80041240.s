glabel func_80041240
/* AB83E0 80041240 27BDFF68 */  addiu $sp, $sp, -0x98
/* AB83E4 80041244 AFBE0058 */  sw    $fp, 0x58($sp)
/* AB83E8 80041248 AFB70054 */  sw    $s7, 0x54($sp)
/* AB83EC 8004124C AFB60050 */  sw    $s6, 0x50($sp)
/* AB83F0 80041250 AFB5004C */  sw    $s5, 0x4c($sp)
/* AB83F4 80041254 AFB40048 */  sw    $s4, 0x48($sp)
/* AB83F8 80041258 AFB30044 */  sw    $s3, 0x44($sp)
/* AB83FC 8004125C AFB20040 */  sw    $s2, 0x40($sp)
/* AB8400 80041260 AFB1003C */  sw    $s1, 0x3c($sp)
/* AB8404 80041264 AFB00038 */  sw    $s0, 0x38($sp)
/* AB8408 80041268 F7B40030 */  sdc1  $f20, 0x30($sp)
/* AB840C 8004126C 00C09025 */  move  $s2, $a2
/* AB8410 80041270 00E09825 */  move  $s3, $a3
/* AB8414 80041274 0080A025 */  move  $s4, $a0
/* AB8418 80041278 30BEFFFF */  andi  $fp, $a1, 0xffff
/* AB841C 8004127C AFBF005C */  sw    $ra, 0x5c($sp)
/* AB8420 80041280 AFA5009C */  sw    $a1, 0x9c($sp)
/* AB8424 80041284 0000B025 */  move  $s6, $zero
/* AB8428 80041288 C7B400BC */  lwc1  $f20, 0xbc($sp)
/* AB842C 8004128C 00008025 */  move  $s0, $zero
/* AB8430 80041290 00808825 */  move  $s1, $a0
/* AB8434 80041294 27B50074 */  addiu $s5, $sp, 0x74
/* AB8438 80041298 8FB700B8 */  lw    $s7, 0xb8($sp)
.L8004129C:
/* AB843C 8004129C 962E13DC */  lhu   $t6, 0x13dc($s1)
/* AB8440 800412A0 0010C080 */  sll   $t8, $s0, 2
/* AB8444 800412A4 0310C023 */  subu  $t8, $t8, $s0
/* AB8448 800412A8 31CF0001 */  andi  $t7, $t6, 1
/* AB844C 800412AC 11E00040 */  beqz  $t7, .L800413B0
/* AB8450 800412B0 0018C0C0 */   sll   $t8, $t8, 3
/* AB8454 800412B4 0310C021 */  addu  $t8, $t8, $s0
/* AB8458 800412B8 0018C080 */  sll   $t8, $t8, 2
/* AB845C 800412BC 02981021 */  addu  $v0, $s4, $t8
/* AB8460 800412C0 8C590054 */  lw    $t9, 0x54($v0)
/* AB8464 800412C4 52F9003B */  beql  $s7, $t9, .L800413B4
/* AB8468 800412C8 26100001 */   addiu $s0, $s0, 1
/* AB846C 800412CC C6400004 */  lwc1  $f0, 4($s2)
/* AB8470 800412D0 C44C00B0 */  lwc1  $f12, 0xb0($v0)
/* AB8474 800412D4 C6620004 */  lwc1  $f2, 4($s3)
/* AB8478 800412D8 460C003C */  c.lt.s $f0, $f12
/* AB847C 800412DC 00000000 */  nop   
/* AB8480 800412E0 45020006 */  bc1fl .L800412FC
/* AB8484 800412E4 C44C00B4 */   lwc1  $f12, 0xb4($v0)
/* AB8488 800412E8 460C103C */  c.lt.s $f2, $f12
/* AB848C 800412EC 00000000 */  nop   
/* AB8490 800412F0 45030030 */  bc1tl .L800413B4
/* AB8494 800412F4 26100001 */   addiu $s0, $s0, 1
/* AB8498 800412F8 C44C00B4 */  lwc1  $f12, 0xb4($v0)
.L800412FC:
/* AB849C 800412FC 4600603C */  c.lt.s $f12, $f0
/* AB84A0 80041300 00000000 */  nop   
/* AB84A4 80041304 45020006 */  bc1fl .L80041320
/* AB84A8 80041308 8E490000 */   lw    $t1, ($s2)
/* AB84AC 8004130C 4602603C */  c.lt.s $f12, $f2
/* AB84B0 80041310 00000000 */  nop   
/* AB84B4 80041314 45030027 */  bc1tl .L800413B4
/* AB84B8 80041318 26100001 */   addiu $s0, $s0, 1
/* AB84BC 8004131C 8E490000 */  lw    $t1, ($s2)
.L80041320:
/* AB84C0 80041320 27AA0080 */  addiu $t2, $sp, 0x80
/* AB84C4 80041324 244400A8 */  addiu $a0, $v0, 0xa8
/* AB84C8 80041328 AEA90000 */  sw    $t1, ($s5)
/* AB84CC 8004132C 8E480004 */  lw    $t0, 4($s2)
/* AB84D0 80041330 02A02825 */  move  $a1, $s5
/* AB84D4 80041334 AEA80004 */  sw    $t0, 4($s5)
/* AB84D8 80041338 8E490008 */  lw    $t1, 8($s2)
/* AB84DC 8004133C AEA90008 */  sw    $t1, 8($s5)
/* AB84E0 80041340 8E6C0000 */  lw    $t4, ($s3)
/* AB84E4 80041344 AD4C0000 */  sw    $t4, ($t2)
/* AB84E8 80041348 8E6B0004 */  lw    $t3, 4($s3)
/* AB84EC 8004134C AD4B0004 */  sw    $t3, 4($t2)
/* AB84F0 80041350 8E6C0008 */  lw    $t4, 8($s3)
/* AB84F4 80041354 0C033980 */  jal   Math3D_LineVsSph
/* AB84F8 80041358 AD4C0008 */   sw    $t4, 8($t2)
/* AB84FC 8004135C 10400014 */  beqz  $v0, .L800413B0
/* AB8500 80041360 02802025 */   move  $a0, $s4
/* AB8504 80041364 8FAD00A8 */  lw    $t5, 0xa8($sp)
/* AB8508 80041368 8FAE00AC */  lw    $t6, 0xac($sp)
/* AB850C 8004136C 8FAF00B0 */  lw    $t7, 0xb0($sp)
/* AB8510 80041370 8FB800C0 */  lw    $t8, 0xc0($sp)
/* AB8514 80041374 33C5FFFF */  andi  $a1, $fp, 0xffff
/* AB8518 80041378 02403025 */  move  $a2, $s2
/* AB851C 8004137C 02603825 */  move  $a3, $s3
/* AB8520 80041380 AFB0001C */  sw    $s0, 0x1c($sp)
/* AB8524 80041384 E7B40020 */  swc1  $f20, 0x20($sp)
/* AB8528 80041388 AFAD0010 */  sw    $t5, 0x10($sp)
/* AB852C 8004138C AFAE0014 */  sw    $t6, 0x14($sp)
/* AB8530 80041390 AFAF0018 */  sw    $t7, 0x18($sp)
/* AB8534 80041394 0C01044A */  jal   func_80041128
/* AB8538 80041398 AFB80024 */   sw    $t8, 0x24($sp)
/* AB853C 8004139C 24010001 */  li    $at, 1
/* AB8540 800413A0 14410003 */  bne   $v0, $at, .L800413B0
/* AB8544 800413A4 8FB900B4 */   lw    $t9, 0xb4($sp)
/* AB8548 800413A8 AF300000 */  sw    $s0, ($t9)
/* AB854C 800413AC 24160001 */  li    $s6, 1
.L800413B0:
/* AB8550 800413B0 26100001 */  addiu $s0, $s0, 1
.L800413B4:
/* AB8554 800413B4 24010032 */  li    $at, 50
/* AB8558 800413B8 1601FFB8 */  bne   $s0, $at, .L8004129C
/* AB855C 800413BC 26310002 */   addiu $s1, $s1, 2
/* AB8560 800413C0 8FBF005C */  lw    $ra, 0x5c($sp)
/* AB8564 800413C4 02C01025 */  move  $v0, $s6
/* AB8568 800413C8 8FB60050 */  lw    $s6, 0x50($sp)
/* AB856C 800413CC D7B40030 */  ldc1  $f20, 0x30($sp)
/* AB8570 800413D0 8FB00038 */  lw    $s0, 0x38($sp)
/* AB8574 800413D4 8FB1003C */  lw    $s1, 0x3c($sp)
/* AB8578 800413D8 8FB20040 */  lw    $s2, 0x40($sp)
/* AB857C 800413DC 8FB30044 */  lw    $s3, 0x44($sp)
/* AB8580 800413E0 8FB40048 */  lw    $s4, 0x48($sp)
/* AB8584 800413E4 8FB5004C */  lw    $s5, 0x4c($sp)
/* AB8588 800413E8 8FB70054 */  lw    $s7, 0x54($sp)
/* AB858C 800413EC 8FBE0058 */  lw    $fp, 0x58($sp)
/* AB8590 800413F0 03E00008 */  jr    $ra
/* AB8594 800413F4 27BD0098 */   addiu $sp, $sp, 0x98

