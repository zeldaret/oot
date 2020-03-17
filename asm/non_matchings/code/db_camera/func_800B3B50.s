glabel func_800B3B50
/* B2ACF0 800B3B50 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B2ACF4 800B3B54 AFBF0014 */  sw    $ra, 0x14($sp)
/* B2ACF8 800B3B58 AFA40030 */  sw    $a0, 0x30($sp)
/* B2ACFC 800B3B5C 00A03825 */  move  $a3, $a1
/* B2AD00 800B3B60 AFA70034 */  sw    $a3, 0x34($sp)
/* B2AD04 800B3B64 00C02825 */  move  $a1, $a2
/* B2AD08 800B3B68 0C01F097 */  jal   func_8007C25C
/* B2AD0C 800B3B6C 27A40018 */   addiu $a0, $sp, 0x18
/* B2AD10 800B3B70 8FA70034 */  lw    $a3, 0x34($sp)
/* B2AD14 800B3B74 C7A60018 */  lwc1  $f6, 0x18($sp)
/* B2AD18 800B3B78 C7B0001C */  lwc1  $f16, 0x1c($sp)
/* B2AD1C 800B3B7C C4E40000 */  lwc1  $f4, ($a3)
/* B2AD20 800B3B80 27AE0024 */  addiu $t6, $sp, 0x24
/* B2AD24 800B3B84 8FA20030 */  lw    $v0, 0x30($sp)
/* B2AD28 800B3B88 46062200 */  add.s $f8, $f4, $f6
/* B2AD2C 800B3B8C C7A60020 */  lwc1  $f6, 0x20($sp)
/* B2AD30 800B3B90 E7A80024 */  swc1  $f8, 0x24($sp)
/* B2AD34 800B3B94 C4EA0004 */  lwc1  $f10, 4($a3)
/* B2AD38 800B3B98 46105480 */  add.s $f18, $f10, $f16
/* B2AD3C 800B3B9C E7B20028 */  swc1  $f18, 0x28($sp)
/* B2AD40 800B3BA0 C4E40008 */  lwc1  $f4, 8($a3)
/* B2AD44 800B3BA4 46062200 */  add.s $f8, $f4, $f6
/* B2AD48 800B3BA8 E7A8002C */  swc1  $f8, 0x2c($sp)
/* B2AD4C 800B3BAC 8DD80000 */  lw    $t8, ($t6)
/* B2AD50 800B3BB0 AC580000 */  sw    $t8, ($v0)
/* B2AD54 800B3BB4 8DCF0004 */  lw    $t7, 4($t6)
/* B2AD58 800B3BB8 AC4F0004 */  sw    $t7, 4($v0)
/* B2AD5C 800B3BBC 8DD80008 */  lw    $t8, 8($t6)
/* B2AD60 800B3BC0 AC580008 */  sw    $t8, 8($v0)
/* B2AD64 800B3BC4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B2AD68 800B3BC8 27BD0030 */  addiu $sp, $sp, 0x30
/* B2AD6C 800B3BCC 03E00008 */  jr    $ra
/* B2AD70 800B3BD0 00000000 */   nop   

