glabel func_800E20D4
/* B59274 800E20D4 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B59278 800E20D8 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B5927C 800E20DC 8C4E2984 */  lw    $t6, 0x2984($v0)
/* B59280 800E20E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B59284 800E20E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B59288 800E20E8 11C00003 */  beqz  $t6, .L800E20F8
/* B5928C 800E20EC 00047880 */   sll   $t7, $a0, 2
/* B59290 800E20F0 10000008 */  b     .L800E2114
/* B59294 800E20F4 00001025 */   move  $v0, $zero
.L800E20F8:
/* B59298 800E20F8 01E47823 */  subu  $t7, $t7, $a0
/* B5929C 800E20FC 000F7880 */  sll   $t7, $t7, 2
/* B592A0 800E2100 01E47823 */  subu  $t7, $t7, $a0
/* B592A4 800E2104 000F7940 */  sll   $t7, $t7, 5
/* B592A8 800E2108 004FC021 */  addu  $t8, $v0, $t7
/* B592AC 800E210C 0C03885F */  jal   func_800E217C
/* B592B0 800E2110 AF00360C */   sw    $zero, 0x360c($t8)
.L800E2114:
/* B592B4 800E2114 8FBF0014 */  lw    $ra, 0x14($sp)
/* B592B8 800E2118 27BD0018 */  addiu $sp, $sp, 0x18
/* B592BC 800E211C 03E00008 */  jr    $ra
/* B592C0 800E2120 00000000 */   nop

