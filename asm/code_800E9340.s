.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800E9340
/* B604E0 800E9340 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B604E4 800E9344 AFA5001C */  sw    $a1, 0x1c($sp)
/* B604E8 800E9348 30A500FF */  andi  $a1, $a1, 0xff
/* B604EC 800E934C 3C028013 */  lui   $v0, %hi(D_80130470)
/* B604F0 800E9350 00451021 */  addu  $v0, $v0, $a1
/* B604F4 800E9354 90420470 */  lbu   $v0, %lo(D_80130470)($v0)
/* B604F8 800E9358 24010001 */  li    $at, 1
/* B604FC 800E935C AFBF0014 */  sw    $ra, 0x14($sp)
/* B60500 800E9360 304F0003 */  andi  $t7, $v0, 3
/* B60504 800E9364 15E1000B */  bne   $t7, $at, .L800E9394
/* B60508 800E9368 00001825 */   move  $v1, $zero
/* B6050C 800E936C 30580080 */  andi  $t8, $v0, 0x80
/* B60510 800E9370 17000005 */  bnez  $t8, .L800E9388
/* B60514 800E9374 00000000 */   nop   
/* B60518 800E9378 0C03A752 */  jal   func_800E9D48
/* B6051C 800E937C 00000000 */   nop   
/* B60520 800E9380 10000004 */  b     .L800E9394
/* B60524 800E9384 3043FFFF */   andi  $v1, $v0, 0xffff
.L800E9388:
/* B60528 800E9388 0C03A757 */  jal   func_800E9D5C
/* B6052C 800E938C 00000000 */   nop   
/* B60530 800E9390 3043FFFF */  andi  $v1, $v0, 0xffff
.L800E9394:
/* B60534 800E9394 8FBF0014 */  lw    $ra, 0x14($sp)
/* B60538 800E9398 27BD0018 */  addiu $sp, $sp, 0x18
/* B6053C 800E939C 00601025 */  move  $v0, $v1
/* B60540 800E93A0 03E00008 */  jr    $ra
/* B60544 800E93A4 00000000 */   nop   

glabel func_800E93A8
/* B60548 800E93A8 24CEFF0E */  addiu $t6, $a2, -0xf2
/* B6054C 800E93AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B60550 800E93B0 2DC1000E */  sltiu $at, $t6, 0xe
/* B60554 800E93B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B60558 800E93B8 1020006D */  beqz  $at, .L800E9570
/* B6055C 800E93BC 00C01025 */   move  $v0, $a2
/* B60560 800E93C0 000E7080 */  sll   $t6, $t6, 2
/* B60564 800E93C4 3C018015 */  lui   $at, %hi(jtbl_80149620)
/* B60568 800E93C8 002E0821 */  addu  $at, $at, $t6
/* B6056C 800E93CC 8C2E9620 */  lw    $t6, %lo(jtbl_80149620)($at)
/* B60570 800E93D0 01C00008 */  jr    $t6
/* B60574 800E93D4 00000000 */   nop   
glabel L800E93D8
/* B60578 800E93D8 90A20018 */  lbu   $v0, 0x18($a1)
/* B6057C 800E93DC 14400003 */  bnez  $v0, .L800E93EC
/* B60580 800E93E0 2443FFFF */   addiu $v1, $v0, -1
/* B60584 800E93E4 10000063 */  b     .L800E9574
/* B60588 800E93E8 2402FFFF */   li    $v0, -1
.L800E93EC:
/* B6058C 800E93EC 306300FF */  andi  $v1, $v1, 0xff
/* B60590 800E93F0 00037880 */  sll   $t7, $v1, 2
/* B60594 800E93F4 00AFC021 */  addu  $t8, $a1, $t7
/* B60598 800E93F8 A0A30018 */  sb    $v1, 0x18($a1)
/* B6059C 800E93FC 8F190004 */  lw    $t9, 4($t8)
/* B605A0 800E9400 1000005B */  b     .L800E9570
/* B605A4 800E9404 ACB90000 */   sw    $t9, ($a1)
glabel L800E9408
/* B605A8 800E9408 0C03A765 */  jal   func_800E9D94
/* B605AC 800E940C 00A02025 */   move  $a0, $a1
/* B605B0 800E9410 10000059 */  b     .L800E9578
/* B605B4 800E9414 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L800E9418
/* B605B8 800E9418 10000056 */  b     .L800E9574
/* B605BC 800E941C 24020001 */   li    $v0, 1
glabel L800E9420
/* B605C0 800E9420 90A90018 */  lbu   $t1, 0x18($a1)
/* B605C4 800E9424 8CA80000 */  lw    $t0, ($a1)
/* B605C8 800E9428 30EFFFFF */  andi  $t7, $a3, 0xffff
/* B605CC 800E942C 00095080 */  sll   $t2, $t1, 2
/* B605D0 800E9430 00AA5821 */  addu  $t3, $a1, $t2
/* B605D4 800E9434 AD680004 */  sw    $t0, 4($t3)
/* B605D8 800E9438 90AC0018 */  lbu   $t4, 0x18($a1)
/* B605DC 800E943C 258D0001 */  addiu $t5, $t4, 1
/* B605E0 800E9440 A0AD0018 */  sb    $t5, 0x18($a1)
/* B605E4 800E9444 8C8E0018 */  lw    $t6, 0x18($a0)
/* B605E8 800E9448 01CFC021 */  addu  $t8, $t6, $t7
/* B605EC 800E944C 10000048 */  b     .L800E9570
/* B605F0 800E9450 ACB80000 */   sw    $t8, ($a1)
glabel L800E9454
/* B605F4 800E9454 90B90018 */  lbu   $t9, 0x18($a1)
/* B605F8 800E9458 00B94821 */  addu  $t1, $a1, $t9
/* B605FC 800E945C A1270014 */  sb    $a3, 0x14($t1)
/* B60600 800E9460 90A80018 */  lbu   $t0, 0x18($a1)
/* B60604 800E9464 8CAA0000 */  lw    $t2, ($a1)
/* B60608 800E9468 00085880 */  sll   $t3, $t0, 2
/* B6060C 800E946C 00AB6021 */  addu  $t4, $a1, $t3
/* B60610 800E9470 AD8A0004 */  sw    $t2, 4($t4)
/* B60614 800E9474 90AD0018 */  lbu   $t5, 0x18($a1)
/* B60618 800E9478 25AE0001 */  addiu $t6, $t5, 1
/* B6061C 800E947C 1000003C */  b     .L800E9570
/* B60620 800E9480 A0AE0018 */   sb    $t6, 0x18($a1)
glabel L800E9484
/* B60624 800E9484 90AF0018 */  lbu   $t7, 0x18($a1)
/* B60628 800E9488 00AF1821 */  addu  $v1, $a1, $t7
/* B6062C 800E948C 90780013 */  lbu   $t8, 0x13($v1)
/* B60630 800E9490 2719FFFF */  addiu $t9, $t8, -1
/* B60634 800E9494 A0790013 */  sb    $t9, 0x13($v1)
/* B60638 800E9498 90A20018 */  lbu   $v0, 0x18($a1)
/* B6063C 800E949C 00A24821 */  addu  $t1, $a1, $v0
/* B60640 800E94A0 91280013 */  lbu   $t0, 0x13($t1)
/* B60644 800E94A4 00402025 */  move  $a0, $v0
/* B60648 800E94A8 00045880 */  sll   $t3, $a0, 2
/* B6064C 800E94AC 11000005 */  beqz  $t0, .L800E94C4
/* B60650 800E94B0 244DFFFF */   addiu $t5, $v0, -1
/* B60654 800E94B4 00AB5021 */  addu  $t2, $a1, $t3
/* B60658 800E94B8 8D4C0000 */  lw    $t4, ($t2)
/* B6065C 800E94BC 1000002C */  b     .L800E9570
/* B60660 800E94C0 ACAC0000 */   sw    $t4, ($a1)
.L800E94C4:
/* B60664 800E94C4 1000002A */  b     .L800E9570
/* B60668 800E94C8 A0AD0018 */   sb    $t5, 0x18($a1)
glabel L800E94CC
/* B6066C 800E94CC 90AE0018 */  lbu   $t6, 0x18($a1)
/* B60670 800E94D0 25CFFFFF */  addiu $t7, $t6, -1
/* B60674 800E94D4 10000026 */  b     .L800E9570
/* B60678 800E94D8 A0AF0018 */   sb    $t7, 0x18($a1)
glabel L800E94DC
/* B6067C 800E94DC 240100FA */  li    $at, 250
/* B60680 800E94E0 54410004 */  bnel  $v0, $at, .L800E94F4
/* B60684 800E94E4 240100F9 */   li    $at, 249
/* B60688 800E94E8 80B80019 */  lb    $t8, 0x19($a1)
/* B6068C 800E94EC 17000020 */  bnez  $t8, .L800E9570
/* B60690 800E94F0 240100F9 */   li    $at, 249
.L800E94F4:
/* B60694 800E94F4 54410004 */  bnel  $v0, $at, .L800E9508
/* B60698 800E94F8 240100F5 */   li    $at, 245
/* B6069C 800E94FC 80B90019 */  lb    $t9, 0x19($a1)
/* B606A0 800E9500 0721001B */  bgez  $t9, .L800E9570
/* B606A4 800E9504 240100F5 */   li    $at, 245
.L800E9508:
/* B606A8 800E9508 54410005 */  bnel  $v0, $at, .L800E9520
/* B606AC 800E950C 8C880018 */   lw    $t0, 0x18($a0)
/* B606B0 800E9510 80A90019 */  lb    $t1, 0x19($a1)
/* B606B4 800E9514 05220017 */  bltzl $t1, .L800E9574
/* B606B8 800E9518 00001025 */   move  $v0, $zero
/* B606BC 800E951C 8C880018 */  lw    $t0, 0x18($a0)
.L800E9520:
/* B606C0 800E9520 30EBFFFF */  andi  $t3, $a3, 0xffff
/* B606C4 800E9524 010B5021 */  addu  $t2, $t0, $t3
/* B606C8 800E9528 10000011 */  b     .L800E9570
/* B606CC 800E952C ACAA0000 */   sw    $t2, ($a1)
glabel L800E9530
/* B606D0 800E9530 240100F3 */  li    $at, 243
/* B606D4 800E9534 54410004 */  bnel  $v0, $at, .L800E9548
/* B606D8 800E9538 240100F2 */   li    $at, 242
/* B606DC 800E953C 80AC0019 */  lb    $t4, 0x19($a1)
/* B606E0 800E9540 1580000B */  bnez  $t4, .L800E9570
/* B606E4 800E9544 240100F2 */   li    $at, 242
.L800E9548:
/* B606E8 800E9548 54410005 */  bnel  $v0, $at, .L800E9560
/* B606EC 800E954C 8CAE0000 */   lw    $t6, ($a1)
/* B606F0 800E9550 80AD0019 */  lb    $t5, 0x19($a1)
/* B606F4 800E9554 05A30007 */  bgezl $t5, .L800E9574
/* B606F8 800E9558 00001025 */   move  $v0, $zero
/* B606FC 800E955C 8CAE0000 */  lw    $t6, ($a1)
.L800E9560:
/* B60700 800E9560 0007C600 */  sll   $t8, $a3, 0x18
/* B60704 800E9564 0018CE03 */  sra   $t9, $t8, 0x18
/* B60708 800E9568 01D94821 */  addu  $t1, $t6, $t9
/* B6070C 800E956C ACA90000 */  sw    $t1, ($a1)
.L800E9570:
/* B60710 800E9570 00001025 */  move  $v0, $zero
.L800E9574:
/* B60714 800E9574 8FBF0014 */  lw    $ra, 0x14($sp)
.L800E9578:
/* B60718 800E9578 27BD0018 */  addiu $sp, $sp, 0x18
/* B6071C 800E957C 03E00008 */  jr    $ra
/* B60720 800E9580 00000000 */   nop   

glabel func_800E9584
/* B60724 800E9584 3C0E8017 */  lui   $t6, %hi(gAudioContext) # $t6, 0x8017
/* B60728 800E9588 25CEF180 */  addiu $t6, %lo(gAudioContext) # addiu $t6, $t6, -0xe80
/* B6072C 800E958C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B60730 800E9590 25CF5AB0 */  addiu $t7, $t6, 0x5ab0
/* B60734 800E9594 AFBF0014 */  sw    $ra, 0x14($sp)
/* B60738 800E9598 108F004B */  beq   $a0, $t7, .L800E96C8
/* B6073C 800E959C 00802825 */   move  $a1, $a0
/* B60740 800E95A0 90980000 */  lbu   $t8, ($a0)
/* B60744 800E95A4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B60748 800E95A8 44810000 */  mtc1  $at, $f0
/* B6074C 800E95AC 3308FF7F */  andi  $t0, $t8, 0xff7f
/* B60750 800E95B0 310A00BF */  andi  $t2, $t0, 0xbf
/* B60754 800E95B4 A0880000 */  sb    $t0, ($a0)
/* B60758 800E95B8 314C00DF */  andi  $t4, $t2, 0xdf
/* B6075C 800E95BC A08A0000 */  sb    $t2, ($a0)
/* B60760 800E95C0 318E00EF */  andi  $t6, $t4, 0xef
/* B60764 800E95C4 A08C0000 */  sb    $t4, ($a0)
/* B60768 800E95C8 31D800F7 */  andi  $t8, $t6, 0xf7
/* B6076C 800E95CC A08E0000 */  sb    $t6, ($a0)
/* B60770 800E95D0 330800FB */  andi  $t0, $t8, 0xfb
/* B60774 800E95D4 A0980000 */  sb    $t8, ($a0)
/* B60778 800E95D8 24020800 */  li    $v0, 2048
/* B6077C 800E95DC 3C0F8013 */  lui   $t7, %hi(D_8012FAD4) # $t7, 0x8013
/* B60780 800E95E0 A0880000 */  sb    $t0, ($a0)
/* B60784 800E95E4 310900FD */  andi  $t1, $t0, 0xfd
/* B60788 800E95E8 240A00FF */  li    $t2, 255
/* B6078C 800E95EC 240B0040 */  li    $t3, 64
/* B60790 800E95F0 240C0080 */  li    $t4, 128
/* B60794 800E95F4 240D0003 */  li    $t5, 3
/* B60798 800E95F8 240E0001 */  li    $t6, 1
/* B6079C 800E95FC 25EFFAD4 */  addiu $t7, %lo(D_8012FAD4) # addiu $t7, $t7, -0x52c
/* B607A0 800E9600 241800F0 */  li    $t8, 240
/* B607A4 800E9604 A4820014 */  sh    $v0, 0x14($a0)
/* B607A8 800E9608 A4820010 */  sh    $v0, 0x10($a0)
/* B607AC 800E960C A4800026 */  sh    $zero, 0x26($a0)
/* B607B0 800E9610 A0890000 */  sb    $t1, ($a0)
/* B607B4 800E9614 A0800009 */  sb    $zero, 9($a0)
/* B607B8 800E9618 A08000D0 */  sb    $zero, 0xd0($a0)
/* B607BC 800E961C A08A0001 */  sb    $t2, 1($a0)
/* B607C0 800E9620 A0800078 */  sb    $zero, 0x78($a0)
/* B607C4 800E9624 A08B000A */  sb    $t3, 0xa($a0)
/* B607C8 800E9628 A08C000B */  sb    $t4, 0xb($a0)
/* B607CC 800E962C A080000D */  sb    $zero, 0xd($a0)
/* B607D0 800E9630 A080000E */  sb    $zero, 0xe($a0)
/* B607D4 800E9634 AC800040 */  sw    $zero, 0x40($a0)
/* B607D8 800E9638 A0800008 */  sb    $zero, 8($a0)
/* B607DC 800E963C A0800004 */  sb    $zero, 4($a0)
/* B607E0 800E9640 A080000C */  sb    $zero, 0xc($a0)
/* B607E4 800E9644 A08D0005 */  sb    $t5, 5($a0)
/* B607E8 800E9648 A08E0006 */  sb    $t6, 6($a0)
/* B607EC 800E964C A480001E */  sh    $zero, 0x1e($a0)
/* B607F0 800E9650 AC8F0080 */  sw    $t7, 0x80($a0)
/* B607F4 800E9654 A098007C */  sb    $t8, 0x7c($a0)
/* B607F8 800E9658 A080007D */  sb    $zero, 0x7d($a0)
/* B607FC 800E965C A4800016 */  sh    $zero, 0x16($a0)
/* B60800 800E9660 A4800012 */  sh    $zero, 0x12($a0)
/* B60804 800E9664 A4800018 */  sh    $zero, 0x18($a0)
/* B60808 800E9668 A480001A */  sh    $zero, 0x1a($a0)
/* B6080C 800E966C A480001C */  sh    $zero, 0x1c($a0)
/* B60810 800E9670 AC8000CC */  sw    $zero, 0xcc($a0)
/* B60814 800E9674 A4800020 */  sh    $zero, 0x20($a0)
/* B60818 800E9678 A080000F */  sb    $zero, 0xf($a0)
/* B6081C 800E967C E480002C */  swc1  $f0, 0x2c($a0)
/* B60820 800E9680 E4800028 */  swc1  $f0, 0x28($a0)
/* B60824 800E9684 E4800038 */  swc1  $f0, 0x38($a0)
/* B60828 800E9688 00002025 */  move  $a0, $zero
/* B6082C 800E968C 2402FFFF */  li    $v0, -1
/* B60830 800E9690 00A01825 */  move  $v1, $a1
/* B60834 800E9694 24060008 */  li    $a2, 8
.L800E9698:
/* B60838 800E9698 24840004 */  addiu $a0, $a0, 4
/* B6083C 800E969C A06200C5 */  sb    $v0, 0xc5($v1)
/* B60840 800E96A0 A06200C6 */  sb    $v0, 0xc6($v1)
/* B60844 800E96A4 A06200C7 */  sb    $v0, 0xc7($v1)
/* B60848 800E96A8 24630004 */  addiu $v1, $v1, 4
/* B6084C 800E96AC 1486FFFA */  bne   $a0, $a2, .L800E9698
/* B60850 800E96B0 A06200C0 */   sb    $v0, 0xc0($v1)
/* B60854 800E96B4 90B90000 */  lbu   $t9, ($a1)
/* B60858 800E96B8 24A40084 */  addiu $a0, $a1, 0x84
/* B6085C 800E96BC 3328FFFE */  andi  $t0, $t9, 0xfffe
/* B60860 800E96C0 0C039F43 */  jal   Audio_InitNoteLists
/* B60864 800E96C4 A0A80000 */   sb    $t0, ($a1)
.L800E96C8:
/* B60868 800E96C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6086C 800E96CC 27BD0018 */  addiu $sp, $sp, 0x18
/* B60870 800E96D0 03E00008 */  jr    $ra
/* B60874 800E96D4 00000000 */   nop   

glabel func_800E96D8
/* B60878 800E96D8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B6087C 800E96DC 00057880 */  sll   $t7, $a1, 2
/* B60880 800E96E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B60884 800E96E4 AFA40028 */  sw    $a0, 0x28($sp)
/* B60888 800E96E8 008F3021 */  addu  $a2, $a0, $t7
/* B6088C 800E96EC 8CC70050 */  lw    $a3, 0x50($a2)
/* B60890 800E96F0 14E0000B */  bnez  $a3, .L800E9720
/* B60894 800E96F4 00E02025 */   move  $a0, $a3
/* B60898 800E96F8 3C048017 */  lui   $a0, %hi(D_80174D08)
/* B6089C 800E96FC 24844D08 */  addiu $a0, %lo(D_80174D08) # addiu $a0, $a0, 0x4d08
/* B608A0 800E9700 0C03A71A */  jal   Audio_AudioListPopBack
/* B608A4 800E9704 AFA6001C */   sw    $a2, 0x1c($sp)
/* B608A8 800E9708 8FA6001C */  lw    $a2, 0x1c($sp)
/* B608AC 800E970C 14400007 */  bnez  $v0, .L800E972C
/* B608B0 800E9710 ACC20050 */   sw    $v0, 0x50($a2)
/* B608B4 800E9714 ACC00050 */  sw    $zero, 0x50($a2)
/* B608B8 800E9718 10000034 */  b     .L800E97EC
/* B608BC 800E971C 2402FFFF */   li    $v0, -1
.L800E9720:
/* B608C0 800E9720 0C039ED8 */  jal   Audio_SeqChanLayerNoteDecay
/* B608C4 800E9724 AFA6001C */   sw    $a2, 0x1c($sp)
/* B608C8 800E9728 8FA6001C */  lw    $a2, 0x1c($sp)
.L800E972C:
/* B608CC 800E972C 8CC30050 */  lw    $v1, 0x50($a2)
/* B608D0 800E9730 8FB80028 */  lw    $t8, 0x28($sp)
/* B608D4 800E9734 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B608D8 800E9738 906B0000 */  lbu   $t3, ($v1)
/* B608DC 800E973C AC780050 */  sw    $t8, 0x50($v1)
/* B608E0 800E9740 8FB90028 */  lw    $t9, 0x28($sp)
/* B608E4 800E9744 356D0080 */  ori   $t5, $t3, 0x80
/* B608E8 800E9748 31AF00BF */  andi  $t7, $t5, 0xbf
/* B608EC 800E974C 8F29007C */  lw    $t1, 0x7c($t9)
/* B608F0 800E9750 44810000 */  mtc1  $at, $f0
/* B608F4 800E9754 44802000 */  mtc1  $zero, $f4
/* B608F8 800E9758 AC690018 */  sw    $t1, 0x18($v1)
/* B608FC 800E975C 8F280080 */  lw    $t0, 0x80($t9)
/* B60900 800E9760 31F900DF */  andi  $t9, $t7, 0xdf
/* B60904 800E9764 A06D0000 */  sb    $t5, ($v1)
/* B60908 800E9768 332900EF */  andi  $t1, $t9, 0xef
/* B6090C 800E976C A06F0000 */  sb    $t7, ($v1)
/* B60910 800E9770 312B00F7 */  andi  $t3, $t1, 0xf7
/* B60914 800E9774 A0790000 */  sb    $t9, ($v1)
/* B60918 800E9778 316D00FB */  andi  $t5, $t3, 0xfb
/* B6091C 800E977C A0690000 */  sb    $t1, ($v1)
/* B60920 800E9780 31AF00FD */  andi  $t7, $t5, 0xfd
/* B60924 800E9784 A06B0000 */  sb    $t3, ($v1)
/* B60928 800E9788 A06D0000 */  sb    $t5, ($v1)
/* B6092C 800E978C AC68001C */  sw    $t0, 0x1c($v1)
/* B60930 800E9790 31F800FE */  andi  $t8, $t7, 0xfe
/* B60934 800E9794 24190080 */  li    $t9, 128
/* B60938 800E9798 24080040 */  li    $t0, 64
/* B6093C 800E979C 240900FF */  li    $t1, 255
/* B60940 800E97A0 A06F0000 */  sb    $t7, ($v1)
/* B60944 800E97A4 00001025 */  move  $v0, $zero
/* B60948 800E97A8 A0600018 */  sb    $zero, 0x18($v1)
/* B6094C 800E97AC A0780000 */  sb    $t8, ($v1)
/* B60950 800E97B0 A0600001 */  sb    $zero, 1($v1)
/* B60954 800E97B4 A0600020 */  sb    $zero, 0x20($v1)
/* B60958 800E97B8 A060006C */  sb    $zero, 0x6c($v1)
/* B6095C 800E97BC A0790003 */  sb    $t9, 3($v1)
/* B60960 800E97C0 A0680006 */  sb    $t0, 6($v1)
/* B60964 800E97C4 A4600010 */  sh    $zero, 0x10($v1)
/* B60968 800E97C8 A4600008 */  sh    $zero, 8($v1)
/* B6096C 800E97CC A460000A */  sh    $zero, 0xa($v1)
/* B60970 800E97D0 A460000C */  sh    $zero, 0xc($v1)
/* B60974 800E97D4 AC60002C */  sw    $zero, 0x2c($v1)
/* B60978 800E97D8 AC600048 */  sw    $zero, 0x48($v1)
/* B6097C 800E97DC A0690002 */  sb    $t1, 2($v1)
/* B60980 800E97E0 E4600030 */  swc1  $f0, 0x30($v1)
/* B60984 800E97E4 E4600034 */  swc1  $f0, 0x34($v1)
/* B60988 800E97E8 E4640038 */  swc1  $f4, 0x38($v1)
.L800E97EC:
/* B6098C 800E97EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B60990 800E97F0 27BD0028 */  addiu $sp, $sp, 0x28
/* B60994 800E97F4 03E00008 */  jr    $ra
/* B60998 800E97F8 00000000 */   nop   

glabel func_800E97FC
/* B6099C 800E97FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B609A0 800E9800 10800019 */  beqz  $a0, .L800E9868
/* B609A4 800E9804 AFBF0014 */   sw    $ra, 0x14($sp)
/* B609A8 800E9808 8C820050 */  lw    $v0, 0x50($a0)
/* B609AC 800E980C 3C0E8017 */  lui   $t6, %hi(D_80174C30) # $t6, 0x8017
/* B609B0 800E9810 25CE4C30 */  addiu $t6, %lo(D_80174C30) # addiu $t6, $t6, 0x4c30
/* B609B4 800E9814 11C2000C */  beq   $t6, $v0, .L800E9848
/* B609B8 800E9818 00000000 */   nop   
/* B609BC 800E981C 8C4F004C */  lw    $t7, 0x4c($v0)
/* B609C0 800E9820 24010001 */  li    $at, 1
/* B609C4 800E9824 8DF80000 */  lw    $t8, ($t7)
/* B609C8 800E9828 0018C840 */  sll   $t9, $t8, 1
/* B609CC 800E982C 001947C2 */  srl   $t0, $t9, 0x1f
/* B609D0 800E9830 15010005 */  bne   $t0, $at, .L800E9848
/* B609D4 800E9834 00000000 */   nop   
/* B609D8 800E9838 0C039EE0 */  jal   Audio_SeqChanLayerNoteRelease
/* B609DC 800E983C AFA40018 */   sw    $a0, 0x18($sp)
/* B609E0 800E9840 10000004 */  b     .L800E9854
/* B609E4 800E9844 8FA40018 */   lw    $a0, 0x18($sp)
.L800E9848:
/* B609E8 800E9848 0C039ED8 */  jal   Audio_SeqChanLayerNoteDecay
/* B609EC 800E984C AFA40018 */   sw    $a0, 0x18($sp)
/* B609F0 800E9850 8FA40018 */  lw    $a0, 0x18($sp)
.L800E9854:
/* B609F4 800E9854 90890000 */  lbu   $t1, ($a0)
/* B609F8 800E9858 312CFF7F */  andi  $t4, $t1, 0xff7f
/* B609FC 800E985C A08C0000 */  sb    $t4, ($a0)
/* B60A00 800E9860 358D0040 */  ori   $t5, $t4, 0x40
/* B60A04 800E9864 A08D0000 */  sb    $t5, ($a0)
.L800E9868:
/* B60A08 800E9868 8FBF0014 */  lw    $ra, 0x14($sp)
/* B60A0C 800E986C 27BD0018 */  addiu $sp, $sp, 0x18
/* B60A10 800E9870 03E00008 */  jr    $ra
/* B60A14 800E9874 00000000 */   nop   

glabel func_800E9878
/* B60A18 800E9878 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B60A1C 800E987C 00057080 */  sll   $t6, $a1, 2
/* B60A20 800E9880 AFBF0014 */  sw    $ra, 0x14($sp)
/* B60A24 800E9884 008E1021 */  addu  $v0, $a0, $t6
/* B60A28 800E9888 8C460050 */  lw    $a2, 0x50($v0)
/* B60A2C 800E988C 3C048017 */  lui   $a0, %hi(D_80174D08) # $a0, 0x8017
/* B60A30 800E9890 24844D08 */  addiu $a0, %lo(D_80174D08) # addiu $a0, $a0, 0x4d08
/* B60A34 800E9894 10C00008 */  beqz  $a2, .L800E98B8
/* B60A38 800E9898 24C50070 */   addiu $a1, $a2, 0x70
/* B60A3C 800E989C AFA20018 */  sw    $v0, 0x18($sp)
/* B60A40 800E98A0 0C03A70A */  jal   Audio_AudioListPushBack
/* B60A44 800E98A4 AFA6001C */   sw    $a2, 0x1c($sp)
/* B60A48 800E98A8 0C03A5FF */  jal   func_800E97FC
/* B60A4C 800E98AC 8FA4001C */   lw    $a0, 0x1c($sp)
/* B60A50 800E98B0 8FA20018 */  lw    $v0, 0x18($sp)
/* B60A54 800E98B4 AC400050 */  sw    $zero, 0x50($v0)
.L800E98B8:
/* B60A58 800E98B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B60A5C 800E98BC 27BD0020 */  addiu $sp, $sp, 0x20
/* B60A60 800E98C0 03E00008 */  jr    $ra
/* B60A64 800E98C4 00000000 */   nop   

glabel func_800E98C8
/* B60A68 800E98C8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B60A6C 800E98CC AFB20020 */  sw    $s2, 0x20($sp)
/* B60A70 800E98D0 AFB1001C */  sw    $s1, 0x1c($sp)
/* B60A74 800E98D4 AFB00018 */  sw    $s0, 0x18($sp)
/* B60A78 800E98D8 00808825 */  move  $s1, $a0
/* B60A7C 800E98DC AFBF0024 */  sw    $ra, 0x24($sp)
/* B60A80 800E98E0 00008025 */  move  $s0, $zero
/* B60A84 800E98E4 24120004 */  li    $s2, 4
/* B60A88 800E98E8 02202025 */  move  $a0, $s1
.L800E98EC:
/* B60A8C 800E98EC 0C03A61E */  jal   func_800E9878
/* B60A90 800E98F0 02002825 */   move  $a1, $s0
/* B60A94 800E98F4 26100001 */  addiu $s0, $s0, 1
/* B60A98 800E98F8 5612FFFC */  bnel  $s0, $s2, .L800E98EC
/* B60A9C 800E98FC 02202025 */   move  $a0, $s1
/* B60AA0 800E9900 0C039F80 */  jal   Audio_NotePoolClear
/* B60AA4 800E9904 26240084 */   addiu $a0, $s1, 0x84
/* B60AA8 800E9908 922E0000 */  lbu   $t6, ($s1)
/* B60AAC 800E990C 31D9FF7F */  andi  $t9, $t6, 0xff7f
/* B60AB0 800E9910 A2390000 */  sb    $t9, ($s1)
/* B60AB4 800E9914 37280040 */  ori   $t0, $t9, 0x40
/* B60AB8 800E9918 A2280000 */  sb    $t0, ($s1)
/* B60ABC 800E991C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B60AC0 800E9920 8FB20020 */  lw    $s2, 0x20($sp)
/* B60AC4 800E9924 8FB1001C */  lw    $s1, 0x1c($sp)
/* B60AC8 800E9928 8FB00018 */  lw    $s0, 0x18($sp)
/* B60ACC 800E992C 03E00008 */  jr    $ra
/* B60AD0 800E9930 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800E9934
/* B60AD4 800E9934 AFA50004 */  sw    $a1, 4($sp)
/* B60AD8 800E9938 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B60ADC 800E993C 00803025 */  move  $a2, $a0
/* B60AE0 800E9940 00001025 */  move  $v0, $zero
/* B60AE4 800E9944 24070010 */  li    $a3, 16
.L800E9948:
/* B60AE8 800E9948 30AE0001 */  andi  $t6, $a1, 1
/* B60AEC 800E994C 11C0000A */  beqz  $t6, .L800E9978
/* B60AF0 800E9950 00A01825 */   move  $v1, $a1
/* B60AF4 800E9954 00027880 */  sll   $t7, $v0, 2
/* B60AF8 800E9958 00CFC021 */  addu  $t8, $a2, $t7
/* B60AFC 800E995C 8F040038 */  lw    $a0, 0x38($t8)
/* B60B00 800E9960 90D90005 */  lbu   $t9, 5($a2)
/* B60B04 800E9964 A0990007 */  sb    $t9, 7($a0)
/* B60B08 800E9968 90C80003 */  lbu   $t0, 3($a2)
/* B60B0C 800E996C A0880003 */  sb    $t0, 3($a0)
/* B60B10 800E9970 90C90002 */  lbu   $t1, 2($a2)
/* B60B14 800E9974 A0890002 */  sb    $t1, 2($a0)
.L800E9978:
/* B60B18 800E9978 00032843 */  sra   $a1, $v1, 1
/* B60B1C 800E997C 30A3FFFF */  andi  $v1, $a1, 0xffff
/* B60B20 800E9980 306A0001 */  andi  $t2, $v1, 1
/* B60B24 800E9984 1140000A */  beqz  $t2, .L800E99B0
/* B60B28 800E9988 00032843 */   sra   $a1, $v1, 1
/* B60B2C 800E998C 00025880 */  sll   $t3, $v0, 2
/* B60B30 800E9990 00CB6021 */  addu  $t4, $a2, $t3
/* B60B34 800E9994 8D84003C */  lw    $a0, 0x3c($t4)
/* B60B38 800E9998 90CD0005 */  lbu   $t5, 5($a2)
/* B60B3C 800E999C A08D0007 */  sb    $t5, 7($a0)
/* B60B40 800E99A0 90CE0003 */  lbu   $t6, 3($a2)
/* B60B44 800E99A4 A08E0003 */  sb    $t6, 3($a0)
/* B60B48 800E99A8 90CF0002 */  lbu   $t7, 2($a2)
/* B60B4C 800E99AC A08F0002 */  sb    $t7, 2($a0)
.L800E99B0:
/* B60B50 800E99B0 30A3FFFF */  andi  $v1, $a1, 0xffff
/* B60B54 800E99B4 30780001 */  andi  $t8, $v1, 1
/* B60B58 800E99B8 1300000A */  beqz  $t8, .L800E99E4
/* B60B5C 800E99BC 00032843 */   sra   $a1, $v1, 1
/* B60B60 800E99C0 0002C880 */  sll   $t9, $v0, 2
/* B60B64 800E99C4 00D94021 */  addu  $t0, $a2, $t9
/* B60B68 800E99C8 8D040040 */  lw    $a0, 0x40($t0)
/* B60B6C 800E99CC 90C90005 */  lbu   $t1, 5($a2)
/* B60B70 800E99D0 A0890007 */  sb    $t1, 7($a0)
/* B60B74 800E99D4 90CA0003 */  lbu   $t2, 3($a2)
/* B60B78 800E99D8 A08A0003 */  sb    $t2, 3($a0)
/* B60B7C 800E99DC 90CB0002 */  lbu   $t3, 2($a2)
/* B60B80 800E99E0 A08B0002 */  sb    $t3, 2($a0)
.L800E99E4:
/* B60B84 800E99E4 30A3FFFF */  andi  $v1, $a1, 0xffff
/* B60B88 800E99E8 306C0001 */  andi  $t4, $v1, 1
/* B60B8C 800E99EC 1180000A */  beqz  $t4, .L800E9A18
/* B60B90 800E99F0 00032843 */   sra   $a1, $v1, 1
/* B60B94 800E99F4 00026880 */  sll   $t5, $v0, 2
/* B60B98 800E99F8 00CD7021 */  addu  $t6, $a2, $t5
/* B60B9C 800E99FC 8DC40044 */  lw    $a0, 0x44($t6)
/* B60BA0 800E9A00 90CF0005 */  lbu   $t7, 5($a2)
/* B60BA4 800E9A04 A08F0007 */  sb    $t7, 7($a0)
/* B60BA8 800E9A08 90D80003 */  lbu   $t8, 3($a2)
/* B60BAC 800E9A0C A0980003 */  sb    $t8, 3($a0)
/* B60BB0 800E9A10 90D90002 */  lbu   $t9, 2($a2)
/* B60BB4 800E9A14 A0990002 */  sb    $t9, 2($a0)
.L800E9A18:
/* B60BB8 800E9A18 24420004 */  addiu $v0, $v0, 4
/* B60BBC 800E9A1C 1447FFCA */  bne   $v0, $a3, .L800E9948
/* B60BC0 800E9A20 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B60BC4 800E9A24 03E00008 */  jr    $ra
/* B60BC8 800E9A28 00000000 */   nop   

glabel func_800E9A2C
/* B60BCC 800E9A2C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B60BD0 800E9A30 AFB20020 */  sw    $s2, 0x20($sp)
/* B60BD4 800E9A34 AFB40028 */  sw    $s4, 0x28($sp)
/* B60BD8 800E9A38 AFB30024 */  sw    $s3, 0x24($sp)
/* B60BDC 800E9A3C AFB1001C */  sw    $s1, 0x1c($sp)
/* B60BE0 800E9A40 AFB00018 */  sw    $s0, 0x18($sp)
/* B60BE4 800E9A44 3C128017 */  lui   $s2, %hi(D_80174C30) # $s2, 0x8017
/* B60BE8 800E9A48 AFBF002C */  sw    $ra, 0x2c($sp)
/* B60BEC 800E9A4C AFA50034 */  sw    $a1, 0x34($sp)
/* B60BF0 800E9A50 26524C30 */  addiu $s2, %lo(D_80174C30) # addiu $s2, $s2, 0x4c30
/* B60BF4 800E9A54 00008025 */  move  $s0, $zero
/* B60BF8 800E9A58 00808825 */  move  $s1, $a0
/* B60BFC 800E9A5C 24130001 */  li    $s3, 1
/* B60C00 800E9A60 24140040 */  li    $s4, 64
.L800E9A64:
/* B60C04 800E9A64 8E240038 */  lw    $a0, 0x38($s1)
/* B60C08 800E9A68 00927026 */  xor   $t6, $a0, $s2
/* B60C0C 800E9A6C 000E702B */  sltu  $t6, $zero, $t6
/* B60C10 800E9A70 566E0004 */  bnel  $s3, $t6, .L800E9A84
/* B60C14 800E9A74 26100004 */   addiu $s0, $s0, 4
/* B60C18 800E9A78 0C03A632 */  jal   func_800E98C8
/* B60C1C 800E9A7C 00000000 */   nop   
/* B60C20 800E9A80 26100004 */  addiu $s0, $s0, 4
.L800E9A84:
/* B60C24 800E9A84 1614FFF7 */  bne   $s0, $s4, .L800E9A64
/* B60C28 800E9A88 26310004 */   addiu $s1, $s1, 4
/* B60C2C 800E9A8C 8FBF002C */  lw    $ra, 0x2c($sp)
/* B60C30 800E9A90 8FB00018 */  lw    $s0, 0x18($sp)
/* B60C34 800E9A94 8FB1001C */  lw    $s1, 0x1c($sp)
/* B60C38 800E9A98 8FB20020 */  lw    $s2, 0x20($sp)
/* B60C3C 800E9A9C 8FB30024 */  lw    $s3, 0x24($sp)
/* B60C40 800E9AA0 8FB40028 */  lw    $s4, 0x28($sp)
/* B60C44 800E9AA4 03E00008 */  jr    $ra
/* B60C48 800E9AA8 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_800E9AAC
/* B60C4C 800E9AAC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B60C50 800E9AB0 AFA5002C */  sw    $a1, 0x2c($sp)
/* B60C54 800E9AB4 30A500FF */  andi  $a1, $a1, 0xff
/* B60C58 800E9AB8 00057080 */  sll   $t6, $a1, 2
/* B60C5C 800E9ABC AFBF0024 */  sw    $ra, 0x24($sp)
/* B60C60 800E9AC0 AFB30020 */  sw    $s3, 0x20($sp)
/* B60C64 800E9AC4 AFB2001C */  sw    $s2, 0x1c($sp)
/* B60C68 800E9AC8 AFB10018 */  sw    $s1, 0x18($sp)
/* B60C6C 800E9ACC AFB00014 */  sw    $s0, 0x14($sp)
/* B60C70 800E9AD0 008E7821 */  addu  $t7, $a0, $t6
/* B60C74 800E9AD4 8DF20038 */  lw    $s2, 0x38($t7)
/* B60C78 800E9AD8 00008025 */  move  $s0, $zero
/* B60C7C 800E9ADC 24130004 */  li    $s3, 4
/* B60C80 800E9AE0 92590000 */  lbu   $t9, ($s2)
/* B60C84 800E9AE4 A2400078 */  sb    $zero, 0x78($s2)
/* B60C88 800E9AE8 AE460060 */  sw    $a2, 0x60($s2)
/* B60C8C 800E9AEC 37290080 */  ori   $t1, $t9, 0x80
/* B60C90 800E9AF0 312A00BF */  andi  $t2, $t1, 0xbf
/* B60C94 800E9AF4 A2490000 */  sb    $t1, ($s2)
/* B60C98 800E9AF8 A24A0000 */  sb    $t2, ($s2)
/* B60C9C 800E9AFC A640001E */  sh    $zero, 0x1e($s2)
/* B60CA0 800E9B00 02408825 */  move  $s1, $s2
.L800E9B04:
/* B60CA4 800E9B04 8E2B0050 */  lw    $t3, 0x50($s1)
/* B60CA8 800E9B08 02402025 */  move  $a0, $s2
/* B60CAC 800E9B0C 51600004 */  beql  $t3, $zero, .L800E9B20
/* B60CB0 800E9B10 26100001 */   addiu $s0, $s0, 1
/* B60CB4 800E9B14 0C03A61E */  jal   func_800E9878
/* B60CB8 800E9B18 02002825 */   move  $a1, $s0
/* B60CBC 800E9B1C 26100001 */  addiu $s0, $s0, 1
.L800E9B20:
/* B60CC0 800E9B20 1613FFF8 */  bne   $s0, $s3, .L800E9B04
/* B60CC4 800E9B24 26310004 */   addiu $s1, $s1, 4
/* B60CC8 800E9B28 8FBF0024 */  lw    $ra, 0x24($sp)
/* B60CCC 800E9B2C 8FB00014 */  lw    $s0, 0x14($sp)
/* B60CD0 800E9B30 8FB10018 */  lw    $s1, 0x18($sp)
/* B60CD4 800E9B34 8FB2001C */  lw    $s2, 0x1c($sp)
/* B60CD8 800E9B38 8FB30020 */  lw    $s3, 0x20($sp)
/* B60CDC 800E9B3C 03E00008 */  jr    $ra
/* B60CE0 800E9B40 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800E9B44
/* B60CE4 800E9B44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B60CE8 800E9B48 AFBF0014 */  sw    $ra, 0x14($sp)
/* B60CEC 800E9B4C 908F0000 */  lbu   $t7, ($a0)
/* B60CF0 800E9B50 35F80040 */  ori   $t8, $t7, 0x40
/* B60CF4 800E9B54 0C03A6DB */  jal   func_800E9B6C
/* B60CF8 800E9B58 A0980000 */   sb    $t8, ($a0)
/* B60CFC 800E9B5C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B60D00 800E9B60 27BD0018 */  addiu $sp, $sp, 0x18
/* B60D04 800E9B64 03E00008 */  jr    $ra
/* B60D08 800E9B68 00000000 */   nop   

glabel func_800E9B6C
/* B60D0C 800E9B6C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B60D10 800E9B70 AFBF001C */  sw    $ra, 0x1c($sp)
/* B60D14 800E9B74 AFB00018 */  sw    $s0, 0x18($sp)
/* B60D18 800E9B78 00808025 */  move  $s0, $a0
/* B60D1C 800E9B7C 0C03A68B */  jal   func_800E9A2C
/* B60D20 800E9B80 3405FFFF */   li    $a1, 65535
/* B60D24 800E9B84 0C039F80 */  jal   Audio_NotePoolClear
/* B60D28 800E9B88 2604009C */   addiu $a0, $s0, 0x9c
/* B60D2C 800E9B8C 8E0E0000 */  lw    $t6, ($s0)
/* B60D30 800E9B90 000E7FC2 */  srl   $t7, $t6, 0x1f
/* B60D34 800E9B94 51E00020 */  beql  $t7, $zero, .L800E9C18
/* B60D38 800E9B98 8FBF001C */   lw    $ra, 0x1c($sp)
/* B60D3C 800E9B9C 92180000 */  lbu   $t8, ($s0)
/* B60D40 800E9BA0 92040004 */  lbu   $a0, 4($s0)
/* B60D44 800E9BA4 3309FF7F */  andi  $t1, $t8, 0xff7f
/* B60D48 800E9BA8 A2090000 */  sb    $t1, ($s0)
/* B60D4C 800E9BAC 352A0040 */  ori   $t2, $t1, 0x40
/* B60D50 800E9BB0 0C03864A */  jal   func_800E1928
/* B60D54 800E9BB4 A20A0000 */   sb    $t2, ($s0)
/* B60D58 800E9BB8 10400003 */  beqz  $v0, .L800E9BC8
/* B60D5C 800E9BBC 24050003 */   li    $a1, 3
/* B60D60 800E9BC0 0C038692 */  jal   func_800E1A48
/* B60D64 800E9BC4 92040004 */   lbu   $a0, 4($s0)
.L800E9BC8:
/* B60D68 800E9BC8 0C03862C */  jal   func_800E18B0
/* B60D6C 800E9BCC 92040005 */   lbu   $a0, 5($s0)
/* B60D70 800E9BD0 10400003 */  beqz  $v0, .L800E9BE0
/* B60D74 800E9BD4 24050004 */   li    $a1, 4
/* B60D78 800E9BD8 0C038686 */  jal   func_800E1A18
/* B60D7C 800E9BDC 92040005 */   lbu   $a0, 5($s0)
.L800E9BE0:
/* B60D80 800E9BE0 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B60D84 800E9BE4 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B60D88 800E9BE8 846B2C22 */  lh    $t3, 0x2c22($v1)
/* B60D8C 800E9BEC 92020005 */  lbu   $v0, 5($s0)
/* B60D90 800E9BF0 544B0004 */  bnel  $v0, $t3, .L800E9C04
/* B60D94 800E9BF4 846C2C2E */   lh    $t4, 0x2c2e($v1)
/* B60D98 800E9BF8 10000006 */  b     .L800E9C14
/* B60D9C 800E9BFC AC602C04 */   sw    $zero, 0x2c04($v1)
/* B60DA0 800E9C00 846C2C2E */  lh    $t4, 0x2c2e($v1)
.L800E9C04:
/* B60DA4 800E9C04 240D0001 */  li    $t5, 1
/* B60DA8 800E9C08 544C0003 */  bnel  $v0, $t4, .L800E9C18
/* B60DAC 800E9C0C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B60DB0 800E9C10 AC6D2C04 */  sw    $t5, 0x2c04($v1)
.L800E9C14:
/* B60DB4 800E9C14 8FBF001C */  lw    $ra, 0x1c($sp)
.L800E9C18:
/* B60DB8 800E9C18 8FB00018 */  lw    $s0, 0x18($sp)
/* B60DBC 800E9C1C 27BD0020 */  addiu $sp, $sp, 0x20
/* B60DC0 800E9C20 03E00008 */  jr    $ra
/* B60DC4 800E9C24 00000000 */   nop   

glabel Audio_AudioListPushBack
/* B60DC8 800E9C28 8CAE0000 */  lw    $t6, ($a1)
/* B60DCC 800E9C2C 15C0000C */  bnez  $t6, .L800E9C60
/* B60DD0 800E9C30 00000000 */   nop   
/* B60DD4 800E9C34 8C8F0000 */  lw    $t7, ($a0)
/* B60DD8 800E9C38 ADE50004 */  sw    $a1, 4($t7)
/* B60DDC 800E9C3C 8C980000 */  lw    $t8, ($a0)
/* B60DE0 800E9C40 ACA40004 */  sw    $a0, 4($a1)
/* B60DE4 800E9C44 ACB80000 */  sw    $t8, ($a1)
/* B60DE8 800E9C48 8C990008 */  lw    $t9, 8($a0)
/* B60DEC 800E9C4C 8C89000C */  lw    $t1, 0xc($a0)
/* B60DF0 800E9C50 AC850000 */  sw    $a1, ($a0)
/* B60DF4 800E9C54 27280001 */  addiu $t0, $t9, 1
/* B60DF8 800E9C58 AC880008 */  sw    $t0, 8($a0)
/* B60DFC 800E9C5C ACA9000C */  sw    $t1, 0xc($a1)
.L800E9C60:
/* B60E00 800E9C60 03E00008 */  jr    $ra
/* B60E04 800E9C64 00000000 */   nop   

glabel Audio_AudioListPopBack
/* B60E08 800E9C68 8C830000 */  lw    $v1, ($a0)
/* B60E0C 800E9C6C 54640004 */  bnel  $v1, $a0, .L800E9C80
/* B60E10 800E9C70 8C6E0000 */   lw    $t6, ($v1)
/* B60E14 800E9C74 03E00008 */  jr    $ra
/* B60E18 800E9C78 00001025 */   move  $v0, $zero
/* B60E1C 800E9C7C 8C6E0000 */  lw    $t6, ($v1)
.L800E9C80:
/* B60E20 800E9C80 ADC40004 */  sw    $a0, 4($t6)
/* B60E24 800E9C84 8C6F0000 */  lw    $t7, ($v1)
/* B60E28 800E9C88 AC8F0000 */  sw    $t7, ($a0)
/* B60E2C 800E9C8C AC600000 */  sw    $zero, ($v1)
/* B60E30 800E9C90 8C980008 */  lw    $t8, 8($a0)
/* B60E34 800E9C94 2719FFFF */  addiu $t9, $t8, -1
/* B60E38 800E9C98 AC990008 */  sw    $t9, 8($a0)
/* B60E3C 800E9C9C 8C620008 */  lw    $v0, 8($v1)
/* B60E40 800E9CA0 03E00008 */  jr    $ra
/* B60E44 800E9CA4 00000000 */   nop   

glabel func_800E9CA8
/* B60E48 800E9CA8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B60E4C 800E9CAC 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B60E50 800E9CB0 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B60E54 800E9CB4 AFB30024 */  sw    $s3, 0x24($sp)
/* B60E58 800E9CB8 3C138017 */  lui   $s3, %hi(D_80174D08) # $s3, 0x8017
/* B60E5C 800E9CBC 26734D08 */  addiu $s3, %lo(D_80174D08) # addiu $s3, $s3, 0x4d08
/* B60E60 800E9CC0 AFB40028 */  sw    $s4, 0x28($sp)
/* B60E64 800E9CC4 AFB20020 */  sw    $s2, 0x20($sp)
/* B60E68 800E9CC8 AFB1001C */  sw    $s1, 0x1c($sp)
/* B60E6C 800E9CCC AFB00018 */  sw    $s0, 0x18($sp)
/* B60E70 800E9CD0 3C108017 */  lui   $s0, %hi(gAudioContext) # $s0, 0x8017
/* B60E74 800E9CD4 3C118017 */  lui   $s1, %hi(D_80172CA0) # $s1, 0x8017
/* B60E78 800E9CD8 3C128017 */  lui   $s2, %hi(D_80172C30) # $s2, 0x8017
/* B60E7C 800E9CDC 3C148017 */  lui   $s4, %hi(D_80174CA0) # $s4, 0x8017
/* B60E80 800E9CE0 AFBF002C */  sw    $ra, 0x2c($sp)
/* B60E84 800E9CE4 AC535B88 */  sw    $s3, 0x5b88($v0)
/* B60E88 800E9CE8 AC535B8C */  sw    $s3, 0x5b8c($v0)
/* B60E8C 800E9CEC AC405B90 */  sw    $zero, 0x5b90($v0)
/* B60E90 800E9CF0 AC405B94 */  sw    $zero, 0x5b94($v0)
/* B60E94 800E9CF4 26944CA0 */  addiu $s4, %lo(D_80174CA0) # addiu $s4, $s4, 0x4ca0
/* B60E98 800E9CF8 26522C30 */  addiu $s2, %lo(D_80172C30) # addiu $s2, $s2, 0x2c30
/* B60E9C 800E9CFC 26312CA0 */  addiu $s1, %lo(D_80172CA0) # addiu $s1, $s1, 0x2ca0
/* B60EA0 800E9D00 2610F180 */  addiu $s0, %lo(gAudioContext) # addiu $s0, $s0, -0xe80
.L800E9D04:
/* B60EA4 800E9D04 AE123B28 */  sw    $s2, 0x3b28($s0)
/* B60EA8 800E9D08 AE003B20 */  sw    $zero, 0x3b20($s0)
/* B60EAC 800E9D0C 02602025 */  move  $a0, $s3
/* B60EB0 800E9D10 0C03A70A */  jal   Audio_AudioListPushBack
/* B60EB4 800E9D14 02202825 */   move  $a1, $s1
/* B60EB8 800E9D18 26310080 */  addiu $s1, $s1, 0x80
/* B60EBC 800E9D1C 26100080 */  addiu $s0, $s0, 0x80
/* B60EC0 800E9D20 1634FFF8 */  bne   $s1, $s4, .L800E9D04
/* B60EC4 800E9D24 26520080 */   addiu $s2, $s2, 0x80
/* B60EC8 800E9D28 8FBF002C */  lw    $ra, 0x2c($sp)
/* B60ECC 800E9D2C 8FB00018 */  lw    $s0, 0x18($sp)
/* B60ED0 800E9D30 8FB1001C */  lw    $s1, 0x1c($sp)
/* B60ED4 800E9D34 8FB20020 */  lw    $s2, 0x20($sp)
/* B60ED8 800E9D38 8FB30024 */  lw    $s3, 0x24($sp)
/* B60EDC 800E9D3C 8FB40028 */  lw    $s4, 0x28($sp)
/* B60EE0 800E9D40 03E00008 */  jr    $ra
/* B60EE4 800E9D44 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_800E9D48
/* B60EE8 800E9D48 8C850000 */  lw    $a1, ($a0)
/* B60EEC 800E9D4C 90A20000 */  lbu   $v0, ($a1)
/* B60EF0 800E9D50 24AE0001 */  addiu $t6, $a1, 1
/* B60EF4 800E9D54 03E00008 */  jr    $ra
/* B60EF8 800E9D58 AC8E0000 */   sw    $t6, ($a0)

glabel func_800E9D5C
/* B60EFC 800E9D5C 8C850000 */  lw    $a1, ($a0)
/* B60F00 800E9D60 90A30000 */  lbu   $v1, ($a1)
/* B60F04 800E9D64 24AE0001 */  addiu $t6, $a1, 1
/* B60F08 800E9D68 AC8E0000 */  sw    $t6, ($a0)
/* B60F0C 800E9D6C 91CF0000 */  lbu   $t7, ($t6)
/* B60F10 800E9D70 00031A00 */  sll   $v1, $v1, 8
/* B60F14 800E9D74 00031C00 */  sll   $v1, $v1, 0x10
/* B60F18 800E9D78 00031C03 */  sra   $v1, $v1, 0x10
/* B60F1C 800E9D7C 01E31825 */  or    $v1, $t7, $v1
/* B60F20 800E9D80 00031C00 */  sll   $v1, $v1, 0x10
/* B60F24 800E9D84 25D80001 */  addiu $t8, $t6, 1
/* B60F28 800E9D88 AC980000 */  sw    $t8, ($a0)
/* B60F2C 800E9D8C 03E00008 */  jr    $ra
/* B60F30 800E9D90 00031403 */   sra   $v0, $v1, 0x10

glabel func_800E9D94
/* B60F34 800E9D94 8C820000 */  lw    $v0, ($a0)
/* B60F38 800E9D98 90430000 */  lbu   $v1, ($v0)
/* B60F3C 800E9D9C 244E0001 */  addiu $t6, $v0, 1
/* B60F40 800E9DA0 AC8E0000 */  sw    $t6, ($a0)
/* B60F44 800E9DA4 306F0080 */  andi  $t7, $v1, 0x80
/* B60F48 800E9DA8 11E00008 */  beqz  $t7, .L800E9DCC
/* B60F4C 800E9DAC 00602825 */   move  $a1, $v1
/* B60F50 800E9DB0 91D80000 */  lbu   $t8, ($t6)
/* B60F54 800E9DB4 00051A00 */  sll   $v1, $a1, 8
/* B60F58 800E9DB8 30637F00 */  andi  $v1, $v1, 0x7f00
/* B60F5C 800E9DBC 25D90001 */  addiu $t9, $t6, 1
/* B60F60 800E9DC0 03031825 */  or    $v1, $t8, $v1
/* B60F64 800E9DC4 3063FFFF */  andi  $v1, $v1, 0xffff
/* B60F68 800E9DC8 AC990000 */  sw    $t9, ($a0)
.L800E9DCC:
/* B60F6C 800E9DCC 03E00008 */  jr    $ra
/* B60F70 800E9DD0 00601025 */   move  $v0, $v1

glabel func_800E9DD4
/* B60F74 800E9DD4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B60F78 800E9DD8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B60F7C 800E9DDC AFB00018 */  sw    $s0, 0x18($sp)
/* B60F80 800E9DE0 8C820000 */  lw    $v0, ($a0)
/* B60F84 800E9DE4 00808025 */  move  $s0, $a0
/* B60F88 800E9DE8 000277C2 */  srl   $t6, $v0, 0x1f
/* B60F8C 800E9DEC 51C00036 */  beql  $t6, $zero, .L800E9EC8
/* B60F90 800E9DF0 8FBF001C */   lw    $ra, 0x1c($sp)
/* B60F94 800E9DF4 84830008 */  lh    $v1, 8($a0)
/* B60F98 800E9DF8 0002C880 */  sll   $t9, $v0, 2
/* B60F9C 800E9DFC 28610002 */  slti  $at, $v1, 2
/* B60FA0 800E9E00 1420000E */  bnez  $at, .L800E9E3C
/* B60FA4 800E9E04 246FFFFF */   addiu $t7, $v1, -1
/* B60FA8 800E9E08 0720002E */  bltz  $t9, .L800E9EC4
/* B60FAC 800E9E0C A48F0008 */   sh    $t7, 8($a0)
/* B60FB0 800E9E10 8488000A */  lh    $t0, 0xa($a0)
/* B60FB4 800E9E14 84890008 */  lh    $t1, 8($a0)
/* B60FB8 800E9E18 0109082A */  slt   $at, $t0, $t1
/* B60FBC 800E9E1C 5420002A */  bnezl $at, .L800E9EC8
/* B60FC0 800E9E20 8FBF001C */   lw    $ra, 0x1c($sp)
/* B60FC4 800E9E24 0C039ED8 */  jal   Audio_SeqChanLayerNoteDecay
/* B60FC8 800E9E28 00000000 */   nop   
/* B60FCC 800E9E2C 920B0000 */  lbu   $t3, ($s0)
/* B60FD0 800E9E30 356C0020 */  ori   $t4, $t3, 0x20
/* B60FD4 800E9E34 10000023 */  b     .L800E9EC4
/* B60FD8 800E9E38 A20C0000 */   sb    $t4, ($s0)
.L800E9E3C:
/* B60FDC 800E9E3C 0C03A7B6 */  jal   func_800E9ED8
/* B60FE0 800E9E40 02002025 */   move  $a0, $s0
/* B60FE4 800E9E44 0C03A830 */  jal   func_800EA0C0
/* B60FE8 800E9E48 02002025 */   move  $a0, $s0
/* B60FEC 800E9E4C 2401FFFF */  li    $at, -1
/* B60FF0 800E9E50 1041001C */  beq   $v0, $at, .L800E9EC4
/* B60FF4 800E9E54 00402825 */   move  $a1, $v0
/* B60FF8 800E9E58 0C03AAB8 */  jal   func_800EAAE0
/* B60FFC 800E9E5C 02002025 */   move  $a0, $s0
/* B61000 800E9E60 2401FFFF */  li    $at, -1
/* B61004 800E9E64 10410004 */  beq   $v0, $at, .L800E9E78
/* B61008 800E9E68 00402825 */   move  $a1, $v0
/* B6100C 800E9E6C 0C03A910 */  jal   func_800EA440
/* B61010 800E9E70 02002025 */   move  $a0, $s0
/* B61014 800E9E74 00402825 */  move  $a1, $v0
.L800E9E78:
/* B61018 800E9E78 2401FFFF */  li    $at, -1
/* B6101C 800E9E7C 50410004 */  beql  $v0, $at, .L800E9E90
/* B61020 800E9E80 8E020000 */   lw    $v0, ($s0)
/* B61024 800E9E84 0C03A7D9 */  jal   func_800E9F64
/* B61028 800E9E88 02002025 */   move  $a0, $s0
/* B6102C 800E9E8C 8E020000 */  lw    $v0, ($s0)
.L800E9E90:
/* B61030 800E9E90 24010001 */  li    $at, 1
/* B61034 800E9E94 00026880 */  sll   $t5, $v0, 2
/* B61038 800E9E98 000D77C2 */  srl   $t6, $t5, 0x1f
/* B6103C 800E9E9C 55C1000A */  bnel  $t6, $at, .L800E9EC8
/* B61040 800E9EA0 8FBF001C */   lw    $ra, 0x1c($sp)
/* B61044 800E9EA4 8E0F002C */  lw    $t7, 0x2c($s0)
/* B61048 800E9EA8 0002C8C0 */  sll   $t9, $v0, 3
/* B6104C 800E9EAC 15E00003 */  bnez  $t7, .L800E9EBC
/* B61050 800E9EB0 00000000 */   nop   
/* B61054 800E9EB4 07230004 */  bgezl $t9, .L800E9EC8
/* B61058 800E9EB8 8FBF001C */   lw    $ra, 0x1c($sp)
.L800E9EBC:
/* B6105C 800E9EBC 0C039ED8 */  jal   Audio_SeqChanLayerNoteDecay
/* B61060 800E9EC0 02002025 */   move  $a0, $s0
.L800E9EC4:
/* B61064 800E9EC4 8FBF001C */  lw    $ra, 0x1c($sp)
.L800E9EC8:
/* B61068 800E9EC8 8FB00018 */  lw    $s0, 0x18($sp)
/* B6106C 800E9ECC 27BD0020 */  addiu $sp, $sp, 0x20
/* B61070 800E9ED0 03E00008 */  jr    $ra
/* B61074 800E9ED4 00000000 */   nop   

glabel func_800E9ED8
/* B61078 800E9ED8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B6107C 800E9EDC AFBF0014 */  sw    $ra, 0x14($sp)
/* B61080 800E9EE0 8C8E0000 */  lw    $t6, ($a0)
/* B61084 800E9EE4 000EC0C0 */  sll   $t8, $t6, 3
/* B61088 800E9EE8 07020006 */  bltzl $t8, .L800E9F04
/* B6108C 800E9EEC 8C82002C */   lw    $v0, 0x2c($a0)
/* B61090 800E9EF0 0C039ED8 */  jal   Audio_SeqChanLayerNoteDecay
/* B61094 800E9EF4 AFA40018 */   sw    $a0, 0x18($sp)
/* B61098 800E9EF8 1000000A */  b     .L800E9F24
/* B6109C 800E9EFC 8FA40018 */   lw    $a0, 0x18($sp)
/* B610A0 800E9F00 8C82002C */  lw    $v0, 0x2c($a0)
.L800E9F04:
/* B610A4 800E9F04 50400008 */  beql  $v0, $zero, .L800E9F28
/* B610A8 800E9F08 90820020 */   lbu   $v0, 0x20($a0)
/* B610AC 800E9F0C 8C590048 */  lw    $t9, 0x48($v0)
/* B610B0 800E9F10 54990005 */  bnel  $a0, $t9, .L800E9F28
/* B610B4 800E9F14 90820020 */   lbu   $v0, 0x20($a0)
/* B610B8 800E9F18 0C039ED8 */  jal   Audio_SeqChanLayerNoteDecay
/* B610BC 800E9F1C AFA40018 */   sw    $a0, 0x18($sp)
/* B610C0 800E9F20 8FA40018 */  lw    $a0, 0x18($sp)
.L800E9F24:
/* B610C4 800E9F24 90820020 */  lbu   $v0, 0x20($a0)
.L800E9F28:
/* B610C8 800E9F28 2401FF7F */  li    $at, -129
/* B610CC 800E9F2C 00411024 */  and   $v0, $v0, $at
/* B610D0 800E9F30 24010001 */  li    $at, 1
/* B610D4 800E9F34 10410003 */  beq   $v0, $at, .L800E9F44
/* B610D8 800E9F38 24010002 */   li    $at, 2
/* B610DC 800E9F3C 54410003 */  bnel  $v0, $at, .L800E9F4C
/* B610E0 800E9F40 90890000 */   lbu   $t1, ($a0)
.L800E9F44:
/* B610E4 800E9F44 A0800020 */  sb    $zero, 0x20($a0)
/* B610E8 800E9F48 90890000 */  lbu   $t1, ($a0)
.L800E9F4C:
/* B610EC 800E9F4C 352A0001 */  ori   $t2, $t1, 1
/* B610F0 800E9F50 A08A0000 */  sb    $t2, ($a0)
/* B610F4 800E9F54 8FBF0014 */  lw    $ra, 0x14($sp)
/* B610F8 800E9F58 27BD0018 */  addiu $sp, $sp, 0x18
/* B610FC 800E9F5C 03E00008 */  jr    $ra
/* B61100 800E9F60 00000000 */   nop   

glabel func_800E9F64
/* B61104 800E9F64 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B61108 800E9F68 AFBF0014 */  sw    $ra, 0x14($sp)
/* B6110C 800E9F6C 8C820000 */  lw    $v0, ($a0)
/* B61110 800E9F70 00803825 */  move  $a3, $a0
/* B61114 800E9F74 00027880 */  sll   $t7, $v0, 2
/* B61118 800E9F78 05E20013 */  bltzl $t7, .L800E9FC8
/* B6111C 800E9F7C 000218C0 */   sll   $v1, $v0, 3
/* B61120 800E9F80 8C83004C */  lw    $v1, 0x4c($a0)
/* B61124 800E9F84 50600010 */  beql  $v1, $zero, .L800E9FC8
/* B61128 800E9F88 000218C0 */   sll   $v1, $v0, 3
/* B6112C 800E9F8C 8C780000 */  lw    $t8, ($v1)
/* B61130 800E9F90 24010002 */  li    $at, 2
/* B61134 800E9F94 8F040000 */  lw    $a0, ($t8)
/* B61138 800E9F98 0004CF02 */  srl   $t9, $a0, 0x1c
/* B6113C 800E9F9C 17210009 */  bne   $t9, $at, .L800E9FC4
/* B61140 800E9FA0 00044100 */   sll   $t0, $a0, 4
/* B61144 800E9FA4 00084F82 */  srl   $t1, $t0, 0x1e
/* B61148 800E9FA8 51200007 */  beql  $t1, $zero, .L800E9FC8
/* B6114C 800E9FAC 000218C0 */   sll   $v1, $v0, 3
/* B61150 800E9FB0 90EB0000 */  lbu   $t3, ($a3)
/* B61154 800E9FB4 2402FFFF */  li    $v0, -1
/* B61158 800E9FB8 356C0020 */  ori   $t4, $t3, 0x20
/* B6115C 800E9FBC 1000003C */  b     .L800EA0B0
/* B61160 800E9FC0 A0EC0000 */   sb    $t4, ($a3)
.L800E9FC4:
/* B61164 800E9FC4 000218C0 */  sll   $v1, $v0, 3
.L800E9FC8:
/* B61168 800E9FC8 24040001 */  li    $a0, 1
/* B6116C 800E9FCC 00031FC2 */  srl   $v1, $v1, 0x1f
/* B61170 800E9FD0 14830006 */  bne   $a0, $v1, .L800E9FEC
/* B61174 800E9FD4 00026980 */   sll   $t5, $v0, 6
/* B61178 800E9FD8 000D77C2 */  srl   $t6, $t5, 0x1f
/* B6117C 800E9FDC 148E0003 */  bne   $a0, $t6, .L800E9FEC
/* B61180 800E9FE0 00000000 */   nop   
/* B61184 800E9FE4 10000032 */  b     .L800EA0B0
/* B61188 800E9FE8 00001025 */   move  $v0, $zero
.L800E9FEC:
/* B6118C 800E9FEC 14830015 */  bne   $a0, $v1, .L800EA044
/* B61190 800E9FF0 00000000 */   nop   
/* B61194 800E9FF4 8CE6002C */  lw    $a2, 0x2c($a3)
/* B61198 800E9FF8 0002C100 */  sll   $t8, $v0, 4
/* B6119C 800E9FFC 10C00011 */  beqz  $a2, .L800EA044
/* B611A0 800EA000 00000000 */   nop   
/* B611A4 800EA004 0701000F */  bgez  $t8, .L800EA044
/* B611A8 800EA008 00000000 */   nop   
/* B611AC 800EA00C 14A4000D */  bne   $a1, $a0, .L800EA044
/* B611B0 800EA010 00000000 */   nop   
/* B611B4 800EA014 8CD90044 */  lw    $t9, 0x44($a2)
/* B611B8 800EA018 14F9000A */  bne   $a3, $t9, .L800EA044
/* B611BC 800EA01C 00000000 */   nop   
/* B611C0 800EA020 8CE8004C */  lw    $t0, 0x4c($a3)
/* B611C4 800EA024 00C02025 */  move  $a0, $a2
/* B611C8 800EA028 00E02825 */  move  $a1, $a3
/* B611CC 800EA02C 55000018 */  bnezl $t0, .L800EA090
/* B611D0 800EA030 8CE6002C */   lw    $a2, 0x2c($a3)
/* B611D4 800EA034 0C039F29 */  jal   Audio_InitSyntheticWave
/* B611D8 800EA038 AFA70018 */   sw    $a3, 0x18($sp)
/* B611DC 800EA03C 10000013 */  b     .L800EA08C
/* B611E0 800EA040 8FA70018 */   lw    $a3, 0x18($sp)
.L800EA044:
/* B611E4 800EA044 14A00004 */  bnez  $a1, .L800EA058
/* B611E8 800EA048 00E02025 */   move  $a0, $a3
/* B611EC 800EA04C 0C039ED8 */  jal   Audio_SeqChanLayerNoteDecay
/* B611F0 800EA050 AFA70018 */   sw    $a3, 0x18($sp)
/* B611F4 800EA054 8FA70018 */  lw    $a3, 0x18($sp)
.L800EA058:
/* B611F8 800EA058 00E02025 */  move  $a0, $a3
/* B611FC 800EA05C 0C03A12D */  jal   Audio_AllocNote
/* B61200 800EA060 AFA70018 */   sw    $a3, 0x18($sp)
/* B61204 800EA064 8FA70018 */  lw    $a3, 0x18($sp)
/* B61208 800EA068 10400008 */  beqz  $v0, .L800EA08C
/* B6120C 800EA06C ACE2002C */   sw    $v0, 0x2c($a3)
/* B61210 800EA070 8C490044 */  lw    $t1, 0x44($v0)
/* B61214 800EA074 00402025 */  move  $a0, $v0
/* B61218 800EA078 54E90005 */  bnel  $a3, $t1, .L800EA090
/* B6121C 800EA07C 8CE6002C */   lw    $a2, 0x2c($a3)
/* B61220 800EA080 0C03A3C0 */  jal   func_800E8F00
/* B61224 800EA084 AFA70018 */   sw    $a3, 0x18($sp)
/* B61228 800EA088 8FA70018 */  lw    $a3, 0x18($sp)
.L800EA08C:
/* B6122C 800EA08C 8CE6002C */  lw    $a2, 0x2c($a3)
.L800EA090:
/* B61230 800EA090 50C00007 */  beql  $a2, $zero, .L800EA0B0
/* B61234 800EA094 00001025 */   move  $v0, $zero
/* B61238 800EA098 8CCA0044 */  lw    $t2, 0x44($a2)
/* B6123C 800EA09C 54EA0004 */  bnel  $a3, $t2, .L800EA0B0
/* B61240 800EA0A0 00001025 */   move  $v0, $zero
/* B61244 800EA0A4 0C03A3EE */  jal   func_800E8FB8
/* B61248 800EA0A8 00C02025 */   move  $a0, $a2
/* B6124C 800EA0AC 00001025 */  move  $v0, $zero
.L800EA0B0:
/* B61250 800EA0B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B61254 800EA0B4 27BD0018 */  addiu $sp, $sp, 0x18
/* B61258 800EA0B8 03E00008 */  jr    $ra
/* B6125C 800EA0BC 00000000 */   nop   

glabel func_800EA0C0
/* B61260 800EA0C0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B61264 800EA0C4 AFBF0034 */  sw    $ra, 0x34($sp)
/* B61268 800EA0C8 AFB40030 */  sw    $s4, 0x30($sp)
/* B6126C 800EA0CC AFB3002C */  sw    $s3, 0x2c($sp)
/* B61270 800EA0D0 AFB20028 */  sw    $s2, 0x28($sp)
/* B61274 800EA0D4 AFB10024 */  sw    $s1, 0x24($sp)
/* B61278 800EA0D8 AFB00020 */  sw    $s0, 0x20($sp)
/* B6127C 800EA0DC F7B40018 */  sdc1  $f20, 0x18($sp)
/* B61280 800EA0E0 8C940050 */  lw    $s4, 0x50($a0)
/* B61284 800EA0E4 3C018015 */  lui   $at, %hi(D_80149658)
/* B61288 800EA0E8 00808825 */  move  $s1, $a0
/* B6128C 800EA0EC C4349658 */  lwc1  $f20, %lo(D_80149658)($at)
/* B61290 800EA0F0 24920054 */  addiu $s2, $a0, 0x54
/* B61294 800EA0F4 8E93004C */  lw    $s3, 0x4c($s4)
.L800EA0F8:
/* B61298 800EA0F8 0C03A752 */  jal   func_800E9D48
/* B6129C 800EA0FC 02402025 */   move  $a0, $s2
/* B612A0 800EA100 284100C1 */  slti  $at, $v0, 0xc1
/* B612A4 800EA104 305000FF */  andi  $s0, $v0, 0xff
/* B612A8 800EA108 10200003 */  beqz  $at, .L800EA118
/* B612AC 800EA10C 00402025 */   move  $a0, $v0
/* B612B0 800EA110 100000C2 */  b     .L800EA41C
/* B612B4 800EA114 02001025 */   move  $v0, $s0
.L800EA118:
/* B612B8 800EA118 288100F2 */  slti  $at, $a0, 0xf2
/* B612BC 800EA11C 1420000F */  bnez  $at, .L800EA15C
/* B612C0 800EA120 248EFF3F */   addiu $t6, $a0, -0xc1
/* B612C4 800EA124 02402025 */  move  $a0, $s2
/* B612C8 800EA128 0C03A4D0 */  jal   func_800E9340
/* B612CC 800EA12C 320500FF */   andi  $a1, $s0, 0xff
/* B612D0 800EA130 02602025 */  move  $a0, $s3
/* B612D4 800EA134 02402825 */  move  $a1, $s2
/* B612D8 800EA138 02003025 */  move  $a2, $s0
/* B612DC 800EA13C 0C03A4EA */  jal   func_800E93A8
/* B612E0 800EA140 00403825 */   move  $a3, $v0
/* B612E4 800EA144 1040FFEC */  beqz  $v0, .L800EA0F8
/* B612E8 800EA148 00000000 */   nop   
/* B612EC 800EA14C 0C03A5FF */  jal   func_800E97FC
/* B612F0 800EA150 02202025 */   move  $a0, $s1
/* B612F4 800EA154 100000B1 */  b     .L800EA41C
/* B612F8 800EA158 2402FFFF */   li    $v0, -1
.L800EA15C:
/* B612FC 800EA15C 2DC1000F */  sltiu $at, $t6, 0xf
/* B61300 800EA160 10200095 */  beqz  $at, .L800EA3B8
/* B61304 800EA164 308300F0 */   andi  $v1, $a0, 0xf0
/* B61308 800EA168 000E7080 */  sll   $t6, $t6, 2
/* B6130C 800EA16C 3C018015 */  lui   $at, %hi(jtbl_8014965C)
/* B61310 800EA170 002E0821 */  addu  $at, $at, $t6
/* B61314 800EA174 8C2E965C */  lw    $t6, %lo(jtbl_8014965C)($at)
/* B61318 800EA178 01C00008 */  jr    $t6
/* B6131C 800EA17C 00000000 */   nop   
glabel L800EA180
/* B61320 800EA180 8E430000 */  lw    $v1, ($s2)
/* B61324 800EA184 240100C1 */  li    $at, 193
/* B61328 800EA188 90650000 */  lbu   $a1, ($v1)
/* B6132C 800EA18C 246F0001 */  addiu $t7, $v1, 1
/* B61330 800EA190 14810009 */  bne   $a0, $at, .L800EA1B8
/* B61334 800EA194 AE4F0000 */   sw    $t7, ($s2)
/* B61338 800EA198 00A50019 */  multu $a1, $a1
/* B6133C 800EA19C 0000C012 */  mflo  $t8
/* B61340 800EA1A0 44982000 */  mtc1  $t8, $f4
/* B61344 800EA1A4 00000000 */  nop   
/* B61348 800EA1A8 468021A0 */  cvt.s.w $f6, $f4
/* B6134C 800EA1AC 46143203 */  div.s $f8, $f6, $f20
/* B61350 800EA1B0 1000FFD1 */  b     .L800EA0F8
/* B61354 800EA1B4 E628003C */   swc1  $f8, 0x3c($s1)
.L800EA1B8:
/* B61358 800EA1B8 1000FFCF */  b     .L800EA0F8
/* B6135C 800EA1BC A2250006 */   sb    $a1, 6($s1)
glabel L800EA1C0
/* B61360 800EA1C0 8E430000 */  lw    $v1, ($s2)
/* B61364 800EA1C4 240100C9 */  li    $at, 201
/* B61368 800EA1C8 90650000 */  lbu   $a1, ($v1)
/* B6136C 800EA1CC 24790001 */  addiu $t9, $v1, 1
/* B61370 800EA1D0 14810003 */  bne   $a0, $at, .L800EA1E0
/* B61374 800EA1D4 AE590000 */   sw    $t9, ($s2)
/* B61378 800EA1D8 1000FFC7 */  b     .L800EA0F8
/* B6137C 800EA1DC A2250003 */   sb    $a1, 3($s1)
.L800EA1E0:
/* B61380 800EA1E0 1000FFC5 */  b     .L800EA0F8
/* B61384 800EA1E4 A6250010 */   sh    $a1, 0x10($s1)
glabel L800EA1E8
/* B61388 800EA1E8 240100C4 */  li    $at, 196
/* B6138C 800EA1EC 54810006 */  bnel  $a0, $at, .L800EA208
/* B61390 800EA1F0 922B0000 */   lbu   $t3, ($s1)
/* B61394 800EA1F4 92290000 */  lbu   $t1, ($s1)
/* B61398 800EA1F8 352A0010 */  ori   $t2, $t1, 0x10
/* B6139C 800EA1FC 10000004 */  b     .L800EA210
/* B613A0 800EA200 A22A0000 */   sb    $t2, ($s1)
/* B613A4 800EA204 922B0000 */  lbu   $t3, ($s1)
.L800EA208:
/* B613A8 800EA208 316CFFEF */  andi  $t4, $t3, 0xffef
/* B613AC 800EA20C A22C0000 */  sb    $t4, ($s1)
.L800EA210:
/* B613B0 800EA210 922D0000 */  lbu   $t5, ($s1)
/* B613B4 800EA214 02202025 */  move  $a0, $s1
/* B613B8 800EA218 31AEFFFD */  andi  $t6, $t5, 0xfffd
/* B613BC 800EA21C 0C039ED8 */  jal   Audio_SeqChanLayerNoteDecay
/* B613C0 800EA220 A22E0000 */   sb    $t6, ($s1)
/* B613C4 800EA224 1000FFB4 */  b     .L800EA0F8
/* B613C8 800EA228 00000000 */   nop   
glabel L800EA22C
/* B613CC 800EA22C 0C03A765 */  jal   func_800E9D94
/* B613D0 800EA230 02402025 */   move  $a0, $s2
/* B613D4 800EA234 1000FFB0 */  b     .L800EA0F8
/* B613D8 800EA238 A6220012 */   sh    $v0, 0x12($s1)
glabel L800EA23C
/* B613DC 800EA23C 0C03A752 */  jal   func_800E9D48
/* B613E0 800EA240 02402025 */   move  $a0, $s2
/* B613E4 800EA244 2841007E */  slti  $at, $v0, 0x7e
/* B613E8 800EA248 305000FF */  andi  $s0, $v0, 0xff
/* B613EC 800EA24C 14200012 */  bnez  $at, .L800EA298
/* B613F0 800EA250 00402025 */   move  $a0, $v0
/* B613F4 800EA254 2401007E */  li    $at, 126
/* B613F8 800EA258 14410003 */  bne   $v0, $at, .L800EA268
/* B613FC 800EA25C 240F0001 */   li    $t7, 1
/* B61400 800EA260 10000008 */  b     .L800EA284
/* B61404 800EA264 A22F0002 */   sb    $t7, 2($s1)
.L800EA268:
/* B61408 800EA268 2401007F */  li    $at, 127
/* B6140C 800EA26C 54810004 */  bnel  $a0, $at, .L800EA280
/* B61410 800EA270 A2220002 */   sb    $v0, 2($s1)
/* B61414 800EA274 10000003 */  b     .L800EA284
/* B61418 800EA278 A2200002 */   sb    $zero, 2($s1)
/* B6141C 800EA27C A2220002 */  sb    $v0, 2($s1)
.L800EA280:
/* B61420 800EA280 AE200048 */  sw    $zero, 0x48($s1)
.L800EA284:
/* B61424 800EA284 240100FF */  li    $at, 255
/* B61428 800EA288 1481FF9B */  bne   $a0, $at, .L800EA0F8
/* B6142C 800EA28C 00000000 */   nop   
/* B61430 800EA290 1000FF99 */  b     .L800EA0F8
/* B61434 800EA294 A2200018 */   sb    $zero, 0x18($s1)
.L800EA298:
/* B61438 800EA298 02802025 */  move  $a0, $s4
/* B6143C 800EA29C 320500FF */  andi  $a1, $s0, 0xff
/* B61440 800EA2A0 26260048 */  addiu $a2, $s1, 0x48
/* B61444 800EA2A4 0C03ABC9 */  jal   func_800EAF24
/* B61448 800EA2A8 26270018 */   addiu $a3, $s1, 0x18
/* B6144C 800EA2AC 1440FF92 */  bnez  $v0, .L800EA0F8
/* B61450 800EA2B0 A2220002 */   sb    $v0, 2($s1)
/* B61454 800EA2B4 241800FF */  li    $t8, 255
/* B61458 800EA2B8 1000FF8F */  b     .L800EA0F8
/* B6145C 800EA2BC A2380002 */   sb    $t8, 2($s1)
glabel L800EA2C0
/* B61460 800EA2C0 0C03A752 */  jal   func_800E9D48
/* B61464 800EA2C4 02402025 */   move  $a0, $s2
/* B61468 800EA2C8 A2220020 */  sb    $v0, 0x20($s1)
/* B6146C 800EA2CC 0C03A752 */  jal   func_800E9D48
/* B61470 800EA2D0 02402025 */   move  $a0, $s2
/* B61474 800EA2D4 86990026 */  lh    $t9, 0x26($s4)
/* B61478 800EA2D8 86280010 */  lh    $t0, 0x10($s1)
/* B6147C 800EA2DC 8669000E */  lh    $t1, 0xe($s3)
/* B61480 800EA2E0 00598021 */  addu  $s0, $v0, $t9
/* B61484 800EA2E4 02088021 */  addu  $s0, $s0, $t0
/* B61488 800EA2E8 02098021 */  addu  $s0, $s0, $t1
/* B6148C 800EA2EC 321000FF */  andi  $s0, $s0, 0xff
/* B61490 800EA2F0 2A010080 */  slti  $at, $s0, 0x80
/* B61494 800EA2F4 54200003 */  bnezl $at, .L800EA304
/* B61498 800EA2F8 922A0020 */   lbu   $t2, 0x20($s1)
/* B6149C 800EA2FC 00008025 */  move  $s0, $zero
/* B614A0 800EA300 922A0020 */  lbu   $t2, 0x20($s1)
.L800EA304:
/* B614A4 800EA304 A2300005 */  sb    $s0, 5($s1)
/* B614A8 800EA308 314B0080 */  andi  $t3, $t2, 0x80
/* B614AC 800EA30C 11600008 */  beqz  $t3, .L800EA330
/* B614B0 800EA310 00000000 */   nop   
/* B614B4 800EA314 8E4C0000 */  lw    $t4, ($s2)
/* B614B8 800EA318 918D0000 */  lbu   $t5, ($t4)
/* B614BC 800EA31C A62D000E */  sh    $t5, 0xe($s1)
/* B614C0 800EA320 8E4E0000 */  lw    $t6, ($s2)
/* B614C4 800EA324 25CF0001 */  addiu $t7, $t6, 1
/* B614C8 800EA328 1000FF73 */  b     .L800EA0F8
/* B614CC 800EA32C AE4F0000 */   sw    $t7, ($s2)
.L800EA330:
/* B614D0 800EA330 0C03A765 */  jal   func_800E9D94
/* B614D4 800EA334 02402025 */   move  $a0, $s2
/* B614D8 800EA338 1000FF6F */  b     .L800EA0F8
/* B614DC 800EA33C A622000E */   sh    $v0, 0xe($s1)
glabel L800EA340
/* B614E0 800EA340 1000FF6D */  b     .L800EA0F8
/* B614E4 800EA344 A2200020 */   sb    $zero, 0x20($s1)
glabel L800EA348
/* B614E8 800EA348 0C03A757 */  jal   func_800E9D5C
/* B614EC 800EA34C 02402025 */   move  $a0, $s2
/* B614F0 800EA350 8E780018 */  lw    $t8, 0x18($s3)
/* B614F4 800EA354 3059FFFF */  andi  $t9, $v0, 0xffff
/* B614F8 800EA358 03194021 */  addu  $t0, $t8, $t9
/* B614FC 800EA35C AE28001C */  sw    $t0, 0x1c($s1)
glabel L800EA360
/* B61500 800EA360 0C03A752 */  jal   func_800E9D48
/* B61504 800EA364 02402025 */   move  $a0, $s2
/* B61508 800EA368 1000FF63 */  b     .L800EA0F8
/* B6150C 800EA36C A2220018 */   sb    $v0, 0x18($s1)
glabel L800EA370
/* B61510 800EA370 922A0000 */  lbu   $t2, ($s1)
/* B61514 800EA374 354B0004 */  ori   $t3, $t2, 4
/* B61518 800EA378 1000FF5F */  b     .L800EA0F8
/* B6151C 800EA37C A22B0000 */   sb    $t3, ($s1)
glabel L800EA380
/* B61520 800EA380 0C03A752 */  jal   func_800E9D48
/* B61524 800EA384 02402025 */   move  $a0, $s2
/* B61528 800EA388 1000FF5B */  b     .L800EA0F8
/* B6152C 800EA38C A2220001 */   sb    $v0, 1($s1)
glabel L800EA390
/* B61530 800EA390 0C03A752 */  jal   func_800E9D48
/* B61534 800EA394 02402025 */   move  $a0, $s2
/* B61538 800EA398 244C0080 */  addiu $t4, $v0, 0x80
/* B6153C 800EA39C 318D00FF */  andi  $t5, $t4, 0xff
/* B61540 800EA3A0 000D7080 */  sll   $t6, $t5, 2
/* B61544 800EA3A4 3C018013 */  lui   $at, %hi(D_8012F4B4)
/* B61548 800EA3A8 002E0821 */  addu  $at, $at, $t6
/* B6154C 800EA3AC C42AF4B4 */  lwc1  $f10, %lo(D_8012F4B4)($at)
/* B61550 800EA3B0 1000FF51 */  b     .L800EA0F8
/* B61554 800EA3B4 E62A0034 */   swc1  $f10, 0x34($s1)
.L800EA3B8:
/* B61558 800EA3B8 240100D0 */  li    $at, 208
/* B6155C 800EA3BC 10610005 */  beq   $v1, $at, .L800EA3D4
/* B61560 800EA3C0 240100E0 */   li    $at, 224
/* B61564 800EA3C4 50610010 */  beql  $v1, $at, .L800EA408
/* B61568 800EA3C8 8E690098 */   lw    $t1, 0x98($s3)
/* B6156C 800EA3CC 1000FF4A */  b     .L800EA0F8
/* B61570 800EA3D0 00000000 */   nop   
.L800EA3D4:
/* B61574 800EA3D4 8E6F0094 */  lw    $t7, 0x94($s3)
/* B61578 800EA3D8 3098000F */  andi  $t8, $a0, 0xf
/* B6157C 800EA3DC 01F8C821 */  addu  $t9, $t7, $t8
/* B61580 800EA3E0 93250000 */  lbu   $a1, ($t9)
/* B61584 800EA3E4 00A50019 */  multu $a1, $a1
/* B61588 800EA3E8 00004012 */  mflo  $t0
/* B6158C 800EA3EC 44888000 */  mtc1  $t0, $f16
/* B61590 800EA3F0 00000000 */  nop   
/* B61594 800EA3F4 468084A0 */  cvt.s.w $f18, $f16
/* B61598 800EA3F8 46149103 */  div.s $f4, $f18, $f20
/* B6159C 800EA3FC 1000FF3E */  b     .L800EA0F8
/* B615A0 800EA400 E624003C */   swc1  $f4, 0x3c($s1)
/* B615A4 800EA404 8E690098 */  lw    $t1, 0x98($s3)
.L800EA408:
/* B615A8 800EA408 308A000F */  andi  $t2, $a0, 0xf
/* B615AC 800EA40C 012A5821 */  addu  $t3, $t1, $t2
/* B615B0 800EA410 916C0000 */  lbu   $t4, ($t3)
/* B615B4 800EA414 1000FF38 */  b     .L800EA0F8
/* B615B8 800EA418 A22C0003 */   sb    $t4, 3($s1)
.L800EA41C:
/* B615BC 800EA41C 8FBF0034 */  lw    $ra, 0x34($sp)
/* B615C0 800EA420 D7B40018 */  ldc1  $f20, 0x18($sp)
/* B615C4 800EA424 8FB00020 */  lw    $s0, 0x20($sp)
/* B615C8 800EA428 8FB10024 */  lw    $s1, 0x24($sp)
/* B615CC 800EA42C 8FB20028 */  lw    $s2, 0x28($sp)
/* B615D0 800EA430 8FB3002C */  lw    $s3, 0x2c($sp)
/* B615D4 800EA434 8FB40030 */  lw    $s4, 0x30($sp)
/* B615D8 800EA438 03E00008 */  jr    $ra
/* B615DC 800EA43C 27BD0038 */   addiu $sp, $sp, 0x38

glabel func_800EA440
/* B615E0 800EA440 27BDFF88 */  addiu $sp, $sp, -0x78
/* B615E4 800EA444 AFBF0014 */  sw    $ra, 0x14($sp)
/* B615E8 800EA448 AFA5007C */  sw    $a1, 0x7c($sp)
/* B615EC 800EA44C 90820002 */  lbu   $v0, 2($a0)
/* B615F0 800EA450 8C830050 */  lw    $v1, 0x50($a0)
/* B615F4 800EA454 240800FF */  li    $t0, 255
/* B615F8 800EA458 00803025 */  move  $a2, $a0
/* B615FC 800EA45C 240B0001 */  li    $t3, 1
/* B61600 800EA460 14480008 */  bne   $v0, $t0, .L800EA484
/* B61604 800EA464 8C6A004C */   lw    $t2, 0x4c($v1)
/* B61608 800EA468 8C6E0000 */  lw    $t6, ($v1)
/* B6160C 800EA46C 000EC100 */  sll   $t8, $t6, 4
/* B61610 800EA470 07020004 */  bltzl $t8, .L800EA484
/* B61614 800EA474 84620024 */   lh    $v0, 0x24($v1)
/* B61618 800EA478 10000195 */  b     .L800EAAD0
/* B6161C 800EA47C 2402FFFF */   li    $v0, -1
/* B61620 800EA480 84620024 */  lh    $v0, 0x24($v1)
.L800EA484:
/* B61624 800EA484 10400006 */  beqz  $v0, .L800EA4A0
/* B61628 800EA488 93B9007F */   lbu   $t9, 0x7f($sp)
/* B6162C 800EA48C 24010001 */  li    $at, 1
/* B61630 800EA490 10410029 */  beq   $v0, $at, .L800EA538
/* B61634 800EA494 93AE007F */   lbu   $t6, 0x7f($sp)
/* B61638 800EA498 10000045 */  b     .L800EA5B0
/* B6163C 800EA49C 854F000E */   lh    $t7, 0xe($t2)
.L800EA4A0:
/* B61640 800EA4A0 846C0026 */  lh    $t4, 0x26($v1)
/* B61644 800EA4A4 84CE0010 */  lh    $t6, 0x10($a2)
/* B61648 800EA4A8 032C6821 */  addu  $t5, $t9, $t4
/* B6164C 800EA4AC 01AE4821 */  addu  $t1, $t5, $t6
/* B61650 800EA4B0 312500FF */  andi  $a1, $t1, 0xff
/* B61654 800EA4B4 A0C50004 */  sb    $a1, 4($a2)
/* B61658 800EA4B8 90640007 */  lbu   $a0, 7($v1)
/* B6165C 800EA4BC AFAB0074 */  sw    $t3, 0x74($sp)
/* B61660 800EA4C0 AFAA0040 */  sw    $t2, 0x40($sp)
/* B61664 800EA4C4 0C039D5B */  jal   Audio_GetDrum
/* B61668 800EA4C8 AFA60078 */   sw    $a2, 0x78($sp)
/* B6166C 800EA4CC 8FA60078 */  lw    $a2, 0x78($sp)
/* B61670 800EA4D0 8FAA0040 */  lw    $t2, 0x40($sp)
/* B61674 800EA4D4 14400008 */  bnez  $v0, .L800EA4F8
/* B61678 800EA4D8 8FAB0074 */   lw    $t3, 0x74($sp)
/* B6167C 800EA4DC 90D80000 */  lbu   $t8, ($a2)
/* B61680 800EA4E0 84CC0008 */  lh    $t4, 8($a2)
/* B61684 800EA4E4 2402FFFF */  li    $v0, -1
/* B61688 800EA4E8 37190020 */  ori   $t9, $t8, 0x20
/* B6168C 800EA4EC A0D90000 */  sb    $t9, ($a2)
/* B61690 800EA4F0 10000177 */  b     .L800EAAD0
/* B61694 800EA4F4 A4CC000C */   sh    $t4, 0xc($a2)
.L800EA4F8:
/* B61698 800EA4F8 8C4D000C */  lw    $t5, 0xc($v0)
/* B6169C 800EA4FC 8CCF0000 */  lw    $t7, ($a2)
/* B616A0 800EA500 24430004 */  addiu $v1, $v0, 4
/* B616A4 800EA504 ACCD001C */  sw    $t5, 0x1c($a2)
/* B616A8 800EA508 904E0000 */  lbu   $t6, ($v0)
/* B616AC 800EA50C 000FC940 */  sll   $t9, $t7, 5
/* B616B0 800EA510 07200003 */  bltz  $t9, .L800EA520
/* B616B4 800EA514 A0CE0018 */   sb    $t6, 0x18($a2)
/* B616B8 800EA518 904C0001 */  lbu   $t4, 1($v0)
/* B616BC 800EA51C A0CC0006 */  sb    $t4, 6($a2)
.L800EA520:
/* B616C0 800EA520 ACC3004C */  sw    $v1, 0x4c($a2)
/* B616C4 800EA524 C4640004 */  lwc1  $f4, 4($v1)
/* B616C8 800EA528 3C058017 */  lui   $a1, %hi(gAudioContext) # $a1, 0x8017
/* B616CC 800EA52C 24A5F180 */  addiu $a1, %lo(gAudioContext) # addiu $a1, $a1, -0xe80
/* B616D0 800EA530 10000103 */  b     .L800EA940
/* B616D4 800EA534 E4C40030 */   swc1  $f4, 0x30($a2)
.L800EA538:
/* B616D8 800EA538 93A2007F */  lbu   $v0, 0x7f($sp)
/* B616DC 800EA53C 84CD0010 */  lh    $t5, 0x10($a2)
/* B616E0 800EA540 A0C20004 */  sb    $v0, 4($a2)
/* B616E4 800EA544 90640007 */  lbu   $a0, 7($v1)
/* B616E8 800EA548 000D7180 */  sll   $t6, $t5, 6
/* B616EC 800EA54C 01C23821 */  addu  $a3, $t6, $v0
/* B616F0 800EA550 30E5FFFF */  andi  $a1, $a3, 0xffff
/* B616F4 800EA554 AFAB0074 */  sw    $t3, 0x74($sp)
/* B616F8 800EA558 AFAA0040 */  sw    $t2, 0x40($sp)
/* B616FC 800EA55C 0C039D94 */  jal   Audio_GetUnkInstrument
/* B61700 800EA560 AFA60078 */   sw    $a2, 0x78($sp)
/* B61704 800EA564 8FA60078 */  lw    $a2, 0x78($sp)
/* B61708 800EA568 8FAA0040 */  lw    $t2, 0x40($sp)
/* B6170C 800EA56C 14400009 */  bnez  $v0, .L800EA594
/* B61710 800EA570 8FAB0074 */   lw    $t3, 0x74($sp)
/* B61714 800EA574 90D80000 */  lbu   $t8, ($a2)
/* B61718 800EA578 84CC0008 */  lh    $t4, 8($a2)
/* B6171C 800EA57C 2402FFFF */  li    $v0, -1
/* B61720 800EA580 37190020 */  ori   $t9, $t8, 0x20
/* B61724 800EA584 258D0001 */  addiu $t5, $t4, 1
/* B61728 800EA588 A0D90000 */  sb    $t9, ($a2)
/* B6172C 800EA58C 10000150 */  b     .L800EAAD0
/* B61730 800EA590 A4CD000C */   sh    $t5, 0xc($a2)
.L800EA594:
/* B61734 800EA594 ACC2004C */  sw    $v0, 0x4c($a2)
/* B61738 800EA598 C4460004 */  lwc1  $f6, 4($v0)
/* B6173C 800EA59C 3C058017 */  lui   $a1, %hi(gAudioContext) # $a1, 0x8017
/* B61740 800EA5A0 24A5F180 */  addiu $a1, %lo(gAudioContext) # addiu $a1, $a1, -0xe80
/* B61744 800EA5A4 100000E6 */  b     .L800EA940
/* B61748 800EA5A8 E4C60030 */   swc1  $f6, 0x30($a2)
/* B6174C 800EA5AC 854F000E */  lh    $t7, 0xe($t2)
.L800EA5B0:
/* B61750 800EA5B0 84790026 */  lh    $t9, 0x26($v1)
/* B61754 800EA5B4 84CD0010 */  lh    $t5, 0x10($a2)
/* B61758 800EA5B8 01CFC021 */  addu  $t8, $t6, $t7
/* B6175C 800EA5BC 03196021 */  addu  $t4, $t8, $t9
/* B61760 800EA5C0 018D4821 */  addu  $t1, $t4, $t5
/* B61764 800EA5C4 312900FF */  andi  $t1, $t1, 0xff
/* B61768 800EA5C8 29210080 */  slti  $at, $t1, 0x80
/* B6176C 800EA5CC A0C90004 */  sb    $t1, 4($a2)
/* B61770 800EA5D0 14200006 */  bnez  $at, .L800EA5EC
/* B61774 800EA5D4 01203825 */   move  $a3, $t1
/* B61778 800EA5D8 90CF0000 */  lbu   $t7, ($a2)
/* B6177C 800EA5DC 2402FFFF */  li    $v0, -1
/* B61780 800EA5E0 35F80020 */  ori   $t8, $t7, 0x20
/* B61784 800EA5E4 1000013A */  b     .L800EAAD0
/* B61788 800EA5E8 A0D80000 */   sb    $t8, ($a2)
.L800EA5EC:
/* B6178C 800EA5EC 90D90002 */  lbu   $t9, 2($a2)
/* B61790 800EA5F0 55190004 */  bnel  $t0, $t9, .L800EA604
/* B61794 800EA5F4 8CC40048 */   lw    $a0, 0x48($a2)
/* B61798 800EA5F8 10000002 */  b     .L800EA604
/* B6179C 800EA5FC 8C640048 */   lw    $a0, 0x48($v1)
/* B617A0 800EA600 8CC40048 */  lw    $a0, 0x48($a2)
.L800EA604:
/* B617A4 800EA604 90CC0020 */  lbu   $t4, 0x20($a2)
/* B617A8 800EA608 1180009E */  beqz  $t4, .L800EA884
/* B617AC 800EA60C 00000000 */   nop   
/* B617B0 800EA610 24C80020 */  addiu $t0, $a2, 0x20
/* B617B4 800EA614 AFA80060 */  sw    $t0, 0x60($sp)
/* B617B8 800EA618 90C30005 */  lbu   $v1, 5($a2)
/* B617BC 800EA61C 0067082A */  slt   $at, $v1, $a3
/* B617C0 800EA620 10200003 */  beqz  $at, .L800EA630
/* B617C4 800EA624 00602825 */   move  $a1, $v1
/* B617C8 800EA628 10000001 */  b     .L800EA630
/* B617CC 800EA62C 00E02825 */   move  $a1, $a3
.L800EA630:
/* B617D0 800EA630 10800012 */  beqz  $a0, .L800EA67C
/* B617D4 800EA634 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* B617D8 800EA638 AFA60078 */  sw    $a2, 0x78($sp)
/* B617DC 800EA63C AFA70020 */  sw    $a3, 0x20($sp)
/* B617E0 800EA640 AFA8001C */  sw    $t0, 0x1c($sp)
/* B617E4 800EA644 A3A9003F */  sb    $t1, 0x3f($sp)
/* B617E8 800EA648 0C039D17 */  jal   Audio_InstrumentGetAudioBankSound
/* B617EC 800EA64C AFAA0040 */   sw    $t2, 0x40($sp)
/* B617F0 800EA650 8FA60078 */  lw    $a2, 0x78($sp)
/* B617F4 800EA654 8FA70020 */  lw    $a3, 0x20($sp)
/* B617F8 800EA658 8FA8001C */  lw    $t0, 0x1c($sp)
/* B617FC 800EA65C 8CCD004C */  lw    $t5, 0x4c($a2)
/* B61800 800EA660 93A9003F */  lbu   $t1, 0x3f($sp)
/* B61804 800EA664 8FAA0040 */  lw    $t2, 0x40($sp)
/* B61808 800EA668 ACC2004C */  sw    $v0, 0x4c($a2)
/* B6180C 800EA66C 004D5826 */  xor   $t3, $v0, $t5
/* B61810 800EA670 2D6B0001 */  sltiu $t3, $t3, 1
/* B61814 800EA674 10000013 */  b     .L800EA6C4
/* B61818 800EA678 C4400004 */   lwc1  $f0, 4($v0)
.L800EA67C:
/* B6181C 800EA67C 44810000 */  mtc1  $at, $f0
/* B61820 800EA680 284100C0 */  slti  $at, $v0, 0xc0
/* B61824 800EA684 1420000F */  bnez  $at, .L800EA6C4
/* B61828 800EA688 ACC0004C */   sw    $zero, 0x4c($a2)
/* B6182C 800EA68C 00027080 */  sll   $t6, $v0, 2
/* B61830 800EA690 01C27023 */  subu  $t6, $t6, $v0
/* B61834 800EA694 000E7080 */  sll   $t6, $t6, 2
/* B61838 800EA698 01C27023 */  subu  $t6, $t6, $v0
/* B6183C 800EA69C 000E70C0 */  sll   $t6, $t6, 3
/* B61840 800EA6A0 3C058017 */  lui   $a1, %hi(gAudioContext) # $a1, 0x8017
/* B61844 800EA6A4 01C27021 */  addu  $t6, $t6, $v0
/* B61848 800EA6A8 24A5F180 */  addiu $a1, %lo(gAudioContext) # addiu $a1, $a1, -0xe80
/* B6184C 800EA6AC 000E70C0 */  sll   $t6, $t6, 3
/* B61850 800EA6B0 3C01FFFD */  lui   $at, (0xFFFDEC98 >> 16) # lui $at, 0xfffd
/* B61854 800EA6B4 3421EC98 */  ori   $at, (0xFFFDEC98 & 0xFFFF) # ori $at, $at, 0xec98
/* B61858 800EA6B8 00AE7821 */  addu  $t7, $a1, $t6
/* B6185C 800EA6BC 01E1C021 */  addu  $t8, $t7, $at
/* B61860 800EA6C0 ACD8004C */  sw    $t8, 0x4c($a2)
.L800EA6C4:
/* B61864 800EA6C4 3C038013 */  lui   $v1, %hi(D_8012F8B4) # $v1, 0x8013
/* B61868 800EA6C8 90CD0005 */  lbu   $t5, 5($a2)
/* B6186C 800EA6CC 2463F8B4 */  addiu $v1, %lo(D_8012F8B4) # addiu $v1, $v1, -0x74c
/* B61870 800EA6D0 0007C880 */  sll   $t9, $a3, 2
/* B61874 800EA6D4 00796021 */  addu  $t4, $v1, $t9
/* B61878 800EA6D8 C5880000 */  lwc1  $f8, ($t4)
/* B6187C 800EA6DC 91020000 */  lbu   $v0, ($t0)
/* B61880 800EA6E0 000D7080 */  sll   $t6, $t5, 2
/* B61884 800EA6E4 006E7821 */  addu  $t7, $v1, $t6
/* B61888 800EA6E8 C5EA0000 */  lwc1  $f10, ($t7)
/* B6188C 800EA6EC 46004082 */  mul.s $f2, $f8, $f0
/* B61890 800EA6F0 2404FF7F */  li    $a0, -129
/* B61894 800EA6F4 0044C024 */  and   $t8, $v0, $a0
/* B61898 800EA6F8 2719FFFF */  addiu $t9, $t8, -1
/* B6189C 800EA6FC 3C058017 */  lui   $a1, %hi(gAudioContext) # $a1, 0x8017
/* B618A0 800EA700 2F210005 */  sltiu $at, $t9, 5
/* B618A4 800EA704 46005382 */  mul.s $f14, $f10, $f0
/* B618A8 800EA708 1020000D */  beqz  $at, .L800EA740
/* B618AC 800EA70C 24A5F180 */   addiu $a1, %lo(gAudioContext) # addiu $a1, $a1, -0xe80
/* B618B0 800EA710 0019C880 */  sll   $t9, $t9, 2
/* B618B4 800EA714 3C018015 */  lui   $at, %hi(jtbl_80149698)
/* B618B8 800EA718 00390821 */  addu  $at, $at, $t9
/* B618BC 800EA71C 8C399698 */  lw    $t9, %lo(jtbl_80149698)($at)
/* B618C0 800EA720 03200008 */  jr    $t9
/* B618C4 800EA724 00000000 */   nop   
glabel L800EA728
/* B618C8 800EA728 46001006 */  mov.s $f0, $f2
/* B618CC 800EA72C 10000006 */  b     .L800EA748
/* B618D0 800EA730 46007306 */   mov.s $f12, $f14
glabel L800EA734
/* B618D4 800EA734 46001306 */  mov.s $f12, $f2
/* B618D8 800EA738 10000003 */  b     .L800EA748
/* B618DC 800EA73C 46007006 */   mov.s $f0, $f14
.L800EA740:
/* B618E0 800EA740 46001306 */  mov.s $f12, $f2
/* B618E4 800EA744 46001006 */  mov.s $f0, $f2
.L800EA748:
/* B618E8 800EA748 460C0403 */  div.s $f16, $f0, $f12
/* B618EC 800EA74C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B618F0 800EA750 44819000 */  mtc1  $at, $f18
/* B618F4 800EA754 304C0080 */  andi  $t4, $v0, 0x80
/* B618F8 800EA758 46128101 */  sub.s $f4, $f16, $f18
/* B618FC 800EA75C 11800025 */  beqz  $t4, .L800EA7F4
/* B61900 800EA760 E5040008 */   swc1  $f4, 8($t0)
/* B61904 800EA764 954D0008 */  lhu   $t5, 8($t2)
/* B61908 800EA768 84AF2898 */  lh    $t7, 0x2898($a1)
/* B6190C 800EA76C 84C20008 */  lh    $v0, 8($a2)
/* B61910 800EA770 000D73C0 */  sll   $t6, $t5, 0xf
/* B61914 800EA774 01CF001A */  div   $zero, $t6, $t7
/* B61918 800EA778 00001812 */  mflo  $v1
/* B6191C 800EA77C 15E00002 */  bnez  $t7, .L800EA788
/* B61920 800EA780 00000000 */   nop   
/* B61924 800EA784 0007000D */  break 7
.L800EA788:
/* B61928 800EA788 2401FFFF */  li    $at, -1
/* B6192C 800EA78C 15E10004 */  bne   $t7, $at, .L800EA7A0
/* B61930 800EA790 3C018000 */   lui   $at, 0x8000
/* B61934 800EA794 15C10002 */  bne   $t6, $at, .L800EA7A0
/* B61938 800EA798 00000000 */   nop   
/* B6193C 800EA79C 0006000D */  break 6
.L800EA7A0:
/* B61940 800EA7A0 50400027 */  beql  $v0, $zero, .L800EA840
/* B61944 800EA7A4 28617FFF */   slti  $at, $v1, 0x7fff
/* B61948 800EA7A8 94D9000E */  lhu   $t9, 0xe($a2)
/* B6194C 800EA7AC 0003C200 */  sll   $t8, $v1, 8
/* B61950 800EA7B0 00590019 */  multu $v0, $t9
/* B61954 800EA7B4 00006012 */  mflo  $t4
/* B61958 800EA7B8 00000000 */  nop   
/* B6195C 800EA7BC 00000000 */  nop   
/* B61960 800EA7C0 030C001A */  div   $zero, $t8, $t4
/* B61964 800EA7C4 00001812 */  mflo  $v1
/* B61968 800EA7C8 15800002 */  bnez  $t4, .L800EA7D4
/* B6196C 800EA7CC 00000000 */   nop   
/* B61970 800EA7D0 0007000D */  break 7
.L800EA7D4:
/* B61974 800EA7D4 2401FFFF */  li    $at, -1
/* B61978 800EA7D8 15810004 */  bne   $t4, $at, .L800EA7EC
/* B6197C 800EA7DC 3C018000 */   lui   $at, 0x8000
/* B61980 800EA7E0 17010002 */  bne   $t8, $at, .L800EA7EC
/* B61984 800EA7E4 00000000 */   nop   
/* B61988 800EA7E8 0006000D */  break 6
.L800EA7EC:
/* B6198C 800EA7EC 10000014 */  b     .L800EA840
/* B61990 800EA7F0 28617FFF */   slti  $at, $v1, 0x7fff
.L800EA7F4:
/* B61994 800EA7F4 94CD000E */  lhu   $t5, 0xe($a2)
/* B61998 800EA7F8 84AE2854 */  lh    $t6, 0x2854($a1)
/* B6199C 800EA7FC 3C190002 */  lui   $t9, 2
/* B619A0 800EA800 01AE0019 */  multu $t5, $t6
/* B619A4 800EA804 00007812 */  mflo  $t7
/* B619A8 800EA808 00000000 */  nop   
/* B619AC 800EA80C 00000000 */  nop   
/* B619B0 800EA810 032F001A */  div   $zero, $t9, $t7
/* B619B4 800EA814 00001812 */  mflo  $v1
/* B619B8 800EA818 15E00002 */  bnez  $t7, .L800EA824
/* B619BC 800EA81C 00000000 */   nop   
/* B619C0 800EA820 0007000D */  break 7
.L800EA824:
/* B619C4 800EA824 2401FFFF */  li    $at, -1
/* B619C8 800EA828 15E10004 */  bne   $t7, $at, .L800EA83C
/* B619CC 800EA82C 3C018000 */   lui   $at, 0x8000
/* B619D0 800EA830 17210002 */  bne   $t9, $at, .L800EA83C
/* B619D4 800EA834 00000000 */   nop   
/* B619D8 800EA838 0006000D */  break 6
.L800EA83C:
/* B619DC 800EA83C 28617FFF */  slti  $at, $v1, 0x7fff
.L800EA840:
/* B619E0 800EA840 14200003 */  bnez  $at, .L800EA850
/* B619E4 800EA844 00000000 */   nop   
/* B619E8 800EA848 10000004 */  b     .L800EA85C
/* B619EC 800EA84C 24037FFF */   li    $v1, 32767
.L800EA850:
/* B619F0 800EA850 5C600003 */  bgtzl $v1, .L800EA860
/* B619F4 800EA854 A5030004 */   sh    $v1, 4($t0)
/* B619F8 800EA858 24030001 */  li    $v1, 1
.L800EA85C:
/* B619FC 800EA85C A5030004 */  sh    $v1, 4($t0)
.L800EA860:
/* B61A00 800EA860 A5000002 */  sh    $zero, 2($t0)
/* B61A04 800EA864 E4CC0030 */  swc1  $f12, 0x30($a2)
/* B61A08 800EA868 91180000 */  lbu   $t8, ($t0)
/* B61A0C 800EA86C 24010005 */  li    $at, 5
/* B61A10 800EA870 03046024 */  and   $t4, $t8, $a0
/* B61A14 800EA874 55810033 */  bnel  $t4, $at, .L800EA944
/* B61A18 800EA878 C4D20030 */   lwc1  $f18, 0x30($a2)
/* B61A1C 800EA87C 10000030 */  b     .L800EA940
/* B61A20 800EA880 A0C90005 */   sb    $t1, 5($a2)
.L800EA884:
/* B61A24 800EA884 10800015 */  beqz  $a0, .L800EA8DC
/* B61A28 800EA888 00E02825 */   move  $a1, $a3
/* B61A2C 800EA88C AFA60078 */  sw    $a2, 0x78($sp)
/* B61A30 800EA890 AFA70020 */  sw    $a3, 0x20($sp)
/* B61A34 800EA894 0C039D17 */  jal   Audio_InstrumentGetAudioBankSound
/* B61A38 800EA898 AFAA0040 */   sw    $t2, 0x40($sp)
/* B61A3C 800EA89C 8FA60078 */  lw    $a2, 0x78($sp)
/* B61A40 800EA8A0 8FA70020 */  lw    $a3, 0x20($sp)
/* B61A44 800EA8A4 3C038013 */  lui   $v1, %hi(D_8012F8B4) # $v1, 0x8013
/* B61A48 800EA8A8 8CCD004C */  lw    $t5, 0x4c($a2)
/* B61A4C 800EA8AC 8FAA0040 */  lw    $t2, 0x40($sp)
/* B61A50 800EA8B0 2463F8B4 */  addiu $v1, %lo(D_8012F8B4) # addiu $v1, $v1, -0x74c
/* B61A54 800EA8B4 ACC2004C */  sw    $v0, 0x4c($a2)
/* B61A58 800EA8B8 00077080 */  sll   $t6, $a3, 2
/* B61A5C 800EA8BC 006EC821 */  addu  $t9, $v1, $t6
/* B61A60 800EA8C0 C7260000 */  lwc1  $f6, ($t9)
/* B61A64 800EA8C4 C4480004 */  lwc1  $f8, 4($v0)
/* B61A68 800EA8C8 004D5826 */  xor   $t3, $v0, $t5
/* B61A6C 800EA8CC 2D6B0001 */  sltiu $t3, $t3, 1
/* B61A70 800EA8D0 46083282 */  mul.s $f10, $f6, $f8
/* B61A74 800EA8D4 10000018 */  b     .L800EA938
/* B61A78 800EA8D8 E4CA0030 */   swc1  $f10, 0x30($a2)
.L800EA8DC:
/* B61A7C 800EA8DC 3C038013 */  lui   $v1, %hi(D_8012F8B4) # $v1, 0x8013
/* B61A80 800EA8E0 2463F8B4 */  addiu $v1, %lo(D_8012F8B4) # addiu $v1, $v1, -0x74c
/* B61A84 800EA8E4 00077880 */  sll   $t7, $a3, 2
/* B61A88 800EA8E8 ACC0004C */  sw    $zero, 0x4c($a2)
/* B61A8C 800EA8EC 006FC021 */  addu  $t8, $v1, $t7
/* B61A90 800EA8F0 C7100000 */  lwc1  $f16, ($t8)
/* B61A94 800EA8F4 284100C0 */  slti  $at, $v0, 0xc0
/* B61A98 800EA8F8 1420000F */  bnez  $at, .L800EA938
/* B61A9C 800EA8FC E4D00030 */   swc1  $f16, 0x30($a2)
/* B61AA0 800EA900 00026080 */  sll   $t4, $v0, 2
/* B61AA4 800EA904 01826023 */  subu  $t4, $t4, $v0
/* B61AA8 800EA908 000C6080 */  sll   $t4, $t4, 2
/* B61AAC 800EA90C 01826023 */  subu  $t4, $t4, $v0
/* B61AB0 800EA910 000C60C0 */  sll   $t4, $t4, 3
/* B61AB4 800EA914 3C058017 */  lui   $a1, %hi(gAudioContext) # $a1, 0x8017
/* B61AB8 800EA918 01826021 */  addu  $t4, $t4, $v0
/* B61ABC 800EA91C 24A5F180 */  addiu $a1, %lo(gAudioContext) # addiu $a1, $a1, -0xe80
/* B61AC0 800EA920 000C60C0 */  sll   $t4, $t4, 3
/* B61AC4 800EA924 3C01FFFD */  li    $at, 0xFFFD0000 # 0.000000
/* B61AC8 800EA928 3421EC98 */  ori   $at, (0xFFFDEC98 & 0xFFFF) # ori $at, $at, 0xec98
/* B61ACC 800EA92C 00AC6821 */  addu  $t5, $a1, $t4
/* B61AD0 800EA930 01A17021 */  addu  $t6, $t5, $at
/* B61AD4 800EA934 ACCE004C */  sw    $t6, 0x4c($a2)
.L800EA938:
/* B61AD8 800EA938 3C058017 */  lui   $a1, %hi(gAudioContext)
/* B61ADC 800EA93C 24A5F180 */  addiu $a1, %lo(gAudioContext) # addiu $a1, $a1, -0xe80
.L800EA940:
/* B61AE0 800EA940 C4D20030 */  lwc1  $f18, 0x30($a2)
.L800EA944:
/* B61AE4 800EA944 C4C40034 */  lwc1  $f4, 0x34($a2)
/* B61AE8 800EA948 84C20008 */  lh    $v0, 8($a2)
/* B61AEC 800EA94C 46049182 */  mul.s $f6, $f18, $f4
/* B61AF0 800EA950 A4C2000C */  sh    $v0, 0xc($a2)
/* B61AF4 800EA954 1440005D */  bnez  $v0, .L800EAACC
/* B61AF8 800EA958 E4C60030 */   swc1  $f6, 0x30($a2)
/* B61AFC 800EA95C 8CC2004C */  lw    $v0, 0x4c($a2)
/* B61B00 800EA960 5040000E */  beql  $v0, $zero, .L800EA99C
/* B61B04 800EA964 44800000 */   mtc1  $zero, $f0
/* B61B08 800EA968 8C590000 */  lw    $t9, ($v0)
/* B61B0C 800EA96C 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B61B10 800EA970 8F2F0008 */  lw    $t7, 8($t9)
/* B61B14 800EA974 8DF80004 */  lw    $t8, 4($t7)
/* B61B18 800EA978 44984000 */  mtc1  $t8, $f8
/* B61B1C 800EA97C 07010008 */  bgez  $t8, .L800EA9A0
/* B61B20 800EA980 46804020 */   cvt.s.w $f0, $f8
/* B61B24 800EA984 44815000 */  mtc1  $at, $f10
/* B61B28 800EA988 00000000 */  nop   
/* B61B2C 800EA98C 460A0000 */  add.s $f0, $f0, $f10
/* B61B30 800EA990 10000004 */  b     .L800EA9A4
/* B61B34 800EA994 954C0008 */   lhu   $t4, 8($t2)
/* B61B38 800EA998 44800000 */  mtc1  $zero, $f0
.L800EA99C:
/* B61B3C 800EA99C 00000000 */  nop   
.L800EA9A0:
/* B61B40 800EA9A0 954C0008 */  lhu   $t4, 8($t2)
.L800EA9A4:
/* B61B44 800EA9A4 3C018015 */  lui   $at, %hi(D_801496AC)
/* B61B48 800EA9A8 C42296AC */  lwc1  $f2, %lo(D_801496AC)($at)
/* B61B4C 800EA9AC 448C8000 */  mtc1  $t4, $f16
/* B61B50 800EA9B0 05810005 */  bgez  $t4, .L800EA9C8
/* B61B54 800EA9B4 468084A0 */   cvt.s.w $f18, $f16
/* B61B58 800EA9B8 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B61B5C 800EA9BC 44812000 */  mtc1  $at, $f4
/* B61B60 800EA9C0 00000000 */  nop   
/* B61B64 800EA9C4 46049480 */  add.s $f18, $f18, $f4
.L800EA9C8:
/* B61B68 800EA9C8 46120002 */  mul.s $f0, $f0, $f18
/* B61B6C 800EA9CC C4A62870 */  lwc1  $f6, 0x2870($a1)
/* B61B70 800EA9D0 C4C80030 */  lwc1  $f8, 0x30($a2)
/* B61B74 800EA9D4 46060002 */  mul.s $f0, $f0, $f6
/* B61B78 800EA9D8 46080003 */  div.s $f0, $f0, $f8
/* B61B7C 800EA9DC 4600103C */  c.lt.s $f2, $f0
/* B61B80 800EA9E0 00000000 */  nop   
/* B61B84 800EA9E4 45020003 */  bc1fl .L800EA9F4
/* B61B88 800EA9E8 4600028D */   trunc.w.s $f10, $f0
/* B61B8C 800EA9EC 46001006 */  mov.s $f0, $f2
/* B61B90 800EA9F0 4600028D */  trunc.w.s $f10, $f0
.L800EA9F4:
/* B61B94 800EA9F4 90D80020 */  lbu   $t8, 0x20($a2)
/* B61B98 800EA9F8 A4C0000A */  sh    $zero, 0xa($a2)
/* B61B9C 800EA9FC 44195000 */  mfc1  $t9, $f10
/* B61BA0 800EAA00 00000000 */  nop   
/* B61BA4 800EAA04 272F0001 */  addiu $t7, $t9, 1
/* B61BA8 800EAA08 13000030 */  beqz  $t8, .L800EAACC
/* B61BAC 800EAA0C A4CF0008 */   sh    $t7, 8($a2)
/* B61BB0 800EAA10 8FAC0060 */  lw    $t4, 0x60($sp)
/* B61BB4 800EAA14 918D0000 */  lbu   $t5, ($t4)
/* B61BB8 800EAA18 31AE0080 */  andi  $t6, $t5, 0x80
/* B61BBC 800EAA1C 51C0002C */  beql  $t6, $zero, .L800EAAD0
/* B61BC0 800EAA20 01601025 */   move  $v0, $t3
/* B61BC4 800EAA24 95590008 */  lhu   $t9, 8($t2)
/* B61BC8 800EAA28 84B82898 */  lh    $t8, 0x2898($a1)
/* B61BCC 800EAA2C 84CC0008 */  lh    $t4, 8($a2)
/* B61BD0 800EAA30 00197BC0 */  sll   $t7, $t9, 0xf
/* B61BD4 800EAA34 01F8001A */  div   $zero, $t7, $t8
/* B61BD8 800EAA38 00001012 */  mflo  $v0
/* B61BDC 800EAA3C 94CD000E */  lhu   $t5, 0xe($a2)
/* B61BE0 800EAA40 0002CA00 */  sll   $t9, $v0, 8
/* B61BE4 800EAA44 17000002 */  bnez  $t8, .L800EAA50
/* B61BE8 800EAA48 00000000 */   nop   
/* B61BEC 800EAA4C 0007000D */  break 7
.L800EAA50:
/* B61BF0 800EAA50 2401FFFF */  li    $at, -1
/* B61BF4 800EAA54 17010004 */  bne   $t8, $at, .L800EAA68
/* B61BF8 800EAA58 3C018000 */   lui   $at, 0x8000
/* B61BFC 800EAA5C 15E10002 */  bne   $t7, $at, .L800EAA68
/* B61C00 800EAA60 00000000 */   nop   
/* B61C04 800EAA64 0006000D */  break 6
.L800EAA68:
/* B61C08 800EAA68 018D0019 */  multu $t4, $t5
/* B61C0C 800EAA6C 8FAF0060 */  lw    $t7, 0x60($sp)
/* B61C10 800EAA70 00007012 */  mflo  $t6
/* B61C14 800EAA74 00000000 */  nop   
/* B61C18 800EAA78 00000000 */  nop   
/* B61C1C 800EAA7C 032E001A */  div   $zero, $t9, $t6
/* B61C20 800EAA80 15C00002 */  bnez  $t6, .L800EAA8C
/* B61C24 800EAA84 00000000 */   nop   
/* B61C28 800EAA88 0007000D */  break 7
.L800EAA8C:
/* B61C2C 800EAA8C 2401FFFF */  li    $at, -1
/* B61C30 800EAA90 15C10004 */  bne   $t6, $at, .L800EAAA4
/* B61C34 800EAA94 3C018000 */   lui   $at, 0x8000
/* B61C38 800EAA98 17210002 */  bne   $t9, $at, .L800EAAA4
/* B61C3C 800EAA9C 00000000 */   nop   
/* B61C40 800EAAA0 0006000D */  break 6
.L800EAAA4:
/* B61C44 800EAAA4 00001012 */  mflo  $v0
/* B61C48 800EAAA8 28417FFF */  slti  $at, $v0, 0x7fff
/* B61C4C 800EAAAC 14200003 */  bnez  $at, .L800EAABC
/* B61C50 800EAAB0 00000000 */   nop   
/* B61C54 800EAAB4 10000004 */  b     .L800EAAC8
/* B61C58 800EAAB8 24027FFF */   li    $v0, 32767
.L800EAABC:
/* B61C5C 800EAABC 5C400003 */  bgtzl $v0, .L800EAACC
/* B61C60 800EAAC0 A5E20004 */   sh    $v0, 4($t7)
/* B61C64 800EAAC4 24020001 */  li    $v0, 1
.L800EAAC8:
/* B61C68 800EAAC8 A5E20004 */  sh    $v0, 4($t7)
.L800EAACC:
/* B61C6C 800EAACC 01601025 */  move  $v0, $t3
.L800EAAD0:
/* B61C70 800EAAD0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B61C74 800EAAD4 27BD0078 */  addiu $sp, $sp, 0x78
/* B61C78 800EAAD8 03E00008 */  jr    $ra
/* B61C7C 800EAADC 00000000 */   nop   

glabel func_800EAAE0
/* B61C80 800EAAE0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B61C84 800EAAE4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B61C88 800EAAE8 AFA50044 */  sw    $a1, 0x44($sp)
/* B61C8C 800EAAEC 8C880050 */  lw    $t0, 0x50($a0)
/* B61C90 800EAAF0 240100C0 */  li    $at, 192
/* B61C94 800EAAF4 00803025 */  move  $a2, $a0
/* B61C98 800EAAF8 8D0E004C */  lw    $t6, 0x4c($t0)
/* B61C9C 800EAAFC 14A1000D */  bne   $a1, $at, .L800EAB34
/* B61CA0 800EAB00 AFAE002C */   sw    $t6, 0x2c($sp)
/* B61CA4 800EAB04 24C40054 */  addiu $a0, $a2, 0x54
/* B61CA8 800EAB08 0C03A765 */  jal   func_800E9D94
/* B61CAC 800EAB0C AFA60040 */   sw    $a2, 0x40($sp)
/* B61CB0 800EAB10 8FA60040 */  lw    $a2, 0x40($sp)
/* B61CB4 800EAB14 90D90000 */  lbu   $t9, ($a2)
/* B61CB8 800EAB18 A4C20008 */  sh    $v0, 8($a2)
/* B61CBC 800EAB1C 2402FFFF */  li    $v0, -1
/* B61CC0 800EAB20 372A0020 */  ori   $t2, $t9, 0x20
/* B61CC4 800EAB24 314B00FD */  andi  $t3, $t2, 0xfd
/* B61CC8 800EAB28 A0CA0000 */  sb    $t2, ($a2)
/* B61CCC 800EAB2C 100000ED */  b     .L800EAEE4
/* B61CD0 800EAB30 A0CB0000 */   sb    $t3, ($a2)
.L800EAB34:
/* B61CD4 800EAB34 90CC0000 */  lbu   $t4, ($a2)
/* B61CD8 800EAB38 24010001 */  li    $at, 1
/* B61CDC 800EAB3C 318DFFDF */  andi  $t5, $t4, 0xffdf
/* B61CE0 800EAB40 A0CD0000 */  sb    $t5, ($a2)
/* B61CE4 800EAB44 8D0E0000 */  lw    $t6, ($t0)
/* B61CE8 800EAB48 8FA50044 */  lw    $a1, 0x44($sp)
/* B61CEC 800EAB4C 000E7980 */  sll   $t7, $t6, 6
/* B61CF0 800EAB50 000FC7C2 */  srl   $t8, $t7, 0x1f
/* B61CF4 800EAB54 17010053 */  bne   $t8, $at, .L800EACA4
/* B61CF8 800EAB58 30A500C0 */   andi  $a1, $a1, 0xc0
/* B61CFC 800EAB5C 8FA50044 */  lw    $a1, 0x44($sp)
/* B61D00 800EAB60 24010040 */  li    $at, 64
/* B61D04 800EAB64 30A500C0 */  andi  $a1, $a1, 0xc0
/* B61D08 800EAB68 50A00008 */  beql  $a1, $zero, .L800EAB8C
/* B61D0C 800EAB6C 24C40054 */   addiu $a0, $a2, 0x54
/* B61D10 800EAB70 10A1001C */  beq   $a1, $at, .L800EABE4
/* B61D14 800EAB74 24010080 */   li    $at, 128
/* B61D18 800EAB78 50A1002D */  beql  $a1, $at, .L800EAC30
/* B61D1C 800EAB7C 84CE0014 */   lh    $t6, 0x14($a2)
/* B61D20 800EAB80 10000037 */  b     .L800EAC60
/* B61D24 800EAB84 8FA70034 */   lw    $a3, 0x34($sp)
/* B61D28 800EAB88 24C40054 */  addiu $a0, $a2, 0x54
.L800EAB8C:
/* B61D2C 800EAB8C AFA4001C */  sw    $a0, 0x1c($sp)
/* B61D30 800EAB90 AFA50018 */  sw    $a1, 0x18($sp)
/* B61D34 800EAB94 AFA60040 */  sw    $a2, 0x40($sp)
/* B61D38 800EAB98 0C03A765 */  jal   func_800E9D94
/* B61D3C 800EAB9C AFA80030 */   sw    $t0, 0x30($sp)
/* B61D40 800EABA0 8FA4001C */  lw    $a0, 0x1c($sp)
/* B61D44 800EABA4 A7A2003A */  sh    $v0, 0x3a($sp)
/* B61D48 800EABA8 8FA60040 */  lw    $a2, 0x40($sp)
/* B61D4C 800EABAC 8C830000 */  lw    $v1, ($a0)
/* B61D50 800EABB0 8FA50018 */  lw    $a1, 0x18($sp)
/* B61D54 800EABB4 8FA80030 */  lw    $t0, 0x30($sp)
/* B61D58 800EABB8 90670000 */  lbu   $a3, ($v1)
/* B61D5C 800EABBC 24790001 */  addiu $t9, $v1, 1
/* B61D60 800EABC0 AC990000 */  sw    $t9, ($a0)
/* B61D64 800EABC4 932A0000 */  lbu   $t2, ($t9)
/* B61D68 800EABC8 03204825 */  move  $t1, $t9
/* B61D6C 800EABCC A0CA0003 */  sb    $t2, 3($a2)
/* B61D70 800EABD0 8C8B0000 */  lw    $t3, ($a0)
/* B61D74 800EABD4 256C0001 */  addiu $t4, $t3, 1
/* B61D78 800EABD8 AC8C0000 */  sw    $t4, ($a0)
/* B61D7C 800EABDC 10000020 */  b     .L800EAC60
/* B61D80 800EABE0 A4C20014 */   sh    $v0, 0x14($a2)
.L800EABE4:
/* B61D84 800EABE4 24C40054 */  addiu $a0, $a2, 0x54
/* B61D88 800EABE8 AFA4001C */  sw    $a0, 0x1c($sp)
/* B61D8C 800EABEC AFA50018 */  sw    $a1, 0x18($sp)
/* B61D90 800EABF0 AFA60040 */  sw    $a2, 0x40($sp)
/* B61D94 800EABF4 0C03A765 */  jal   func_800E9D94
/* B61D98 800EABF8 AFA80030 */   sw    $t0, 0x30($sp)
/* B61D9C 800EABFC 8FA4001C */  lw    $a0, 0x1c($sp)
/* B61DA0 800EAC00 A7A2003A */  sh    $v0, 0x3a($sp)
/* B61DA4 800EAC04 8FA60040 */  lw    $a2, 0x40($sp)
/* B61DA8 800EAC08 8C830000 */  lw    $v1, ($a0)
/* B61DAC 800EAC0C 8FA50018 */  lw    $a1, 0x18($sp)
/* B61DB0 800EAC10 8FA80030 */  lw    $t0, 0x30($sp)
/* B61DB4 800EAC14 90670000 */  lbu   $a3, ($v1)
/* B61DB8 800EAC18 246D0001 */  addiu $t5, $v1, 1
/* B61DBC 800EAC1C AC8D0000 */  sw    $t5, ($a0)
/* B61DC0 800EAC20 A0C00003 */  sb    $zero, 3($a2)
/* B61DC4 800EAC24 1000000E */  b     .L800EAC60
/* B61DC8 800EAC28 A4C20014 */   sh    $v0, 0x14($a2)
/* B61DCC 800EAC2C 84CE0014 */  lh    $t6, 0x14($a2)
.L800EAC30:
/* B61DD0 800EAC30 24C40054 */  addiu $a0, $a2, 0x54
/* B61DD4 800EAC34 A7AE003A */  sh    $t6, 0x3a($sp)
/* B61DD8 800EAC38 8C830000 */  lw    $v1, ($a0)
/* B61DDC 800EAC3C 90670000 */  lbu   $a3, ($v1)
/* B61DE0 800EAC40 246F0001 */  addiu $t7, $v1, 1
/* B61DE4 800EAC44 AC8F0000 */  sw    $t7, ($a0)
/* B61DE8 800EAC48 91F90000 */  lbu   $t9, ($t7)
/* B61DEC 800EAC4C 01E0C025 */  move  $t8, $t7
/* B61DF0 800EAC50 A0D90003 */  sb    $t9, 3($a2)
/* B61DF4 800EAC54 8C890000 */  lw    $t1, ($a0)
/* B61DF8 800EAC58 252A0001 */  addiu $t2, $t1, 1
/* B61DFC 800EAC5C AC8A0000 */  sw    $t2, ($a0)
.L800EAC60:
/* B61E00 800EAC60 28E10080 */  slti  $at, $a3, 0x80
/* B61E04 800EAC64 50200004 */  beql  $at, $zero, .L800EAC78
/* B61E08 800EAC68 2407007F */   li    $a3, 127
/* B61E0C 800EAC6C 04E30003 */  bgezl $a3, .L800EAC7C
/* B61E10 800EAC70 44872000 */   mtc1  $a3, $f4
/* B61E14 800EAC74 2407007F */  li    $a3, 127
.L800EAC78:
/* B61E18 800EAC78 44872000 */  mtc1  $a3, $f4
.L800EAC7C:
/* B61E1C 800EAC7C 3C018015 */  lui   $at, %hi(D_801496B0)
/* B61E20 800EAC80 C42896B0 */  lwc1  $f8, %lo(D_801496B0)($at)
/* B61E24 800EAC84 46802020 */  cvt.s.w $f0, $f4
/* B61E28 800EAC88 46000182 */  mul.s $f6, $f0, $f0
/* B61E2C 800EAC8C 46083283 */  div.s $f10, $f6, $f8
/* B61E30 800EAC90 E4CA003C */  swc1  $f10, 0x3c($a2)
/* B61E34 800EAC94 8FAB0044 */  lw    $t3, 0x44($sp)
/* B61E38 800EAC98 01656023 */  subu  $t4, $t3, $a1
/* B61E3C 800EAC9C 1000001D */  b     .L800EAD14
/* B61E40 800EACA0 AFAC0044 */   sw    $t4, 0x44($sp)
.L800EACA4:
/* B61E44 800EACA4 10A00008 */  beqz  $a1, .L800EACC8
/* B61E48 800EACA8 24010040 */   li    $at, 64
/* B61E4C 800EACAC 50A10012 */  beql  $a1, $at, .L800EACF8
/* B61E50 800EACB0 84CD0012 */   lh    $t5, 0x12($a2)
/* B61E54 800EACB4 24010080 */  li    $at, 128
/* B61E58 800EACB8 50A10012 */  beql  $a1, $at, .L800EAD04
/* B61E5C 800EACBC 84CE0014 */   lh    $t6, 0x14($a2)
/* B61E60 800EACC0 10000012 */  b     .L800EAD0C
/* B61E64 800EACC4 8FAF0044 */   lw    $t7, 0x44($sp)
.L800EACC8:
/* B61E68 800EACC8 24C40054 */  addiu $a0, $a2, 0x54
/* B61E6C 800EACCC AFA50018 */  sw    $a1, 0x18($sp)
/* B61E70 800EACD0 AFA60040 */  sw    $a2, 0x40($sp)
/* B61E74 800EACD4 0C03A765 */  jal   func_800E9D94
/* B61E78 800EACD8 AFA80030 */   sw    $t0, 0x30($sp)
/* B61E7C 800EACDC 8FA60040 */  lw    $a2, 0x40($sp)
/* B61E80 800EACE0 8FA50018 */  lw    $a1, 0x18($sp)
/* B61E84 800EACE4 8FA80030 */  lw    $t0, 0x30($sp)
/* B61E88 800EACE8 A7A2003A */  sh    $v0, 0x3a($sp)
/* B61E8C 800EACEC 10000006 */  b     .L800EAD08
/* B61E90 800EACF0 A4C20014 */   sh    $v0, 0x14($a2)
/* B61E94 800EACF4 84CD0012 */  lh    $t5, 0x12($a2)
.L800EACF8:
/* B61E98 800EACF8 10000003 */  b     .L800EAD08
/* B61E9C 800EACFC A7AD003A */   sh    $t5, 0x3a($sp)
/* B61EA0 800EAD00 84CE0014 */  lh    $t6, 0x14($a2)
.L800EAD04:
/* B61EA4 800EAD04 A7AE003A */  sh    $t6, 0x3a($sp)
.L800EAD08:
/* B61EA8 800EAD08 8FAF0044 */  lw    $t7, 0x44($sp)
.L800EAD0C:
/* B61EAC 800EAD0C 01E5C023 */  subu  $t8, $t7, $a1
/* B61EB0 800EAD10 AFB80044 */  sw    $t8, 0x44($sp)
.L800EAD14:
/* B61EB4 800EAD14 9103000D */  lbu   $v1, 0xd($t0)
/* B61EB8 800EAD18 3C028017 */  lui   $v0, %hi(D_80171AFC)
/* B61EBC 800EAD1C 5060002A */  beql  $v1, $zero, .L800EADC8
/* B61EC0 800EAD20 C4D0003C */   lwc1  $f16, 0x3c($a2)
/* B61EC4 800EAD24 8C421AFC */  lw    $v0, %lo(D_80171AFC)($v0)
/* B61EC8 800EAD28 C4CC003C */  lwc1  $f12, 0x3c($a2)
/* B61ECC 800EAD2C 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B61ED0 800EAD30 0043001B */  divu  $zero, $v0, $v1
/* B61ED4 800EAD34 0000C810 */  mfhi  $t9
/* B61ED8 800EAD38 44998000 */  mtc1  $t9, $f16
/* B61EDC 800EAD3C 14600002 */  bnez  $v1, .L800EAD48
/* B61EE0 800EAD40 00000000 */   nop   
/* B61EE4 800EAD44 0007000D */  break 7
.L800EAD48:
/* B61EE8 800EAD48 468084A0 */  cvt.s.w $f18, $f16
/* B61EEC 800EAD4C 07210004 */  bgez  $t9, .L800EAD60
/* B61EF0 800EAD50 00000000 */   nop   
/* B61EF4 800EAD54 44812000 */  mtc1  $at, $f4
/* B61EF8 800EAD58 00000000 */  nop   
/* B61EFC 800EAD5C 46049480 */  add.s $f18, $f18, $f4
.L800EAD60:
/* B61F00 800EAD60 46126182 */  mul.s $f6, $f12, $f18
/* B61F04 800EAD64 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* B61F08 800EAD68 44814000 */  mtc1  $at, $f8
/* B61F0C 800EAD6C 30498000 */  andi  $t1, $v0, 0x8000
/* B61F10 800EAD70 11200002 */  beqz  $t1, .L800EAD7C
/* B61F14 800EAD74 46083083 */   div.s $f2, $f6, $f8
/* B61F18 800EAD78 46001087 */  neg.s $f2, $f2
.L800EAD7C:
/* B61F1C 800EAD7C 46026000 */  add.s $f0, $f12, $f2
/* B61F20 800EAD80 44807000 */  mtc1  $zero, $f14
/* B61F24 800EAD84 00000000 */  nop   
/* B61F28 800EAD88 460E003C */  c.lt.s $f0, $f14
/* B61F2C 800EAD8C E4C00038 */  swc1  $f0, 0x38($a2)
/* B61F30 800EAD90 45020004 */  bc1fl .L800EADA4
/* B61F34 800EAD94 3C013F80 */   lui   $at, 0x3f80
/* B61F38 800EAD98 1000000C */  b     .L800EADCC
/* B61F3C 800EAD9C E4CE0038 */   swc1  $f14, 0x38($a2)
/* B61F40 800EADA0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
.L800EADA4:
/* B61F44 800EADA4 44810000 */  mtc1  $at, $f0
/* B61F48 800EADA8 C4CA0038 */  lwc1  $f10, 0x38($a2)
/* B61F4C 800EADAC 460A003C */  c.lt.s $f0, $f10
/* B61F50 800EADB0 00000000 */  nop   
/* B61F54 800EADB4 45020006 */  bc1fl .L800EADD0
/* B61F58 800EADB8 97A2003A */   lhu   $v0, 0x3a($sp)
/* B61F5C 800EADBC 10000003 */  b     .L800EADCC
/* B61F60 800EADC0 E4C00038 */   swc1  $f0, 0x38($a2)
/* B61F64 800EADC4 C4D0003C */  lwc1  $f16, 0x3c($a2)
.L800EADC8:
/* B61F68 800EADC8 E4D00038 */  swc1  $f16, 0x38($a2)
.L800EADCC:
/* B61F6C 800EADCC 97A2003A */  lhu   $v0, 0x3a($sp)
.L800EADD0:
/* B61F70 800EADD0 90CA0003 */  lbu   $t2, 3($a2)
/* B61F74 800EADD4 A4C20008 */  sh    $v0, 8($a2)
/* B61F78 800EADD8 01420019 */  multu $t2, $v0
/* B61F7C 800EADDC 3C028017 */  lui   $v0, %hi(D_80171AFC) # $v0, 0x8017
/* B61F80 800EADE0 00005812 */  mflo  $t3
/* B61F84 800EADE4 000B6203 */  sra   $t4, $t3, 8
/* B61F88 800EADE8 A4CC000A */  sh    $t4, 0xa($a2)
/* B61F8C 800EADEC 910D000E */  lbu   $t5, 0xe($t0)
/* B61F90 800EADF0 51A00021 */  beql  $t5, $zero, .L800EAE78
/* B61F94 800EADF4 8FA9002C */   lw    $t1, 0x2c($sp)
/* B61F98 800EADF8 8C421AFC */  lw    $v0, %lo(D_80171AFC)($v0)
/* B61F9C 800EADFC 910E000D */  lbu   $t6, 0xd($t0)
/* B61FA0 800EAE00 84C3000A */  lh    $v1, 0xa($a2)
/* B61FA4 800EAE04 24010064 */  li    $at, 100
/* B61FA8 800EAE08 004E001B */  divu  $zero, $v0, $t6
/* B61FAC 800EAE0C 00007810 */  mfhi  $t7
/* B61FB0 800EAE10 30584000 */  andi  $t8, $v0, 0x4000
/* B61FB4 800EAE14 15C00002 */  bnez  $t6, .L800EAE20
/* B61FB8 800EAE18 00000000 */   nop   
/* B61FBC 800EAE1C 0007000D */  break 7
.L800EAE20:
/* B61FC0 800EAE20 006F0019 */  multu $v1, $t7
/* B61FC4 800EAE24 00002012 */  mflo  $a0
/* B61FC8 800EAE28 00000000 */  nop   
/* B61FCC 800EAE2C 00000000 */  nop   
/* B61FD0 800EAE30 0081001B */  divu  $zero, $a0, $at
/* B61FD4 800EAE34 00002012 */  mflo  $a0
/* B61FD8 800EAE38 53000003 */  beql  $t8, $zero, .L800EAE48
/* B61FDC 800EAE3C 0064C821 */   addu  $t9, $v1, $a0
/* B61FE0 800EAE40 00042023 */  negu  $a0, $a0
/* B61FE4 800EAE44 0064C821 */  addu  $t9, $v1, $a0
.L800EAE48:
/* B61FE8 800EAE48 A4D9000A */  sh    $t9, 0xa($a2)
/* B61FEC 800EAE4C 84C3000A */  lh    $v1, 0xa($a2)
/* B61FF0 800EAE50 04630004 */  bgezl $v1, .L800EAE64
/* B61FF4 800EAE54 84C20008 */   lh    $v0, 8($a2)
/* B61FF8 800EAE58 10000006 */  b     .L800EAE74
/* B61FFC 800EAE5C A4C0000A */   sh    $zero, 0xa($a2)
/* B62000 800EAE60 84C20008 */  lh    $v0, 8($a2)
.L800EAE64:
/* B62004 800EAE64 0043082A */  slt   $at, $v0, $v1
/* B62008 800EAE68 50200003 */  beql  $at, $zero, .L800EAE78
/* B6200C 800EAE6C 8FA9002C */   lw    $t1, 0x2c($sp)
/* B62010 800EAE70 A4C2000A */  sh    $v0, 0xa($a2)
.L800EAE74:
/* B62014 800EAE74 8FA9002C */  lw    $t1, 0x2c($sp)
.L800EAE78:
/* B62018 800EAE78 8D2A0000 */  lw    $t2, ($t1)
/* B6201C 800EAE7C 000A6080 */  sll   $t4, $t2, 2
/* B62020 800EAE80 05830006 */  bgezl $t4, .L800EAE9C
/* B62024 800EAE84 8D0F0000 */   lw    $t7, ($t0)
/* B62028 800EAE88 910D0003 */  lbu   $t5, 3($t0)
/* B6202C 800EAE8C 31AE0050 */  andi  $t6, $t5, 0x50
/* B62030 800EAE90 55C00007 */  bnezl $t6, .L800EAEB0
/* B62034 800EAE94 90CA0000 */   lbu   $t2, ($a2)
/* B62038 800EAE98 8D0F0000 */  lw    $t7, ($t0)
.L800EAE9C:
/* B6203C 800EAE9C 8FAC002C */  lw    $t4, 0x2c($sp)
/* B62040 800EAEA0 000FC8C0 */  sll   $t9, $t7, 3
/* B62044 800EAEA4 07230007 */  bgezl $t9, .L800EAEC4
/* B62048 800EAEA8 8D8D00DC */   lw    $t5, 0xdc($t4)
/* B6204C 800EAEAC 90CA0000 */  lbu   $t2, ($a2)
.L800EAEB0:
/* B62050 800EAEB0 2402FFFF */  li    $v0, -1
/* B62054 800EAEB4 354B0020 */  ori   $t3, $t2, 0x20
/* B62058 800EAEB8 1000000A */  b     .L800EAEE4
/* B6205C 800EAEBC A0CB0000 */   sb    $t3, ($a2)
/* B62060 800EAEC0 8D8D00DC */  lw    $t5, 0xdc($t4)
.L800EAEC4:
/* B62064 800EAEC4 8FA20044 */  lw    $v0, 0x44($sp)
/* B62068 800EAEC8 11A00006 */  beqz  $t5, .L800EAEE4
/* B6206C 800EAECC 00000000 */   nop   
/* B62070 800EAED0 90CF0000 */  lbu   $t7, ($a2)
/* B62074 800EAED4 2402FFFF */  li    $v0, -1
/* B62078 800EAED8 35F80020 */  ori   $t8, $t7, 0x20
/* B6207C 800EAEDC 10000001 */  b     .L800EAEE4
/* B62080 800EAEE0 A0D80000 */   sb    $t8, ($a2)
.L800EAEE4:
/* B62084 800EAEE4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B62088 800EAEE8 27BD0040 */  addiu $sp, $sp, 0x40
/* B6208C 800EAEEC 03E00008 */  jr    $ra
/* B62090 800EAEF0 00000000 */   nop   

glabel func_800EAEF4
/* B62094 800EAEF4 30A200FF */  andi  $v0, $a1, 0xff
/* B62098 800EAEF8 3043000F */  andi  $v1, $v0, 0xf
/* B6209C 800EAEFC 10600002 */  beqz  $v1, .L800EAF08
/* B620A0 800EAF00 AFA50004 */   sw    $a1, 4($sp)
/* B620A4 800EAF04 A0830005 */  sb    $v1, 5($a0)
.L800EAF08:
/* B620A8 800EAF08 00022903 */  sra   $a1, $v0, 4
/* B620AC 800EAF0C 30A500FF */  andi  $a1, $a1, 0xff
/* B620B0 800EAF10 10A00002 */  beqz  $a1, .L800EAF1C
/* B620B4 800EAF14 00000000 */   nop   
/* B620B8 800EAF18 A0850006 */  sb    $a1, 6($a0)
.L800EAF1C:
/* B620BC 800EAF1C 03E00008 */  jr    $ra
/* B620C0 800EAF20 00000000 */   nop   

glabel func_800EAF24
/* B620C4 800EAF24 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B620C8 800EAF28 AFA50024 */  sw    $a1, 0x24($sp)
/* B620CC 800EAF2C 93A50027 */  lbu   $a1, 0x27($sp)
/* B620D0 800EAF30 AFBF0014 */  sw    $ra, 0x14($sp)
/* B620D4 800EAF34 AFA40020 */  sw    $a0, 0x20($sp)
/* B620D8 800EAF38 AFA60028 */  sw    $a2, 0x28($sp)
/* B620DC 800EAF3C AFA7002C */  sw    $a3, 0x2c($sp)
/* B620E0 800EAF40 90840007 */  lbu   $a0, 7($a0)
/* B620E4 800EAF44 0C039D26 */  jal   Audio_GetInstrumentInner
/* B620E8 800EAF48 AFA50018 */   sw    $a1, 0x18($sp)
/* B620EC 800EAF4C 8FA50018 */  lw    $a1, 0x18($sp)
/* B620F0 800EAF50 8FA60028 */  lw    $a2, 0x28($sp)
/* B620F4 800EAF54 8FA7002C */  lw    $a3, 0x2c($sp)
/* B620F8 800EAF58 14400004 */  bnez  $v0, .L800EAF6C
/* B620FC 800EAF5C 00401825 */   move  $v1, $v0
/* B62100 800EAF60 ACC00000 */  sw    $zero, ($a2)
/* B62104 800EAF64 10000008 */  b     .L800EAF88
/* B62108 800EAF68 00001025 */   move  $v0, $zero
.L800EAF6C:
/* B6210C 800EAF6C 8C6F0004 */  lw    $t7, 4($v1)
/* B62110 800EAF70 24A40002 */  addiu $a0, $a1, 2
/* B62114 800EAF74 308200FF */  andi  $v0, $a0, 0xff
/* B62118 800EAF78 ACEF0004 */  sw    $t7, 4($a3)
/* B6211C 800EAF7C 90780003 */  lbu   $t8, 3($v1)
/* B62120 800EAF80 A0F80000 */  sb    $t8, ($a3)
/* B62124 800EAF84 ACC30000 */  sw    $v1, ($a2)
.L800EAF88:
/* B62128 800EAF88 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6212C 800EAF8C 27BD0020 */  addiu $sp, $sp, 0x20
/* B62130 800EAF90 03E00008 */  jr    $ra
/* B62134 800EAF94 00000000 */   nop   

glabel func_800EAF98
/* B62138 800EAF98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B6213C 800EAF9C AFA5001C */  sw    $a1, 0x1c($sp)
/* B62140 800EAFA0 30A500FF */  andi  $a1, $a1, 0xff
/* B62144 800EAFA4 28A10080 */  slti  $at, $a1, 0x80
/* B62148 800EAFA8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B6214C 800EAFAC 14200004 */  bnez  $at, .L800EAFC0
/* B62150 800EAFB0 00A01025 */   move  $v0, $a1
/* B62154 800EAFB4 A4820024 */  sh    $v0, 0x24($a0)
/* B62158 800EAFB8 1000001B */  b     .L800EB028
/* B6215C 800EAFBC AC800048 */   sw    $zero, 0x48($a0)
.L800EAFC0:
/* B62160 800EAFC0 2401007F */  li    $at, 127
/* B62164 800EAFC4 14410004 */  bne   $v0, $at, .L800EAFD8
/* B62168 800EAFC8 240E0001 */   li    $t6, 1
/* B6216C 800EAFCC A4800024 */  sh    $zero, 0x24($a0)
/* B62170 800EAFD0 10000015 */  b     .L800EB028
/* B62174 800EAFD4 AC8E0048 */   sw    $t6, 0x48($a0)
.L800EAFD8:
/* B62178 800EAFD8 2401007E */  li    $at, 126
/* B6217C 800EAFDC 14410006 */  bne   $v0, $at, .L800EAFF8
/* B62180 800EAFE0 24860048 */   addiu $a2, $a0, 0x48
/* B62184 800EAFE4 240F0001 */  li    $t7, 1
/* B62188 800EAFE8 24180002 */  li    $t8, 2
/* B6218C 800EAFEC A48F0024 */  sh    $t7, 0x24($a0)
/* B62190 800EAFF0 1000000D */  b     .L800EB028
/* B62194 800EAFF4 AC980048 */   sw    $t8, 0x48($a0)
.L800EAFF8:
/* B62198 800EAFF8 2487007C */  addiu $a3, $a0, 0x7c
/* B6219C 800EAFFC 0C03ABC9 */  jal   func_800EAF24
/* B621A0 800EB000 AFA40018 */   sw    $a0, 0x18($sp)
/* B621A4 800EB004 8FA40018 */  lw    $a0, 0x18($sp)
/* B621A8 800EB008 0002CC00 */  sll   $t9, $v0, 0x10
/* B621AC 800EB00C 00194403 */  sra   $t0, $t9, 0x10
/* B621B0 800EB010 15000005 */  bnez  $t0, .L800EB028
/* B621B4 800EB014 A4820024 */   sh    $v0, 0x24($a0)
/* B621B8 800EB018 90890000 */  lbu   $t1, ($a0)
/* B621BC 800EB01C 312AFFF7 */  andi  $t2, $t1, 0xfff7
/* B621C0 800EB020 10000004 */  b     .L800EB034
/* B621C4 800EB024 A08A0000 */   sb    $t2, ($a0)
.L800EB028:
/* B621C8 800EB028 908C0000 */  lbu   $t4, ($a0)
/* B621CC 800EB02C 358D0008 */  ori   $t5, $t4, 8
/* B621D0 800EB030 A08D0000 */  sb    $t5, ($a0)
.L800EB034:
/* B621D4 800EB034 8FBF0014 */  lw    $ra, 0x14($sp)
/* B621D8 800EB038 27BD0018 */  addiu $sp, $sp, 0x18
/* B621DC 800EB03C 03E00008 */  jr    $ra
/* B621E0 800EB040 00000000 */   nop   

glabel func_800EB044
/* B621E4 800EB044 AFA50004 */  sw    $a1, 4($sp)
/* B621E8 800EB048 30A500FF */  andi  $a1, $a1, 0xff
/* B621EC 800EB04C 44852000 */  mtc1  $a1, $f4
/* B621F0 800EB050 3C0142FE */  li    $at, 0x42FE0000 # 0.000000
/* B621F4 800EB054 44814000 */  mtc1  $at, $f8
/* B621F8 800EB058 468021A0 */  cvt.s.w $f6, $f4
/* B621FC 800EB05C 46083283 */  div.s $f10, $f6, $f8
/* B62200 800EB060 03E00008 */  jr    $ra
/* B62204 800EB064 E48A002C */   swc1  $f10, 0x2c($a0)

glabel func_800EB068
/* B62208 800EB068 27BDFF78 */  addiu $sp, $sp, -0x88
/* B6220C 800EB06C AFBF003C */  sw    $ra, 0x3c($sp)
/* B62210 800EB070 AFBE0038 */  sw    $fp, 0x38($sp)
/* B62214 800EB074 AFB70034 */  sw    $s7, 0x34($sp)
/* B62218 800EB078 AFB60030 */  sw    $s6, 0x30($sp)
/* B6221C 800EB07C AFB5002C */  sw    $s5, 0x2c($sp)
/* B62220 800EB080 AFB40028 */  sw    $s4, 0x28($sp)
/* B62224 800EB084 AFB30024 */  sw    $s3, 0x24($sp)
/* B62228 800EB088 AFB20020 */  sw    $s2, 0x20($sp)
/* B6222C 800EB08C AFB1001C */  sw    $s1, 0x1c($sp)
/* B62230 800EB090 AFB00018 */  sw    $s0, 0x18($sp)
/* B62234 800EB094 8C8E0000 */  lw    $t6, ($a0)
/* B62238 800EB098 0080A025 */  move  $s4, $a0
/* B6223C 800EB09C 000EC080 */  sll   $t8, $t6, 2
/* B62240 800EB0A0 07030004 */  bgezl $t8, .L800EB0B4
/* B62244 800EB0A4 8E97004C */   lw    $s7, 0x4c($s4)
/* B62248 800EB0A8 10000315 */  b     .L800EBD00
/* B6224C 800EB0AC 00008025 */   move  $s0, $zero
/* B62250 800EB0B0 8E97004C */  lw    $s7, 0x4c($s4)
.L800EB0B4:
/* B62254 800EB0B4 8EF90000 */  lw    $t9, ($s7)
/* B62258 800EB0B8 00194880 */  sll   $t1, $t9, 2
/* B6225C 800EB0BC 05230006 */  bgezl $t1, .L800EB0D8
/* B62260 800EB0C0 9683001E */   lhu   $v1, 0x1e($s4)
/* B62264 800EB0C4 928A0003 */  lbu   $t2, 3($s4)
/* B62268 800EB0C8 314B0080 */  andi  $t3, $t2, 0x80
/* B6226C 800EB0CC 55600317 */  bnezl $t3, .L800EBD2C
/* B62270 800EB0D0 8FBF003C */   lw    $ra, 0x3c($sp)
/* B62274 800EB0D4 9683001E */  lhu   $v1, 0x1e($s4)
.L800EB0D8:
/* B62278 800EB0D8 26960060 */  addiu $s6, $s4, 0x60
/* B6227C 800EB0DC 28610002 */  slti  $at, $v1, 2
/* B62280 800EB0E0 14200003 */  bnez  $at, .L800EB0F0
/* B62284 800EB0E4 246CFFFF */   addiu $t4, $v1, -1
/* B62288 800EB0E8 10000304 */  b     .L800EBCFC
/* B6228C 800EB0EC A68C001E */   sh    $t4, 0x1e($s4)
.L800EB0F0:
/* B62290 800EB0F0 241EFFFF */  li    $fp, -1
.L800EB0F4:
glabel L800EB0F4
/* B62294 800EB0F4 0C03A752 */  jal   func_800E9D48
/* B62298 800EB0F8 02C02025 */   move  $a0, $s6
/* B6229C 800EB0FC 284100B0 */  slti  $at, $v0, 0xb0
/* B622A0 800EB100 305200FF */  andi  $s2, $v0, 0xff
/* B622A4 800EB104 14200249 */  bnez  $at, .L800EBA2C
/* B622A8 800EB108 00402025 */   move  $a0, $v0
/* B622AC 800EB10C 3C038013 */  lui   $v1, %hi(D_80130470)
/* B622B0 800EB110 00641821 */  addu  $v1, $v1, $a0
/* B622B4 800EB114 90630470 */  lbu   $v1, %lo(D_80130470)($v1)
/* B622B8 800EB118 27B00060 */  addiu $s0, $sp, 0x60
/* B622BC 800EB11C 30650003 */  andi  $a1, $v1, 3
/* B622C0 800EB120 30AD00FF */  andi  $t5, $a1, 0xff
/* B622C4 800EB124 19A00013 */  blez  $t5, .L800EB174
/* B622C8 800EB128 30B500FF */   andi  $s5, $a1, 0xff
/* B622CC 800EB12C 00157880 */  sll   $t7, $s5, 2
/* B622D0 800EB130 01F09821 */  addu  $s3, $t7, $s0
.L800EB134:
/* B622D4 800EB134 30780080 */  andi  $t8, $v1, 0x80
/* B622D8 800EB138 17000005 */  bnez  $t8, .L800EB150
/* B622DC 800EB13C 00608825 */   move  $s1, $v1
/* B622E0 800EB140 0C03A752 */  jal   func_800E9D48
/* B622E4 800EB144 02C02025 */   move  $a0, $s6
/* B622E8 800EB148 10000004 */  b     .L800EB15C
/* B622EC 800EB14C AE020000 */   sw    $v0, ($s0)
.L800EB150:
/* B622F0 800EB150 0C03A757 */  jal   func_800E9D5C
/* B622F4 800EB154 02C02025 */   move  $a0, $s6
/* B622F8 800EB158 AE020000 */  sw    $v0, ($s0)
.L800EB15C:
/* B622FC 800EB15C 26100004 */  addiu $s0, $s0, 4
/* B62300 800EB160 0213082B */  sltu  $at, $s0, $s3
/* B62304 800EB164 00111840 */  sll   $v1, $s1, 1
/* B62308 800EB168 1420FFF2 */  bnez  $at, .L800EB134
/* B6230C 800EB16C 306300FF */   andi  $v1, $v1, 0xff
/* B62310 800EB170 00001025 */  move  $v0, $zero
.L800EB174:
/* B62314 800EB174 2A4100F2 */  slti  $at, $s2, 0xf2
/* B62318 800EB178 14200010 */  bnez  $at, .L800EB1BC
/* B6231C 800EB17C 02408025 */   move  $s0, $s2
/* B62320 800EB180 02E02025 */  move  $a0, $s7
/* B62324 800EB184 02C02825 */  move  $a1, $s6
/* B62328 800EB188 02003025 */  move  $a2, $s0
/* B6232C 800EB18C 0C03A4EA */  jal   func_800E93A8
/* B62330 800EB190 8FA70060 */   lw    $a3, 0x60($sp)
/* B62334 800EB194 1040FFD7 */  beqz  $v0, .L800EB0F4
/* B62338 800EB198 00000000 */   nop   
/* B6233C 800EB19C 145E0005 */  bne   $v0, $fp, .L800EB1B4
/* B62340 800EB1A0 00000000 */   nop   
/* B62344 800EB1A4 0C03A632 */  jal   func_800E98C8
/* B62348 800EB1A8 02802025 */   move  $a0, $s4
/* B6234C 800EB1AC 100002D4 */  b     .L800EBD00
/* B62350 800EB1B0 00008025 */   move  $s0, $zero
.L800EB1B4:
/* B62354 800EB1B4 100002D1 */  b     .L800EBCFC
/* B62358 800EB1B8 A682001E */   sh    $v0, 0x1e($s4)
.L800EB1BC:
/* B6235C 800EB1BC 2619FF50 */  addiu $t9, $s0, -0xb0
/* B62360 800EB1C0 2F210042 */  sltiu $at, $t9, 0x42
/* B62364 800EB1C4 1020FFCB */  beqz  $at, .L800EB0F4
/* B62368 800EB1C8 0019C880 */   sll   $t9, $t9, 2
/* B6236C 800EB1CC 3C018015 */  lui   $at, %hi(jtbl_801496B4)
/* B62370 800EB1D0 00390821 */  addu  $at, $at, $t9
/* B62374 800EB1D4 8C3996B4 */  lw    $t9, %lo(jtbl_801496B4)($at)
/* B62378 800EB1D8 03200008 */  jr    $t9
/* B6237C 800EB1DC 00000000 */   nop   
glabel L800EB1E0
/* B62380 800EB1E0 92890000 */  lbu   $t1, ($s4)
/* B62384 800EB1E4 352A0020 */  ori   $t2, $t1, 0x20
/* B62388 800EB1E8 100002C4 */  b     .L800EBCFC
/* B6238C 800EB1EC A28A0000 */   sb    $t2, ($s4)
glabel L800EB1F0
/* B62390 800EB1F0 26900084 */  addiu $s0, $s4, 0x84
/* B62394 800EB1F4 0C039F80 */  jal   Audio_NotePoolClear
/* B62398 800EB1F8 02002025 */   move  $a0, $s0
/* B6239C 800EB1FC 93A50063 */  lbu   $a1, 0x63($sp)
/* B623A0 800EB200 0C039FD8 */  jal   Audio_NotePoolFill
/* B623A4 800EB204 02002025 */   move  $a0, $s0
/* B623A8 800EB208 1000FFBA */  b     .L800EB0F4
/* B623AC 800EB20C 00000000 */   nop   
glabel L800EB210
/* B623B0 800EB210 0C039F80 */  jal   Audio_NotePoolClear
/* B623B4 800EB214 26840084 */   addiu $a0, $s4, 0x84
/* B623B8 800EB218 1000FFB6 */  b     .L800EB0F4
/* B623BC 800EB21C 00000000 */   nop   
glabel L800EB220
/* B623C0 800EB220 97B10062 */  lhu   $s1, 0x62($sp)
/* B623C4 800EB224 8EEB0018 */  lw    $t3, 0x18($s7)
/* B623C8 800EB228 01716021 */  addu  $t4, $t3, $s1
/* B623CC 800EB22C 1000FFB1 */  b     .L800EB0F4
/* B623D0 800EB230 AE8C003C */   sw    $t4, 0x3c($s4)
glabel L800EB234
/* B623D4 800EB234 82C20019 */  lb    $v0, 0x19($s6)
/* B623D8 800EB238 13C2FFAE */  beq   $fp, $v0, .L800EB0F4
/* B623DC 800EB23C 00000000 */   nop   
/* B623E0 800EB240 8E8D003C */  lw    $t5, 0x3c($s4)
/* B623E4 800EB244 00027840 */  sll   $t7, $v0, 1
/* B623E8 800EB248 8EE80018 */  lw    $t0, 0x18($s7)
/* B623EC 800EB24C 01AF8021 */  addu  $s0, $t5, $t7
/* B623F0 800EB250 92180000 */  lbu   $t8, ($s0)
/* B623F4 800EB254 920E0001 */  lbu   $t6, 1($s0)
/* B623F8 800EB258 0018CA00 */  sll   $t9, $t8, 8
/* B623FC 800EB25C 01D98821 */  addu  $s1, $t6, $t9
/* B62400 800EB260 3231FFFF */  andi  $s1, $s1, 0xffff
/* B62404 800EB264 01114821 */  addu  $t1, $t0, $s1
/* B62408 800EB268 1000FFA2 */  b     .L800EB0F4
/* B6240C 800EB26C AE89003C */   sw    $t1, 0x3c($s4)
glabel L800EB270
/* B62410 800EB270 92EB0005 */  lbu   $t3, 5($s7)
/* B62414 800EB274 93AA0063 */  lbu   $t2, 0x63($sp)
/* B62418 800EB278 240100FF */  li    $at, 255
/* B6241C 800EB27C 1161000D */  beq   $t3, $at, .L800EB2B4
/* B62420 800EB280 01409025 */   move  $s2, $t2
/* B62424 800EB284 92EC0004 */  lbu   $t4, 4($s7)
/* B62428 800EB288 3C028017 */  lui   $v0, %hi(D_801719BC) # $v0, 0x8017
/* B6242C 800EB28C 8C4219BC */  lw    $v0, %lo(D_801719BC)($v0)
/* B62430 800EB290 000C6840 */  sll   $t5, $t4, 1
/* B62434 800EB294 004D7821 */  addu  $t7, $v0, $t5
/* B62438 800EB298 95F10000 */  lhu   $s1, ($t7)
/* B6243C 800EB29C 0222C021 */  addu  $t8, $s1, $v0
/* B62440 800EB2A0 93150000 */  lbu   $s5, ($t8)
/* B62444 800EB2A4 02357021 */  addu  $t6, $s1, $s5
/* B62448 800EB2A8 01CAC823 */  subu  $t9, $t6, $t2
/* B6244C 800EB2AC 03224021 */  addu  $t0, $t9, $v0
/* B62450 800EB2B0 91120000 */  lbu   $s2, ($t0)
.L800EB2B4:
/* B62454 800EB2B4 24040001 */  li    $a0, 1
/* B62458 800EB2B8 24050002 */  li    $a1, 2
/* B6245C 800EB2BC 0C037C1D */  jal   func_800DF074
/* B62460 800EB2C0 02403025 */   move  $a2, $s2
/* B62464 800EB2C4 50400003 */  beql  $v0, $zero, .L800EB2D4
/* B62468 800EB2C8 8FA90064 */   lw    $t1, 0x64($sp)
/* B6246C 800EB2CC A2920007 */  sb    $s2, 7($s4)
/* B62470 800EB2D0 8FA90064 */  lw    $t1, 0x64($sp)
.L800EB2D4:
/* B62474 800EB2D4 AFA90060 */  sw    $t1, 0x60($sp)
glabel L800EB2D8
/* B62478 800EB2D8 93A50063 */  lbu   $a1, 0x63($sp)
/* B6247C 800EB2DC 0C03ABE6 */  jal   func_800EAF98
/* B62480 800EB2E0 02802025 */   move  $a0, $s4
/* B62484 800EB2E4 1000FF83 */  b     .L800EB0F4
/* B62488 800EB2E8 00000000 */   nop   
glabel L800EB2EC
/* B6248C 800EB2EC 928B0000 */  lbu   $t3, ($s4)
/* B62490 800EB2F0 316CFFFD */  andi  $t4, $t3, 0xfffd
/* B62494 800EB2F4 1000FF7F */  b     .L800EB0F4
/* B62498 800EB2F8 A28C0000 */   sb    $t4, ($s4)
glabel L800EB2FC
/* B6249C 800EB2FC 928F0000 */  lbu   $t7, ($s4)
/* B624A0 800EB300 35F80002 */  ori   $t8, $t7, 2
/* B624A4 800EB304 1000FF7B */  b     .L800EB0F4
/* B624A8 800EB308 A2980000 */   sb    $t8, ($s4)
glabel L800EB30C
/* B624AC 800EB30C 93A50063 */  lbu   $a1, 0x63($sp)
/* B624B0 800EB310 0C03AC11 */  jal   func_800EB044
/* B624B4 800EB314 02802025 */   move  $a0, $s4
/* B624B8 800EB318 928A0001 */  lbu   $t2, 1($s4)
/* B624BC 800EB31C 35590040 */  ori   $t9, $t2, 0x40
/* B624C0 800EB320 1000FF74 */  b     .L800EB0F4
/* B624C4 800EB324 A2990001 */   sb    $t9, 1($s4)
glabel L800EB328
/* B624C8 800EB328 93B20063 */  lbu   $s2, 0x63($sp)
/* B624CC 800EB32C 3C013C00 */  li    $at, 0x3C000000 # 0.000000
/* B624D0 800EB330 44814000 */  mtc1  $at, $f8
/* B624D4 800EB334 44922000 */  mtc1  $s2, $f4
/* B624D8 800EB338 92890001 */  lbu   $t1, 1($s4)
/* B624DC 800EB33C 468021A0 */  cvt.s.w $f6, $f4
/* B624E0 800EB340 352B0040 */  ori   $t3, $t1, 0x40
/* B624E4 800EB344 A28B0001 */  sb    $t3, 1($s4)
/* B624E8 800EB348 46083282 */  mul.s $f10, $f6, $f8
/* B624EC 800EB34C 1000FF69 */  b     .L800EB0F4
/* B624F0 800EB350 E68A0028 */   swc1  $f10, 0x28($s4)
glabel L800EB354
/* B624F4 800EB354 97B10062 */  lhu   $s1, 0x62($sp)
/* B624F8 800EB358 3C014700 */  li    $at, 0x47000000 # 0.000000
/* B624FC 800EB35C 44812000 */  mtc1  $at, $f4
/* B62500 800EB360 44918000 */  mtc1  $s1, $f16
/* B62504 800EB364 928D0001 */  lbu   $t5, 1($s4)
/* B62508 800EB368 468084A0 */  cvt.s.w $f18, $f16
/* B6250C 800EB36C 35AF0080 */  ori   $t7, $t5, 0x80
/* B62510 800EB370 A28F0001 */  sb    $t7, 1($s4)
/* B62514 800EB374 46049183 */  div.s $f6, $f18, $f4
/* B62518 800EB378 1000FF5E */  b     .L800EB0F4
/* B6251C 800EB37C E6860038 */   swc1  $f6, 0x38($s4)
glabel L800EB380
/* B62520 800EB380 93B20063 */  lbu   $s2, 0x63($sp)
/* B62524 800EB384 928A0001 */  lbu   $t2, 1($s4)
/* B62528 800EB388 3C018013 */  lui   $at, %hi(D_8012F0B4)
/* B6252C 800EB38C 26520080 */  addiu $s2, $s2, 0x80
/* B62530 800EB390 325200FF */  andi  $s2, $s2, 0xff
/* B62534 800EB394 0012C080 */  sll   $t8, $s2, 2
/* B62538 800EB398 00380821 */  addu  $at, $at, $t8
/* B6253C 800EB39C C428F0B4 */  lwc1  $f8, %lo(D_8012F0B4)($at)
/* B62540 800EB3A0 35590080 */  ori   $t9, $t2, 0x80
/* B62544 800EB3A4 A2990001 */  sb    $t9, 1($s4)
/* B62548 800EB3A8 1000FF52 */  b     .L800EB0F4
/* B6254C 800EB3AC E6880038 */   swc1  $f8, 0x38($s4)
glabel L800EB3B0
/* B62550 800EB3B0 93B20063 */  lbu   $s2, 0x63($sp)
/* B62554 800EB3B4 928B0001 */  lbu   $t3, 1($s4)
/* B62558 800EB3B8 3C018013 */  lui   $at, %hi(D_8012F4B4)
/* B6255C 800EB3BC 26520080 */  addiu $s2, $s2, 0x80
/* B62560 800EB3C0 325200FF */  andi  $s2, $s2, 0xff
/* B62564 800EB3C4 00124080 */  sll   $t0, $s2, 2
/* B62568 800EB3C8 00280821 */  addu  $at, $at, $t0
/* B6256C 800EB3CC C42AF4B4 */  lwc1  $f10, %lo(D_8012F4B4)($at)
/* B62570 800EB3D0 356C0080 */  ori   $t4, $t3, 0x80
/* B62574 800EB3D4 A28C0001 */  sb    $t4, 1($s4)
/* B62578 800EB3D8 1000FF46 */  b     .L800EB0F4
/* B6257C 800EB3DC E68A0038 */   swc1  $f10, 0x38($s4)
glabel L800EB3E0
/* B62580 800EB3E0 928F0001 */  lbu   $t7, 1($s4)
/* B62584 800EB3E4 93B20063 */  lbu   $s2, 0x63($sp)
/* B62588 800EB3E8 35F80020 */  ori   $t8, $t7, 0x20
/* B6258C 800EB3EC A2980001 */  sb    $t8, 1($s4)
/* B62590 800EB3F0 1000FF40 */  b     .L800EB0F4
/* B62594 800EB3F4 A292000A */   sb    $s2, 0xa($s4)
glabel L800EB3F8
/* B62598 800EB3F8 928A0001 */  lbu   $t2, 1($s4)
/* B6259C 800EB3FC 93B20063 */  lbu   $s2, 0x63($sp)
/* B625A0 800EB400 35590020 */  ori   $t9, $t2, 0x20
/* B625A4 800EB404 A2990001 */  sb    $t9, 1($s4)
/* B625A8 800EB408 1000FF3A */  b     .L800EB0F4
/* B625AC 800EB40C A292000B */   sb    $s2, 0xb($s4)
glabel L800EB410
/* B625B0 800EB410 83A20063 */  lb    $v0, 0x63($sp)
/* B625B4 800EB414 1000FF37 */  b     .L800EB0F4
/* B625B8 800EB418 A6820026 */   sh    $v0, 0x26($s4)
glabel L800EB41C
/* B625BC 800EB41C 97B10062 */  lhu   $s1, 0x62($sp)
/* B625C0 800EB420 8EE80018 */  lw    $t0, 0x18($s7)
/* B625C4 800EB424 01114821 */  addu  $t1, $t0, $s1
/* B625C8 800EB428 1000FF32 */  b     .L800EB0F4
/* B625CC 800EB42C AE890080 */   sw    $t1, 0x80($s4)
glabel L800EB430
/* B625D0 800EB430 93B20063 */  lbu   $s2, 0x63($sp)
/* B625D4 800EB434 1000FF2F */  b     .L800EB0F4
/* B625D8 800EB438 A292007C */   sb    $s2, 0x7c($s4)
glabel L800EB43C
/* B625DC 800EB43C 93B20063 */  lbu   $s2, 0x63($sp)
/* B625E0 800EB440 A6800012 */  sh    $zero, 0x12($s4)
/* B625E4 800EB444 A680001A */  sh    $zero, 0x1a($s4)
/* B625E8 800EB448 001258C0 */  sll   $t3, $s2, 3
/* B625EC 800EB44C 1000FF29 */  b     .L800EB0F4
/* B625F0 800EB450 A68B0016 */   sh    $t3, 0x16($s4)
glabel L800EB454
/* B625F4 800EB454 93B20063 */  lbu   $s2, 0x63($sp)
/* B625F8 800EB458 A6800018 */  sh    $zero, 0x18($s4)
/* B625FC 800EB45C 00121140 */  sll   $v0, $s2, 5
/* B62600 800EB460 A6820014 */  sh    $v0, 0x14($s4)
/* B62604 800EB464 1000FF23 */  b     .L800EB0F4
/* B62608 800EB468 A6820010 */   sh    $v0, 0x10($s4)
glabel L800EB46C
/* B6260C 800EB46C 93B20063 */  lbu   $s2, 0x63($sp)
/* B62610 800EB470 001260C0 */  sll   $t4, $s2, 3
/* B62614 800EB474 A68C0012 */  sh    $t4, 0x12($s4)
/* B62618 800EB478 93B20067 */  lbu   $s2, 0x67($sp)
/* B6261C 800EB47C 001268C0 */  sll   $t5, $s2, 3
/* B62620 800EB480 A68D0016 */  sh    $t5, 0x16($s4)
/* B62624 800EB484 93B2006B */  lbu   $s2, 0x6b($sp)
/* B62628 800EB488 00127900 */  sll   $t7, $s2, 4
/* B6262C 800EB48C 1000FF19 */  b     .L800EB0F4
/* B62630 800EB490 A68F001A */   sh    $t7, 0x1a($s4)
glabel L800EB494
/* B62634 800EB494 93B20063 */  lbu   $s2, 0x63($sp)
/* B62638 800EB498 0012C140 */  sll   $t8, $s2, 5
/* B6263C 800EB49C A6980010 */  sh    $t8, 0x10($s4)
/* B62640 800EB4A0 93B20067 */  lbu   $s2, 0x67($sp)
/* B62644 800EB4A4 00127140 */  sll   $t6, $s2, 5
/* B62648 800EB4A8 A68E0014 */  sh    $t6, 0x14($s4)
/* B6264C 800EB4AC 93B2006B */  lbu   $s2, 0x6b($sp)
/* B62650 800EB4B0 00125100 */  sll   $t2, $s2, 4
/* B62654 800EB4B4 1000FF0F */  b     .L800EB0F4
/* B62658 800EB4B8 A68A0018 */   sh    $t2, 0x18($s4)
glabel L800EB4BC
/* B6265C 800EB4BC 93B20063 */  lbu   $s2, 0x63($sp)
/* B62660 800EB4C0 0012C900 */  sll   $t9, $s2, 4
/* B62664 800EB4C4 1000FF0B */  b     .L800EB0F4
/* B62668 800EB4C8 A699001C */   sh    $t9, 0x1c($s4)
glabel L800EB4CC
/* B6266C 800EB4CC 93B20063 */  lbu   $s2, 0x63($sp)
/* B62670 800EB4D0 1000FF08 */  b     .L800EB0F4
/* B62674 800EB4D4 A2920004 */   sb    $s2, 4($s4)
glabel L800EB4D8
/* B62678 800EB4D8 92E90005 */  lbu   $t1, 5($s7)
/* B6267C 800EB4DC 93A80063 */  lbu   $t0, 0x63($sp)
/* B62680 800EB4E0 240100FF */  li    $at, 255
/* B62684 800EB4E4 1121000D */  beq   $t1, $at, .L800EB51C
/* B62688 800EB4E8 01009025 */   move  $s2, $t0
/* B6268C 800EB4EC 92EB0004 */  lbu   $t3, 4($s7)
/* B62690 800EB4F0 3C028017 */  lui   $v0, %hi(D_801719BC) # $v0, 0x8017
/* B62694 800EB4F4 8C4219BC */  lw    $v0, %lo(D_801719BC)($v0)
/* B62698 800EB4F8 000B6040 */  sll   $t4, $t3, 1
/* B6269C 800EB4FC 004C6821 */  addu  $t5, $v0, $t4
/* B626A0 800EB500 95B10000 */  lhu   $s1, ($t5)
/* B626A4 800EB504 02227821 */  addu  $t7, $s1, $v0
/* B626A8 800EB508 91F50000 */  lbu   $s5, ($t7)
/* B626AC 800EB50C 0235C021 */  addu  $t8, $s1, $s5
/* B626B0 800EB510 03087023 */  subu  $t6, $t8, $t0
/* B626B4 800EB514 01C25021 */  addu  $t2, $t6, $v0
/* B626B8 800EB518 91520000 */  lbu   $s2, ($t2)
.L800EB51C:
/* B626BC 800EB51C 24040001 */  li    $a0, 1
/* B626C0 800EB520 24050002 */  li    $a1, 2
/* B626C4 800EB524 0C037C1D */  jal   func_800DF074
/* B626C8 800EB528 02403025 */   move  $a2, $s2
/* B626CC 800EB52C 1040FEF1 */  beqz  $v0, .L800EB0F4
/* B626D0 800EB530 00000000 */   nop   
/* B626D4 800EB534 1000FEEF */  b     .L800EB0F4
/* B626D8 800EB538 A2920007 */   sb    $s2, 7($s4)
glabel L800EB53C
/* B626DC 800EB53C 93B20063 */  lbu   $s2, 0x63($sp)
/* B626E0 800EB540 97B10066 */  lhu   $s1, 0x66($sp)
/* B626E4 800EB544 8EF90018 */  lw    $t9, 0x18($s7)
/* B626E8 800EB548 92C90019 */  lbu   $t1, 0x19($s6)
/* B626EC 800EB54C 03311021 */  addu  $v0, $t9, $s1
/* B626F0 800EB550 01325821 */  addu  $t3, $t1, $s2
/* B626F4 800EB554 1000FEE7 */  b     .L800EB0F4
/* B626F8 800EB558 A04B0000 */   sb    $t3, ($v0)
glabel L800EB55C
/* B626FC 800EB55C 240100C8 */  li    $at, 200
/* B62700 800EB560 16010005 */  bne   $s0, $at, .L800EB578
/* B62704 800EB564 83A20063 */   lb    $v0, 0x63($sp)
/* B62708 800EB568 82CC0019 */  lb    $t4, 0x19($s6)
/* B6270C 800EB56C 01826823 */  subu  $t5, $t4, $v0
/* B62710 800EB570 1000FEE0 */  b     .L800EB0F4
/* B62714 800EB574 A2CD0019 */   sb    $t5, 0x19($s6)
.L800EB578:
/* B62718 800EB578 240100CC */  li    $at, 204
/* B6271C 800EB57C 56010004 */  bnel  $s0, $at, .L800EB590
/* B62720 800EB580 82CF0019 */   lb    $t7, 0x19($s6)
/* B62724 800EB584 1000FEDB */  b     .L800EB0F4
/* B62728 800EB588 A2C20019 */   sb    $v0, 0x19($s6)
/* B6272C 800EB58C 82CF0019 */  lb    $t7, 0x19($s6)
.L800EB590:
/* B62730 800EB590 01E2C024 */  and   $t8, $t7, $v0
/* B62734 800EB594 1000FED7 */  b     .L800EB0F4
/* B62738 800EB598 A2D80019 */   sb    $t8, 0x19($s6)
glabel L800EB59C
/* B6273C 800EB59C 93B20063 */  lbu   $s2, 0x63($sp)
/* B62740 800EB5A0 00124080 */  sll   $t0, $s2, 2
/* B62744 800EB5A4 02E87021 */  addu  $t6, $s7, $t0
/* B62748 800EB5A8 0C03A632 */  jal   func_800E98C8
/* B6274C 800EB5AC 8DC40038 */   lw    $a0, 0x38($t6)
/* B62750 800EB5B0 1000FED0 */  b     .L800EB0F4
/* B62754 800EB5B4 00000000 */   nop   
glabel L800EB5B8
/* B62758 800EB5B8 92990001 */  lbu   $t9, 1($s4)
/* B6275C 800EB5BC 93B20063 */  lbu   $s2, 0x63($sp)
/* B62760 800EB5C0 37290040 */  ori   $t1, $t9, 0x40
/* B62764 800EB5C4 A2890001 */  sb    $t1, 1($s4)
/* B62768 800EB5C8 1000FECA */  b     .L800EB0F4
/* B6276C 800EB5CC A2920003 */   sb    $s2, 3($s4)
glabel L800EB5D0
/* B62770 800EB5D0 97B10062 */  lhu   $s1, 0x62($sp)
/* B62774 800EB5D4 82CC0019 */  lb    $t4, 0x19($s6)
/* B62778 800EB5D8 8EEB0018 */  lw    $t3, 0x18($s7)
/* B6277C 800EB5DC 022C6821 */  addu  $t5, $s1, $t4
/* B62780 800EB5E0 016D7821 */  addu  $t7, $t3, $t5
/* B62784 800EB5E4 91F80000 */  lbu   $t8, ($t7)
/* B62788 800EB5E8 1000FEC2 */  b     .L800EB0F4
/* B6278C 800EB5EC A2D80019 */   sb    $t8, 0x19($s6)
glabel L800EB5F0
/* B62790 800EB5F0 97B10062 */  lhu   $s1, 0x62($sp)
/* B62794 800EB5F4 1000FEBF */  b     .L800EB0F4
/* B62798 800EB5F8 A6910022 */   sh    $s1, 0x22($s4)
glabel L800EB5FC
/* B6279C 800EB5FC 97B10062 */  lhu   $s1, 0x62($sp)
/* B627A0 800EB600 8EE80018 */  lw    $t0, 0x18($s7)
/* B627A4 800EB604 968E0022 */  lhu   $t6, 0x22($s4)
/* B627A8 800EB608 01111021 */  addu  $v0, $t0, $s1
/* B627AC 800EB60C 000ECA03 */  sra   $t9, $t6, 8
/* B627B0 800EB610 A0590000 */  sb    $t9, ($v0)
/* B627B4 800EB614 968C0022 */  lhu   $t4, 0x22($s4)
/* B627B8 800EB618 1000FEB6 */  b     .L800EB0F4
/* B627BC 800EB61C A04C0001 */   sb    $t4, 1($v0)
glabel L800EB620
/* B627C0 800EB620 93B00063 */  lbu   $s0, 0x63($sp)
/* B627C4 800EB624 320B0080 */  andi  $t3, $s0, 0x80
/* B627C8 800EB628 11600005 */  beqz  $t3, .L800EB640
/* B627CC 800EB62C 320A007F */   andi  $t2, $s0, 0x7f
/* B627D0 800EB630 928F0000 */  lbu   $t7, ($s4)
/* B627D4 800EB634 35F80004 */  ori   $t8, $t7, 4
/* B627D8 800EB638 10000004 */  b     .L800EB64C
/* B627DC 800EB63C A2980000 */   sb    $t8, ($s4)
.L800EB640:
/* B627E0 800EB640 92880000 */  lbu   $t0, ($s4)
/* B627E4 800EB644 310EFFFB */  andi  $t6, $t0, 0xfffb
/* B627E8 800EB648 A28E0000 */  sb    $t6, ($s4)
.L800EB64C:
/* B627EC 800EB64C 1000FEA9 */  b     .L800EB0F4
/* B627F0 800EB650 A28A00D0 */   sb    $t2, 0xd0($s4)
glabel L800EB654
/* B627F4 800EB654 93B20063 */  lbu   $s2, 0x63($sp)
/* B627F8 800EB658 1000FEA6 */  b     .L800EB0F4
/* B627FC 800EB65C A2920002 */   sb    $s2, 2($s4)
glabel L800EB660
/* B62800 800EB660 93B20063 */  lbu   $s2, 0x63($sp)
/* B62804 800EB664 1000FEA3 */  b     .L800EB0F4
/* B62808 800EB668 A292007D */   sb    $s2, 0x7d($s4)
glabel L800EB66C
/* B6280C 800EB66C 93B20063 */  lbu   $s2, 0x63($sp)
/* B62810 800EB670 1000FEA0 */  b     .L800EB0F4
/* B62814 800EB674 A2920008 */   sb    $s2, 8($s4)
glabel L800EB678
/* B62818 800EB678 82C20019 */  lb    $v0, 0x19($s6)
/* B6281C 800EB67C 13C2FE9D */  beq   $fp, $v0, .L800EB0F4
/* B62820 800EB680 00000000 */   nop   
/* B62824 800EB684 92CB0018 */  lbu   $t3, 0x18($s6)
/* B62828 800EB688 8ECC0000 */  lw    $t4, ($s6)
/* B6282C 800EB68C 8E99003C */  lw    $t9, 0x3c($s4)
/* B62830 800EB690 000B6880 */  sll   $t5, $t3, 2
/* B62834 800EB694 02CD7821 */  addu  $t7, $s6, $t5
/* B62838 800EB698 ADEC0004 */  sw    $t4, 4($t7)
/* B6283C 800EB69C 92D80018 */  lbu   $t8, 0x18($s6)
/* B62840 800EB6A0 00024840 */  sll   $t1, $v0, 1
/* B62844 800EB6A4 03298021 */  addu  $s0, $t9, $t1
/* B62848 800EB6A8 27080001 */  addiu $t0, $t8, 1
/* B6284C 800EB6AC A2C80018 */  sb    $t0, 0x18($s6)
/* B62850 800EB6B0 920A0000 */  lbu   $t2, ($s0)
/* B62854 800EB6B4 920E0001 */  lbu   $t6, 1($s0)
/* B62858 800EB6B8 8EE90018 */  lw    $t1, 0x18($s7)
/* B6285C 800EB6BC 000ACA00 */  sll   $t9, $t2, 8
/* B62860 800EB6C0 01D98821 */  addu  $s1, $t6, $t9
/* B62864 800EB6C4 3231FFFF */  andi  $s1, $s1, 0xffff
/* B62868 800EB6C8 01315821 */  addu  $t3, $t1, $s1
/* B6286C 800EB6CC 1000FE89 */  b     .L800EB0F4
/* B62870 800EB6D0 AECB0000 */   sw    $t3, ($s6)
glabel L800EB6D4
/* B62874 800EB6D4 93B20063 */  lbu   $s2, 0x63($sp)
/* B62878 800EB6D8 1000FE86 */  b     .L800EB0F4
/* B6287C 800EB6DC A2920009 */   sb    $s2, 9($s4)
glabel L800EB6E0
/* B62880 800EB6E0 97B10062 */  lhu   $s1, 0x62($sp)
/* B62884 800EB6E4 8EED0018 */  lw    $t5, 0x18($s7)
/* B62888 800EB6E8 02802025 */  move  $a0, $s4
/* B6288C 800EB6EC 01B18021 */  addu  $s0, $t5, $s1
/* B62890 800EB6F0 920C0000 */  lbu   $t4, ($s0)
/* B62894 800EB6F4 26100003 */  addiu $s0, $s0, 3
/* B62898 800EB6F8 A28C0003 */  sb    $t4, 3($s4)
/* B6289C 800EB6FC 920FFFFE */  lbu   $t7, -2($s0)
/* B628A0 800EB700 A28F0002 */  sb    $t7, 2($s4)
/* B628A4 800EB704 0C03ABBD */  jal   func_800EAEF4
/* B628A8 800EB708 9205FFFF */   lbu   $a1, -1($s0)
/* B628AC 800EB70C 82180000 */  lb    $t8, ($s0)
/* B628B0 800EB710 928B0001 */  lbu   $t3, 1($s4)
/* B628B4 800EB714 26100004 */  addiu $s0, $s0, 4
/* B628B8 800EB718 A6980026 */  sh    $t8, 0x26($s4)
/* B628BC 800EB71C 9208FFFD */  lbu   $t0, -3($s0)
/* B628C0 800EB720 356D0020 */  ori   $t5, $t3, 0x20
/* B628C4 800EB724 A288000A */  sb    $t0, 0xa($s4)
/* B628C8 800EB728 920AFFFE */  lbu   $t2, -2($s0)
/* B628CC 800EB72C A28A000B */  sb    $t2, 0xb($s4)
/* B628D0 800EB730 920EFFFF */  lbu   $t6, -1($s0)
/* B628D4 800EB734 A28E0004 */  sb    $t6, 4($s4)
/* B628D8 800EB738 92190000 */  lbu   $t9, ($s0)
/* B628DC 800EB73C A28D0001 */  sb    $t5, 1($s4)
/* B628E0 800EB740 1000FE6C */  b     .L800EB0F4
/* B628E4 800EB744 A2990008 */   sb    $t9, 8($s4)
glabel L800EB748
/* B628E8 800EB748 8FAC0060 */  lw    $t4, 0x60($sp)
/* B628EC 800EB74C 02802025 */  move  $a0, $s4
/* B628F0 800EB750 A28C0003 */  sb    $t4, 3($s4)
/* B628F4 800EB754 8FAF0064 */  lw    $t7, 0x64($sp)
/* B628F8 800EB758 A28F0002 */  sb    $t7, 2($s4)
/* B628FC 800EB75C 0C03ABBD */  jal   func_800EAEF4
/* B62900 800EB760 93A5006B */   lbu   $a1, 0x6b($sp)
/* B62904 800EB764 0C03A752 */  jal   func_800E9D48
/* B62908 800EB768 02C02025 */   move  $a0, $s6
/* B6290C 800EB76C 0002C600 */  sll   $t8, $v0, 0x18
/* B62910 800EB770 00184603 */  sra   $t0, $t8, 0x18
/* B62914 800EB774 A6880026 */  sh    $t0, 0x26($s4)
/* B62918 800EB778 0C03A752 */  jal   func_800E9D48
/* B6291C 800EB77C 02C02025 */   move  $a0, $s6
/* B62920 800EB780 A282000A */  sb    $v0, 0xa($s4)
/* B62924 800EB784 0C03A752 */  jal   func_800E9D48
/* B62928 800EB788 02C02025 */   move  $a0, $s6
/* B6292C 800EB78C A282000B */  sb    $v0, 0xb($s4)
/* B62930 800EB790 0C03A752 */  jal   func_800E9D48
/* B62934 800EB794 02C02025 */   move  $a0, $s6
/* B62938 800EB798 A2820004 */  sb    $v0, 4($s4)
/* B6293C 800EB79C 0C03A752 */  jal   func_800E9D48
/* B62940 800EB7A0 02C02025 */   move  $a0, $s6
/* B62944 800EB7A4 928E0001 */  lbu   $t6, 1($s4)
/* B62948 800EB7A8 A2820008 */  sb    $v0, 8($s4)
/* B6294C 800EB7AC 35D90020 */  ori   $t9, $t6, 0x20
/* B62950 800EB7B0 1000FE50 */  b     .L800EB0F4
/* B62954 800EB7B4 A2990001 */   sb    $t9, 1($s4)
glabel L800EB7B8
/* B62958 800EB7B8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B6295C 800EB7BC 44818000 */  mtc1  $at, $f16
/* B62960 800EB7C0 A6800016 */  sh    $zero, 0x16($s4)
/* B62964 800EB7C4 A6800012 */  sh    $zero, 0x12($s4)
/* B62968 800EB7C8 A680001A */  sh    $zero, 0x1a($s4)
/* B6296C 800EB7CC A6800014 */  sh    $zero, 0x14($s4)
/* B62970 800EB7D0 A6800010 */  sh    $zero, 0x10($s4)
/* B62974 800EB7D4 A6800018 */  sh    $zero, 0x18($s4)
/* B62978 800EB7D8 AE8000CC */  sw    $zero, 0xcc($s4)
/* B6297C 800EB7DC A280000C */  sb    $zero, 0xc($s4)
/* B62980 800EB7E0 A280007D */  sb    $zero, 0x7d($s4)
/* B62984 800EB7E4 A280000D */  sb    $zero, 0xd($s4)
/* B62988 800EB7E8 A280000E */  sb    $zero, 0xe($s4)
/* B6298C 800EB7EC A280000F */  sb    $zero, 0xf($s4)
/* B62990 800EB7F0 A6800020 */  sh    $zero, 0x20($s4)
/* B62994 800EB7F4 A2800009 */  sb    $zero, 9($s4)
/* B62998 800EB7F8 1000FE3E */  b     .L800EB0F4
/* B6299C 800EB7FC E6900038 */   swc1  $f16, 0x38($s4)
glabel L800EB800
/* B629A0 800EB800 02802025 */  move  $a0, $s4
/* B629A4 800EB804 0C03ABBD */  jal   func_800EAEF4
/* B629A8 800EB808 93A50063 */   lbu   $a1, 0x63($sp)
/* B629AC 800EB80C 1000FE39 */  b     .L800EB0F4
/* B629B0 800EB810 00000000 */   nop   
glabel L800EB814
/* B629B4 800EB814 93B20063 */  lbu   $s2, 0x63($sp)
/* B629B8 800EB818 1000FE36 */  b     .L800EB0F4
/* B629BC 800EB81C A292000C */   sb    $s2, 0xc($s4)
glabel L800EB820
/* B629C0 800EB820 97B10062 */  lhu   $s1, 0x62($sp)
/* B629C4 800EB824 8EE90018 */  lw    $t1, 0x18($s7)
/* B629C8 800EB828 01318021 */  addu  $s0, $t1, $s1
/* B629CC 800EB82C 1000FE31 */  b     .L800EB0F4
/* B629D0 800EB830 AE9000CC */   sw    $s0, 0xcc($s4)
glabel L800EB834
/* B629D4 800EB834 1000FE2F */  b     .L800EB0F4
/* B629D8 800EB838 AE8000CC */   sw    $zero, 0xcc($s4)
glabel L800EB83C
/* B629DC 800EB83C 8E8400CC */  lw    $a0, 0xcc($s4)
/* B629E0 800EB840 93B20063 */  lbu   $s2, 0x63($sp)
/* B629E4 800EB844 1080FE2B */  beqz  $a0, .L800EB0F4
/* B629E8 800EB848 0012A903 */   sra   $s5, $s2, 4
/* B629EC 800EB84C 02408025 */  move  $s0, $s2
/* B629F0 800EB850 32B5000F */  andi  $s5, $s5, 0xf
/* B629F4 800EB854 3252000F */  andi  $s2, $s2, 0xf
/* B629F8 800EB858 32A500FF */  andi  $a1, $s5, 0xff
/* B629FC 800EB85C 0C037DA2 */  jal   func_800DF688
/* B62A00 800EB860 324600FF */   andi  $a2, $s2, 0xff
/* B62A04 800EB864 1000FE23 */  b     .L800EB0F4
/* B62A08 800EB868 00000000 */   nop   
glabel L800EB86C
/* B62A0C 800EB86C 82CD0019 */  lb    $t5, 0x19($s6)
/* B62A10 800EB870 97B10062 */  lhu   $s1, 0x62($sp)
/* B62A14 800EB874 8EEB0018 */  lw    $t3, 0x18($s7)
/* B62A18 800EB878 000D6040 */  sll   $t4, $t5, 1
/* B62A1C 800EB87C 022C7821 */  addu  $t7, $s1, $t4
/* B62A20 800EB880 016FC021 */  addu  $t8, $t3, $t7
/* B62A24 800EB884 97080000 */  lhu   $t0, ($t8)
/* B62A28 800EB888 1000FE1A */  b     .L800EB0F4
/* B62A2C 800EB88C A6880022 */   sh    $t0, 0x22($s4)
glabel L800EB890
/* B62A30 800EB890 8EEA0018 */  lw    $t2, 0x18($s7)
/* B62A34 800EB894 968E0022 */  lhu   $t6, 0x22($s4)
/* B62A38 800EB898 014EC821 */  addu  $t9, $t2, $t6
/* B62A3C 800EB89C 1000FE15 */  b     .L800EB0F4
/* B62A40 800EB8A0 AE99003C */   sw    $t9, 0x3c($s4)
glabel L800EB8A4
/* B62A44 800EB8A4 82CD0019 */  lb    $t5, 0x19($s6)
/* B62A48 800EB8A8 8E89003C */  lw    $t1, 0x3c($s4)
/* B62A4C 800EB8AC 000D6040 */  sll   $t4, $t5, 1
/* B62A50 800EB8B0 012C5821 */  addu  $t3, $t1, $t4
/* B62A54 800EB8B4 956F0000 */  lhu   $t7, ($t3)
/* B62A58 800EB8B8 1000FE0E */  b     .L800EB0F4
/* B62A5C 800EB8BC A68F0022 */   sh    $t7, 0x22($s4)
glabel L800EB8C0
/* B62A60 800EB8C0 8E98003C */  lw    $t8, 0x3c($s4)
/* B62A64 800EB8C4 82C80019 */  lb    $t0, 0x19($s6)
/* B62A68 800EB8C8 03085021 */  addu  $t2, $t8, $t0
/* B62A6C 800EB8CC 914E0000 */  lbu   $t6, ($t2)
/* B62A70 800EB8D0 1000FE08 */  b     .L800EB0F4
/* B62A74 800EB8D4 A2CE0019 */   sb    $t6, 0x19($s6)
glabel L800EB8D8
/* B62A78 800EB8D8 8FB90060 */  lw    $t9, 0x60($sp)
/* B62A7C 800EB8DC 3C0C8017 */  lui   $t4, %hi(D_80171AFC) # $t4, 0x8017
/* B62A80 800EB8E0 8FAB0060 */  lw    $t3, 0x60($sp)
/* B62A84 800EB8E4 17200005 */  bnez  $t9, .L800EB8FC
/* B62A88 800EB8E8 00000000 */   nop   
/* B62A8C 800EB8EC 3C0D8017 */  lui   $t5, %hi(D_80171AFC) # $t5, 0x8017
/* B62A90 800EB8F0 8DA91AFC */  lw    $t1, %lo(D_80171AFC)($t5)
/* B62A94 800EB8F4 1000FDFF */  b     .L800EB0F4
/* B62A98 800EB8F8 A6890022 */   sh    $t1, 0x22($s4)
.L800EB8FC:
/* B62A9C 800EB8FC 8D8C1AFC */  lw    $t4, %lo(D_80171AFC)($t4)
/* B62AA0 800EB900 018B001B */  divu  $zero, $t4, $t3
/* B62AA4 800EB904 00007810 */  mfhi  $t7
/* B62AA8 800EB908 A68F0022 */  sh    $t7, 0x22($s4)
/* B62AAC 800EB90C 15600002 */  bnez  $t3, .L800EB918
/* B62AB0 800EB910 00000000 */   nop   
/* B62AB4 800EB914 0007000D */  break 7
.L800EB918:
/* B62AB8 800EB918 1000FDF6 */  b     .L800EB0F4
/* B62ABC 800EB91C 00000000 */   nop   
glabel L800EB920
/* B62AC0 800EB920 8FB80060 */  lw    $t8, 0x60($sp)
/* B62AC4 800EB924 3C0E8017 */  lui   $t6, %hi(D_80171AFC) # $t6, 0x8017
/* B62AC8 800EB928 8FB90060 */  lw    $t9, 0x60($sp)
/* B62ACC 800EB92C 17000005 */  bnez  $t8, .L800EB944
/* B62AD0 800EB930 00000000 */   nop   
/* B62AD4 800EB934 3C088017 */  lui   $t0, %hi(D_80171AFC) # $t0, 0x8017
/* B62AD8 800EB938 8D0A1AFC */  lw    $t2, %lo(D_80171AFC)($t0)
/* B62ADC 800EB93C 1000FDED */  b     .L800EB0F4
/* B62AE0 800EB940 A2CA0019 */   sb    $t2, 0x19($s6)
.L800EB944:
/* B62AE4 800EB944 8DCE1AFC */  lw    $t6, %lo(D_80171AFC)($t6)
/* B62AE8 800EB948 01D9001B */  divu  $zero, $t6, $t9
/* B62AEC 800EB94C 00006810 */  mfhi  $t5
/* B62AF0 800EB950 A2CD0019 */  sb    $t5, 0x19($s6)
/* B62AF4 800EB954 17200002 */  bnez  $t9, .L800EB960
/* B62AF8 800EB958 00000000 */   nop   
/* B62AFC 800EB95C 0007000D */  break 7
.L800EB960:
/* B62B00 800EB960 1000FDE4 */  b     .L800EB0F4
/* B62B04 800EB964 00000000 */   nop   
glabel L800EB968
/* B62B08 800EB968 0C0399F0 */  jal   func_800E67C0
/* B62B0C 800EB96C 00000000 */   nop   
/* B62B10 800EB970 8FA90060 */  lw    $t1, 0x60($sp)
/* B62B14 800EB974 8FAB0060 */  lw    $t3, 0x60($sp)
/* B62B18 800EB978 15200003 */  bnez  $t1, .L800EB988
/* B62B1C 800EB97C 00000000 */   nop   
/* B62B20 800EB980 10000007 */  b     .L800EB9A0
/* B62B24 800EB984 A6820022 */   sh    $v0, 0x22($s4)
.L800EB988:
/* B62B28 800EB988 004B001B */  divu  $zero, $v0, $t3
/* B62B2C 800EB98C 00007810 */  mfhi  $t7
/* B62B30 800EB990 A68F0022 */  sh    $t7, 0x22($s4)
/* B62B34 800EB994 15600002 */  bnez  $t3, .L800EB9A0
/* B62B38 800EB998 00000000 */   nop   
/* B62B3C 800EB99C 0007000D */  break 7
.L800EB9A0:
/* B62B40 800EB9A0 96980022 */  lhu   $t8, 0x22($s4)
/* B62B44 800EB9A4 8FA80064 */  lw    $t0, 0x64($sp)
/* B62B48 800EB9A8 03085021 */  addu  $t2, $t8, $t0
/* B62B4C 800EB9AC 3142FFFF */  andi  $v0, $t2, 0xffff
/* B62B50 800EB9B0 A68A0022 */  sh    $t2, 0x22($s4)
/* B62B54 800EB9B4 04410003 */  bgez  $v0, .L800EB9C4
/* B62B58 800EB9B8 00021A03 */   sra   $v1, $v0, 8
/* B62B5C 800EB9BC 244100FF */  addiu $at, $v0, 0xff
/* B62B60 800EB9C0 00011A03 */  sra   $v1, $at, 8
.L800EB9C4:
/* B62B64 800EB9C4 24630080 */  addiu $v1, $v1, 0x80
/* B62B68 800EB9C8 04410004 */  bgez  $v0, .L800EB9DC
/* B62B6C 800EB9CC 304400FF */   andi  $a0, $v0, 0xff
/* B62B70 800EB9D0 10800002 */  beqz  $a0, .L800EB9DC
/* B62B74 800EB9D4 00000000 */   nop   
/* B62B78 800EB9D8 2484FF00 */  addiu $a0, $a0, -0x100
.L800EB9DC:
/* B62B7C 800EB9DC 00037200 */  sll   $t6, $v1, 8
/* B62B80 800EB9E0 01C4C825 */  or    $t9, $t6, $a0
/* B62B84 800EB9E4 1000FDC3 */  b     .L800EB0F4
/* B62B88 800EB9E8 A6990022 */   sh    $t9, 0x22($s4)
glabel L800EB9EC
/* B62B8C 800EB9EC 8FAD0060 */  lw    $t5, 0x60($sp)
/* B62B90 800EB9F0 1000FDC0 */  b     .L800EB0F4
/* B62B94 800EB9F4 A28D000D */   sb    $t5, 0xd($s4)
glabel L800EB9F8
/* B62B98 800EB9F8 8FA90060 */  lw    $t1, 0x60($sp)
/* B62B9C 800EB9FC 1000FDBD */  b     .L800EB0F4
/* B62BA0 800EBA00 A289000E */   sb    $t1, 0xe($s4)
glabel L800EBA04
/* B62BA4 800EBA04 8FAC0060 */  lw    $t4, 0x60($sp)
/* B62BA8 800EBA08 A28C000F */  sb    $t4, 0xf($s4)
/* B62BAC 800EBA0C 8FAB0064 */  lw    $t3, 0x64($sp)
/* B62BB0 800EBA10 1000FDB8 */  b     .L800EB0F4
/* B62BB4 800EBA14 A68B0020 */   sh    $t3, 0x20($s4)
glabel L800EBA18
/* B62BB8 800EBA18 968F0022 */  lhu   $t7, 0x22($s4)
/* B62BBC 800EBA1C 8FB80060 */  lw    $t8, 0x60($sp)
/* B62BC0 800EBA20 01F84021 */  addu  $t0, $t7, $t8
/* B62BC4 800EBA24 1000FDB3 */  b     .L800EB0F4
/* B62BC8 800EBA28 A6880022 */   sh    $t0, 0x22($s4)
.L800EBA2C:
/* B62BCC 800EBA2C 28810070 */  slti  $at, $a0, 0x70
/* B62BD0 800EBA30 1420005D */  bnez  $at, .L800EBBA8
/* B62BD4 800EBA34 3085000F */   andi  $a1, $a0, 0xf
/* B62BD8 800EBA38 30850007 */  andi  $a1, $a0, 7
/* B62BDC 800EBA3C 308300F8 */  andi  $v1, $a0, 0xf8
/* B62BE0 800EBA40 24010070 */  li    $at, 112
/* B62BE4 800EBA44 10610006 */  beq   $v1, $at, .L800EBA60
/* B62BE8 800EBA48 30B500FF */   andi  $s5, $a1, 0xff
/* B62BEC 800EBA4C 30AA00FF */  andi  $t2, $a1, 0xff
/* B62BF0 800EBA50 29410004 */  slti  $at, $t2, 4
/* B62BF4 800EBA54 54200003 */  bnezl $at, .L800EBA64
/* B62BF8 800EBA58 246EFF90 */   addiu $t6, $v1, -0x70
/* B62BFC 800EBA5C 0000A825 */  move  $s5, $zero
.L800EBA60:
/* B62C00 800EBA60 246EFF90 */  addiu $t6, $v1, -0x70
.L800EBA64:
/* B62C04 800EBA64 2DC10029 */  sltiu $at, $t6, 0x29
/* B62C08 800EBA68 1020FDA2 */  beqz  $at, .L800EB0F4
/* B62C0C 800EBA6C 000E7080 */   sll   $t6, $t6, 2
/* B62C10 800EBA70 3C018015 */  lui   $at, %hi(jtbl_801497BC)
/* B62C14 800EBA74 002E0821 */  addu  $at, $at, $t6
/* B62C18 800EBA78 8C2E97BC */  lw    $t6, %lo(jtbl_801497BC)($at)
/* B62C1C 800EBA7C 01C00008 */  jr    $t6
/* B62C20 800EBA80 00000000 */   nop   
glabel L800EBA84
/* B62C24 800EBA84 0015C880 */  sll   $t9, $s5, 2
/* B62C28 800EBA88 02996821 */  addu  $t5, $s4, $t9
/* B62C2C 800EBA8C 8DA20050 */  lw    $v0, 0x50($t5)
/* B62C30 800EBA90 10400006 */  beqz  $v0, .L800EBAAC
/* B62C34 800EBA94 00000000 */   nop   
/* B62C38 800EBA98 8C490000 */  lw    $t1, ($v0)
/* B62C3C 800EBA9C 00096040 */  sll   $t4, $t1, 1
/* B62C40 800EBAA0 000C5FC2 */  srl   $t3, $t4, 0x1f
/* B62C44 800EBAA4 1000FD93 */  b     .L800EB0F4
/* B62C48 800EBAA8 A2CB0019 */   sb    $t3, 0x19($s6)
.L800EBAAC:
/* B62C4C 800EBAAC 1000FD91 */  b     .L800EB0F4
/* B62C50 800EBAB0 A2DE0019 */   sb    $fp, 0x19($s6)
glabel L800EBAB4
/* B62C54 800EBAB4 0C03A757 */  jal   func_800E9D5C
/* B62C58 800EBAB8 02C02025 */   move  $a0, $s6
/* B62C5C 800EBABC 3051FFFF */  andi  $s1, $v0, 0xffff
/* B62C60 800EBAC0 02802025 */  move  $a0, $s4
/* B62C64 800EBAC4 0C03A5B6 */  jal   func_800E96D8
/* B62C68 800EBAC8 02A02825 */   move  $a1, $s5
/* B62C6C 800EBACC 1440FD89 */  bnez  $v0, .L800EB0F4
/* B62C70 800EBAD0 00154080 */   sll   $t0, $s5, 2
/* B62C74 800EBAD4 8EEF0018 */  lw    $t7, 0x18($s7)
/* B62C78 800EBAD8 02885021 */  addu  $t2, $s4, $t0
/* B62C7C 800EBADC 8D4E0050 */  lw    $t6, 0x50($t2)
/* B62C80 800EBAE0 01F1C021 */  addu  $t8, $t7, $s1
/* B62C84 800EBAE4 1000FD83 */  b     .L800EB0F4
/* B62C88 800EBAE8 ADD80054 */   sw    $t8, 0x54($t6)
glabel L800EBAEC
/* B62C8C 800EBAEC 02802025 */  move  $a0, $s4
/* B62C90 800EBAF0 0C03A61E */  jal   func_800E9878
/* B62C94 800EBAF4 02A02825 */   move  $a1, $s5
/* B62C98 800EBAF8 1000FD7E */  b     .L800EB0F4
/* B62C9C 800EBAFC 00000000 */   nop   
glabel L800EBB00
/* B62CA0 800EBB00 82D90019 */  lb    $t9, 0x19($s6)
/* B62CA4 800EBB04 02802025 */  move  $a0, $s4
/* B62CA8 800EBB08 13D9FD7A */  beq   $fp, $t9, .L800EB0F4
/* B62CAC 800EBB0C 00000000 */   nop   
/* B62CB0 800EBB10 0C03A5B6 */  jal   func_800E96D8
/* B62CB4 800EBB14 02A02825 */   move  $a1, $s5
/* B62CB8 800EBB18 105EFD76 */  beq   $v0, $fp, .L800EB0F4
/* B62CBC 800EBB1C 00157080 */   sll   $t6, $s5, 2
/* B62CC0 800EBB20 82C90019 */  lb    $t1, 0x19($s6)
/* B62CC4 800EBB24 8E8D003C */  lw    $t5, 0x3c($s4)
/* B62CC8 800EBB28 8EEA0018 */  lw    $t2, 0x18($s7)
/* B62CCC 800EBB2C 00096040 */  sll   $t4, $t1, 1
/* B62CD0 800EBB30 01AC8021 */  addu  $s0, $t5, $t4
/* B62CD4 800EBB34 920F0000 */  lbu   $t7, ($s0)
/* B62CD8 800EBB38 920B0001 */  lbu   $t3, 1($s0)
/* B62CDC 800EBB3C 028EC821 */  addu  $t9, $s4, $t6
/* B62CE0 800EBB40 000F4200 */  sll   $t0, $t7, 8
/* B62CE4 800EBB44 01688821 */  addu  $s1, $t3, $t0
/* B62CE8 800EBB48 8F290050 */  lw    $t1, 0x50($t9)
/* B62CEC 800EBB4C 3231FFFF */  andi  $s1, $s1, 0xffff
/* B62CF0 800EBB50 0151C021 */  addu  $t8, $t2, $s1
/* B62CF4 800EBB54 1000FD67 */  b     .L800EB0F4
/* B62CF8 800EBB58 AD380054 */   sw    $t8, 0x54($t1)
glabel L800EBB5C
/* B62CFC 800EBB5C 82CD0019 */  lb    $t5, 0x19($s6)
/* B62D00 800EBB60 02956021 */  addu  $t4, $s4, $s5
/* B62D04 800EBB64 1000FD63 */  b     .L800EB0F4
/* B62D08 800EBB68 A18D00C4 */   sb    $t5, 0xc4($t4)
glabel L800EBB6C
/* B62D0C 800EBB6C 0C03A757 */  jal   func_800E9D5C
/* B62D10 800EBB70 02C02025 */   move  $a0, $s6
/* B62D14 800EBB74 00028400 */  sll   $s0, $v0, 0x10
/* B62D18 800EBB78 00108403 */  sra   $s0, $s0, 0x10
/* B62D1C 800EBB7C 02802025 */  move  $a0, $s4
/* B62D20 800EBB80 0C03A5B6 */  jal   func_800E96D8
/* B62D24 800EBB84 02A02825 */   move  $a1, $s5
/* B62D28 800EBB88 1440FD5A */  bnez  $v0, .L800EB0F4
/* B62D2C 800EBB8C 00154080 */   sll   $t0, $s5, 2
/* B62D30 800EBB90 8ECF0000 */  lw    $t7, ($s6)
/* B62D34 800EBB94 02885021 */  addu  $t2, $s4, $t0
/* B62D38 800EBB98 8D4E0050 */  lw    $t6, 0x50($t2)
/* B62D3C 800EBB9C 01F05821 */  addu  $t3, $t7, $s0
/* B62D40 800EBBA0 1000FD54 */  b     .L800EB0F4
/* B62D44 800EBBA4 ADCB0054 */   sw    $t3, 0x54($t6)
.L800EBBA8:
/* B62D48 800EBBA8 309900F0 */  andi  $t9, $a0, 0xf0
/* B62D4C 800EBBAC 2F210061 */  sltiu $at, $t9, 0x61
/* B62D50 800EBBB0 1020FD50 */  beqz  $at, .L800EB0F4
/* B62D54 800EBBB4 30B500FF */   andi  $s5, $a1, 0xff
/* B62D58 800EBBB8 0019C880 */  sll   $t9, $t9, 2
/* B62D5C 800EBBBC 3C018015 */  lui   $at, %hi(jtbl_80149860)
/* B62D60 800EBBC0 00390821 */  addu  $at, $at, $t9
/* B62D64 800EBBC4 8C399860 */  lw    $t9, %lo(jtbl_80149860)($at)
/* B62D68 800EBBC8 03200008 */  jr    $t9
/* B62D6C 800EBBCC 00000000 */   nop   
glabel L800EBBD0
/* B62D70 800EBBD0 30B800FF */  andi  $t8, $a1, 0xff
/* B62D74 800EBBD4 10000049 */  b     .L800EBCFC
/* B62D78 800EBBD8 A698001E */   sh    $t8, 0x1e($s4)
glabel L800EBBDC
/* B62D7C 800EBBDC 30A900FF */  andi  $t1, $a1, 0xff
/* B62D80 800EBBE0 29210008 */  slti  $at, $t1, 8
/* B62D84 800EBBE4 1020000C */  beqz  $at, .L800EBC18
/* B62D88 800EBBE8 3255000F */   andi  $s5, $s2, 0xf
/* B62D8C 800EBBEC 324C000F */  andi  $t4, $s2, 0xf
/* B62D90 800EBBF0 028C1021 */  addu  $v0, $s4, $t4
/* B62D94 800EBBF4 A05E00C4 */  sb    $fp, 0xc4($v0)
/* B62D98 800EBBF8 82C50019 */  lb    $a1, 0x19($s6)
/* B62D9C 800EBBFC 92840007 */  lbu   $a0, 7($s4)
/* B62DA0 800EBC00 0C038D05 */  jal   func_800E3414
/* B62DA4 800EBC04 244600C4 */   addiu $a2, $v0, 0xc4
/* B62DA8 800EBC08 145EFD3A */  bne   $v0, $fp, .L800EB0F4
/* B62DAC 800EBC0C 00000000 */   nop   
/* B62DB0 800EBC10 1000FD38 */  b     .L800EB0F4
/* B62DB4 800EBC14 00000000 */   nop   
.L800EBC18:
/* B62DB8 800EBC18 26B5FFF8 */  addiu $s5, $s5, -8
/* B62DBC 800EBC1C 32B500FF */  andi  $s5, $s5, 0xff
/* B62DC0 800EBC20 02951021 */  addu  $v0, $s4, $s5
/* B62DC4 800EBC24 A05E00C4 */  sb    $fp, 0xc4($v0)
/* B62DC8 800EBC28 96850022 */  lhu   $a1, 0x22($s4)
/* B62DCC 800EBC2C 92840007 */  lbu   $a0, 7($s4)
/* B62DD0 800EBC30 244600C4 */  addiu $a2, $v0, 0xc4
/* B62DD4 800EBC34 0C038D05 */  jal   func_800E3414
/* B62DD8 800EBC38 24A50100 */   addiu $a1, $a1, 0x100
/* B62DDC 800EBC3C 145EFD2D */  bne   $v0, $fp, .L800EB0F4
/* B62DE0 800EBC40 00000000 */   nop   
/* B62DE4 800EBC44 1000FD2B */  b     .L800EB0F4
/* B62DE8 800EBC48 00000000 */   nop   
glabel L800EBC4C
/* B62DEC 800EBC4C 30A300FF */  andi  $v1, $a1, 0xff
/* B62DF0 800EBC50 02832021 */  addu  $a0, $s4, $v1
/* B62DF4 800EBC54 808F00C4 */  lb    $t7, 0xc4($a0)
/* B62DF8 800EBC58 28610002 */  slti  $at, $v1, 2
/* B62DFC 800EBC5C 1020FD25 */  beqz  $at, .L800EB0F4
/* B62E00 800EBC60 A2CF0019 */   sb    $t7, 0x19($s6)
/* B62E04 800EBC64 1000FD23 */  b     .L800EB0F4
/* B62E08 800EBC68 A09E00C4 */   sb    $fp, 0xc4($a0)
glabel L800EBC6C
/* B62E0C 800EBC6C 30AA00FF */  andi  $t2, $a1, 0xff
/* B62E10 800EBC70 028A5821 */  addu  $t3, $s4, $t2
/* B62E14 800EBC74 816E00C4 */  lb    $t6, 0xc4($t3)
/* B62E18 800EBC78 82C80019 */  lb    $t0, 0x19($s6)
/* B62E1C 800EBC7C 010EC823 */  subu  $t9, $t0, $t6
/* B62E20 800EBC80 1000FD1C */  b     .L800EB0F4
/* B62E24 800EBC84 A2D90019 */   sb    $t9, 0x19($s6)
glabel L800EBC88
/* B62E28 800EBC88 0C03A757 */  jal   func_800E9D5C
/* B62E2C 800EBC8C 02C02025 */   move  $a0, $s6
/* B62E30 800EBC90 8EF80018 */  lw    $t8, 0x18($s7)
/* B62E34 800EBC94 02402825 */  move  $a1, $s2
/* B62E38 800EBC98 3049FFFF */  andi  $t1, $v0, 0xffff
/* B62E3C 800EBC9C 30A5000F */  andi  $a1, $a1, 0xf
/* B62E40 800EBCA0 02E02025 */  move  $a0, $s7
/* B62E44 800EBCA4 0C03A6AB */  jal   func_800E9AAC
/* B62E48 800EBCA8 03093021 */   addu  $a2, $t8, $t1
/* B62E4C 800EBCAC 1000FD11 */  b     .L800EB0F4
/* B62E50 800EBCB0 00000000 */   nop   
glabel L800EBCB4
/* B62E54 800EBCB4 0C03A752 */  jal   func_800E9D48
/* B62E58 800EBCB8 02C02025 */   move  $a0, $s6
/* B62E5C 800EBCBC 00156080 */  sll   $t4, $s5, 2
/* B62E60 800EBCC0 02EC7821 */  addu  $t7, $s7, $t4
/* B62E64 800EBCC4 8DEA0038 */  lw    $t2, 0x38($t7)
/* B62E68 800EBCC8 82CD0019 */  lb    $t5, 0x19($s6)
/* B62E6C 800EBCCC 01425821 */  addu  $t3, $t2, $v0
/* B62E70 800EBCD0 1000FD08 */  b     .L800EB0F4
/* B62E74 800EBCD4 A16D00C4 */   sb    $t5, 0xc4($t3)
glabel L800EBCD8
/* B62E78 800EBCD8 0C03A752 */  jal   func_800E9D48
/* B62E7C 800EBCDC 02C02025 */   move  $a0, $s6
/* B62E80 800EBCE0 00154080 */  sll   $t0, $s5, 2
/* B62E84 800EBCE4 02E87021 */  addu  $t6, $s7, $t0
/* B62E88 800EBCE8 8DD90038 */  lw    $t9, 0x38($t6)
/* B62E8C 800EBCEC 0322C021 */  addu  $t8, $t9, $v0
/* B62E90 800EBCF0 830900C4 */  lb    $t1, 0xc4($t8)
/* B62E94 800EBCF4 1000FCFF */  b     .L800EB0F4
/* B62E98 800EBCF8 A2C90019 */   sb    $t1, 0x19($s6)
.L800EBCFC:
/* B62E9C 800EBCFC 00008025 */  move  $s0, $zero
.L800EBD00:
/* B62EA0 800EBD00 02808825 */  move  $s1, $s4
/* B62EA4 800EBD04 24120010 */  li    $s2, 16
.L800EBD08:
/* B62EA8 800EBD08 8E240050 */  lw    $a0, 0x50($s1)
/* B62EAC 800EBD0C 50800004 */  beql  $a0, $zero, .L800EBD20
/* B62EB0 800EBD10 26100004 */   addiu $s0, $s0, 4
/* B62EB4 800EBD14 0C03A775 */  jal   func_800E9DD4
/* B62EB8 800EBD18 00000000 */   nop   
/* B62EBC 800EBD1C 26100004 */  addiu $s0, $s0, 4
.L800EBD20:
/* B62EC0 800EBD20 1612FFF9 */  bne   $s0, $s2, .L800EBD08
/* B62EC4 800EBD24 26310004 */   addiu $s1, $s1, 4
/* B62EC8 800EBD28 8FBF003C */  lw    $ra, 0x3c($sp)
.L800EBD2C:
/* B62ECC 800EBD2C 8FB00018 */  lw    $s0, 0x18($sp)
/* B62ED0 800EBD30 8FB1001C */  lw    $s1, 0x1c($sp)
/* B62ED4 800EBD34 8FB20020 */  lw    $s2, 0x20($sp)
/* B62ED8 800EBD38 8FB30024 */  lw    $s3, 0x24($sp)
/* B62EDC 800EBD3C 8FB40028 */  lw    $s4, 0x28($sp)
/* B62EE0 800EBD40 8FB5002C */  lw    $s5, 0x2c($sp)
/* B62EE4 800EBD44 8FB60030 */  lw    $s6, 0x30($sp)
/* B62EE8 800EBD48 8FB70034 */  lw    $s7, 0x34($sp)
/* B62EEC 800EBD4C 8FBE0038 */  lw    $fp, 0x38($sp)
/* B62EF0 800EBD50 03E00008 */  jr    $ra
/* B62EF4 800EBD54 27BD0088 */   addiu $sp, $sp, 0x88

glabel func_800EBD58
/* B62EF8 800EBD58 27BDFF98 */  addiu $sp, $sp, -0x68
/* B62EFC 800EBD5C AFBF0024 */  sw    $ra, 0x24($sp)
/* B62F00 800EBD60 AFB20020 */  sw    $s2, 0x20($sp)
/* B62F04 800EBD64 AFB1001C */  sw    $s1, 0x1c($sp)
/* B62F08 800EBD68 AFB00018 */  sw    $s0, 0x18($sp)
/* B62F0C 800EBD6C 8C8E0000 */  lw    $t6, ($a0)
/* B62F10 800EBD70 00809025 */  move  $s2, $a0
/* B62F14 800EBD74 000E7FC2 */  srl   $t7, $t6, 0x1f
/* B62F18 800EBD78 51E001F5 */  beql  $t7, $zero, .L800EC550
/* B62F1C 800EBD7C 8FBF0024 */   lw    $ra, 0x24($sp)
/* B62F20 800EBD80 0C03864A */  jal   func_800E1928
/* B62F24 800EBD84 90840004 */   lbu   $a0, 4($a0)
/* B62F28 800EBD88 10400005 */  beqz  $v0, .L800EBDA0
/* B62F2C 800EBD8C 00000000 */   nop   
/* B62F30 800EBD90 0C03862C */  jal   func_800E18B0
/* B62F34 800EBD94 92440005 */   lbu   $a0, 5($s2)
/* B62F38 800EBD98 14400005 */  bnez  $v0, .L800EBDB0
/* B62F3C 800EBD9C 24050002 */   li    $a1, 2
.L800EBDA0:
/* B62F40 800EBDA0 0C03A6DB */  jal   func_800E9B6C
/* B62F44 800EBDA4 02402025 */   move  $a0, $s2
/* B62F48 800EBDA8 100001E9 */  b     .L800EC550
/* B62F4C 800EBDAC 8FBF0024 */   lw    $ra, 0x24($sp)
.L800EBDB0:
/* B62F50 800EBDB0 0C038692 */  jal   func_800E1A48
/* B62F54 800EBDB4 92440004 */   lbu   $a0, 4($s2)
/* B62F58 800EBDB8 92440005 */  lbu   $a0, 5($s2)
/* B62F5C 800EBDBC 0C038686 */  jal   func_800E1A18
/* B62F60 800EBDC0 24050002 */   li    $a1, 2
/* B62F64 800EBDC4 8E580000 */  lw    $t8, ($s2)
/* B62F68 800EBDC8 3C048017 */  lui   $a0, %hi(D_80171A18)
/* B62F6C 800EBDCC 00184080 */  sll   $t0, $t8, 2
/* B62F70 800EBDD0 05030006 */  bgezl $t0, .L800EBDEC
/* B62F74 800EBDD4 964D000A */   lhu   $t5, 0xa($s2)
/* B62F78 800EBDD8 92490003 */  lbu   $t1, 3($s2)
/* B62F7C 800EBDDC 312A0080 */  andi  $t2, $t1, 0x80
/* B62F80 800EBDE0 554001DB */  bnezl $t2, .L800EC550
/* B62F84 800EBDE4 8FBF0024 */   lw    $ra, 0x24($sp)
/* B62F88 800EBDE8 964D000A */  lhu   $t5, 0xa($s2)
.L800EBDEC:
/* B62F8C 800EBDEC 964E0008 */  lhu   $t6, 8($s2)
/* B62F90 800EBDF0 8E4B00E0 */  lw    $t3, 0xe0($s2)
/* B62F94 800EBDF4 8659000C */  lh    $t9, 0xc($s2)
/* B62F98 800EBDF8 01AEC021 */  addu  $t8, $t5, $t6
/* B62F9C 800EBDFC A658000A */  sh    $t8, 0xa($s2)
/* B62FA0 800EBE00 256C0001 */  addiu $t4, $t3, 1
/* B62FA4 800EBE04 03194021 */  addu  $t0, $t8, $t9
/* B62FA8 800EBE08 AE4C00E0 */  sw    $t4, 0xe0($s2)
/* B62FAC 800EBE0C A648000A */  sh    $t0, 0xa($s2)
/* B62FB0 800EBE10 84841A18 */  lh    $a0, %lo(D_80171A18)($a0)
/* B62FB4 800EBE14 3102FFFF */  andi  $v0, $t0, 0xffff
/* B62FB8 800EBE18 0044082A */  slt   $at, $v0, $a0
/* B62FBC 800EBE1C 542001CC */  bnezl $at, .L800EC550
/* B62FC0 800EBE20 8FBF0024 */   lw    $ra, 0x24($sp)
/* B62FC4 800EBE24 8E4B0000 */  lw    $t3, ($s2)
/* B62FC8 800EBE28 00445023 */  subu  $t2, $v0, $a0
/* B62FCC 800EBE2C 24010001 */  li    $at, 1
/* B62FD0 800EBE30 000B6180 */  sll   $t4, $t3, 6
/* B62FD4 800EBE34 000C6FC2 */  srl   $t5, $t4, 0x1f
/* B62FD8 800EBE38 11A101C4 */  beq   $t5, $at, .L800EC54C
/* B62FDC 800EBE3C A64A000A */   sh    $t2, 0xa($s2)
/* B62FE0 800EBE40 96420010 */  lhu   $v0, 0x10($s2)
/* B62FE4 800EBE44 28410002 */  slti  $at, $v0, 2
/* B62FE8 800EBE48 14200003 */  bnez  $at, .L800EBE58
/* B62FEC 800EBE4C 244EFFFF */   addiu $t6, $v0, -1
/* B62FF0 800EBE50 100001B1 */  b     .L800EC518
/* B62FF4 800EBE54 A64E0010 */   sh    $t6, 0x10($s2)
.L800EBE58:
/* B62FF8 800EBE58 92580000 */  lbu   $t8, ($s2)
/* B62FFC 800EBE5C 26510078 */  addiu $s1, $s2, 0x78
/* B63000 800EBE60 37190004 */  ori   $t9, $t8, 4
/* B63004 800EBE64 A2590000 */  sb    $t9, ($s2)
.L800EBE68:
glabel L800EBE68
/* B63008 800EBE68 0C03A752 */  jal   func_800E9D48
/* B6300C 800EBE6C 02202025 */   move  $a0, $s1
/* B63010 800EBE70 284100F2 */  slti  $at, $v0, 0xf2
/* B63014 800EBE74 14200014 */  bnez  $at, .L800EBEC8
/* B63018 800EBE78 305000FF */   andi  $s0, $v0, 0xff
/* B6301C 800EBE7C 02202025 */  move  $a0, $s1
/* B63020 800EBE80 0C03A4D0 */  jal   func_800E9340
/* B63024 800EBE84 320500FF */   andi  $a1, $s0, 0xff
/* B63028 800EBE88 02402025 */  move  $a0, $s2
/* B6302C 800EBE8C 02202825 */  move  $a1, $s1
/* B63030 800EBE90 02003025 */  move  $a2, $s0
/* B63034 800EBE94 0C03A4EA */  jal   func_800E93A8
/* B63038 800EBE98 00403825 */   move  $a3, $v0
/* B6303C 800EBE9C 1040FFF2 */  beqz  $v0, .L800EBE68
/* B63040 800EBEA0 00000000 */   nop   
/* B63044 800EBEA4 2401FFFF */  li    $at, -1
/* B63048 800EBEA8 14410005 */  bne   $v0, $at, .L800EBEC0
/* B6304C 800EBEAC 00000000 */   nop   
/* B63050 800EBEB0 0C03A6DB */  jal   func_800E9B6C
/* B63054 800EBEB4 02402025 */   move  $a0, $s2
/* B63058 800EBEB8 10000198 */  b     .L800EC51C
/* B6305C 800EBEBC 02408825 */   move  $s1, $s2
.L800EBEC0:
/* B63060 800EBEC0 10000195 */  b     .L800EC518
/* B63064 800EBEC4 A6420010 */   sh    $v0, 0x10($s2)
.L800EBEC8:
/* B63068 800EBEC8 304300FF */  andi  $v1, $v0, 0xff
/* B6306C 800EBECC 286100C0 */  slti  $at, $v1, 0xc0
/* B63070 800EBED0 1420012E */  bnez  $at, .L800EC38C
/* B63074 800EBED4 306200F0 */   andi  $v0, $v1, 0xf0
/* B63078 800EBED8 2468FF3C */  addiu $t0, $v1, -0xc4
/* B6307C 800EBEDC 2D01002E */  sltiu $at, $t0, 0x2e
/* B63080 800EBEE0 1020FFE1 */  beqz  $at, .L800EBE68
/* B63084 800EBEE4 00084080 */   sll   $t0, $t0, 2
/* B63088 800EBEE8 3C018015 */  lui   $at, %hi(jtbl_801499E4)
/* B6308C 800EBEEC 00280821 */  addu  $at, $at, $t0
/* B63090 800EBEF0 8C2899E4 */  lw    $t0, %lo(jtbl_801499E4)($at)
/* B63094 800EBEF4 01000008 */  jr    $t0
/* B63098 800EBEF8 00000000 */   nop   
glabel L800EBEFC
/* B6309C 800EBEFC 2650009C */  addiu $s0, $s2, 0x9c
/* B630A0 800EBF00 0C039F80 */  jal   Audio_NotePoolClear
/* B630A4 800EBF04 02002025 */   move  $a0, $s0
/* B630A8 800EBF08 0C03A752 */  jal   func_800E9D48
/* B630AC 800EBF0C 02202025 */   move  $a0, $s1
/* B630B0 800EBF10 02002025 */  move  $a0, $s0
/* B630B4 800EBF14 0C039FD8 */  jal   Audio_NotePoolFill
/* B630B8 800EBF18 00402825 */   move  $a1, $v0
/* B630BC 800EBF1C 1000FFD2 */  b     .L800EBE68
/* B630C0 800EBF20 00000000 */   nop   
/* B630C4 800EBF24 1000FFD0 */  b     .L800EBE68
/* B630C8 800EBF28 00000000 */   nop   
glabel L800EBF2C
/* B630CC 800EBF2C 0C039F80 */  jal   Audio_NotePoolClear
/* B630D0 800EBF30 2644009C */   addiu $a0, $s2, 0x9c
/* B630D4 800EBF34 1000FFCC */  b     .L800EBE68
/* B630D8 800EBF38 00000000 */   nop   
glabel L800EBF3C
/* B630DC 800EBF3C A640000E */  sh    $zero, 0xe($s2)
glabel L800EBF40
/* B630E0 800EBF40 0C03A752 */  jal   func_800E9D48
/* B630E4 800EBF44 02202025 */   move  $a0, $s1
/* B630E8 800EBF48 8649000E */  lh    $t1, 0xe($s2)
/* B630EC 800EBF4C 00025600 */  sll   $t2, $v0, 0x18
/* B630F0 800EBF50 000A5E03 */  sra   $t3, $t2, 0x18
/* B630F4 800EBF54 012B6021 */  addu  $t4, $t1, $t3
/* B630F8 800EBF58 1000FFC3 */  b     .L800EBE68
/* B630FC 800EBF5C A64C000E */   sh    $t4, 0xe($s2)
glabel L800EBF60
/* B63100 800EBF60 0C03A752 */  jal   func_800E9D48
/* B63104 800EBF64 02202025 */   move  $a0, $s1
/* B63108 800EBF68 00026880 */  sll   $t5, $v0, 2
/* B6310C 800EBF6C 01A26823 */  subu  $t5, $t5, $v0
/* B63110 800EBF70 000D6900 */  sll   $t5, $t5, 4
/* B63114 800EBF74 A64D0008 */  sh    $t5, 8($s2)
/* B63118 800EBF78 3C048017 */  lui   $a0, %hi(D_80171A18)
/* B6311C 800EBF7C 84841A18 */  lh    $a0, %lo(D_80171A18)($a0)
/* B63120 800EBF80 31A3FFFF */  andi  $v1, $t5, 0xffff
/* B63124 800EBF84 24180001 */  li    $t8, 1
/* B63128 800EBF88 0083082A */  slt   $at, $a0, $v1
/* B6312C 800EBF8C 50200004 */  beql  $at, $zero, .L800EBFA0
/* B63130 800EBF90 00037400 */   sll   $t6, $v1, 0x10
/* B63134 800EBF94 A6440008 */  sh    $a0, 8($s2)
/* B63138 800EBF98 3083FFFF */  andi  $v1, $a0, 0xffff
/* B6313C 800EBF9C 00037400 */  sll   $t6, $v1, 0x10
.L800EBFA0:
/* B63140 800EBFA0 000E7C03 */  sra   $t7, $t6, 0x10
/* B63144 800EBFA4 1DE0FFB0 */  bgtz  $t7, .L800EBE68
/* B63148 800EBFA8 00000000 */   nop   
/* B6314C 800EBFAC 1000FFAE */  b     .L800EBE68
/* B63150 800EBFB0 A6580008 */   sh    $t8, 8($s2)
glabel L800EBFB4
/* B63154 800EBFB4 0C03A752 */  jal   func_800E9D48
/* B63158 800EBFB8 02202025 */   move  $a0, $s1
/* B6315C 800EBFBC 0002CE00 */  sll   $t9, $v0, 0x18
/* B63160 800EBFC0 00194603 */  sra   $t0, $t9, 0x18
/* B63164 800EBFC4 00085080 */  sll   $t2, $t0, 2
/* B63168 800EBFC8 01485023 */  subu  $t2, $t2, $t0
/* B6316C 800EBFCC 000A5100 */  sll   $t2, $t2, 4
/* B63170 800EBFD0 1000FFA5 */  b     .L800EBE68
/* B63174 800EBFD4 A64A000C */   sh    $t2, 0xc($s2)
glabel L800EBFD8
/* B63178 800EBFD8 0C03A752 */  jal   func_800E9D48
/* B6317C 800EBFDC 02202025 */   move  $a0, $s1
/* B63180 800EBFE0 305000FF */  andi  $s0, $v0, 0xff
/* B63184 800EBFE4 0C03A757 */  jal   func_800E9D5C
/* B63188 800EBFE8 02202025 */   move  $a0, $s1
/* B6318C 800EBFEC 12000008 */  beqz  $s0, .L800EC010
/* B63190 800EBFF0 02002025 */   move  $a0, $s0
/* B63194 800EBFF4 24010001 */  li    $at, 1
/* B63198 800EBFF8 10810005 */  beq   $a0, $at, .L800EC010
/* B6319C 800EBFFC 24010002 */   li    $at, 2
/* B631A0 800EC000 1081000A */  beq   $a0, $at, .L800EC02C
/* B631A4 800EC004 304BFFFF */   andi  $t3, $v0, 0xffff
/* B631A8 800EC008 1000FF97 */  b     .L800EBE68
/* B631AC 800EC00C 00000000 */   nop   
.L800EC010:
/* B631B0 800EC010 92490001 */  lbu   $t1, 1($s2)
/* B631B4 800EC014 24010002 */  li    $at, 2
/* B631B8 800EC018 1121FF93 */  beq   $t1, $at, .L800EBE68
/* B631BC 800EC01C 00000000 */   nop   
/* B631C0 800EC020 A6420014 */  sh    $v0, 0x14($s2)
/* B631C4 800EC024 1000FF90 */  b     .L800EBE68
/* B631C8 800EC028 A2500001 */   sb    $s0, 1($s2)
.L800EC02C:
/* B631CC 800EC02C 448B5000 */  mtc1  $t3, $f10
/* B631D0 800EC030 44802000 */  mtc1  $zero, $f4
/* B631D4 800EC034 C646001C */  lwc1  $f6, 0x1c($s2)
/* B631D8 800EC038 46805420 */  cvt.s.w $f16, $f10
/* B631DC 800EC03C A6420012 */  sh    $v0, 0x12($s2)
/* B631E0 800EC040 A2500001 */  sb    $s0, 1($s2)
/* B631E4 800EC044 46062201 */  sub.s $f8, $f4, $f6
/* B631E8 800EC048 46104483 */  div.s $f18, $f8, $f16
/* B631EC 800EC04C 1000FF86 */  b     .L800EBE68
/* B631F0 800EC050 E6520020 */   swc1  $f18, 0x20($s2)
glabel L800EC054
/* B631F4 800EC054 0C03A752 */  jal   func_800E9D48
/* B631F8 800EC058 02202025 */   move  $a0, $s1
/* B631FC 800EC05C 92430001 */  lbu   $v1, 1($s2)
/* B63200 800EC060 24010001 */  li    $at, 1
/* B63204 800EC064 5060000B */  beql  $v1, $zero, .L800EC094
/* B63208 800EC068 96430014 */   lhu   $v1, 0x14($s2)
/* B6320C 800EC06C 10610005 */  beq   $v1, $at, .L800EC084
/* B63210 800EC070 24010002 */   li    $at, 2
/* B63214 800EC074 1061FF7C */  beq   $v1, $at, .L800EBE68
/* B63218 800EC078 00000000 */   nop   
/* B6321C 800EC07C 1000FF7A */  b     .L800EBE68
/* B63220 800EC080 00000000 */   nop   
.L800EC084:
/* B63224 800EC084 44802000 */  mtc1  $zero, $f4
/* B63228 800EC088 A2400001 */  sb    $zero, 1($s2)
/* B6322C 800EC08C E644001C */  swc1  $f4, 0x1c($s2)
/* B63230 800EC090 96430014 */  lhu   $v1, 0x14($s2)
.L800EC094:
/* B63234 800EC094 1060000E */  beqz  $v1, .L800EC0D0
/* B63238 800EC098 A6430012 */   sh    $v1, 0x12($s2)
/* B6323C 800EC09C 44823000 */  mtc1  $v0, $f6
/* B63240 800EC0A0 3C0142FE */  li    $at, 0x42FE0000 # 0.000000
/* B63244 800EC0A4 44814000 */  mtc1  $at, $f8
/* B63248 800EC0A8 468032A0 */  cvt.s.w $f10, $f6
/* B6324C 800EC0AC 306CFFFF */  andi  $t4, $v1, 0xffff
/* B63250 800EC0B0 448C3000 */  mtc1  $t4, $f6
/* B63254 800EC0B4 C652001C */  lwc1  $f18, 0x1c($s2)
/* B63258 800EC0B8 46085403 */  div.s $f16, $f10, $f8
/* B6325C 800EC0BC 468032A0 */  cvt.s.w $f10, $f6
/* B63260 800EC0C0 46128101 */  sub.s $f4, $f16, $f18
/* B63264 800EC0C4 460A2203 */  div.s $f8, $f4, $f10
/* B63268 800EC0C8 1000FF67 */  b     .L800EBE68
/* B6326C 800EC0CC E6480020 */   swc1  $f8, 0x20($s2)
.L800EC0D0:
/* B63270 800EC0D0 44828000 */  mtc1  $v0, $f16
/* B63274 800EC0D4 3C0142FE */  li    $at, 0x42FE0000 # 0.000000
/* B63278 800EC0D8 44813000 */  mtc1  $at, $f6
/* B6327C 800EC0DC 468084A0 */  cvt.s.w $f18, $f16
/* B63280 800EC0E0 46069103 */  div.s $f4, $f18, $f6
/* B63284 800EC0E4 1000FF60 */  b     .L800EBE68
/* B63288 800EC0E8 E644001C */   swc1  $f4, 0x1c($s2)
glabel L800EC0EC
/* B6328C 800EC0EC 0C03A752 */  jal   func_800E9D48
/* B63290 800EC0F0 02202025 */   move  $a0, $s1
/* B63294 800EC0F4 00026E00 */  sll   $t5, $v0, 0x18
/* B63298 800EC0F8 000D7603 */  sra   $t6, $t5, 0x18
/* B6329C 800EC0FC 448E5000 */  mtc1  $t6, $f10
/* B632A0 800EC100 3C0142FE */  li    $at, 0x42FE0000 # 0.000000
/* B632A4 800EC104 44818000 */  mtc1  $at, $f16
/* B632A8 800EC108 46805220 */  cvt.s.w $f8, $f10
/* B632AC 800EC10C 46104483 */  div.s $f18, $f8, $f16
/* B632B0 800EC110 1000FF55 */  b     .L800EBE68
/* B632B4 800EC114 E652002C */   swc1  $f18, 0x2c($s2)
glabel L800EC118
/* B632B8 800EC118 0C03A757 */  jal   func_800E9D5C
/* B632BC 800EC11C 02202025 */   move  $a0, $s1
/* B632C0 800EC120 02402025 */  move  $a0, $s2
/* B632C4 800EC124 0C03A64D */  jal   func_800E9934
/* B632C8 800EC128 3045FFFF */   andi  $a1, $v0, 0xffff
/* B632CC 800EC12C 1000FF4E */  b     .L800EBE68
/* B632D0 800EC130 00000000 */   nop   
glabel L800EC134
/* B632D4 800EC134 0C03A757 */  jal   func_800E9D5C
/* B632D8 800EC138 02202025 */   move  $a0, $s1
/* B632DC 800EC13C 1000FF4A */  b     .L800EBE68
/* B632E0 800EC140 00000000 */   nop   
glabel L800EC144
/* B632E4 800EC144 0C03A752 */  jal   func_800E9D48
/* B632E8 800EC148 02202025 */   move  $a0, $s1
/* B632EC 800EC14C 00027E00 */  sll   $t7, $v0, 0x18
/* B632F0 800EC150 000FC603 */  sra   $t8, $t7, 0x18
/* B632F4 800EC154 44983000 */  mtc1  $t8, $f6
/* B632F8 800EC158 3C0142FE */  li    $at, 0x42FE0000 # 0.000000
/* B632FC 800EC15C 44815000 */  mtc1  $at, $f10
/* B63300 800EC160 46803120 */  cvt.s.w $f4, $f6
/* B63304 800EC164 460A2203 */  div.s $f8, $f4, $f10
/* B63308 800EC168 1000FF3F */  b     .L800EBE68
/* B6330C 800EC16C E6480028 */   swc1  $f8, 0x28($s2)
glabel L800EC170
/* B63310 800EC170 92480000 */  lbu   $t0, ($s2)
/* B63314 800EC174 350A0020 */  ori   $t2, $t0, 0x20
/* B63318 800EC178 1000FF3B */  b     .L800EBE68
/* B6331C 800EC17C A24A0000 */   sb    $t2, ($s2)
glabel L800EC180
/* B63320 800EC180 0C03A752 */  jal   func_800E9D48
/* B63324 800EC184 02202025 */   move  $a0, $s1
/* B63328 800EC188 1000FF37 */  b     .L800EBE68
/* B6332C 800EC18C A2420003 */   sb    $v0, 3($s2)
glabel L800EC190
/* B63330 800EC190 0C03A757 */  jal   func_800E9D5C
/* B63334 800EC194 02202025 */   move  $a0, $s1
/* B63338 800EC198 8E490018 */  lw    $t1, 0x18($s2)
/* B6333C 800EC19C 304BFFFF */  andi  $t3, $v0, 0xffff
/* B63340 800EC1A0 240100D2 */  li    $at, 210
/* B63344 800EC1A4 16010003 */  bne   $s0, $at, .L800EC1B4
/* B63348 800EC1A8 012B1821 */   addu  $v1, $t1, $t3
/* B6334C 800EC1AC 1000FF2E */  b     .L800EBE68
/* B63350 800EC1B0 AE430094 */   sw    $v1, 0x94($s2)
.L800EC1B4:
/* B63354 800EC1B4 1000FF2C */  b     .L800EBE68
/* B63358 800EC1B8 AE430098 */   sw    $v1, 0x98($s2)
glabel L800EC1BC
/* B6335C 800EC1BC 0C03A752 */  jal   func_800E9D48
/* B63360 800EC1C0 02202025 */   move  $a0, $s1
/* B63364 800EC1C4 1000FF28 */  b     .L800EBE68
/* B63368 800EC1C8 A2420002 */   sb    $v0, 2($s2)
glabel L800EC1CC
/* B6336C 800EC1CC 0C03A752 */  jal   func_800E9D48
/* B63370 800EC1D0 02202025 */   move  $a0, $s1
/* B63374 800EC1D4 14400006 */  bnez  $v0, .L800EC1F0
/* B63378 800EC1D8 3C0F8017 */   lui   $t7, %hi(D_80171AFC) # $t7, 0x8017
/* B6337C 800EC1DC 3C0C8017 */  lui   $t4, %hi(D_80171AFC) # $t4, 0x8017
/* B63380 800EC1E0 8D8C1AFC */  lw    $t4, %lo(D_80171AFC)($t4)
/* B63384 800EC1E4 000C7082 */  srl   $t6, $t4, 2
/* B63388 800EC1E8 1000FF1F */  b     .L800EBE68
/* B6338C 800EC1EC A22E0019 */   sb    $t6, 0x19($s1)
.L800EC1F0:
/* B63390 800EC1F0 8DEF1AFC */  lw    $t7, %lo(D_80171AFC)($t7)
/* B63394 800EC1F4 305900FF */  andi  $t9, $v0, 0xff
/* B63398 800EC1F8 000FC082 */  srl   $t8, $t7, 2
/* B6339C 800EC1FC 0319001B */  divu  $zero, $t8, $t9
/* B633A0 800EC200 00004010 */  mfhi  $t0
/* B633A4 800EC204 A2280019 */  sb    $t0, 0x19($s1)
/* B633A8 800EC208 17200002 */  bnez  $t9, .L800EC214
/* B633AC 800EC20C 00000000 */   nop   
/* B633B0 800EC210 0007000D */  break 7
.L800EC214:
/* B633B4 800EC214 1000FF14 */  b     .L800EBE68
/* B633B8 800EC218 00000000 */   nop   
glabel L800EC21C
/* B633BC 800EC21C 0C03A757 */  jal   func_800E9D5C
/* B633C0 800EC220 02202025 */   move  $a0, $s1
/* B633C4 800EC224 82250019 */  lb    $a1, 0x19($s1)
/* B633C8 800EC228 2401FFFF */  li    $at, -1
/* B633CC 800EC22C 10A1FF0E */  beq   $a1, $at, .L800EBE68
/* B633D0 800EC230 00000000 */   nop   
/* B633D4 800EC234 92260018 */  lbu   $a2, 0x18($s1)
/* B633D8 800EC238 24010003 */  li    $at, 3
/* B633DC 800EC23C 304AFFFF */  andi  $t2, $v0, 0xffff
/* B633E0 800EC240 10C1FF09 */  beq   $a2, $at, .L800EBE68
/* B633E4 800EC244 00054840 */   sll   $t1, $a1, 1
/* B633E8 800EC248 8E2D0000 */  lw    $t5, ($s1)
/* B633EC 800EC24C 00067080 */  sll   $t6, $a2, 2
/* B633F0 800EC250 8E4C0018 */  lw    $t4, 0x18($s2)
/* B633F4 800EC254 022E7821 */  addu  $t7, $s1, $t6
/* B633F8 800EC258 ADED0004 */  sw    $t5, 4($t7)
/* B633FC 800EC25C 92380018 */  lbu   $t8, 0x18($s1)
/* B63400 800EC260 01495821 */  addu  $t3, $t2, $t1
/* B63404 800EC264 018B1021 */  addu  $v0, $t4, $t3
/* B63408 800EC268 27190001 */  addiu $t9, $t8, 1
/* B6340C 800EC26C A2390018 */  sb    $t9, 0x18($s1)
/* B63410 800EC270 904A0000 */  lbu   $t2, ($v0)
/* B63414 800EC274 90480001 */  lbu   $t0, 1($v0)
/* B63418 800EC278 8E4C0018 */  lw    $t4, 0x18($s2)
/* B6341C 800EC27C 000A4A00 */  sll   $t1, $t2, 8
/* B63420 800EC280 01091821 */  addu  $v1, $t0, $t1
/* B63424 800EC284 3063FFFF */  andi  $v1, $v1, 0xffff
/* B63428 800EC288 01835821 */  addu  $t3, $t4, $v1
/* B6342C 800EC28C 1000FEF6 */  b     .L800EBE68
/* B63430 800EC290 AE2B0000 */   sw    $t3, ($s1)
glabel L800EC294
/* B63434 800EC294 0C03A752 */  jal   func_800E9D48
/* B63438 800EC298 02202025 */   move  $a0, $s1
/* B6343C 800EC29C 1000FEF2 */  b     .L800EBE68
/* B63440 800EC2A0 A2220019 */   sb    $v0, 0x19($s1)
glabel L800EC2A4
/* B63444 800EC2A4 0C03A752 */  jal   func_800E9D48
/* B63448 800EC2A8 02202025 */   move  $a0, $s1
/* B6344C 800EC2AC 822E0019 */  lb    $t6, 0x19($s1)
/* B63450 800EC2B0 01C26824 */  and   $t5, $t6, $v0
/* B63454 800EC2B4 1000FEEC */  b     .L800EBE68
/* B63458 800EC2B8 A22D0019 */   sb    $t5, 0x19($s1)
glabel L800EC2BC
/* B6345C 800EC2BC 0C03A752 */  jal   func_800E9D48
/* B63460 800EC2C0 02202025 */   move  $a0, $s1
/* B63464 800EC2C4 822F0019 */  lb    $t7, 0x19($s1)
/* B63468 800EC2C8 01E2C023 */  subu  $t8, $t7, $v0
/* B6346C 800EC2CC 1000FEE6 */  b     .L800EBE68
/* B63470 800EC2D0 A2380019 */   sb    $t8, 0x19($s1)
glabel L800EC2D4
/* B63474 800EC2D4 0C03A752 */  jal   func_800E9D48
/* B63478 800EC2D8 02202025 */   move  $a0, $s1
/* B6347C 800EC2DC 305000FF */  andi  $s0, $v0, 0xff
/* B63480 800EC2E0 0C03A757 */  jal   func_800E9D5C
/* B63484 800EC2E4 02202025 */   move  $a0, $s1
/* B63488 800EC2E8 8E590018 */  lw    $t9, 0x18($s2)
/* B6348C 800EC2EC 92280019 */  lbu   $t0, 0x19($s1)
/* B63490 800EC2F0 304AFFFF */  andi  $t2, $v0, 0xffff
/* B63494 800EC2F4 032A2821 */  addu  $a1, $t9, $t2
/* B63498 800EC2F8 01104821 */  addu  $t1, $t0, $s0
/* B6349C 800EC2FC 1000FEDA */  b     .L800EBE68
/* B634A0 800EC300 A0A90000 */   sb    $t1, ($a1)
glabel L800EC304
/* B634A4 800EC304 924B0000 */  lbu   $t3, ($s2)
/* B634A8 800EC308 356E0002 */  ori   $t6, $t3, 2
/* B634AC 800EC30C 1000008F */  b     .L800EC54C
/* B634B0 800EC310 A24E0000 */   sb    $t6, ($s2)
glabel L800EC314
/* B634B4 800EC314 0C03A757 */  jal   func_800E9D5C
/* B634B8 800EC318 02202025 */   move  $a0, $s1
/* B634BC 800EC31C 304DFFFF */  andi  $t5, $v0, 0xffff
/* B634C0 800EC320 1000FED1 */  b     .L800EBE68
/* B634C4 800EC324 AE4D00E0 */   sw    $t5, 0xe0($s2)
glabel L800EC328
/* B634C8 800EC328 0C03A757 */  jal   func_800E9D5C
/* B634CC 800EC32C 02202025 */   move  $a0, $s1
/* B634D0 800EC330 0C03A752 */  jal   func_800E9D48
/* B634D4 800EC334 02202025 */   move  $a0, $s1
/* B634D8 800EC338 1000FECB */  b     .L800EBE68
/* B634DC 800EC33C 00000000 */   nop   
glabel L800EC340
/* B634E0 800EC340 0C03A752 */  jal   func_800E9D48
/* B634E4 800EC344 02202025 */   move  $a0, $s1
/* B634E8 800EC348 240100FF */  li    $at, 255
/* B634EC 800EC34C 14410002 */  bne   $v0, $at, .L800EC358
/* B634F0 800EC350 305000FF */   andi  $s0, $v0, 0xff
/* B634F4 800EC354 92500007 */  lbu   $s0, 7($s2)
.L800EC358:
/* B634F8 800EC358 0C03A752 */  jal   func_800E9D48
/* B634FC 800EC35C 02202025 */   move  $a0, $s1
/* B63500 800EC360 02002025 */  move  $a0, $s0
/* B63504 800EC364 00402825 */  move  $a1, $v0
/* B63508 800EC368 00003025 */  move  $a2, $zero
/* B6350C 800EC36C 0C038835 */  jal   func_800E20D4
/* B63510 800EC370 AFB0002C */   sw    $s0, 0x2c($sp)
/* B63514 800EC374 8FA4002C */  lw    $a0, 0x2c($sp)
/* B63518 800EC378 924F0007 */  lbu   $t7, 7($s2)
/* B6351C 800EC37C 15E4FEBA */  bne   $t7, $a0, .L800EBE68
/* B63520 800EC380 00000000 */   nop   
/* B63524 800EC384 10000072 */  b     .L800EC550
/* B63528 800EC388 8FBF0024 */   lw    $ra, 0x24($sp)
.L800EC38C:
/* B6352C 800EC38C 3064000F */  andi  $a0, $v1, 0xf
/* B63530 800EC390 1840000A */  blez  $v0, .L800EC3BC
/* B63534 800EC394 A3A40066 */   sb    $a0, 0x66($sp)
/* B63538 800EC398 2458FFC0 */  addiu $t8, $v0, -0x40
/* B6353C 800EC39C 2F010071 */  sltiu $at, $t8, 0x71
/* B63540 800EC3A0 1020FEB1 */  beqz  $at, .L800EBE68
/* B63544 800EC3A4 0018C080 */   sll   $t8, $t8, 2
/* B63548 800EC3A8 3C018015 */  lui   $at, %hi(jtbl_80149A9C)
/* B6354C 800EC3AC 00380821 */  addu  $at, $at, $t8
/* B63550 800EC3B0 8C389A9C */  lw    $t8, %lo(jtbl_80149A9C)($at)
/* B63554 800EC3B4 03000008 */  jr    $t8
/* B63558 800EC3B8 00000000 */   nop   
.L800EC3BC:
/* B6355C 800EC3BC 1440FEAA */  bnez  $v0, .L800EBE68
/* B63560 800EC3C0 309900FF */   andi  $t9, $a0, 0xff
/* B63564 800EC3C4 00195080 */  sll   $t2, $t9, 2
/* B63568 800EC3C8 024A4021 */  addu  $t0, $s2, $t2
/* B6356C 800EC3CC 8D090038 */  lw    $t1, 0x38($t0)
/* B63570 800EC3D0 8D2C0000 */  lw    $t4, ($t1)
/* B63574 800EC3D4 000C5FC2 */  srl   $t3, $t4, 0x1f
/* B63578 800EC3D8 396E0001 */  xori  $t6, $t3, 1
/* B6357C 800EC3DC 1000FEA2 */  b     .L800EBE68
/* B63580 800EC3E0 A22E0019 */   sb    $t6, 0x19($s1)
glabel L800EC3E4
/* B63584 800EC3E4 308F00FF */  andi  $t7, $a0, 0xff
/* B63588 800EC3E8 024FC021 */  addu  $t8, $s2, $t7
/* B6358C 800EC3EC 83190158 */  lb    $t9, 0x158($t8)
/* B63590 800EC3F0 822D0019 */  lb    $t5, 0x19($s1)
/* B63594 800EC3F4 01B95023 */  subu  $t2, $t5, $t9
/* B63598 800EC3F8 1000FE9B */  b     .L800EBE68
/* B6359C 800EC3FC A22A0019 */   sb    $t2, 0x19($s1)
glabel L800EC400
/* B635A0 800EC400 82280019 */  lb    $t0, 0x19($s1)
/* B635A4 800EC404 308900FF */  andi  $t1, $a0, 0xff
/* B635A8 800EC408 02496021 */  addu  $t4, $s2, $t1
/* B635AC 800EC40C 1000FE96 */  b     .L800EBE68
glabel L800EC410
/* B635B0 800EC410 A1880158 */   sb    $t0, 0x158($t4)
glabel L800EC414
/* B635B4 800EC414 308200FF */  andi  $v0, $a0, 0xff
/* B635B8 800EC418 02421821 */  addu  $v1, $s2, $v0
/* B635BC 800EC41C 806B0158 */  lb    $t3, 0x158($v1)
/* B635C0 800EC420 28410002 */  slti  $at, $v0, 2
/* B635C4 800EC424 1020FE90 */  beqz  $at, .L800EBE68
/* B635C8 800EC428 A22B0019 */   sb    $t3, 0x19($s1)
/* B635CC 800EC42C 240EFFFF */  li    $t6, -1
/* B635D0 800EC430 1000FE8D */  b     .L800EBE68
/* B635D4 800EC434 A06E0158 */   sb    $t6, 0x158($v1)
glabel L800EC438
/* B635D8 800EC438 3218000F */  andi  $t8, $s0, 0xf
/* B635DC 800EC43C 00186880 */  sll   $t5, $t8, 2
/* B635E0 800EC440 024DC821 */  addu  $t9, $s2, $t5
/* B635E4 800EC444 0C03A632 */  jal   func_800E98C8
/* B635E8 800EC448 8F240038 */   lw    $a0, 0x38($t9)
/* B635EC 800EC44C 1000FE86 */  b     .L800EBE68
/* B635F0 800EC450 00000000 */   nop   
glabel L800EC454
/* B635F4 800EC454 0C03A757 */  jal   func_800E9D5C
/* B635F8 800EC458 02202025 */   move  $a0, $s1
/* B635FC 800EC45C 8E4A0018 */  lw    $t2, 0x18($s2)
/* B63600 800EC460 02002825 */  move  $a1, $s0
/* B63604 800EC464 3049FFFF */  andi  $t1, $v0, 0xffff
/* B63608 800EC468 30A5000F */  andi  $a1, $a1, 0xf
/* B6360C 800EC46C 02402025 */  move  $a0, $s2
/* B63610 800EC470 0C03A6AB */  jal   func_800E9AAC
/* B63614 800EC474 01493021 */   addu  $a2, $t2, $t1
/* B63618 800EC478 1000FE7B */  b     .L800EBE68
/* B6361C 800EC47C 00000000 */   nop   
glabel L800EC480
/* B63620 800EC480 0C03A757 */  jal   func_800E9D5C
/* B63624 800EC484 02202025 */   move  $a0, $s1
/* B63628 800EC488 8E280000 */  lw    $t0, ($s1)
/* B6362C 800EC48C 02002825 */  move  $a1, $s0
/* B63630 800EC490 30A5000F */  andi  $a1, $a1, 0xf
/* B63634 800EC494 02402025 */  move  $a0, $s2
/* B63638 800EC498 0C03A6AB */  jal   func_800E9AAC
/* B6363C 800EC49C 01023021 */   addu  $a2, $t0, $v0
/* B63640 800EC4A0 1000FE71 */  b     .L800EBE68
/* B63644 800EC4A4 00000000 */   nop   
glabel L800EC4A8
/* B63648 800EC4A8 0C03A752 */  jal   func_800E9D48
/* B6364C 800EC4AC 02202025 */   move  $a0, $s1
/* B63650 800EC4B0 305000FF */  andi  $s0, $v0, 0xff
/* B63654 800EC4B4 0C03A757 */  jal   func_800E9D5C
/* B63658 800EC4B8 02202025 */   move  $a0, $s1
/* B6365C 800EC4BC 93AE0066 */  lbu   $t6, 0x66($sp)
/* B63660 800EC4C0 8E4C0018 */  lw    $t4, 0x18($s2)
/* B63664 800EC4C4 304BFFFF */  andi  $t3, $v0, 0xffff
/* B63668 800EC4C8 024E3021 */  addu  $a2, $s2, $t6
/* B6366C 800EC4CC 24C60158 */  addiu $a2, $a2, 0x158
/* B63670 800EC4D0 02002025 */  move  $a0, $s0
/* B63674 800EC4D4 0C038E43 */  jal   func_800E390C
/* B63678 800EC4D8 018B2821 */   addu  $a1, $t4, $t3
/* B6367C 800EC4DC 1000FE62 */  b     .L800EBE68
/* B63680 800EC4E0 00000000 */   nop   
glabel L800EC4E4
/* B63684 800EC4E4 0C03A752 */  jal   func_800E9D48
/* B63688 800EC4E8 02202025 */   move  $a0, $s1
/* B6368C 800EC4EC 00408025 */  move  $s0, $v0
/* B63690 800EC4F0 0C03A752 */  jal   func_800E9D48
/* B63694 800EC4F4 02202025 */   move  $a0, $s1
/* B63698 800EC4F8 93AF0066 */  lbu   $t7, 0x66($sp)
/* B6369C 800EC4FC 02002025 */  move  $a0, $s0
/* B636A0 800EC500 00402825 */  move  $a1, $v0
/* B636A4 800EC504 024F3021 */  addu  $a2, $s2, $t7
/* B636A8 800EC508 0C0393BB */  jal   func_800E4EEC
/* B636AC 800EC50C 24C60158 */   addiu $a2, $a2, 0x158
/* B636B0 800EC510 1000FE55 */  b     .L800EBE68
/* B636B4 800EC514 00000000 */   nop   
.L800EC518:
/* B636B8 800EC518 02408825 */  move  $s1, $s2
.L800EC51C:
/* B636BC 800EC51C 24120040 */  li    $s2, 64
/* B636C0 800EC520 00008025 */  move  $s0, $zero
.L800EC524:
/* B636C4 800EC524 8E240038 */  lw    $a0, 0x38($s1)
/* B636C8 800EC528 8C980000 */  lw    $t8, ($a0)
/* B636CC 800EC52C 00186FC2 */  srl   $t5, $t8, 0x1f
/* B636D0 800EC530 51A00004 */  beql  $t5, $zero, .L800EC544
/* B636D4 800EC534 26100004 */   addiu $s0, $s0, 4
/* B636D8 800EC538 0C03AC1A */  jal   func_800EB068
/* B636DC 800EC53C 00000000 */   nop   
/* B636E0 800EC540 26100004 */  addiu $s0, $s0, 4
.L800EC544:
/* B636E4 800EC544 1612FFF7 */  bne   $s0, $s2, .L800EC524
/* B636E8 800EC548 26310004 */   addiu $s1, $s1, 4
.L800EC54C:
/* B636EC 800EC54C 8FBF0024 */  lw    $ra, 0x24($sp)
.L800EC550:
/* B636F0 800EC550 8FB00018 */  lw    $s0, 0x18($sp)
/* B636F4 800EC554 8FB1001C */  lw    $s1, 0x1c($sp)
/* B636F8 800EC558 8FB20020 */  lw    $s2, 0x20($sp)
/* B636FC 800EC55C 03E00008 */  jr    $ra
/* B63700 800EC560 27BD0068 */   addiu $sp, $sp, 0x68

glabel func_800EC564
/* B63704 800EC564 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B63708 800EC568 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B6370C 800EC56C 846E2854 */  lh    $t6, 0x2854($v1)
/* B63710 800EC570 8C792894 */  lw    $t9, 0x2894($v1)
/* B63714 800EC574 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B63718 800EC578 01C47823 */  subu  $t7, $t6, $a0
/* B6371C 800EC57C 25F8FFFF */  addiu $t8, $t7, -1
/* B63720 800EC580 03190019 */  multu $t8, $t9
/* B63724 800EC584 8462285C */  lh    $v0, 0x285c($v1)
/* B63728 800EC588 AFB10018 */  sw    $s1, 0x18($sp)
/* B6372C 800EC58C AFB30020 */  sw    $s3, 0x20($sp)
/* B63730 800EC590 AFB2001C */  sw    $s2, 0x1c($sp)
/* B63734 800EC594 3C118017 */  lui   $s1, %hi(gAudioContext) # $s1, 0x8017
/* B63738 800EC598 AFBF0024 */  sw    $ra, 0x24($sp)
/* B6373C 800EC59C AFB00014 */  sw    $s0, 0x14($sp)
/* B63740 800EC5A0 2631F180 */  addiu $s1, %lo(gAudioContext) # addiu $s1, $s1, -0xe80
/* B63744 800EC5A4 00009025 */  move  $s2, $zero
/* B63748 800EC5A8 00004012 */  mflo  $t0
/* B6374C 800EC5AC AC685B84 */  sw    $t0, 0x5b84($v1)
/* B63750 800EC5B0 10400010 */  beqz  $v0, .L800EC5F4
/* B63754 800EC5B4 24130001 */   li    $s3, 1
.L800EC5B8:
/* B63758 800EC5B8 8E293530 */  lw    $t1, 0x3530($s1)
/* B6375C 800EC5BC 26303530 */  addiu $s0, $s1, 0x3530
/* B63760 800EC5C0 000957C2 */  srl   $t2, $t1, 0x1f
/* B63764 800EC5C4 566A0008 */  bnel  $s3, $t2, .L800EC5E8
/* B63768 800EC5C8 26520001 */   addiu $s2, $s2, 1
/* B6376C 800EC5CC 0C03AF56 */  jal   func_800EBD58
/* B63770 800EC5D0 02002025 */   move  $a0, $s0
/* B63774 800EC5D4 0C03A2A2 */  jal   func_800E8A88
/* B63778 800EC5D8 02002025 */   move  $a0, $s0
/* B6377C 800EC5DC 3C028017 */  lui   $v0, %hi(D_801719DC) # $v0, 0x8017
/* B63780 800EC5E0 844219DC */  lh    $v0, %lo(D_801719DC)($v0)
/* B63784 800EC5E4 26520001 */  addiu $s2, $s2, 1
.L800EC5E8:
/* B63788 800EC5E8 0242082B */  sltu  $at, $s2, $v0
/* B6378C 800EC5EC 1420FFF2 */  bnez  $at, .L800EC5B8
/* B63790 800EC5F0 26310160 */   addiu $s1, $s1, 0x160
.L800EC5F4:
/* B63794 800EC5F4 0C039BE3 */  jal   Audio_ProcessNotes
/* B63798 800EC5F8 00000000 */   nop   
/* B6379C 800EC5FC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B637A0 800EC600 8FB00014 */  lw    $s0, 0x14($sp)
/* B637A4 800EC604 8FB10018 */  lw    $s1, 0x18($sp)
/* B637A8 800EC608 8FB2001C */  lw    $s2, 0x1c($sp)
/* B637AC 800EC60C 8FB30020 */  lw    $s3, 0x20($sp)
/* B637B0 800EC610 03E00008 */  jr    $ra
/* B637B4 800EC614 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800EC618
/* B637B8 800EC618 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B637BC 800EC61C AFBF001C */  sw    $ra, 0x1c($sp)
/* B637C0 800EC620 AFB00018 */  sw    $s0, 0x18($sp)
/* B637C4 800EC624 8C8E00DC */  lw    $t6, 0xdc($a0)
/* B637C8 800EC628 00808025 */  move  $s0, $a0
/* B637CC 800EC62C 59C0000A */  blezl $t6, .L800EC658
/* B637D0 800EC630 8FBF001C */   lw    $ra, 0x1c($sp)
.L800EC634:
/* B637D4 800EC634 0C03AF56 */  jal   func_800EBD58
/* B637D8 800EC638 02002025 */   move  $a0, $s0
/* B637DC 800EC63C 0C03A2A2 */  jal   func_800E8A88
/* B637E0 800EC640 02002025 */   move  $a0, $s0
/* B637E4 800EC644 8E0F00DC */  lw    $t7, 0xdc($s0)
/* B637E8 800EC648 25F8FFFF */  addiu $t8, $t7, -1
/* B637EC 800EC64C 1F00FFF9 */  bgtz  $t8, .L800EC634
/* B637F0 800EC650 AE1800DC */   sw    $t8, 0xdc($s0)
/* B637F4 800EC654 8FBF001C */  lw    $ra, 0x1c($sp)
.L800EC658:
/* B637F8 800EC658 8FB00018 */  lw    $s0, 0x18($sp)
/* B637FC 800EC65C 27BD0020 */  addiu $sp, $sp, 0x20
/* B63800 800EC660 03E00008 */  jr    $ra
/* B63804 800EC664 00000000 */   nop   

glabel func_800EC668
/* B63808 800EC668 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B6380C 800EC66C AFBF0024 */  sw    $ra, 0x24($sp)
/* B63810 800EC670 AFB20020 */  sw    $s2, 0x20($sp)
/* B63814 800EC674 AFB1001C */  sw    $s1, 0x1c($sp)
/* B63818 800EC678 AFB00018 */  sw    $s0, 0x18($sp)
/* B6381C 800EC67C 0C03A6DB */  jal   func_800E9B6C
/* B63820 800EC680 AFA40028 */   sw    $a0, 0x28($sp)
/* B63824 800EC684 8FB10028 */  lw    $s1, 0x28($sp)
/* B63828 800EC688 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B6382C 800EC68C 44812000 */  mtc1  $at, $f4
/* B63830 800EC690 44800000 */  mtc1  $zero, $f0
/* B63834 800EC694 922E0000 */  lbu   $t6, ($s1)
/* B63838 800EC698 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B6383C 800EC69C 44813000 */  mtc1  $at, $f6
/* B63840 800EC6A0 3C088013 */  lui   $t0, %hi(D_8012FAB4) # $t0, 0x8013
/* B63844 800EC6A4 3C098013 */  lui   $t1, %hi(D_8012FAC4) # $t1, 0x8013
/* B63848 800EC6A8 24180001 */  li    $t8, 1
/* B6384C 800EC6AC 24191680 */  li    $t9, 5760
/* B63850 800EC6B0 2508FAB4 */  addiu $t0, %lo(D_8012FAB4) # addiu $t0, $t0, -0x54c
/* B63854 800EC6B4 2529FAC4 */  addiu $t1, %lo(D_8012FAC4) # addiu $t1, $t1, -0x53c
/* B63858 800EC6B8 31CFFFFD */  andi  $t7, $t6, 0xfffd
/* B6385C 800EC6BC 00008025 */  move  $s0, $zero
/* B63860 800EC6C0 24120040 */  li    $s2, 64
/* B63864 800EC6C4 A22F0000 */  sb    $t7, ($s1)
/* B63868 800EC6C8 A6200010 */  sh    $zero, 0x10($s1)
/* B6386C 800EC6CC A2380001 */  sb    $t8, 1($s1)
/* B63870 800EC6D0 A6200012 */  sh    $zero, 0x12($s1)
/* B63874 800EC6D4 A6200014 */  sh    $zero, 0x14($s1)
/* B63878 800EC6D8 A620000A */  sh    $zero, 0xa($s1)
/* B6387C 800EC6DC A6390008 */  sh    $t9, 8($s1)
/* B63880 800EC6E0 A620000C */  sh    $zero, 0xc($s1)
/* B63884 800EC6E4 A620000E */  sh    $zero, 0xe($s1)
/* B63888 800EC6E8 A2200002 */  sb    $zero, 2($s1)
/* B6388C 800EC6EC AE280094 */  sw    $t0, 0x94($s1)
/* B63890 800EC6F0 AE290098 */  sw    $t1, 0x98($s1)
/* B63894 800EC6F4 AE2000E0 */  sw    $zero, 0xe0($s1)
/* B63898 800EC6F8 E624001C */  swc1  $f4, 0x1c($s1)
/* B6389C 800EC6FC E6200020 */  swc1  $f0, 0x20($s1)
/* B638A0 800EC700 E6200024 */  swc1  $f0, 0x24($s1)
/* B638A4 800EC704 E6260028 */  swc1  $f6, 0x28($s1)
.L800EC708:
/* B638A8 800EC708 0C03A561 */  jal   func_800E9584
/* B638AC 800EC70C 8E240038 */   lw    $a0, 0x38($s1)
/* B638B0 800EC710 26100004 */  addiu $s0, $s0, 4
/* B638B4 800EC714 1612FFFC */  bne   $s0, $s2, .L800EC708
/* B638B8 800EC718 26310004 */   addiu $s1, $s1, 4
/* B638BC 800EC71C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B638C0 800EC720 8FB00018 */  lw    $s0, 0x18($sp)
/* B638C4 800EC724 8FB1001C */  lw    $s1, 0x1c($sp)
/* B638C8 800EC728 8FB20020 */  lw    $s2, 0x20($sp)
/* B638CC 800EC72C 03E00008 */  jr    $ra
/* B638D0 800EC730 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800EC734
/* B638D4 800EC734 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B638D8 800EC738 00047080 */  sll   $t6, $a0, 2
/* B638DC 800EC73C 01C47023 */  subu  $t6, $t6, $a0
/* B638E0 800EC740 000E7080 */  sll   $t6, $t6, 2
/* B638E4 800EC744 01C47023 */  subu  $t6, $t6, $a0
/* B638E8 800EC748 000E7140 */  sll   $t6, $t6, 5
/* B638EC 800EC74C 3C188017 */  lui   $t8, %hi(gAudioContext) # $t8, 0x8017
/* B638F0 800EC750 AFB40024 */  sw    $s4, 0x24($sp)
/* B638F4 800EC754 AFB30020 */  sw    $s3, 0x20($sp)
/* B638F8 800EC758 AFB2001C */  sw    $s2, 0x1c($sp)
/* B638FC 800EC75C 2718F180 */  addiu $t8, %lo(gAudioContext) # addiu $t8, $t8, -0xe80
/* B63900 800EC760 25CF3530 */  addiu $t7, $t6, 0x3530
/* B63904 800EC764 AFB50028 */  sw    $s5, 0x28($sp)
/* B63908 800EC768 AFB10018 */  sw    $s1, 0x18($sp)
/* B6390C 800EC76C AFB00014 */  sw    $s0, 0x14($sp)
/* B63910 800EC770 01F89021 */  addu  $s2, $t7, $t8
/* B63914 800EC774 3C138017 */  lui   $s3, %hi(D_80171B40) # $s3, 0x8017
/* B63918 800EC778 3C148017 */  lui   $s4, %hi(D_80174C30) # $s4, 0x8017
/* B6391C 800EC77C AFBF002C */  sw    $ra, 0x2c($sp)
/* B63920 800EC780 26944C30 */  addiu $s4, %lo(D_80174C30) # addiu $s4, $s4, 0x4c30
/* B63924 800EC784 26731B40 */  addiu $s3, %lo(D_80171B40) # addiu $s3, $s3, 0x1b40
/* B63928 800EC788 02408025 */  move  $s0, $s2
/* B6392C 800EC78C 00008825 */  move  $s1, $zero
/* B63930 800EC790 24150040 */  li    $s5, 64
.L800EC794:
/* B63934 800EC794 02602025 */  move  $a0, $s3
/* B63938 800EC798 0C0378E0 */  jal   func_800DE380
/* B6393C 800EC79C 240500D4 */   li    $a1, 212
/* B63940 800EC7A0 14400003 */  bnez  $v0, .L800EC7B0
/* B63944 800EC7A4 AE020038 */   sw    $v0, 0x38($s0)
/* B63948 800EC7A8 1000000A */  b     .L800EC7D4
/* B6394C 800EC7AC AE140038 */   sw    $s4, 0x38($s0)
.L800EC7B0:
/* B63950 800EC7B0 8E030038 */  lw    $v1, 0x38($s0)
/* B63954 800EC7B4 90790000 */  lbu   $t9, ($v1)
/* B63958 800EC7B8 AC72004C */  sw    $s2, 0x4c($v1)
/* B6395C 800EC7BC AC600054 */  sw    $zero, 0x54($v1)
/* B63960 800EC7C0 3328FF7F */  andi  $t0, $t9, 0xff7f
/* B63964 800EC7C4 A0680000 */  sb    $t0, ($v1)
/* B63968 800EC7C8 AC600058 */  sw    $zero, 0x58($v1)
/* B6396C 800EC7CC AC60005C */  sw    $zero, 0x5c($v1)
/* B63970 800EC7D0 AC600050 */  sw    $zero, 0x50($v1)
.L800EC7D4:
/* B63974 800EC7D4 0C03A561 */  jal   func_800E9584
/* B63978 800EC7D8 8E040038 */   lw    $a0, 0x38($s0)
/* B6397C 800EC7DC 26310004 */  addiu $s1, $s1, 4
/* B63980 800EC7E0 1635FFEC */  bne   $s1, $s5, .L800EC794
/* B63984 800EC7E4 26100004 */   addiu $s0, $s0, 4
/* B63988 800EC7E8 8FBF002C */  lw    $ra, 0x2c($sp)
/* B6398C 800EC7EC 8FB00014 */  lw    $s0, 0x14($sp)
/* B63990 800EC7F0 8FB10018 */  lw    $s1, 0x18($sp)
/* B63994 800EC7F4 8FB2001C */  lw    $s2, 0x1c($sp)
/* B63998 800EC7F8 8FB30020 */  lw    $s3, 0x20($sp)
/* B6399C 800EC7FC 8FB40024 */  lw    $s4, 0x24($sp)
/* B639A0 800EC800 8FB50028 */  lw    $s5, 0x28($sp)
/* B639A4 800EC804 03E00008 */  jr    $ra
/* B639A8 800EC808 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_800EC80C
/* B639AC 800EC80C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B639B0 800EC810 00803025 */  move  $a2, $a0
/* B639B4 800EC814 00801825 */  move  $v1, $a0
/* B639B8 800EC818 3C028017 */  lui   $v0, %hi(D_80174C30) # $v0, 0x8017
/* B639BC 800EC81C AFBF0014 */  sw    $ra, 0x14($sp)
/* B639C0 800EC820 24424C30 */  addiu $v0, %lo(D_80174C30) # addiu $v0, $v0, 0x4c30
/* B639C4 800EC824 24040010 */  li    $a0, 16
/* B639C8 800EC828 00002825 */  move  $a1, $zero
.L800EC82C:
/* B639CC 800EC82C 24A50004 */  addiu $a1, $a1, 4
/* B639D0 800EC830 AC62003C */  sw    $v0, 0x3c($v1)
/* B639D4 800EC834 AC620040 */  sw    $v0, 0x40($v1)
/* B639D8 800EC838 AC620044 */  sw    $v0, 0x44($v1)
/* B639DC 800EC83C 24630010 */  addiu $v1, $v1, 0x10
/* B639E0 800EC840 14A4FFFA */  bne   $a1, $a0, .L800EC82C
/* B639E4 800EC844 AC620028 */   sw    $v0, 0x28($v1)
/* B639E8 800EC848 90CE0000 */  lbu   $t6, ($a2)
/* B639EC 800EC84C 00002025 */  move  $a0, $zero
/* B639F0 800EC850 00C01825 */  move  $v1, $a2
/* B639F4 800EC854 31D8FF7F */  andi  $t8, $t6, 0xff7f
/* B639F8 800EC858 330800DF */  andi  $t0, $t8, 0xdf
/* B639FC 800EC85C A0D80000 */  sb    $t8, ($a2)
/* B63A00 800EC860 310A00F7 */  andi  $t2, $t0, 0xf7
/* B63A04 800EC864 A0C80000 */  sb    $t0, ($a2)
/* B63A08 800EC868 314C00EF */  andi  $t4, $t2, 0xef
/* B63A0C 800EC86C A0CA0000 */  sb    $t2, ($a2)
/* B63A10 800EC870 A0CC0000 */  sb    $t4, ($a2)
/* B63A14 800EC874 318D00FE */  andi  $t5, $t4, 0xfe
/* B63A18 800EC878 A0CD0000 */  sb    $t5, ($a2)
/* B63A1C 800EC87C 24050008 */  li    $a1, 8
/* B63A20 800EC880 2402FFFF */  li    $v0, -1
.L800EC884:
/* B63A24 800EC884 24840004 */  addiu $a0, $a0, 4
/* B63A28 800EC888 A0620159 */  sb    $v0, 0x159($v1)
/* B63A2C 800EC88C A062015A */  sb    $v0, 0x15a($v1)
/* B63A30 800EC890 A062015B */  sb    $v0, 0x15b($v1)
/* B63A34 800EC894 24630004 */  addiu $v1, $v1, 4
/* B63A38 800EC898 1485FFFA */  bne   $a0, $a1, .L800EC884
/* B63A3C 800EC89C A0620154 */   sb    $v0, 0x154($v1)
/* B63A40 800EC8A0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B63A44 800EC8A4 44810000 */  mtc1  $at, $f0
/* B63A48 800EC8A8 240E0060 */  li    $t6, 96
/* B63A4C 800EC8AC A0CE0003 */  sb    $t6, 3($a2)
/* B63A50 800EC8B0 E4C0002C */  swc1  $f0, 0x2c($a2)
/* B63A54 800EC8B4 E4C00034 */  swc1  $f0, 0x34($a2)
/* B63A58 800EC8B8 AFA60018 */  sw    $a2, 0x18($sp)
/* B63A5C 800EC8BC 0C039F43 */  jal   Audio_InitNoteLists
/* B63A60 800EC8C0 24C4009C */   addiu $a0, $a2, 0x9c
/* B63A64 800EC8C4 0C03B19A */  jal   func_800EC668
/* B63A68 800EC8C8 8FA40018 */   lw    $a0, 0x18($sp)
/* B63A6C 800EC8CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B63A70 800EC8D0 27BD0018 */  addiu $sp, $sp, 0x18
/* B63A74 800EC8D4 03E00008 */  jr    $ra
/* B63A78 800EC8D8 00000000 */   nop   

glabel func_800EC8DC
/* B63A7C 800EC8DC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B63A80 800EC8E0 AFBF001C */  sw    $ra, 0x1c($sp)
/* B63A84 800EC8E4 AFB10018 */  sw    $s1, 0x18($sp)
/* B63A88 800EC8E8 0C03A72A */  jal   func_800E9CA8
/* B63A8C 800EC8EC AFB00014 */   sw    $s0, 0x14($sp)
/* B63A90 800EC8F0 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B63A94 800EC8F4 3C038017 */  lui   $v1, %hi(D_80171180) # $v1, 0x8017
/* B63A98 800EC8F8 24631180 */  addiu $v1, %lo(D_80171180) # addiu $v1, $v1, 0x1180
/* B63A9C 800EC8FC 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
.L800EC900:
/* B63AA0 800EC900 904E3AB0 */  lbu   $t6, 0x3ab0($v0)
/* B63AA4 800EC904 24420080 */  addiu $v0, $v0, 0x80
/* B63AA8 800EC908 0043082B */  sltu  $at, $v0, $v1
/* B63AAC 800EC90C 31CFFF7F */  andi  $t7, $t6, 0xff7f
/* B63AB0 800EC910 AC403A80 */  sw    $zero, 0x3a80($v0)
/* B63AB4 800EC914 1420FFFA */  bnez  $at, .L800EC900
/* B63AB8 800EC918 A04F3A30 */   sb    $t7, 0x3a30($v0)
/* B63ABC 800EC91C 3C108017 */  lui   $s0, %hi(D_801726B0) # $s0, 0x8017
/* B63AC0 800EC920 3C118017 */  lui   $s1, %hi(D_80172C30) # $s1, 0x8017
/* B63AC4 800EC924 26312C30 */  addiu $s1, %lo(D_80172C30) # addiu $s1, $s1, 0x2c30
/* B63AC8 800EC928 261026B0 */  addiu $s0, %lo(D_801726B0) # addiu $s0, $s0, 0x26b0
.L800EC92C:
/* B63ACC 800EC92C 0C03B203 */  jal   func_800EC80C
/* B63AD0 800EC930 02002025 */   move  $a0, $s0
/* B63AD4 800EC934 26100160 */  addiu $s0, $s0, 0x160
/* B63AD8 800EC938 1611FFFC */  bne   $s0, $s1, .L800EC92C
/* B63ADC 800EC93C 00000000 */   nop   
/* B63AE0 800EC940 8FBF001C */  lw    $ra, 0x1c($sp)
/* B63AE4 800EC944 8FB00014 */  lw    $s0, 0x14($sp)
/* B63AE8 800EC948 8FB10018 */  lw    $s1, 0x18($sp)
/* B63AEC 800EC94C 03E00008 */  jr    $ra
/* B63AF0 800EC950 27BD0020 */   addiu $sp, $sp, 0x20
