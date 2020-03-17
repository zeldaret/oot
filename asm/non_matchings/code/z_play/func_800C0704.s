glabel func_800C0704
/* B378A4 800C0704 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B378A8 800C0708 AFA5001C */  sw    $a1, 0x1c($sp)
/* B378AC 800C070C 87AE001E */  lh    $t6, 0x1e($sp)
/* B378B0 800C0710 AFBF0014 */  sw    $ra, 0x14($sp)
/* B378B4 800C0714 AFA60020 */  sw    $a2, 0x20($sp)
/* B378B8 800C0718 000E7880 */  sll   $t7, $t6, 2
/* B378BC 800C071C 008FC021 */  addu  $t8, $a0, $t7
/* B378C0 800C0720 8F040790 */  lw    $a0, 0x790($t8)
/* B378C4 800C0724 27A60020 */  addiu $a2, $sp, 0x20
/* B378C8 800C0728 0C016AA4 */  jal   func_8005AA90
/* B378CC 800C072C 24050020 */   li    $a1, 32
/* B378D0 800C0730 8FBF0014 */  lw    $ra, 0x14($sp)
/* B378D4 800C0734 30430001 */  andi  $v1, $v0, 1
/* B378D8 800C0738 00601025 */  move  $v0, $v1
/* B378DC 800C073C 03E00008 */  jr    $ra
/* B378E0 800C0740 27BD0018 */   addiu $sp, $sp, 0x18

