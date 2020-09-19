glabel func_800E1F7C
/* B5911C 800E1F7C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B59120 800E1F80 AFB30020 */  sw    $s3, 0x20($sp)
/* B59124 800E1F84 3C138017 */  lui   $s3, %hi(gAudioContext) # $s3, 0x8017
/* B59128 800E1F88 2673F180 */  addiu $s3, %lo(gAudioContext) # addiu $s3, $s3, -0xe80
/* B5912C 800E1F8C 8E62283C */  lw    $v0, 0x283c($s3)
/* B59130 800E1F90 00047040 */  sll   $t6, $a0, 1
/* B59134 800E1F94 AFBF0024 */  sw    $ra, 0x24($sp)
/* B59138 800E1F98 AFB2001C */  sw    $s2, 0x1c($sp)
/* B5913C 800E1F9C AFB10018 */  sw    $s1, 0x18($sp)
/* B59140 800E1FA0 AFB00014 */  sw    $s0, 0x14($sp)
/* B59144 800E1FA4 004E7821 */  addu  $t7, $v0, $t6
/* B59148 800E1FA8 95F10000 */  lhu   $s1, ($t7)
/* B5914C 800E1FAC 0222C021 */  addu  $t8, $s1, $v0
/* B59150 800E1FB0 93120000 */  lbu   $s2, ($t8)
/* B59154 800E1FB4 26310001 */  addiu $s1, $s1, 1
/* B59158 800E1FB8 5A400016 */  blezl $s2, .L800E2014
/* B5915C 800E1FBC 8FBF0024 */   lw    $ra, 0x24($sp)
/* B59160 800E1FC0 8E79283C */  lw    $t9, 0x283c($s3)
.L800E1FC4:
/* B59164 800E1FC4 2652FFFF */  addiu $s2, $s2, -1
/* B59168 800E1FC8 24040001 */  li    $a0, 1
/* B5916C 800E1FCC 02394021 */  addu  $t0, $s1, $t9
/* B59170 800E1FD0 91050000 */  lbu   $a1, ($t0)
/* B59174 800E1FD4 0C0389DA */  jal   func_800E2768
/* B59178 800E1FD8 26310001 */   addiu $s1, $s1, 1
/* B5917C 800E1FDC 00408025 */  move  $s0, $v0
/* B59180 800E1FE0 24040001 */  li    $a0, 1
/* B59184 800E1FE4 0C03813A */  jal   func_800E04E8
/* B59188 800E1FE8 00402825 */   move  $a1, $v0
/* B5918C 800E1FEC 14400006 */  bnez  $v0, .L800E2008
/* B59190 800E1FF0 00000000 */   nop
/* B59194 800E1FF4 0C03880B */  jal   func_800E202C
/* B59198 800E1FF8 02002025 */   move  $a0, $s0
/* B5919C 800E1FFC 02002025 */  move  $a0, $s0
/* B591A0 800E2000 0C038686 */  jal   Audio_SetBankLoadStatus
/* B591A4 800E2004 00002825 */   move  $a1, $zero
.L800E2008:
/* B591A8 800E2008 5E40FFEE */  bgtzl $s2, .L800E1FC4
/* B591AC 800E200C 8E79283C */   lw    $t9, 0x283c($s3)
/* B591B0 800E2010 8FBF0024 */  lw    $ra, 0x24($sp)
.L800E2014:
/* B591B4 800E2014 8FB00014 */  lw    $s0, 0x14($sp)
/* B591B8 800E2018 8FB10018 */  lw    $s1, 0x18($sp)
/* B591BC 800E201C 8FB2001C */  lw    $s2, 0x1c($sp)
/* B591C0 800E2020 8FB30020 */  lw    $s3, 0x20($sp)
/* B591C4 800E2024 03E00008 */  jr    $ra
/* B591C8 800E2028 27BD0028 */   addiu $sp, $sp, 0x28

