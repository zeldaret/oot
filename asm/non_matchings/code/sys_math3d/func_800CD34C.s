glabel func_800CD34C
/* B444EC 800CD34C 27BDFF90 */  addiu $sp, $sp, -0x70
/* B444F0 800CD350 AFA60078 */  sw    $a2, 0x78($sp)
/* B444F4 800CD354 8FAE0078 */  lw    $t6, 0x78($sp)
/* B444F8 800CD358 AFBF002C */  sw    $ra, 0x2c($sp)
/* B444FC 800CD35C AFA7007C */  sw    $a3, 0x7c($sp)
/* B44500 800CD360 C5C40004 */  lwc1  $f4, 4($t6)
/* B44504 800CD364 8CA70008 */  lw    $a3, 8($a1)
/* B44508 800CD368 8CA60004 */  lw    $a2, 4($a1)
/* B4450C 800CD36C C48E0008 */  lwc1  $f14, 8($a0)
/* B44510 800CD370 C48C0004 */  lwc1  $f12, 4($a0)
/* B44514 800CD374 E7A40010 */  swc1  $f4, 0x10($sp)
/* B44518 800CD378 C5C60008 */  lwc1  $f6, 8($t6)
/* B4451C 800CD37C C7A40088 */  lwc1  $f4, 0x88($sp)
/* B44520 800CD380 C7A8007C */  lwc1  $f8, 0x7c($sp)
/* B44524 800CD384 C7AA0080 */  lwc1  $f10, 0x80($sp)
/* B44528 800CD388 AFA50074 */  sw    $a1, 0x74($sp)
/* B4452C 800CD38C AFA40070 */  sw    $a0, 0x70($sp)
/* B44530 800CD390 E7A60014 */  swc1  $f6, 0x14($sp)
/* B44534 800CD394 E7A40020 */  swc1  $f4, 0x20($sp)
/* B44538 800CD398 E7A80018 */  swc1  $f8, 0x18($sp)
/* B4453C 800CD39C 0C032C7E */  jal   func_800CB1F8
/* B44540 800CD3A0 E7AA001C */   swc1  $f10, 0x1c($sp)
/* B44544 800CD3A4 8FA30078 */  lw    $v1, 0x78($sp)
/* B44548 800CD3A8 8FA40070 */  lw    $a0, 0x70($sp)
/* B4454C 800CD3AC 8FA50074 */  lw    $a1, 0x74($sp)
/* B44550 800CD3B0 14400003 */  bnez  $v0, .L800CD3C0
/* B44554 800CD3B4 C7AC0088 */   lwc1  $f12, 0x88($sp)
/* B44558 800CD3B8 100000A7 */  b     .L800CD658
/* B4455C 800CD3BC 00001025 */   move  $v0, $zero
.L800CD3C0:
/* B44560 800CD3C0 C4860004 */  lwc1  $f6, 4($a0)
/* B44564 800CD3C4 C7AA007C */  lwc1  $f10, 0x7c($sp)
/* B44568 800CD3C8 460C6402 */  mul.s $f16, $f12, $f12
/* B4456C 800CD3CC E7A60058 */  swc1  $f6, 0x58($sp)
/* B44570 800CD3D0 C4840008 */  lwc1  $f4, 8($a0)
/* B44574 800CD3D4 C7A80058 */  lwc1  $f8, 0x58($sp)
/* B44578 800CD3D8 E7A40054 */  swc1  $f4, 0x54($sp)
/* B4457C 800CD3DC 460A4001 */  sub.s $f0, $f8, $f10
/* B44580 800CD3E0 C7A80080 */  lwc1  $f8, 0x80($sp)
/* B44584 800CD3E4 C7A60054 */  lwc1  $f6, 0x54($sp)
/* B44588 800CD3E8 46000102 */  mul.s $f4, $f0, $f0
/* B4458C 800CD3EC 46083081 */  sub.s $f2, $f6, $f8
/* B44590 800CD3F0 46021182 */  mul.s $f6, $f2, $f2
/* B44594 800CD3F4 46062100 */  add.s $f4, $f4, $f6
/* B44598 800CD3F8 4610203C */  c.lt.s $f4, $f16
/* B4459C 800CD3FC 00000000 */  nop   
/* B445A0 800CD400 4501001D */  bc1t  .L800CD478
/* B445A4 800CD404 00000000 */   nop   
/* B445A8 800CD408 C4A60008 */  lwc1  $f6, 8($a1)
/* B445AC 800CD40C C4B20004 */  lwc1  $f18, 4($a1)
/* B445B0 800CD410 E7B00048 */  swc1  $f16, 0x48($sp)
/* B445B4 800CD414 E7A6004C */  swc1  $f6, 0x4c($sp)
/* B445B8 800CD418 460A9301 */  sub.s $f12, $f18, $f10
/* B445BC 800CD41C C7A4004C */  lwc1  $f4, 0x4c($sp)
/* B445C0 800CD420 E7B20050 */  swc1  $f18, 0x50($sp)
/* B445C4 800CD424 46082381 */  sub.s $f14, $f4, $f8
/* B445C8 800CD428 460C6182 */  mul.s $f6, $f12, $f12
/* B445CC 800CD42C 00000000 */  nop   
/* B445D0 800CD430 460E7102 */  mul.s $f4, $f14, $f14
/* B445D4 800CD434 46043180 */  add.s $f6, $f6, $f4
/* B445D8 800CD438 4610303C */  c.lt.s $f6, $f16
/* B445DC 800CD43C 00000000 */  nop   
/* B445E0 800CD440 4501000D */  bc1t  .L800CD478
/* B445E4 800CD444 00000000 */   nop   
/* B445E8 800CD448 C4640004 */  lwc1  $f4, 4($v1)
/* B445EC 800CD44C C4660008 */  lwc1  $f6, 8($v1)
/* B445F0 800CD450 460A2401 */  sub.s $f16, $f4, $f10
/* B445F4 800CD454 46083481 */  sub.s $f18, $f6, $f8
/* B445F8 800CD458 46108102 */  mul.s $f4, $f16, $f16
/* B445FC 800CD45C C7A80048 */  lwc1  $f8, 0x48($sp)
/* B44600 800CD460 46129282 */  mul.s $f10, $f18, $f18
/* B44604 800CD464 460A2180 */  add.s $f6, $f4, $f10
/* B44608 800CD468 4608303C */  c.lt.s $f6, $f8
/* B4460C 800CD46C 00000000 */  nop   
/* B44610 800CD470 45000003 */  bc1f  .L800CD480
/* B44614 800CD474 00000000 */   nop   
.L800CD478:
/* B44618 800CD478 10000077 */  b     .L800CD658
/* B4461C 800CD47C 24020001 */   li    $v0, 1
.L800CD480:
/* B44620 800CD480 460E0102 */  mul.s $f4, $f0, $f14
/* B44624 800CD484 00000000 */  nop   
/* B44628 800CD488 460C1282 */  mul.s $f10, $f2, $f12
/* B4462C 800CD48C 460A2181 */  sub.s $f6, $f4, $f10
/* B44630 800CD490 46126202 */  mul.s $f8, $f12, $f18
/* B44634 800CD494 00000000 */  nop   
/* B44638 800CD498 46107102 */  mul.s $f4, $f14, $f16
/* B4463C 800CD49C E7A6006C */  swc1  $f6, 0x6c($sp)
/* B44640 800CD4A0 46003306 */  mov.s $f12, $f6
/* B44644 800CD4A4 46044281 */  sub.s $f10, $f8, $f4
/* B44648 800CD4A8 46028202 */  mul.s $f8, $f16, $f2
/* B4464C 800CD4AC C7A20084 */  lwc1  $f2, 0x84($sp)
/* B44650 800CD4B0 46009102 */  mul.s $f4, $f18, $f0
/* B44654 800CD4B4 E7AA0068 */  swc1  $f10, 0x68($sp)
/* B44658 800CD4B8 4602303E */  c.le.s $f6, $f2
/* B4465C 800CD4BC 46005386 */  mov.s $f14, $f10
/* B44660 800CD4C0 46044201 */  sub.s $f8, $f8, $f4
/* B44664 800CD4C4 E7A80064 */  swc1  $f8, 0x64($sp)
/* B44668 800CD4C8 45000009 */  bc1f  .L800CD4F0
/* B4466C 800CD4CC 46004406 */   mov.s $f16, $f8
/* B44670 800CD4D0 4602503E */  c.le.s $f10, $f2
/* B44674 800CD4D4 00000000 */  nop   
/* B44678 800CD4D8 45020006 */  bc1fl .L800CD4F4
/* B4467C 800CD4DC 46001007 */   neg.s $f0, $f2
/* B44680 800CD4E0 4602403E */  c.le.s $f8, $f2
/* B44684 800CD4E4 00000000 */  nop   
/* B44688 800CD4E8 4501000E */  bc1t  .L800CD524
/* B4468C 800CD4EC 00000000 */   nop   
.L800CD4F0:
/* B44690 800CD4F0 46001007 */  neg.s $f0, $f2
.L800CD4F4:
/* B44694 800CD4F4 460C003E */  c.le.s $f0, $f12
/* B44698 800CD4F8 00000000 */  nop   
/* B4469C 800CD4FC 4502000C */  bc1fl .L800CD530
/* B446A0 800CD500 C7A0008C */   lwc1  $f0, 0x8c($sp)
/* B446A4 800CD504 460E003E */  c.le.s $f0, $f14
/* B446A8 800CD508 00000000 */  nop   
/* B446AC 800CD50C 45020008 */  bc1fl .L800CD530
/* B446B0 800CD510 C7A0008C */   lwc1  $f0, 0x8c($sp)
/* B446B4 800CD514 4610003E */  c.le.s $f0, $f16
/* B446B8 800CD518 00000000 */  nop   
/* B446BC 800CD51C 45020004 */  bc1fl .L800CD530
/* B446C0 800CD520 C7A0008C */   lwc1  $f0, 0x8c($sp)
.L800CD524:
/* B446C4 800CD524 1000004C */  b     .L800CD658
/* B446C8 800CD528 24020001 */   li    $v0, 1
/* B446CC 800CD52C C7A0008C */  lwc1  $f0, 0x8c($sp)
.L800CD530:
/* B446D0 800CD530 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B446D4 800CD534 44812000 */  mtc1  $at, $f4
/* B446D8 800CD538 46000005 */  abs.s $f0, $f0
/* B446DC 800CD53C C7AC007C */  lwc1  $f12, 0x7c($sp)
/* B446E0 800CD540 4600203C */  c.lt.s $f4, $f0
/* B446E4 800CD544 C7AE0080 */  lwc1  $f14, 0x80($sp)
/* B446E8 800CD548 8FA60058 */  lw    $a2, 0x58($sp)
/* B446EC 800CD54C 8FA70054 */  lw    $a3, 0x54($sp)
/* B446F0 800CD550 45000040 */  bc1f  .L800CD654
/* B446F4 800CD554 C7A60050 */   lwc1  $f6, 0x50($sp)
/* B446F8 800CD558 C7AA004C */  lwc1  $f10, 0x4c($sp)
/* B446FC 800CD55C 27AF0060 */  addiu $t7, $sp, 0x60
/* B44700 800CD560 AFAF0018 */  sw    $t7, 0x18($sp)
/* B44704 800CD564 E7A60010 */  swc1  $f6, 0x10($sp)
/* B44708 800CD568 AFA40070 */  sw    $a0, 0x70($sp)
/* B4470C 800CD56C AFA50074 */  sw    $a1, 0x74($sp)
/* B44710 800CD570 0C03392E */  jal   func_800CE4B8
/* B44714 800CD574 E7AA0014 */   swc1  $f10, 0x14($sp)
/* B44718 800CD578 8FA30078 */  lw    $v1, 0x78($sp)
/* B4471C 800CD57C 8FA40070 */  lw    $a0, 0x70($sp)
/* B44720 800CD580 10400009 */  beqz  $v0, .L800CD5A8
/* B44724 800CD584 8FA50074 */   lw    $a1, 0x74($sp)
/* B44728 800CD588 C7A80060 */  lwc1  $f8, 0x60($sp)
/* B4472C 800CD58C C7A40048 */  lwc1  $f4, 0x48($sp)
/* B44730 800CD590 4604403C */  c.lt.s $f8, $f4
/* B44734 800CD594 00000000 */  nop   
/* B44738 800CD598 45020004 */  bc1fl .L800CD5AC
/* B4473C 800CD59C C4660004 */   lwc1  $f6, 4($v1)
/* B44740 800CD5A0 1000002D */  b     .L800CD658
/* B44744 800CD5A4 24020001 */   li    $v0, 1
.L800CD5A8:
/* B44748 800CD5A8 C4660004 */  lwc1  $f6, 4($v1)
.L800CD5AC:
/* B4474C 800CD5AC 8CA60004 */  lw    $a2, 4($a1)
/* B44750 800CD5B0 8CA70008 */  lw    $a3, 8($a1)
/* B44754 800CD5B4 E7A60010 */  swc1  $f6, 0x10($sp)
/* B44758 800CD5B8 C46A0008 */  lwc1  $f10, 8($v1)
/* B4475C 800CD5BC 27B80060 */  addiu $t8, $sp, 0x60
/* B44760 800CD5C0 AFB80018 */  sw    $t8, 0x18($sp)
/* B44764 800CD5C4 AFA40070 */  sw    $a0, 0x70($sp)
/* B44768 800CD5C8 C7AC007C */  lwc1  $f12, 0x7c($sp)
/* B4476C 800CD5CC C7AE0080 */  lwc1  $f14, 0x80($sp)
/* B44770 800CD5D0 0C03392E */  jal   func_800CE4B8
/* B44774 800CD5D4 E7AA0014 */   swc1  $f10, 0x14($sp)
/* B44778 800CD5D8 8FA30078 */  lw    $v1, 0x78($sp)
/* B4477C 800CD5DC 10400009 */  beqz  $v0, .L800CD604
/* B44780 800CD5E0 8FA40070 */   lw    $a0, 0x70($sp)
/* B44784 800CD5E4 C7A80060 */  lwc1  $f8, 0x60($sp)
/* B44788 800CD5E8 C7A40048 */  lwc1  $f4, 0x48($sp)
/* B4478C 800CD5EC 4604403C */  c.lt.s $f8, $f4
/* B44790 800CD5F0 00000000 */  nop   
/* B44794 800CD5F4 45020004 */  bc1fl .L800CD608
/* B44798 800CD5F8 C4860004 */   lwc1  $f6, 4($a0)
/* B4479C 800CD5FC 10000016 */  b     .L800CD658
/* B447A0 800CD600 24020001 */   li    $v0, 1
.L800CD604:
/* B447A4 800CD604 C4860004 */  lwc1  $f6, 4($a0)
.L800CD608:
/* B447A8 800CD608 8C660004 */  lw    $a2, 4($v1)
/* B447AC 800CD60C 8C670008 */  lw    $a3, 8($v1)
/* B447B0 800CD610 E7A60010 */  swc1  $f6, 0x10($sp)
/* B447B4 800CD614 C48A0008 */  lwc1  $f10, 8($a0)
/* B447B8 800CD618 27B90060 */  addiu $t9, $sp, 0x60
/* B447BC 800CD61C AFB90018 */  sw    $t9, 0x18($sp)
/* B447C0 800CD620 C7AC007C */  lwc1  $f12, 0x7c($sp)
/* B447C4 800CD624 C7AE0080 */  lwc1  $f14, 0x80($sp)
/* B447C8 800CD628 0C03392E */  jal   func_800CE4B8
/* B447CC 800CD62C E7AA0014 */   swc1  $f10, 0x14($sp)
/* B447D0 800CD630 10400008 */  beqz  $v0, .L800CD654
/* B447D4 800CD634 C7A80060 */   lwc1  $f8, 0x60($sp)
/* B447D8 800CD638 C7A40048 */  lwc1  $f4, 0x48($sp)
/* B447DC 800CD63C 4604403C */  c.lt.s $f8, $f4
/* B447E0 800CD640 00000000 */  nop   
/* B447E4 800CD644 45020004 */  bc1fl .L800CD658
/* B447E8 800CD648 00001025 */   move  $v0, $zero
/* B447EC 800CD64C 10000002 */  b     .L800CD658
/* B447F0 800CD650 24020001 */   li    $v0, 1
.L800CD654:
/* B447F4 800CD654 00001025 */  move  $v0, $zero
.L800CD658:
/* B447F8 800CD658 8FBF002C */  lw    $ra, 0x2c($sp)
/* B447FC 800CD65C 27BD0070 */  addiu $sp, $sp, 0x70
/* B44800 800CD660 03E00008 */  jr    $ra
/* B44804 800CD664 00000000 */   nop   

