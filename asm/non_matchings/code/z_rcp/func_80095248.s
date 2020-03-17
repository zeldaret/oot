.rdata
glabel D_8013EEF8
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EF04
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80095248
/* B0C3E8 80095248 27BDFF38 */  addiu $sp, $sp, -0xc8
/* B0C3EC 8009524C AFA500CC */  sw    $a1, 0xcc($sp)
/* B0C3F0 80095250 AFA600D0 */  sw    $a2, 0xd0($sp)
/* B0C3F4 80095254 00802825 */  move  $a1, $a0
/* B0C3F8 80095258 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0C3FC 8009525C AFA400C8 */  sw    $a0, 0xc8($sp)
/* B0C400 80095260 AFA700D4 */  sw    $a3, 0xd4($sp)
/* B0C404 80095264 3C068014 */  lui   $a2, %hi(D_8013EEF8) # $a2, 0x8014
/* B0C408 80095268 24C6EEF8 */  addiu $a2, %lo(D_8013EEF8) # addiu $a2, $a2, -0x1108
/* B0C40C 8009526C 24070952 */  li    $a3, 2386
/* B0C410 80095270 AFA500C8 */  sw    $a1, 0xc8($sp)
/* B0C414 80095274 0C031AB1 */  jal   func_800C6AC4
/* B0C418 80095278 27A400B4 */   addiu $a0, $sp, 0xb4
/* B0C41C 8009527C 8FA500C8 */  lw    $a1, 0xc8($sp)
/* B0C420 80095280 93AC00CF */  lbu   $t4, 0xcf($sp)
/* B0C424 80095284 3C048012 */  lui   $a0, %hi(D_80126FD0) # $a0, 0x8012
/* B0C428 80095288 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C42C 8009528C 24846FD0 */  addiu $a0, %lo(D_80126FD0) # addiu $a0, $a0, 0x6fd0
/* B0C430 80095290 3C06DE00 */  lui   $a2, 0xde00
/* B0C434 80095294 244E0008 */  addiu $t6, $v0, 8
/* B0C438 80095298 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0C43C 8009529C AC440004 */  sw    $a0, 4($v0)
/* B0C440 800952A0 AC460000 */  sw    $a2, ($v0)
/* B0C444 800952A4 8CA202D0 */  lw    $v0, 0x2d0($a1)
/* B0C448 800952A8 3C098013 */  lui   $t1, %hi(gScreenWidth) # $t1, 0x8013
/* B0C44C 800952AC 2529D270 */  addiu $t1, %lo(gScreenWidth) # addiu $t1, $t1, -0x2d90
/* B0C450 800952B0 244F0008 */  addiu $t7, $v0, 8
/* B0C454 800952B4 ACAF02D0 */  sw    $t7, 0x2d0($a1)
/* B0C458 800952B8 AC440004 */  sw    $a0, 4($v0)
/* B0C45C 800952BC AC460000 */  sw    $a2, ($v0)
/* B0C460 800952C0 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0C464 800952C4 3C014080 */  li    $at, 0x40800000 # 0.000000
/* B0C468 800952C8 44810000 */  mtc1  $at, $f0
/* B0C46C 800952CC 24580008 */  addiu $t8, $v0, 8
/* B0C470 800952D0 ACB802B0 */  sw    $t8, 0x2b0($a1)
/* B0C474 800952D4 AC440004 */  sw    $a0, 4($v0)
/* B0C478 800952D8 AC460000 */  sw    $a2, ($v0)
/* B0C47C 800952DC 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C480 800952E0 3C04ED00 */  lui   $a0, 0xed00
/* B0C484 800952E4 3C068013 */  lui   $a2, %hi(gScreenHeight) # $a2, 0x8013
/* B0C488 800952E8 24590008 */  addiu $t9, $v0, 8
/* B0C48C 800952EC ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B0C490 800952F0 AC440000 */  sw    $a0, ($v0)
/* B0C494 800952F4 8D2E0000 */  lw    $t6, ($t1)
/* B0C498 800952F8 24C6D274 */  addiu $a2, %lo(gScreenHeight) # addiu $a2, $a2, -0x2d8c
/* B0C49C 800952FC 8CCF0000 */  lw    $t7, ($a2)
/* B0C4A0 80095300 448E2000 */  mtc1  $t6, $f4
/* B0C4A4 80095304 3C0BFF10 */  li    $t3, 0xFF100000 # 0.000000
/* B0C4A8 80095308 448F8000 */  mtc1  $t7, $f16
/* B0C4AC 8009530C 468021A0 */  cvt.s.w $f6, $f4
/* B0C4B0 80095310 3C088017 */  lui   $t0, %hi(D_801759C0) # $t0, 0x8017
/* B0C4B4 80095314 250859C0 */  addiu $t0, %lo(D_801759C0) # addiu $t0, $t0, 0x59c0
/* B0C4B8 80095318 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* B0C4BC 8009531C 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* B0C4C0 80095320 468084A0 */  cvt.s.w $f18, $f16
/* B0C4C4 80095324 46003202 */  mul.s $f8, $f6, $f0
/* B0C4C8 80095328 4600428D */  trunc.w.s $f10, $f8
/* B0C4CC 8009532C 46009102 */  mul.s $f4, $f18, $f0
/* B0C4D0 80095330 44185000 */  mfc1  $t8, $f10
/* B0C4D4 80095334 00000000 */  nop   
/* B0C4D8 80095338 33190FFF */  andi  $t9, $t8, 0xfff
/* B0C4DC 8009533C 4600218D */  trunc.w.s $f6, $f4
/* B0C4E0 80095340 00197300 */  sll   $t6, $t9, 0xc
/* B0C4E4 80095344 44193000 */  mfc1  $t9, $f6
/* B0C4E8 80095348 00000000 */  nop   
/* B0C4EC 8009534C 332F0FFF */  andi  $t7, $t9, 0xfff
/* B0C4F0 80095350 01CFC025 */  or    $t8, $t6, $t7
/* B0C4F4 80095354 AC580004 */  sw    $t8, 4($v0)
/* B0C4F8 80095358 8CA202D0 */  lw    $v0, 0x2d0($a1)
/* B0C4FC 8009535C 24590008 */  addiu $t9, $v0, 8
/* B0C500 80095360 ACB902D0 */  sw    $t9, 0x2d0($a1)
/* B0C504 80095364 AC440000 */  sw    $a0, ($v0)
/* B0C508 80095368 8D2E0000 */  lw    $t6, ($t1)
/* B0C50C 8009536C 8CCF0000 */  lw    $t7, ($a2)
/* B0C510 80095370 448E4000 */  mtc1  $t6, $f8
/* B0C514 80095374 448F2000 */  mtc1  $t7, $f4
/* B0C518 80095378 468042A0 */  cvt.s.w $f10, $f8
/* B0C51C 8009537C 468021A0 */  cvt.s.w $f6, $f4
/* B0C520 80095380 46005402 */  mul.s $f16, $f10, $f0
/* B0C524 80095384 4600848D */  trunc.w.s $f18, $f16
/* B0C528 80095388 46003202 */  mul.s $f8, $f6, $f0
/* B0C52C 8009538C 44189000 */  mfc1  $t8, $f18
/* B0C530 80095390 00000000 */  nop   
/* B0C534 80095394 33190FFF */  andi  $t9, $t8, 0xfff
/* B0C538 80095398 4600428D */  trunc.w.s $f10, $f8
/* B0C53C 8009539C 00197300 */  sll   $t6, $t9, 0xc
/* B0C540 800953A0 44195000 */  mfc1  $t9, $f10
/* B0C544 800953A4 00000000 */  nop   
/* B0C548 800953A8 332F0FFF */  andi  $t7, $t9, 0xfff
/* B0C54C 800953AC 01CFC025 */  or    $t8, $t6, $t7
/* B0C550 800953B0 AC580004 */  sw    $t8, 4($v0)
/* B0C554 800953B4 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0C558 800953B8 24590008 */  addiu $t9, $v0, 8
/* B0C55C 800953BC ACB902B0 */  sw    $t9, 0x2b0($a1)
/* B0C560 800953C0 AC440000 */  sw    $a0, ($v0)
/* B0C564 800953C4 8D2E0000 */  lw    $t6, ($t1)
/* B0C568 800953C8 8CCF0000 */  lw    $t7, ($a2)
/* B0C56C 800953CC 3C04FE00 */  li    $a0, 0xFE000000 # 0.000000
/* B0C570 800953D0 448E8000 */  mtc1  $t6, $f16
/* B0C574 800953D4 448F4000 */  mtc1  $t7, $f8
/* B0C578 800953D8 468084A0 */  cvt.s.w $f18, $f16
/* B0C57C 800953DC 468042A0 */  cvt.s.w $f10, $f8
/* B0C580 800953E0 46009102 */  mul.s $f4, $f18, $f0
/* B0C584 800953E4 4600218D */  trunc.w.s $f6, $f4
/* B0C588 800953E8 46005402 */  mul.s $f16, $f10, $f0
/* B0C58C 800953EC 44183000 */  mfc1  $t8, $f6
/* B0C590 800953F0 00000000 */  nop   
/* B0C594 800953F4 33190FFF */  andi  $t9, $t8, 0xfff
/* B0C598 800953F8 4600848D */  trunc.w.s $f18, $f16
/* B0C59C 800953FC 00197300 */  sll   $t6, $t9, 0xc
/* B0C5A0 80095400 44199000 */  mfc1  $t9, $f18
/* B0C5A4 80095404 00000000 */  nop   
/* B0C5A8 80095408 332F0FFF */  andi  $t7, $t9, 0xfff
/* B0C5AC 8009540C 01CFC025 */  or    $t8, $t6, $t7
/* B0C5B0 80095410 AC580004 */  sw    $t8, 4($v0)
/* B0C5B4 80095414 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C5B8 80095418 24590008 */  addiu $t9, $v0, 8
/* B0C5BC 8009541C ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B0C5C0 80095420 8D2E0000 */  lw    $t6, ($t1)
/* B0C5C4 80095424 25CFFFFF */  addiu $t7, $t6, -1
/* B0C5C8 80095428 31F80FFF */  andi  $t8, $t7, 0xfff
/* B0C5CC 8009542C 030BC825 */  or    $t9, $t8, $t3
/* B0C5D0 80095430 AC590000 */  sw    $t9, ($v0)
/* B0C5D4 80095434 8CAE02DC */  lw    $t6, 0x2dc($a1)
/* B0C5D8 80095438 AC4E0004 */  sw    $t6, 4($v0)
/* B0C5DC 8009543C 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C5E0 80095440 244F0008 */  addiu $t7, $v0, 8
/* B0C5E4 80095444 ACAF02C0 */  sw    $t7, 0x2c0($a1)
/* B0C5E8 80095448 8D380000 */  lw    $t8, ($t1)
/* B0C5EC 8009544C 2719FFFF */  addiu $t9, $t8, -1
/* B0C5F0 80095450 332E0FFF */  andi  $t6, $t9, 0xfff
/* B0C5F4 80095454 01CB7825 */  or    $t7, $t6, $t3
/* B0C5F8 80095458 AC4F0000 */  sw    $t7, ($v0)
/* B0C5FC 8009545C 8CB802DC */  lw    $t8, 0x2dc($a1)
/* B0C600 80095460 AC580004 */  sw    $t8, 4($v0)
/* B0C604 80095464 8CA202D0 */  lw    $v0, 0x2d0($a1)
/* B0C608 80095468 24590008 */  addiu $t9, $v0, 8
/* B0C60C 8009546C ACB902D0 */  sw    $t9, 0x2d0($a1)
/* B0C610 80095470 8D2E0000 */  lw    $t6, ($t1)
/* B0C614 80095474 25CFFFFF */  addiu $t7, $t6, -1
/* B0C618 80095478 31F80FFF */  andi  $t8, $t7, 0xfff
/* B0C61C 8009547C 030BC825 */  or    $t9, $t8, $t3
/* B0C620 80095480 AC590000 */  sw    $t9, ($v0)
/* B0C624 80095484 8CAE02DC */  lw    $t6, 0x2dc($a1)
/* B0C628 80095488 AC4E0004 */  sw    $t6, 4($v0)
/* B0C62C 8009548C 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0C630 80095490 244F0008 */  addiu $t7, $v0, 8
/* B0C634 80095494 ACAF02B0 */  sw    $t7, 0x2b0($a1)
/* B0C638 80095498 8D380000 */  lw    $t8, ($t1)
/* B0C63C 8009549C 2719FFFF */  addiu $t9, $t8, -1
/* B0C640 800954A0 332E0FFF */  andi  $t6, $t9, 0xfff
/* B0C644 800954A4 01CB7825 */  or    $t7, $t6, $t3
/* B0C648 800954A8 AC4F0000 */  sw    $t7, ($v0)
/* B0C64C 800954AC 8CB802DC */  lw    $t8, 0x2dc($a1)
/* B0C650 800954B0 AC580004 */  sw    $t8, 4($v0)
/* B0C654 800954B4 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C658 800954B8 24590008 */  addiu $t9, $v0, 8
/* B0C65C 800954BC ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B0C660 800954C0 AC480004 */  sw    $t0, 4($v0)
/* B0C664 800954C4 AC440000 */  sw    $a0, ($v0)
/* B0C668 800954C8 8CA202D0 */  lw    $v0, 0x2d0($a1)
/* B0C66C 800954CC 244E0008 */  addiu $t6, $v0, 8
/* B0C670 800954D0 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0C674 800954D4 AC480004 */  sw    $t0, 4($v0)
/* B0C678 800954D8 AC440000 */  sw    $a0, ($v0)
/* B0C67C 800954DC 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0C680 800954E0 3C0E8016 */  lui   $t6, %hi(D_80161490) # $t6, 0x8016
/* B0C684 800954E4 244F0008 */  addiu $t7, $v0, 8
/* B0C688 800954E8 ACAF02B0 */  sw    $t7, 0x2b0($a1)
/* B0C68C 800954EC AC480004 */  sw    $t0, 4($v0)
/* B0C690 800954F0 AC440000 */  sw    $a0, ($v0)
/* B0C694 800954F4 8C780000 */  lw    $t8, ($v1)
/* B0C698 800954F8 87190190 */  lh    $t9, 0x190($t8)
/* B0C69C 800954FC 2B210002 */  slti  $at, $t9, 2
/* B0C6A0 80095500 10200113 */  beqz  $at, .L80095950
/* B0C6A4 80095504 00000000 */   nop   
/* B0C6A8 80095508 8DCE1490 */  lw    $t6, %lo(D_80161490)($t6)
/* B0C6AC 8009550C 29C10002 */  slti  $at, $t6, 2
/* B0C6B0 80095510 1020010F */  beqz  $at, .L80095950
/* B0C6B4 80095514 00000000 */   nop   
/* B0C6B8 80095518 AFA500C8 */  sw    $a1, 0xc8($sp)
/* B0C6BC 8009551C AFA8002C */  sw    $t0, 0x2c($sp)
/* B0C6C0 80095520 0C02CE3F */  jal   func_800B38FC
/* B0C6C4 80095524 A3AC00CF */   sb    $t4, 0xcf($sp)
/* B0C6C8 80095528 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* B0C6CC 8009552C 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* B0C6D0 80095530 8C640000 */  lw    $a0, ($v1)
/* B0C6D4 80095534 24060010 */  li    $a2, 16
/* B0C6D8 80095538 3C098013 */  lui   $t1, %hi(gScreenWidth) # $t1, 0x8013
/* B0C6DC 8009553C 848F1074 */  lh    $t7, 0x1074($a0)
/* B0C6E0 80095540 2529D270 */  addiu $t1, %lo(gScreenWidth) # addiu $t1, $t1, -0x2d90
/* B0C6E4 80095544 8FA500C8 */  lw    $a1, 0xc8($sp)
/* B0C6E8 80095548 8FA8002C */  lw    $t0, 0x2c($sp)
/* B0C6EC 8009554C 3C0BFF10 */  lui   $t3, 0xff10
/* B0C6F0 80095550 93AC00CF */  lbu   $t4, 0xcf($sp)
/* B0C6F4 80095554 14CF0041 */  bne   $a2, $t7, .L8009565C
/* B0C6F8 80095558 00405025 */   move  $t2, $v0
/* B0C6FC 8009555C 84981092 */  lh    $t8, 0x1092($a0)
/* B0C700 80095560 24070003 */  li    $a3, 3
/* B0C704 80095564 50D80020 */  beql  $a2, $t8, .L800955E8
/* B0C708 80095568 84861076 */   lh    $a2, 0x1076($a0)
/* B0C70C 8009556C A4871076 */  sh    $a3, 0x1076($a0)
/* B0C710 80095570 8C790000 */  lw    $t9, ($v1)
/* B0C714 80095574 A7271078 */  sh    $a3, 0x1078($t9)
/* B0C718 80095578 8C6E0000 */  lw    $t6, ($v1)
/* B0C71C 8009557C A5C0107A */  sh    $zero, 0x107a($t6)
/* B0C720 80095580 8C6F0000 */  lw    $t7, ($v1)
/* B0C724 80095584 A5E0107C */  sh    $zero, 0x107c($t7)
/* B0C728 80095588 8C780000 */  lw    $t8, ($v1)
/* B0C72C 8009558C A700107E */  sh    $zero, 0x107e($t8)
/* B0C730 80095590 8C790000 */  lw    $t9, ($v1)
/* B0C734 80095594 A7201080 */  sh    $zero, 0x1080($t9)
/* B0C738 80095598 8C6E0000 */  lw    $t6, ($v1)
/* B0C73C 8009559C A5C01082 */  sh    $zero, 0x1082($t6)
/* B0C740 800955A0 8C6F0000 */  lw    $t7, ($v1)
/* B0C744 800955A4 A5E01084 */  sh    $zero, 0x1084($t7)
/* B0C748 800955A8 8C780000 */  lw    $t8, ($v1)
/* B0C74C 800955AC A7001086 */  sh    $zero, 0x1086($t8)
/* B0C750 800955B0 8C790000 */  lw    $t9, ($v1)
/* B0C754 800955B4 A7201088 */  sh    $zero, 0x1088($t9)
/* B0C758 800955B8 8C6E0000 */  lw    $t6, ($v1)
/* B0C75C 800955BC A5C0108A */  sh    $zero, 0x108a($t6)
/* B0C760 800955C0 8C6F0000 */  lw    $t7, ($v1)
/* B0C764 800955C4 A5E0108C */  sh    $zero, 0x108c($t7)
/* B0C768 800955C8 8C780000 */  lw    $t8, ($v1)
/* B0C76C 800955CC A700108E */  sh    $zero, 0x108e($t8)
/* B0C770 800955D0 8C790000 */  lw    $t9, ($v1)
/* B0C774 800955D4 A7201090 */  sh    $zero, 0x1090($t9)
/* B0C778 800955D8 8C6E0000 */  lw    $t6, ($v1)
/* B0C77C 800955DC A5C61092 */  sh    $a2, 0x1092($t6)
/* B0C780 800955E0 8C640000 */  lw    $a0, ($v1)
/* B0C784 800955E4 84861076 */  lh    $a2, 0x1076($a0)
.L800955E8:
/* B0C788 800955E8 30CF0001 */  andi  $t7, $a2, 1
/* B0C78C 800955EC 51E00005 */  beql  $t7, $zero, .L80095604
/* B0C790 800955F0 30D80002 */   andi  $t8, $a2, 2
/* B0C794 800955F4 A482107A */  sh    $v0, 0x107a($a0)
/* B0C798 800955F8 8C640000 */  lw    $a0, ($v1)
/* B0C79C 800955FC 84861076 */  lh    $a2, 0x1076($a0)
/* B0C7A0 80095600 30D80002 */  andi  $t8, $a2, 2
.L80095604:
/* B0C7A4 80095604 5300000A */  beql  $t8, $zero, .L80095630
/* B0C7A8 80095608 84821078 */   lh    $v0, 0x1078($a0)
/* B0C7AC 8009560C A48C107C */  sh    $t4, 0x107c($a0)
/* B0C7B0 80095610 8C6E0000 */  lw    $t6, ($v1)
/* B0C7B4 80095614 93B900D3 */  lbu   $t9, 0xd3($sp)
/* B0C7B8 80095618 A5D9107E */  sh    $t9, 0x107e($t6)
/* B0C7BC 8009561C 8C780000 */  lw    $t8, ($v1)
/* B0C7C0 80095620 93AF00D7 */  lbu   $t7, 0xd7($sp)
/* B0C7C4 80095624 A70F1080 */  sh    $t7, 0x1080($t8)
/* B0C7C8 80095628 8C640000 */  lw    $a0, ($v1)
/* B0C7CC 8009562C 84821078 */  lh    $v0, 0x1078($a0)
.L80095630:
/* B0C7D0 80095630 30590001 */  andi  $t9, $v0, 1
/* B0C7D4 80095634 13200002 */  beqz  $t9, .L80095640
/* B0C7D8 80095638 304E0002 */   andi  $t6, $v0, 2
/* B0C7DC 8009563C 848A107A */  lh    $t2, 0x107a($a0)
.L80095640:
/* B0C7E0 80095640 51C00007 */  beql  $t6, $zero, .L80095660
/* B0C7E4 80095644 93B900D7 */   lbu   $t9, 0xd7($sp)
/* B0C7E8 80095648 848F107E */  lh    $t7, 0x107e($a0)
/* B0C7EC 8009564C 908C107D */  lbu   $t4, 0x107d($a0)
/* B0C7F0 80095650 A3AF00D3 */  sb    $t7, 0xd3($sp)
/* B0C7F4 80095654 84981080 */  lh    $t8, 0x1080($a0)
/* B0C7F8 80095658 A3B800D7 */  sb    $t8, 0xd7($sp)
.L8009565C:
/* B0C7FC 8009565C 93B900D7 */  lbu   $t9, 0xd7($sp)
.L80095660:
/* B0C800 80095660 93BF00D3 */  lbu   $ra, 0xd3($sp)
/* B0C804 80095664 3C04E300 */  lui   $a0, (0xE3000001 >> 16) # lui $a0, 0xe300
/* B0C808 80095668 AFB90020 */  sw    $t9, 0x20($sp)
/* B0C80C 8009566C 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C810 80095670 34840A01 */  ori   $a0, (0xE3000A01 & 0xFFFF) # ori $a0, $a0, 0xa01
/* B0C814 80095674 3C070030 */  lui   $a3, 0x30
/* B0C818 80095678 244E0008 */  addiu $t6, $v0, 8
/* B0C81C 8009567C ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0C820 80095680 8D2F0000 */  lw    $t7, ($t1)
/* B0C824 80095684 AC480004 */  sw    $t0, 4($v0)
/* B0C828 80095688 3C08F600 */  lui   $t0, 0xf600
/* B0C82C 8009568C 25F8FFFF */  addiu $t8, $t7, -1
/* B0C830 80095690 33190FFF */  andi  $t9, $t8, 0xfff
/* B0C834 80095694 032B7025 */  or    $t6, $t9, $t3
/* B0C838 80095698 AC4E0000 */  sw    $t6, ($v0)
/* B0C83C 8009569C 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C840 800956A0 3C19E200 */  lui   $t9, (0xE200001C >> 16) # lui $t9, 0xe200
/* B0C844 800956A4 3739001C */  ori   $t9, (0xE200001C & 0xFFFF) # ori $t9, $t9, 0x1c
/* B0C848 800956A8 244F0008 */  addiu $t7, $v0, 8
/* B0C84C 800956AC ACAF02C0 */  sw    $t7, 0x2c0($a1)
/* B0C850 800956B0 AC470004 */  sw    $a3, 4($v0)
/* B0C854 800956B4 AC440000 */  sw    $a0, ($v0)
/* B0C858 800956B8 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C85C 800956BC 3C0FF700 */  lui   $t7, 0xf700
/* B0C860 800956C0 314603FF */  andi  $a2, $t2, 0x3ff
/* B0C864 800956C4 24580008 */  addiu $t8, $v0, 8
/* B0C868 800956C8 ACB802C0 */  sw    $t8, 0x2c0($a1)
/* B0C86C 800956CC AC400004 */  sw    $zero, 4($v0)
/* B0C870 800956D0 AC590000 */  sw    $t9, ($v0)
/* B0C874 800956D4 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C878 800956D8 3C18FFFC */  lui   $t8, (0xFFFCFFFC >> 16) # lui $t8, 0xfffc
/* B0C87C 800956DC 3718FFFC */  ori   $t8, (0xFFFCFFFC & 0xFFFF) # ori $t8, $t8, 0xfffc
/* B0C880 800956E0 244E0008 */  addiu $t6, $v0, 8
/* B0C884 800956E4 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0C888 800956E8 AC580004 */  sw    $t8, 4($v0)
/* B0C88C 800956EC AC4F0000 */  sw    $t7, ($v0)
/* B0C890 800956F0 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C894 800956F4 00063080 */  sll   $a2, $a2, 2
/* B0C898 800956F8 01806825 */  move  $t5, $t4
/* B0C89C 800956FC 24590008 */  addiu $t9, $v0, 8
/* B0C8A0 80095700 ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B0C8A4 80095704 8D2E0000 */  lw    $t6, ($t1)
/* B0C8A8 80095708 3C0CE700 */  lui   $t4, 0xe700
/* B0C8AC 8009570C 25CFFFFF */  addiu $t7, $t6, -1
/* B0C8B0 80095710 31F803FF */  andi  $t8, $t7, 0x3ff
/* B0C8B4 80095714 3C0F8013 */  lui   $t7, %hi(gScreenHeight) # $t7, 0x8013
/* B0C8B8 80095718 8DEFD274 */  lw    $t7, %lo(gScreenHeight)($t7)
/* B0C8BC 8009571C 0018CB80 */  sll   $t9, $t8, 0xe
/* B0C8C0 80095720 03287025 */  or    $t6, $t9, $t0
/* B0C8C4 80095724 01EAC023 */  subu  $t8, $t7, $t2
/* B0C8C8 80095728 2719FFFF */  addiu $t9, $t8, -1
/* B0C8CC 8009572C 332F03FF */  andi  $t7, $t9, 0x3ff
/* B0C8D0 80095730 000FC080 */  sll   $t8, $t7, 2
/* B0C8D4 80095734 01D8C825 */  or    $t9, $t6, $t8
/* B0C8D8 80095738 AC590000 */  sw    $t9, ($v0)
/* B0C8DC 8009573C AC460004 */  sw    $a2, 4($v0)
/* B0C8E0 80095740 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C8E4 80095744 244F0008 */  addiu $t7, $v0, 8
/* B0C8E8 80095748 ACAF02C0 */  sw    $t7, 0x2c0($a1)
/* B0C8EC 8009574C AC400004 */  sw    $zero, 4($v0)
/* B0C8F0 80095750 AC4C0000 */  sw    $t4, ($v0)
/* B0C8F4 80095754 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C8F8 80095758 244E0008 */  addiu $t6, $v0, 8
/* B0C8FC 8009575C ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0C900 80095760 8D380000 */  lw    $t8, ($t1)
/* B0C904 80095764 2719FFFF */  addiu $t9, $t8, -1
/* B0C908 80095768 332F0FFF */  andi  $t7, $t9, 0xfff
/* B0C90C 8009576C 01EB7025 */  or    $t6, $t7, $t3
/* B0C910 80095770 AC4E0000 */  sw    $t6, ($v0)
/* B0C914 80095774 8CB802DC */  lw    $t8, 0x2dc($a1)
/* B0C918 80095778 3C0EE200 */  lui   $t6, (0xE200001C >> 16) # lui $t6, 0xe200
/* B0C91C 8009577C 35CE001C */  ori   $t6, (0xE200001C & 0xFFFF) # ori $t6, $t6, 0x1c
/* B0C920 80095780 AC580004 */  sw    $t8, 4($v0)
/* B0C924 80095784 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C928 80095788 3C0BF700 */  lui   $t3, 0xf700
/* B0C92C 8009578C 24590008 */  addiu $t9, $v0, 8
/* B0C930 80095790 ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B0C934 80095794 AC470004 */  sw    $a3, 4($v0)
/* B0C938 80095798 AC440000 */  sw    $a0, ($v0)
/* B0C93C 8009579C 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C940 800957A0 000DCA00 */  sll   $t9, $t5, 8
/* B0C944 800957A4 244F0008 */  addiu $t7, $v0, 8
/* B0C948 800957A8 ACAF02C0 */  sw    $t7, 0x2c0($a1)
/* B0C94C 800957AC AC400004 */  sw    $zero, 4($v0)
/* B0C950 800957B0 AC4E0000 */  sw    $t6, ($v0)
/* B0C954 800957B4 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C958 800957B8 001F70C0 */  sll   $t6, $ra, 3
/* B0C95C 800957BC 332FF800 */  andi  $t7, $t9, 0xf800
/* B0C960 800957C0 24580008 */  addiu $t8, $v0, 8
/* B0C964 800957C4 ACB802C0 */  sw    $t8, 0x2c0($a1)
/* B0C968 800957C8 31D807C0 */  andi  $t8, $t6, 0x7c0
/* B0C96C 800957CC AC4B0000 */  sw    $t3, ($v0)
/* B0C970 800957D0 8FAE0020 */  lw    $t6, 0x20($sp)
/* B0C974 800957D4 01F8C825 */  or    $t9, $t7, $t8
/* B0C978 800957D8 000E7883 */  sra   $t7, $t6, 2
/* B0C97C 800957DC 31F8003E */  andi  $t8, $t7, 0x3e
/* B0C980 800957E0 03382025 */  or    $a0, $t9, $t8
/* B0C984 800957E4 34840001 */  ori   $a0, (0xE3000001 & 0xFFFF) # ori $a0, $a0, 1
/* B0C988 800957E8 00047400 */  sll   $t6, $a0, 0x10
/* B0C98C 800957EC 01C43825 */  or    $a3, $t6, $a0
/* B0C990 800957F0 AC470004 */  sw    $a3, 4($v0)
/* B0C994 800957F4 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C998 800957F8 3C048013 */  lui   $a0, %hi(gScreenHeight) # $a0, 0x8013
/* B0C99C 800957FC 2484D274 */  addiu $a0, %lo(gScreenHeight) # addiu $a0, $a0, -0x2d8c
/* B0C9A0 80095800 244F0008 */  addiu $t7, $v0, 8
/* B0C9A4 80095804 ACAF02C0 */  sw    $t7, 0x2c0($a1)
/* B0C9A8 80095808 8D390000 */  lw    $t9, ($t1)
/* B0C9AC 8009580C 2738FFFF */  addiu $t8, $t9, -1
/* B0C9B0 80095810 330E03FF */  andi  $t6, $t8, 0x3ff
/* B0C9B4 80095814 8C980000 */  lw    $t8, ($a0)
/* B0C9B8 80095818 000E7B80 */  sll   $t7, $t6, 0xe
/* B0C9BC 8009581C 01E8C825 */  or    $t9, $t7, $t0
/* B0C9C0 80095820 030A7023 */  subu  $t6, $t8, $t2
/* B0C9C4 80095824 25CFFFFF */  addiu $t7, $t6, -1
/* B0C9C8 80095828 31F803FF */  andi  $t8, $t7, 0x3ff
/* B0C9CC 8009582C 00187080 */  sll   $t6, $t8, 2
/* B0C9D0 80095830 032E7825 */  or    $t7, $t9, $t6
/* B0C9D4 80095834 AC4F0000 */  sw    $t7, ($v0)
/* B0C9D8 80095838 AC460004 */  sw    $a2, 4($v0)
/* B0C9DC 8009583C 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B0C9E0 80095840 24580008 */  addiu $t8, $v0, 8
/* B0C9E4 80095844 ACB802C0 */  sw    $t8, 0x2c0($a1)
/* B0C9E8 80095848 AC400004 */  sw    $zero, 4($v0)
/* B0C9EC 8009584C 19400040 */  blez  $t2, .L80095950
/* B0C9F0 80095850 AC4C0000 */   sw    $t4, ($v0)
/* B0C9F4 80095854 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0C9F8 80095858 3C0FE300 */  lui   $t7, (0xE3000A01 >> 16) # lui $t7, 0xe300
/* B0C9FC 8009585C 35EF0A01 */  ori   $t7, (0xE3000A01 & 0xFFFF) # ori $t7, $t7, 0xa01
/* B0CA00 80095860 24590008 */  addiu $t9, $v0, 8
/* B0CA04 80095864 ACB902B0 */  sw    $t9, 0x2b0($a1)
/* B0CA08 80095868 AC400004 */  sw    $zero, 4($v0)
/* B0CA0C 8009586C AC4C0000 */  sw    $t4, ($v0)
/* B0CA10 80095870 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0CA14 80095874 3C180030 */  lui   $t8, 0x30
/* B0CA18 80095878 244E0008 */  addiu $t6, $v0, 8
/* B0CA1C 8009587C ACAE02B0 */  sw    $t6, 0x2b0($a1)
/* B0CA20 80095880 AC580004 */  sw    $t8, 4($v0)
/* B0CA24 80095884 AC4F0000 */  sw    $t7, ($v0)
/* B0CA28 80095888 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0CA2C 8009588C 3C0EE200 */  lui   $t6, (0xE200001C >> 16) # lui $t6, 0xe200
/* B0CA30 80095890 35CE001C */  ori   $t6, (0xE200001C & 0xFFFF) # ori $t6, $t6, 0x1c
/* B0CA34 80095894 24590008 */  addiu $t9, $v0, 8
/* B0CA38 80095898 ACB902B0 */  sw    $t9, 0x2b0($a1)
/* B0CA3C 8009589C AC400004 */  sw    $zero, 4($v0)
/* B0CA40 800958A0 AC4E0000 */  sw    $t6, ($v0)
/* B0CA44 800958A4 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0CA48 800958A8 244F0008 */  addiu $t7, $v0, 8
/* B0CA4C 800958AC ACAF02B0 */  sw    $t7, 0x2b0($a1)
/* B0CA50 800958B0 AC470004 */  sw    $a3, 4($v0)
/* B0CA54 800958B4 AC4B0000 */  sw    $t3, ($v0)
/* B0CA58 800958B8 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0CA5C 800958BC 24580008 */  addiu $t8, $v0, 8
/* B0CA60 800958C0 ACB802B0 */  sw    $t8, 0x2b0($a1)
/* B0CA64 800958C4 8D390000 */  lw    $t9, ($t1)
/* B0CA68 800958C8 AC400004 */  sw    $zero, 4($v0)
/* B0CA6C 800958CC 272EFFFF */  addiu $t6, $t9, -1
/* B0CA70 800958D0 31CF03FF */  andi  $t7, $t6, 0x3ff
/* B0CA74 800958D4 000FC380 */  sll   $t8, $t7, 0xe
/* B0CA78 800958D8 254EFFFF */  addiu $t6, $t2, -1
/* B0CA7C 800958DC 31CF03FF */  andi  $t7, $t6, 0x3ff
/* B0CA80 800958E0 0308C825 */  or    $t9, $t8, $t0
/* B0CA84 800958E4 000FC080 */  sll   $t8, $t7, 2
/* B0CA88 800958E8 03387025 */  or    $t6, $t9, $t8
/* B0CA8C 800958EC AC4E0000 */  sw    $t6, ($v0)
/* B0CA90 800958F0 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0CA94 800958F4 244F0008 */  addiu $t7, $v0, 8
/* B0CA98 800958F8 ACAF02B0 */  sw    $t7, 0x2b0($a1)
/* B0CA9C 800958FC 8D390000 */  lw    $t9, ($t1)
/* B0CAA0 80095900 2738FFFF */  addiu $t8, $t9, -1
/* B0CAA4 80095904 330E03FF */  andi  $t6, $t8, 0x3ff
/* B0CAA8 80095908 8C980000 */  lw    $t8, ($a0)
/* B0CAAC 8009590C 000E7B80 */  sll   $t7, $t6, 0xe
/* B0CAB0 80095910 01E8C825 */  or    $t9, $t7, $t0
/* B0CAB4 80095914 270EFFFF */  addiu $t6, $t8, -1
/* B0CAB8 80095918 31CF03FF */  andi  $t7, $t6, 0x3ff
/* B0CABC 8009591C 000FC080 */  sll   $t8, $t7, 2
/* B0CAC0 80095920 03387025 */  or    $t6, $t9, $t8
/* B0CAC4 80095924 AC4E0000 */  sw    $t6, ($v0)
/* B0CAC8 80095928 8C8F0000 */  lw    $t7, ($a0)
/* B0CACC 8009592C 01EAC823 */  subu  $t9, $t7, $t2
/* B0CAD0 80095930 333803FF */  andi  $t8, $t9, 0x3ff
/* B0CAD4 80095934 00187080 */  sll   $t6, $t8, 2
/* B0CAD8 80095938 AC4E0004 */  sw    $t6, 4($v0)
/* B0CADC 8009593C 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B0CAE0 80095940 244F0008 */  addiu $t7, $v0, 8
/* B0CAE4 80095944 ACAF02B0 */  sw    $t7, 0x2b0($a1)
/* B0CAE8 80095948 AC400004 */  sw    $zero, 4($v0)
/* B0CAEC 8009594C AC4C0000 */  sw    $t4, ($v0)
.L80095950:
/* B0CAF0 80095950 3C068014 */  lui   $a2, %hi(D_8013EF04) # $a2, 0x8014
/* B0CAF4 80095954 24C6EF04 */  addiu $a2, %lo(D_8013EF04) # addiu $a2, $a2, -0x10fc
/* B0CAF8 80095958 27A400B4 */  addiu $a0, $sp, 0xb4
/* B0CAFC 8009595C 0C031AD5 */  jal   func_800C6B54
/* B0CB00 80095960 240709C1 */   li    $a3, 2497
/* B0CB04 80095964 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0CB08 80095968 27BD00C8 */  addiu $sp, $sp, 0xc8
/* B0CB0C 8009596C 03E00008 */  jr    $ra
/* B0CB10 80095970 00000000 */   nop   

