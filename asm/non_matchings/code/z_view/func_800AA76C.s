glabel func_800AA76C
/* B2190C 800AA76C 44856000 */  mtc1  $a1, $f12
/* B21910 800AA770 44867000 */  mtc1  $a2, $f14
/* B21914 800AA774 AFA7000C */  sw    $a3, 0xc($sp)
/* B21918 800AA778 E48C00E8 */  swc1  $f12, 0xe8($a0)
/* B2191C 800AA77C E48E00EC */  swc1  $f14, 0xec($a0)
/* B21920 800AA780 C7A4000C */  lwc1  $f4, 0xc($sp)
/* B21924 800AA784 03E00008 */  jr    $ra
/* B21928 800AA788 E48400F0 */   swc1  $f4, 0xf0($a0)

