.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel guScale
/* B77380 801001E0 3C014780 */  li    $at, 0x47800000 # 0.000000
/* B77384 801001E4 44812000 */  mtc1  $at, $f4
/* B77388 801001E8 44853000 */  mtc1  $a1, $f6
/* B7738C 801001EC AC800004 */  sw    $zero, 4($a0)
/* B77390 801001F0 AC80000C */  sw    $zero, 0xc($a0)
/* B77394 801001F4 46043202 */  mul.s $f8, $f6, $f4
/* B77398 801001F8 44863000 */  mtc1  $a2, $f6
/* B7739C 801001FC AC800010 */  sw    $zero, 0x10($a0)
/* B773A0 80100200 AC800018 */  sw    $zero, 0x18($a0)
/* B773A4 80100204 AC800024 */  sw    $zero, 0x24($a0)
/* B773A8 80100208 AC80002C */  sw    $zero, 0x2c($a0)
/* B773AC 8010020C AC800030 */  sw    $zero, 0x30($a0)
/* B773B0 80100210 4600428D */  trunc.w.s $f10, $f8
/* B773B4 80100214 46043202 */  mul.s $f8, $f6, $f4
/* B773B8 80100218 44873000 */  mtc1  $a3, $f6
/* B773BC 8010021C AC800038 */  sw    $zero, 0x38($a0)
/* B773C0 80100220 44095000 */  mfc1  $t1, $f10
/* B773C4 80100224 AC80003C */  sw    $zero, 0x3c($a0)
/* B773C8 80100228 00095402 */  srl   $t2, $t1, 0x10
/* B773CC 8010022C 4600428D */  trunc.w.s $f10, $f8
/* B773D0 80100230 46043202 */  mul.s $f8, $f6, $f4
/* B773D4 80100234 000A4400 */  sll   $t0, $t2, 0x10
/* B773D8 80100238 00095400 */  sll   $t2, $t1, 0x10
/* B773DC 8010023C 44095000 */  mfc1  $t1, $f10
/* B773E0 80100240 AC880000 */  sw    $t0, ($a0)
/* B773E4 80100244 AC8A0020 */  sw    $t2, 0x20($a0)
/* B773E8 80100248 00094402 */  srl   $t0, $t1, 0x10
/* B773EC 8010024C 4600428D */  trunc.w.s $f10, $f8
/* B773F0 80100250 312AFFFF */  andi  $t2, $t1, 0xffff
/* B773F4 80100254 AC8A0028 */  sw    $t2, 0x28($a0)
/* B773F8 80100258 AC880008 */  sw    $t0, 8($a0)
/* B773FC 8010025C 44095000 */  mfc1  $t1, $f10
/* B77400 80100260 00000000 */  nop
/* B77404 80100264 00095402 */  srl   $t2, $t1, 0x10
/* B77408 80100268 000A4400 */  sll   $t0, $t2, 0x10
/* B7740C 8010026C AC880014 */  sw    $t0, 0x14($a0)
/* B77410 80100270 24080001 */  li    $t0, 1
/* B77414 80100274 00095400 */  sll   $t2, $t1, 0x10
/* B77418 80100278 AC8A0034 */  sw    $t2, 0x34($a0)
/* B7741C 8010027C 03E00008 */  jr    $ra
/* B77420 80100280 AC88001C */   sw    $t0, 0x1c($a0)
