glabel func_800E27F8
/* B59998 800E27F8 10800009 */  beqz  $a0, .L800E2820
/* B5999C 800E27FC 3C038017 */   lui   $v1, %hi(gAudioContext+0x2830)
/* B599A0 800E2800 24010001 */  li    $at, 1
/* B599A4 800E2804 10810008 */  beq   $a0, $at, .L800E2828
/* B599A8 800E2808 3C038017 */   lui   $v1, %hi(gAudioContext+0x2834)
/* B599AC 800E280C 24010002 */  li    $at, 2
/* B599B0 800E2810 10810007 */  beq   $a0, $at, .L800E2830
/* B599B4 800E2814 3C038017 */   lui   $v1, %hi(gAudioContext+0x2838)
/* B599B8 800E2818 03E00008 */  jr    $ra
/* B599BC 800E281C 00001025 */   move  $v0, $zero

.L800E2820:
/* B599C0 800E2820 03E00008 */  jr    $ra
/* B599C4 800E2824 8C6219B0 */   lw    $v0, %lo(gAudioContext+0x2830)($v1)

.L800E2828:
/* B599C8 800E2828 03E00008 */  jr    $ra
/* B599CC 800E282C 8C6219B4 */   lw    $v0, %lo(gAudioContext+0x2834)($v1)

.L800E2830:
/* B599D0 800E2830 8C6319B8 */  lw    $v1, %lo(gAudioContext+0x2838)($v1)
/* B599D4 800E2834 03E00008 */  jr    $ra
/* B599D8 800E2838 00601025 */   move  $v0, $v1

