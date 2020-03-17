glabel func_800ACA28
/* B23BC8 800ACA28 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B23BCC 800ACA2C AFBF0014 */  sw    $ra, 0x14($sp)
/* B23BD0 800ACA30 240E0140 */  li    $t6, 320
/* B23BD4 800ACA34 240F00F0 */  li    $t7, 240
/* B23BD8 800ACA38 24180042 */  li    $t8, 66
/* B23BDC 800ACA3C AC800068 */  sw    $zero, 0x68($a0)
/* B23BE0 800ACA40 AC8E0054 */  sw    $t6, 0x54($a0)
/* B23BE4 800ACA44 AC8F0050 */  sw    $t7, 0x50($a0)
/* B23BE8 800ACA48 AC80005C */  sw    $zero, 0x5c($a0)
/* B23BEC 800ACA4C AC800058 */  sw    $zero, 0x58($a0)
/* B23BF0 800ACA50 AC800064 */  sw    $zero, 0x64($a0)
/* B23BF4 800ACA54 AC800060 */  sw    $zero, 0x60($a0)
/* B23BF8 800ACA58 AC980080 */  sw    $t8, 0x80($a0)
/* B23BFC 800ACA5C 3C198000 */  lui   $t9, %hi(osTvType) # $t9, 0x8000
/* B23C00 800ACA60 8F390300 */  lw    $t9, %lo(osTvType)($t9)
/* B23C04 800ACA64 24020001 */  li    $v0, 1
/* B23C08 800ACA68 AC82007C */  sw    $v0, 0x7c($a0)
/* B23C0C 800ACA6C AC820078 */  sw    $v0, 0x78($a0)
/* B23C10 800ACA70 AC800074 */  sw    $zero, 0x74($a0)
/* B23C14 800ACA74 AC820070 */  sw    $v0, 0x70($a0)
/* B23C18 800ACA78 0C02B227 */  jal   func_800AC89C
/* B23C1C 800ACA7C AC99006C */   sw    $t9, 0x6c($a0)
/* B23C20 800ACA80 8FBF0014 */  lw    $ra, 0x14($sp)
/* B23C24 800ACA84 27BD0018 */  addiu $sp, $sp, 0x18
/* B23C28 800ACA88 03E00008 */  jr    $ra
/* B23C2C 800ACA8C 00000000 */   nop   

