glabel func_800DF074
/* B56214 800DF074 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B56218 800DF078 AFBF0014 */  sw    $ra, 0x14($sp)
/* B5621C 800DF07C AFA5001C */  sw    $a1, 0x1c($sp)
/* B56220 800DF080 AFA40018 */  sw    $a0, 0x18($sp)
/* B56224 800DF084 AFA60020 */  sw    $a2, 0x20($sp)
/* B56228 800DF088 0C03813A */  jal   func_800E04E8
/* B5622C 800DF08C 00C02825 */   move  $a1, $a2
/* B56230 800DF090 10400003 */  beqz  $v0, .L800DF0A0
/* B56234 800DF094 8FA5001C */   lw    $a1, 0x1c($sp)
/* B56238 800DF098 10000009 */  b     .L800DF0C0
/* B5623C 800DF09C 8FBF0014 */   lw    $ra, 0x14($sp)
.L800DF0A0:
/* B56240 800DF0A0 24010003 */  li    $at, 3
/* B56244 800DF0A4 14A10003 */  bne   $a1, $at, .L800DF0B4
/* B56248 800DF0A8 8FA40018 */   lw    $a0, 0x18($sp)
/* B5624C 800DF0AC 10000003 */  b     .L800DF0BC
/* B56250 800DF0B0 00001025 */   move  $v0, $zero
.L800DF0B4:
/* B56254 800DF0B4 0C037C33 */  jal   func_800DF0CC
/* B56258 800DF0B8 8FA60020 */   lw    $a2, 0x20($sp)
.L800DF0BC:
/* B5625C 800DF0BC 8FBF0014 */  lw    $ra, 0x14($sp)
.L800DF0C0:
/* B56260 800DF0C0 27BD0018 */  addiu $sp, $sp, 0x18
/* B56264 800DF0C4 03E00008 */  jr    $ra
/* B56268 800DF0C8 00000000 */   nop   

