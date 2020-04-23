.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

## Handwritten ASM

glabel guMtxIdentF
/* B78CE0 80101B40 3C083F80 */  lui   $t0, 0x3f80
/* B78CE4 80101B44 AC880000 */  sw    $t0, ($a0)
/* B78CE8 80101B48 AC800004 */  sw    $zero, 4($a0)
/* B78CEC 80101B4C AC800008 */  sw    $zero, 8($a0)
/* B78CF0 80101B50 AC80000C */  sw    $zero, 0xc($a0)
/* B78CF4 80101B54 AC800010 */  sw    $zero, 0x10($a0)
/* B78CF8 80101B58 AC880014 */  sw    $t0, 0x14($a0)
/* B78CFC 80101B5C AC800018 */  sw    $zero, 0x18($a0)
/* B78D00 80101B60 AC80001C */  sw    $zero, 0x1c($a0)
/* B78D04 80101B64 AC800020 */  sw    $zero, 0x20($a0)
/* B78D08 80101B68 AC800024 */  sw    $zero, 0x24($a0)
/* B78D0C 80101B6C AC880028 */  sw    $t0, 0x28($a0)
/* B78D10 80101B70 AC80002C */  sw    $zero, 0x2c($a0)
/* B78D14 80101B74 AC800030 */  sw    $zero, 0x30($a0)
/* B78D18 80101B78 AC800034 */  sw    $zero, 0x34($a0)
/* B78D1C 80101B7C AC800038 */  sw    $zero, 0x38($a0)
/* B78D20 80101B80 03E00008 */  jr    $ra
/* B78D24 80101B84 AC88003C */   sw    $t0, 0x3c($a0)
