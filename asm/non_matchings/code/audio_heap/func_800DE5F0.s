glabel func_800DE5F0
/* B55790 800DE5F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B55794 800DE5F4 00803025 */  move  $a2, $a0
/* B55798 800DE5F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B5579C 800DE5FC 3C048017 */  lui   $a0, %hi(D_80171B30) # $a0, 0x8017
/* B557A0 800DE600 3C058017 */  lui   $a1, %hi(D_801726A4) # $a1, 0x8017
/* B557A4 800DE604 8CA526A4 */  lw    $a1, %lo(D_801726A4)($a1)
/* B557A8 800DE608 24841B30 */  addiu $a0, %lo(D_80171B30) # addiu $a0, $a0, 0x1b30
/* B557AC 800DE60C 0C03790D */  jal   func_800DE434
/* B557B0 800DE610 AFA60018 */   sw    $a2, 0x18($sp)
/* B557B4 800DE614 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B557B8 800DE618 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B557BC 800DE61C 8FA70018 */  lw    $a3, 0x18($sp)
/* B557C0 800DE620 8C4E3524 */  lw    $t6, 0x3524($v0)
/* B557C4 800DE624 8C4F3528 */  lw    $t7, 0x3528($v0)
/* B557C8 800DE628 3C048017 */  lui   $a0, %hi(D_80171B10) # $a0, 0x8017
/* B557CC 800DE62C 24841B10 */  addiu $a0, %lo(D_80171B10) # addiu $a0, $a0, 0x1b10
/* B557D0 800DE630 01C72821 */  addu  $a1, $t6, $a3
/* B557D4 800DE634 0C03790D */  jal   func_800DE434
/* B557D8 800DE638 01E73023 */   subu  $a2, $t7, $a3
/* B557DC 800DE63C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B557E0 800DE640 3C018017 */  lui   $at, %hi(D_80171B20) # $at, 0x8017
/* B557E4 800DE644 AC201B20 */  sw    $zero, %lo(D_80171B20)($at)
/* B557E8 800DE648 03E00008 */  jr    $ra
/* B557EC 800DE64C 27BD0018 */   addiu $sp, $sp, 0x18

