glabel func_8003937C
/* AB051C 8003937C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AB0520 80039380 AFA60030 */  sw    $a2, 0x30($sp)
/* AB0524 80039384 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB0528 80039388 3C068016 */  lui   $a2, %hi(D_8015BD10) # $a2, 0x8016
/* AB052C 8003938C AFA40028 */  sw    $a0, 0x28($sp)
/* AB0530 80039390 AFA70034 */  sw    $a3, 0x34($sp)
/* AB0534 80039394 0C00E2F8 */  jal   func_80038BE0
/* AB0538 80039398 24C6BD10 */   addiu $a2, %lo(D_8015BD10) # addiu $a2, $a2, -0x42f0
/* AB053C 8003939C 3C058016 */  lui   $a1, %hi(D_8015BD34) # $a1, 0x8016
/* AB0540 800393A0 3C068016 */  lui   $a2, %hi(D_8015BD38) # $a2, 0x8016
/* AB0544 800393A4 3C078016 */  lui   $a3, %hi(D_8015BD3C) # $a3, 0x8016
/* AB0548 800393A8 24E7BD3C */  addiu $a3, %lo(D_8015BD3C) # addiu $a3, $a3, -0x42c4
/* AB054C 800393AC 24C6BD38 */  addiu $a2, %lo(D_8015BD38) # addiu $a2, $a2, -0x42c8
/* AB0550 800393B0 24A5BD34 */  addiu $a1, %lo(D_8015BD34) # addiu $a1, $a1, -0x42cc
/* AB0554 800393B4 0C00E275 */  jal   func_800389D4
/* AB0558 800393B8 8FA40028 */   lw    $a0, 0x28($sp)
/* AB055C 800393BC 8FAE0028 */  lw    $t6, 0x28($sp)
/* AB0560 800393C0 8FA20030 */  lw    $v0, 0x30($sp)
/* AB0564 800393C4 3C018016 */  lui   $at, %hi(D_8015BD40)
/* AB0568 800393C8 85CF000E */  lh    $t7, 0xe($t6)
/* AB056C 800393CC 3C048016 */  lui   $a0, %hi(D_8015BD08) # $a0, 0x8016
/* AB0570 800393D0 3C058016 */  lui   $a1, %hi(D_8015BD10)
/* AB0574 800393D4 448F2000 */  mtc1  $t7, $f4
/* AB0578 800393D8 24A5BD10 */  addiu $a1, %lo(D_8015BD10)
/* AB057C 800393DC 2484BD08 */  addiu $a0, %lo(D_8015BD08) # addiu $a0, $a0, -0x42f8
/* AB0580 800393E0 468021A0 */  cvt.s.w $f6, $f4
/* AB0584 800393E4 27A6001C */  addiu $a2, $sp, 0x1c
/* AB0588 800393E8 E426BD40 */  swc1  $f6, %lo(D_8015BD40)($at)
/* AB058C 800393EC C4480000 */  lwc1  $f8, ($v0)
/* AB0590 800393F0 3C018016 */  lui   $at, %hi(D_8015BD0C) # $at, 0x8016
/* AB0594 800393F4 4600428D */  trunc.w.s $f10, $f8
/* AB0598 800393F8 C7A80034 */  lwc1  $f8, 0x34($sp)
/* AB059C 800393FC 44195000 */  mfc1  $t9, $f10
/* AB05A0 80039400 4600428D */  trunc.w.s $f10, $f8
/* AB05A4 80039404 A439BD08 */  sh    $t9, %lo(D_8015BD08)($at)
/* AB05A8 80039408 C4500004 */  lwc1  $f16, 4($v0)
/* AB05AC 8003940C 440D5000 */  mfc1  $t5, $f10
/* AB05B0 80039410 4600848D */  trunc.w.s $f18, $f16
/* AB05B4 80039414 44099000 */  mfc1  $t1, $f18
/* AB05B8 80039418 00000000 */  nop   
/* AB05BC 8003941C A429BD0A */  sh    $t1, %lo(D_8015BD0A)($at)
/* AB05C0 80039420 C4440008 */  lwc1  $f4, 8($v0)
/* AB05C4 80039424 A42DBD0E */  sh    $t5, %lo(D_8015BD0E)($at)
/* AB05C8 80039428 4600218D */  trunc.w.s $f6, $f4
/* AB05CC 8003942C 440B3000 */  mfc1  $t3, $f6
/* AB05D0 80039430 0C033A4D */  jal   func_800CE934
/* AB05D4 80039434 A42BBD0C */   sh    $t3, %lo(D_8015BD0C)($at)
/* AB05D8 80039438 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB05DC 8003943C 27BD0028 */  addiu $sp, $sp, 0x28
/* AB05E0 80039440 03E00008 */  jr    $ra
/* AB05E4 80039444 00000000 */   nop   

