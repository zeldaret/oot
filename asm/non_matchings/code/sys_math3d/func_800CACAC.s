glabel func_800CACAC
/* B41E4C 800CACAC AFA7000C */  sw    $a3, 0xc($sp)
/* B41E50 800CACB0 C7A4000C */  lwc1  $f4, 0xc($sp)
/* B41E54 800CACB4 C7A60014 */  lwc1  $f6, 0x14($sp)
/* B41E58 800CACB8 C7AA0018 */  lwc1  $f10, 0x18($sp)
/* B41E5C 800CACBC 8FAE001C */  lw    $t6, 0x1c($sp)
/* B41E60 800CACC0 46062202 */  mul.s $f8, $f4, $f6
/* B41E64 800CACC4 C7A40010 */  lwc1  $f4, 0x10($sp)
/* B41E68 800CACC8 AFA60008 */  sw    $a2, 8($sp)
/* B41E6C 800CACCC 460A7402 */  mul.s $f16, $f14, $f10
/* B41E70 800CACD0 46088481 */  sub.s $f18, $f16, $f8
/* B41E74 800CACD4 46049183 */  div.s $f6, $f18, $f4
/* B41E78 800CACD8 E5C60000 */  swc1  $f6, ($t6)
/* B41E7C 800CACDC C7B00014 */  lwc1  $f16, 0x14($sp)
/* B41E80 800CACE0 C7AA0008 */  lwc1  $f10, 8($sp)
/* B41E84 800CACE4 C7B20018 */  lwc1  $f18, 0x18($sp)
/* B41E88 800CACE8 8FAF0020 */  lw    $t7, 0x20($sp)
/* B41E8C 800CACEC 46105202 */  mul.s $f8, $f10, $f16
/* B41E90 800CACF0 C7AA0010 */  lwc1  $f10, 0x10($sp)
/* B41E94 800CACF4 46126102 */  mul.s $f4, $f12, $f18
/* B41E98 800CACF8 46044181 */  sub.s $f6, $f8, $f4
/* B41E9C 800CACFC 460A3403 */  div.s $f16, $f6, $f10
/* B41EA0 800CAD00 03E00008 */  jr    $ra
/* B41EA4 800CAD04 E5F00000 */   swc1  $f16, ($t7)

