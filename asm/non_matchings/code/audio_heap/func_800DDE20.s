glabel func_800DDE20
/* B54FC0 800DDE20 3C014380 */  li    $at, 0x43800000 # 0.000000
/* B54FC4 800DDE24 44812000 */  mtc1  $at, $f4
/* B54FC8 800DDE28 3C018017 */  lui   $at, %hi(gAudioContext+0x2868)
/* B54FCC 800DDE2C C42619E8 */  lwc1  $f6, %lo(gAudioContext+0x2868)($at)
/* B54FD0 800DDE30 46062202 */  mul.s $f8, $f4, $f6
/* B54FD4 800DDE34 03E00008 */  jr    $ra
/* B54FD8 800DDE38 460C4003 */   div.s $f0, $f8, $f12

