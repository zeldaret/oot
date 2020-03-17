glabel func_800B4D58
/* B2BEF8 800B4D58 A48010CA */  sh    $zero, 0x10ca($a0)
/* B2BEFC 800B4D5C 44800000 */  mtc1  $zero, $f0
/* B2BF00 800B4D60 848210CA */  lh    $v0, 0x10ca($a0)
/* B2BF04 800B4D64 2403FFFF */  li    $v1, -1
/* B2BF08 800B4D68 AC800044 */  sw    $zero, 0x44($a0)
/* B2BF0C 800B4D6C AC800000 */  sw    $zero, ($a0)
/* B2BF10 800B4D70 AC800034 */  sw    $zero, 0x34($a0)
/* B2BF14 800B4D74 AC80003C */  sw    $zero, 0x3c($a0)
/* B2BF18 800B4D78 AC830038 */  sw    $v1, 0x38($a0)
/* B2BF1C 800B4D7C AC830040 */  sw    $v1, 0x40($a0)
/* B2BF20 800B4D80 A480004C */  sh    $zero, 0x4c($a0)
/* B2BF24 800B4D84 A48210C8 */  sh    $v0, 0x10c8($a0)
/* B2BF28 800B4D88 A48210C6 */  sh    $v0, 0x10c6($a0)
/* B2BF2C 800B4D8C E4800048 */  swc1  $f0, 0x48($a0)
/* B2BF30 800B4D90 E4800050 */  swc1  $f0, 0x50($a0)
/* B2BF34 800B4D94 8CAE008C */  lw    $t6, 0x8c($a1)
/* B2BF38 800B4D98 3C018016 */  lui   $at, %hi(D_80161100)
/* B2BF3C 800B4D9C 44800000 */  mtc1  $zero, $f0
/* B2BF40 800B4DA0 AC2E1100 */  sw    $t6, %lo(D_80161100)($at)
/* B2BF44 800B4DA4 240F0001 */  li    $t7, 1
/* B2BF48 800B4DA8 A480007C */  sh    $zero, 0x7c($a0)
/* B2BF4C 800B4DAC A483007E */  sh    $v1, 0x7e($a0)
/* B2BF50 800B4DB0 A48F0080 */  sh    $t7, 0x80($a0)
/* B2BF54 800B4DB4 A4800082 */  sh    $zero, 0x82($a0)
/* B2BF58 800B4DB8 A4800084 */  sh    $zero, 0x84($a0)
/* B2BF5C 800B4DBC A4800086 */  sh    $zero, 0x86($a0)
/* B2BF60 800B4DC0 A4800078 */  sh    $zero, 0x78($a0)
/* B2BF64 800B4DC4 A480007A */  sh    $zero, 0x7a($a0)
/* B2BF68 800B4DC8 A48010C0 */  sh    $zero, 0x10c0($a0)
/* B2BF6C 800B4DCC A48010C2 */  sh    $zero, 0x10c2($a0)
/* B2BF70 800B4DD0 A48010C4 */  sh    $zero, 0x10c4($a0)
/* B2BF74 800B4DD4 E480006C */  swc1  $f0, 0x6c($a0)
/* B2BF78 800B4DD8 E4800070 */  swc1  $f0, 0x70($a0)
/* B2BF7C 800B4DDC 03E00008 */  jr    $ra
/* B2BF80 800B4DE0 E4800074 */   swc1  $f0, 0x74($a0)

