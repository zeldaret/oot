glabel func_800F3468
/* B6A608 800F3468 44800000 */  mtc1  $zero, $f0
/* B6A60C 800F346C 27BDFFF0 */  addiu $sp, $sp, -0x10
/* B6A610 800F3470 F7B40008 */  sdc1  $f20, 8($sp)
/* B6A614 800F3474 4600603C */  c.lt.s $f12, $f0
/* B6A618 800F3478 44808000 */  mtc1  $zero, $f16
/* B6A61C 800F347C 46006506 */  mov.s $f20, $f12
/* B6A620 800F3480 AFA60018 */  sw    $a2, 0x18($sp)
/* B6A624 800F3484 45000003 */  bc1f  .L800F3494
/* B6A628 800F3488 3C0145FA */   li    $at, 0x45FA0000 # 0.000000
/* B6A62C 800F348C 10000002 */  b     .L800F3498
/* B6A630 800F3490 46006307 */   neg.s $f12, $f12
.L800F3494:
/* B6A634 800F3494 4600A306 */  mov.s $f12, $f20
.L800F3498:
/* B6A638 800F3498 4600703C */  c.lt.s $f14, $f0
/* B6A63C 800F349C 44810000 */  mtc1  $at, $f0
/* B6A640 800F34A0 45020004 */  bc1fl .L800F34B4
/* B6A644 800F34A4 46007086 */   mov.s $f2, $f14
/* B6A648 800F34A8 10000002 */  b     .L800F34B4
/* B6A64C 800F34AC 46007087 */   neg.s $f2, $f14
/* B6A650 800F34B0 46007086 */  mov.s $f2, $f14
.L800F34B4:
/* B6A654 800F34B4 460C003C */  c.lt.s $f0, $f12
/* B6A658 800F34B8 00000000 */  nop   
/* B6A65C 800F34BC 45020003 */  bc1fl .L800F34CC
/* B6A660 800F34C0 4602003C */   c.lt.s $f0, $f2
/* B6A664 800F34C4 46000306 */  mov.s $f12, $f0
/* B6A668 800F34C8 4602003C */  c.lt.s $f0, $f2
.L800F34CC:
/* B6A66C 800F34CC 00000000 */  nop   
/* B6A670 800F34D0 45020003 */  bc1fl .L800F34E0
/* B6A674 800F34D4 4610A032 */   c.eq.s $f20, $f16
/* B6A678 800F34D8 46000086 */  mov.s $f2, $f0
/* B6A67C 800F34DC 4610A032 */  c.eq.s $f20, $f16
.L800F34E0:
/* B6A680 800F34E0 00000000 */  nop   
/* B6A684 800F34E4 45020009 */  bc1fl .L800F350C
/* B6A688 800F34E8 460C103E */   c.le.s $f2, $f12
/* B6A68C 800F34EC 46107032 */  c.eq.s $f14, $f16
/* B6A690 800F34F0 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B6A694 800F34F4 45020005 */  bc1fl .L800F350C
/* B6A698 800F34F8 460C103E */   c.le.s $f2, $f12
/* B6A69C 800F34FC 44817000 */  mtc1  $at, $f14
/* B6A6A0 800F3500 1000001E */  b     .L800F357C
/* B6A6A4 800F3504 46007006 */   mov.s $f0, $f14
/* B6A6A8 800F3508 460C103E */  c.le.s $f2, $f12
.L800F350C:
/* B6A6AC 800F350C 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B6A6B0 800F3510 45020015 */  bc1fl .L800F3568
/* B6A6B4 800F3514 44817000 */   mtc1  $at, $f14
/* B6A6B8 800F3518 3C01467A */  li    $at, 0x467A0000 # 0.000000
/* B6A6BC 800F351C 44819000 */  mtc1  $at, $f18
/* B6A6C0 800F3520 3C018015 */  lui   $at, %hi(D_8014A57C)
/* B6A6C4 800F3524 C424A57C */  lwc1  $f4, %lo(D_8014A57C)($at)
/* B6A6C8 800F3528 46029181 */  sub.s $f6, $f18, $f2
/* B6A6CC 800F352C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B6A6D0 800F3530 460C9281 */  sub.s $f10, $f18, $f12
/* B6A6D4 800F3534 46062202 */  mul.s $f8, $f4, $f6
/* B6A6D8 800F3538 4614803E */  c.le.s $f16, $f20
/* B6A6DC 800F353C 46085383 */  div.s $f14, $f10, $f8
/* B6A6E0 800F3540 45000004 */  bc1f  .L800F3554
/* B6A6E4 800F3544 46007006 */   mov.s $f0, $f14
/* B6A6E8 800F3548 44812000 */  mtc1  $at, $f4
/* B6A6EC 800F354C 00000000 */  nop   
/* B6A6F0 800F3550 460E2001 */  sub.s $f0, $f4, $f14
.L800F3554:
/* B6A6F4 800F3554 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B6A6F8 800F3558 44817000 */  mtc1  $at, $f14
/* B6A6FC 800F355C 10000008 */  b     .L800F3580
/* B6A700 800F3560 3C014248 */   li    $at, 0x42480000 # 0.000000
/* B6A704 800F3564 44817000 */  mtc1  $at, $f14
.L800F3568:
/* B6A708 800F3568 3C018015 */  lui   $at, %hi(D_8014A580)
/* B6A70C 800F356C C426A580 */  lwc1  $f6, %lo(D_8014A580)($at)
/* B6A710 800F3570 46023282 */  mul.s $f10, $f6, $f2
/* B6A714 800F3574 460AA203 */  div.s $f8, $f20, $f10
/* B6A718 800F3578 460E4000 */  add.s $f0, $f8, $f14
.L800F357C:
/* B6A71C 800F357C 3C014248 */  li    $at, 0x42480000 # 0.000000
.L800F3580:
/* B6A720 800F3580 44818000 */  mtc1  $at, $f16
/* B6A724 800F3584 3C0142FE */  li    $at, 0x42FE0000 # 0.000000
/* B6A728 800F3588 44814000 */  mtc1  $at, $f8
/* B6A72C 800F358C 4610103C */  c.lt.s $f2, $f16
/* B6A730 800F3590 00000000 */  nop   
/* B6A734 800F3594 4500000B */  bc1f  .L800F35C4
/* B6A738 800F3598 00000000 */   nop   
/* B6A73C 800F359C 4610603C */  c.lt.s $f12, $f16
/* B6A740 800F35A0 00000000 */  nop   
/* B6A744 800F35A4 45000007 */  bc1f  .L800F35C4
/* B6A748 800F35A8 00000000 */   nop   
/* B6A74C 800F35AC 46106083 */  div.s $f2, $f12, $f16
/* B6A750 800F35B0 460E0101 */  sub.s $f4, $f0, $f14
/* B6A754 800F35B4 46021182 */  mul.s $f6, $f2, $f2
/* B6A758 800F35B8 00000000 */  nop   
/* B6A75C 800F35BC 46062282 */  mul.s $f10, $f4, $f6
/* B6A760 800F35C0 460E5000 */  add.s $f0, $f10, $f14
.L800F35C4:
/* B6A764 800F35C4 46080102 */  mul.s $f4, $f0, $f8
/* B6A768 800F35C8 D7B40008 */  ldc1  $f20, 8($sp)
/* B6A76C 800F35CC 27BD0010 */  addiu $sp, $sp, 0x10
/* B6A770 800F35D0 460E2180 */  add.s $f6, $f4, $f14
/* B6A774 800F35D4 4600328D */  trunc.w.s $f10, $f6
/* B6A778 800F35D8 44025000 */  mfc1  $v0, $f10
/* B6A77C 800F35DC 00000000 */  nop   
/* B6A780 800F35E0 00021600 */  sll   $v0, $v0, 0x18
/* B6A784 800F35E4 03E00008 */  jr    $ra
/* B6A788 800F35E8 00021603 */   sra   $v0, $v0, 0x18

