.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

/* B7CDB0 80105C10 00000000 */  nop
/* B7CDB4 80105C14 00000000 */  nop
/* B7CDB8 80105C18 00000000 */  nop
/* B7CDBC 80105C1C 00000000 */  nop
glabel guTranslate
/* B7CDC0 80105C20 3C014780 */  li    $at, 0x47800000 # 0.000000
/* B7CDC4 80105C24 44812000 */  mtc1  $at, $f4
/* B7CDC8 80105C28 44853000 */  mtc1  $a1, $f6
/* B7CDCC 80105C2C AC800000 */  sw    $zero, ($a0)
/* B7CDD0 80105C30 AC800014 */  sw    $zero, 0x14($a0)
/* B7CDD4 80105C34 46043202 */  mul.s $f8, $f6, $f4
/* B7CDD8 80105C38 44863000 */  mtc1  $a2, $f6
/* B7CDDC 80105C3C AC800008 */  sw    $zero, 8($a0)
/* B7CDE0 80105C40 AC800004 */  sw    $zero, 4($a0)
/* B7CDE4 80105C44 AC80000C */  sw    $zero, 0xc($a0)
/* B7CDE8 80105C48 AC800010 */  sw    $zero, 0x10($a0)
/* B7CDEC 80105C4C AC800020 */  sw    $zero, 0x20($a0)
/* B7CDF0 80105C50 4600428D */  trunc.w.s $f10, $f8
/* B7CDF4 80105C54 46043202 */  mul.s $f8, $f6, $f4
/* B7CDF8 80105C58 44873000 */  mtc1  $a3, $f6
/* B7CDFC 80105C5C AC800024 */  sw    $zero, 0x24($a0)
/* B7CE00 80105C60 44095000 */  mfc1  $t1, $f10
/* B7CE04 80105C64 AC800028 */  sw    $zero, 0x28($a0)
/* B7CE08 80105C68 AC80002C */  sw    $zero, 0x2c($a0)
/* B7CE0C 80105C6C 00095402 */  srl   $t2, $t1, 0x10
/* B7CE10 80105C70 4600428D */  trunc.w.s $f10, $f8
/* B7CE14 80105C74 46043202 */  mul.s $f8, $f6, $f4
/* B7CE18 80105C78 000A4400 */  sll   $t0, $t2, 0x10
/* B7CE1C 80105C7C AC800030 */  sw    $zero, 0x30($a0)
/* B7CE20 80105C80 440B5000 */  mfc1  $t3, $f10
/* B7CE24 80105C84 AC800034 */  sw    $zero, 0x34($a0)
/* B7CE28 80105C88 000B5402 */  srl   $t2, $t3, 0x10
/* B7CE2C 80105C8C 4600428D */  trunc.w.s $f10, $f8
/* B7CE30 80105C90 010A4025 */  or    $t0, $t0, $t2
/* B7CE34 80105C94 AC880018 */  sw    $t0, 0x18($a0)
/* B7CE38 80105C98 00094400 */  sll   $t0, $t1, 0x10
/* B7CE3C 80105C9C 000B5400 */  sll   $t2, $t3, 0x10
/* B7CE40 80105CA0 44095000 */  mfc1  $t1, $f10
/* B7CE44 80105CA4 000A5402 */  srl   $t2, $t2, 0x10
/* B7CE48 80105CA8 010A4025 */  or    $t0, $t0, $t2
/* B7CE4C 80105CAC AC880038 */  sw    $t0, 0x38($a0)
/* B7CE50 80105CB0 00095402 */  srl   $t2, $t1, 0x10
/* B7CE54 80105CB4 000A4400 */  sll   $t0, $t2, 0x10
/* B7CE58 80105CB8 25080001 */  addiu $t0, $t0, 1
/* B7CE5C 80105CBC AC88001C */  sw    $t0, 0x1c($a0)
/* B7CE60 80105CC0 3C080001 */  lui   $t0, 1
/* B7CE64 80105CC4 35080000 */  ori   $t0, $t0, 0
/* B7CE68 80105CC8 AC880000 */  sw    $t0, ($a0)
/* B7CE6C 80105CCC AC880014 */  sw    $t0, 0x14($a0)
/* B7CE70 80105CD0 3C080000 */  lui   $t0, (0x00000001 >> 16) # lui $t0, 0
/* B7CE74 80105CD4 35080001 */  ori   $t0, (0x00000001 & 0xFFFF) # ori $t0, $t0, 1
/* B7CE78 80105CD8 00095400 */  sll   $t2, $t1, 0x10
/* B7CE7C 80105CDC AC8A003C */  sw    $t2, 0x3c($a0)
/* B7CE80 80105CE0 03E00008 */  jr    $ra
/* B7CE84 80105CE4 AC880008 */   sw    $t0, 8($a0)
