glabel func_800AA78C
/* B2192C 800AA78C 44856000 */  mtc1  $a1, $f12
/* B21930 800AA790 44867000 */  mtc1  $a2, $f14
/* B21934 800AA794 AFA7000C */  sw    $a3, 0xc($sp)
/* B21938 800AA798 E48C00F4 */  swc1  $f12, 0xf4($a0)
/* B2193C 800AA79C E48E00F8 */  swc1  $f14, 0xf8($a0)
/* B21940 800AA7A0 C7A4000C */  lwc1  $f4, 0xc($sp)
/* B21944 800AA7A4 03E00008 */  jr    $ra
/* B21948 800AA7A8 E48400FC */   swc1  $f4, 0xfc($a0)

