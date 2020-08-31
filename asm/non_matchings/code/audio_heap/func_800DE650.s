glabel func_800DE650
/* B557F0 800DE650 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B557F4 800DE654 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B557F8 800DE658 8C4E2990 */  lw    $t6, 0x2990($v0)
/* B557FC 800DE65C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B55800 800DE660 AFA40018 */  sw    $a0, 0x18($sp)
/* B55804 800DE664 8FAF0018 */  lw    $t7, 0x18($sp)
/* B55808 800DE668 AFBF0014 */  sw    $ra, 0x14($sp)
/* B5580C 800DE66C 3C048017 */  lui   $a0, %hi(D_80171B10) # $a0, 0x8017
/* B55810 800DE670 AC4E2994 */  sw    $t6, 0x2994($v0)
/* B55814 800DE674 24841B10 */  addiu $a0, %lo(D_80171B10) # addiu $a0, $a0, 0x1b10
/* B55818 800DE678 0C0378F7 */  jal   func_800DE3DC
/* B5581C 800DE67C 8DE50000 */   lw    $a1, ($t7)
/* B55820 800DE680 8FB80018 */  lw    $t8, 0x18($sp)
/* B55824 800DE684 3C048017 */  lui   $a0, %hi(D_80171B40) # $a0, 0x8017
/* B55828 800DE688 24841B40 */  addiu $a0, %lo(D_80171B40) # addiu $a0, $a0, 0x1b40
/* B5582C 800DE68C 00402825 */  move  $a1, $v0
/* B55830 800DE690 0C03790D */  jal   func_800DE434
/* B55834 800DE694 8F060000 */   lw    $a2, ($t8)
/* B55838 800DE698 8FB90018 */  lw    $t9, 0x18($sp)
/* B5583C 800DE69C 3C048017 */  lui   $a0, %hi(D_80171B10) # $a0, 0x8017
/* B55840 800DE6A0 24841B10 */  addiu $a0, %lo(D_80171B10) # addiu $a0, $a0, 0x1b10
/* B55844 800DE6A4 0C0378F7 */  jal   func_800DE3DC
/* B55848 800DE6A8 8F25000C */   lw    $a1, 0xc($t9)
/* B5584C 800DE6AC 8FA80018 */  lw    $t0, 0x18($sp)
/* B55850 800DE6B0 3C048017 */  lui   $a0, %hi(D_80171B70) # $a0, 0x8017
/* B55854 800DE6B4 24841B70 */  addiu $a0, %lo(D_80171B70) # addiu $a0, $a0, 0x1b70
/* B55858 800DE6B8 00402825 */  move  $a1, $v0
/* B5585C 800DE6BC 0C03790D */  jal   func_800DE434
/* B55860 800DE6C0 8D06000C */   lw    $a2, 0xc($t0)
/* B55864 800DE6C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B55868 800DE6C8 27BD0018 */  addiu $sp, $sp, 0x18
/* B5586C 800DE6CC 03E00008 */  jr    $ra
/* B55870 800DE6D0 00000000 */   nop   

