glabel func_800AC9A4
/* B23B44 800AC9A4 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* B23B48 800AC9A8 24A5FA90 */  addiu $a1, %lo(gGameInfo) # addiu $a1, $a1, -0x570
/* B23B4C 800AC9AC 8CA20000 */  lw    $v0, ($a1)
/* B23B50 800AC9B0 2406FFFC */  li    $a2, -4
/* B23B54 800AC9B4 24010001 */  li    $at, 1
/* B23B58 800AC9B8 84430136 */  lh    $v1, 0x136($v0)
/* B23B5C 800AC9BC 00667024 */  and   $t6, $v1, $a2
/* B23B60 800AC9C0 15C10003 */  bne   $t6, $at, .L800AC9D0
/* B23B64 800AC9C4 246F0004 */   addiu $t7, $v1, 4
/* B23B68 800AC9C8 A44F0136 */  sh    $t7, 0x136($v0)
/* B23B6C 800AC9CC 8CA20000 */  lw    $v0, ($a1)
.L800AC9D0:
/* B23B70 800AC9D0 84580134 */  lh    $t8, 0x134($v0)
/* B23B74 800AC9D4 AC980068 */  sw    $t8, 0x68($a0)
/* B23B78 800AC9D8 8CB90000 */  lw    $t9, ($a1)
/* B23B7C 800AC9DC 87280136 */  lh    $t0, 0x136($t9)
/* B23B80 800AC9E0 01064824 */  and   $t1, $t0, $a2
/* B23B84 800AC9E4 AC890054 */  sw    $t1, 0x54($a0)
/* B23B88 800AC9E8 8CAA0000 */  lw    $t2, ($a1)
/* B23B8C 800AC9EC 854B0138 */  lh    $t3, 0x138($t2)
/* B23B90 800AC9F0 AC8B0050 */  sw    $t3, 0x50($a0)
/* B23B94 800AC9F4 8CAC0000 */  lw    $t4, ($a1)
/* B23B98 800AC9F8 858D013A */  lh    $t5, 0x13a($t4)
/* B23B9C 800AC9FC AC8D0064 */  sw    $t5, 0x64($a0)
/* B23BA0 800ACA00 8CAE0000 */  lw    $t6, ($a1)
/* B23BA4 800ACA04 85CF013C */  lh    $t7, 0x13c($t6)
/* B23BA8 800ACA08 AC8F0060 */  sw    $t7, 0x60($a0)
/* B23BAC 800ACA0C 8CB80000 */  lw    $t8, ($a1)
/* B23BB0 800ACA10 8719013E */  lh    $t9, 0x13e($t8)
/* B23BB4 800ACA14 AC99005C */  sw    $t9, 0x5c($a0)
/* B23BB8 800ACA18 8CA80000 */  lw    $t0, ($a1)
/* B23BBC 800ACA1C 85090140 */  lh    $t1, 0x140($t0)
/* B23BC0 800ACA20 03E00008 */  jr    $ra
/* B23BC4 800ACA24 AC890058 */   sw    $t1, 0x58($a0)

