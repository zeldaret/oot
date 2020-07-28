glabel func_800E2124
/* B592C4 800E2124 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B592C8 800E2128 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B592CC 800E212C 8C4E2984 */  lw    $t6, 0x2984($v0)
/* B592D0 800E2130 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B592D4 800E2134 AFBF0014 */  sw    $ra, 0x14($sp)
/* B592D8 800E2138 11C00003 */  beqz  $t6, .L800E2148
/* B592DC 800E213C 00C03825 */   move  $a3, $a2
/* B592E0 800E2140 1000000A */  b     .L800E216C
/* B592E4 800E2144 00001025 */   move  $v0, $zero
.L800E2148:
/* B592E8 800E2148 00047880 */  sll   $t7, $a0, 2
/* B592EC 800E214C 01E47823 */  subu  $t7, $t7, $a0
/* B592F0 800E2150 000F7880 */  sll   $t7, $t7, 2
/* B592F4 800E2154 01E47823 */  subu  $t7, $t7, $a0
/* B592F8 800E2158 000F7940 */  sll   $t7, $t7, 5
/* B592FC 800E215C 004FC021 */  addu  $t8, $v0, $t7
/* B59300 800E2160 AF07360C */  sw    $a3, 0x360c($t8)
/* B59304 800E2164 0C03885F */  jal   func_800E217C
/* B59308 800E2168 00003025 */   move  $a2, $zero
.L800E216C:
/* B5930C 800E216C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B59310 800E2170 27BD0018 */  addiu $sp, $sp, 0x18
/* B59314 800E2174 03E00008 */  jr    $ra
/* B59318 800E2178 00000000 */   nop

