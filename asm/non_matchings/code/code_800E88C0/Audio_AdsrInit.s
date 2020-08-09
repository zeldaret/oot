glabel Audio_AdsrInit
/* B60184 800E8FE4 AFA60008 */  sw    $a2, 8($sp)
/* B60188 800E8FE8 44800000 */  mtc1  $zero, $f0
/* B6018C 800E8FEC A0800000 */  sb    $zero, ($a0)
/* B60190 800E8FF0 A4800002 */  sh    $zero, 2($a0)
/* B60194 800E8FF4 AC85001C */  sw    $a1, 0x1c($a0)
/* B60198 800E8FF8 E4800004 */  swc1  $f0, 4($a0)
/* B6019C 800E8FFC 03E00008 */  jr    $ra
/* B601A0 800E9000 E4800010 */   swc1  $f0, 0x10($a0)

