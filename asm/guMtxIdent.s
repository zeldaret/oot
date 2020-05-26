.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel guMtxIdent
/* B7AD00 80103B60 20080001 */  addi  $t0, $zero, 1
/* B7AD04 80103B64 00084C00 */  sll   $t1, $t0, 0x10
/* B7AD08 80103B68 AC890000 */  sw    $t1, ($a0)
/* B7AD0C 80103B6C AC800004 */  sw    $zero, 4($a0)
/* B7AD10 80103B70 AC880008 */  sw    $t0, 8($a0)
/* B7AD14 80103B74 AC80000C */  sw    $zero, 0xc($a0)
/* B7AD18 80103B78 AC800010 */  sw    $zero, 0x10($a0)
/* B7AD1C 80103B7C AC890014 */  sw    $t1, 0x14($a0)
/* B7AD20 80103B80 AC800018 */  sw    $zero, 0x18($a0)
/* B7AD24 80103B84 AC88001C */  sw    $t0, 0x1c($a0)
/* B7AD28 80103B88 AC800020 */  sw    $zero, 0x20($a0)
/* B7AD2C 80103B8C AC800024 */  sw    $zero, 0x24($a0)
/* B7AD30 80103B90 AC800028 */  sw    $zero, 0x28($a0)
/* B7AD34 80103B94 AC80002C */  sw    $zero, 0x2c($a0)
/* B7AD38 80103B98 AC800030 */  sw    $zero, 0x30($a0)
/* B7AD3C 80103B9C AC800034 */  sw    $zero, 0x34($a0)
/* B7AD40 80103BA0 AC800038 */  sw    $zero, 0x38($a0)
/* B7AD44 80103BA4 03E00008 */  jr    $ra
/* B7AD48 80103BA8 AC80003C */   sw    $zero, 0x3c($a0)
