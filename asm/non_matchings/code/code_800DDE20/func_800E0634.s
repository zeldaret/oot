glabel func_800E0634
/* B577D4 800E0634 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B577D8 800E0638 AFA40018 */  sw    $a0, 0x18($sp)
/* B577DC 800E063C AFBF0014 */  sw    $ra, 0x14($sp)
/* B577E0 800E0640 AFA5001C */  sw    $a1, 0x1c($sp)
/* B577E4 800E0644 3C048017 */  lui   $a0, %hi(D_80171B40) # $a0, 0x8017
/* B577E8 800E0648 24841B40 */  addiu $a0, %lo(D_80171B40) # addiu $a0, $a0, 0x1b40
/* B577EC 800E064C 0C0378AC */  jal   func_800DE2B0
/* B577F0 800E0650 8FA50018 */   lw    $a1, 0x18($sp)
/* B577F4 800E0654 14400004 */  bnez  $v0, .L800E0668
/* B577F8 800E0658 00402825 */   move  $a1, $v0
/* B577FC 800E065C 3C018017 */  lui   $at, %hi(D_80172068) # $at, 0x8017
/* B57800 800E0660 10000005 */  b     .L800E0678
/* B57804 800E0664 AC202068 */   sw    $zero, %lo(D_80172068)($at)
.L800E0668:
/* B57808 800E0668 3C048017 */  lui   $a0, %hi(D_80172060) # $a0, 0x8017
/* B5780C 800E066C 24842060 */  addiu $a0, %lo(D_80172060) # addiu $a0, $a0, 0x2060
/* B57810 800E0670 0C03790D */  jal   func_800DE434
/* B57814 800E0674 8FA60018 */   lw    $a2, 0x18($sp)
.L800E0678:
/* B57818 800E0678 3C048017 */  lui   $a0, %hi(D_80171B40) # $a0, 0x8017
/* B5781C 800E067C 24841B40 */  addiu $a0, %lo(D_80171B40) # addiu $a0, $a0, 0x1b40
/* B57820 800E0680 0C0378AC */  jal   func_800DE2B0
/* B57824 800E0684 8FA5001C */   lw    $a1, 0x1c($sp)
/* B57828 800E0688 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B5782C 800E068C 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B57830 800E0690 14400003 */  bnez  $v0, .L800E06A0
/* B57834 800E0694 00402825 */   move  $a1, $v0
/* B57838 800E0698 10000007 */  b     .L800E06B8
/* B5783C 800E069C AC60317C */   sw    $zero, 0x317c($v1)
.L800E06A0:
/* B57840 800E06A0 3C048017 */  lui   $a0, %hi(D_801722F4) # $a0, 0x8017
/* B57844 800E06A4 248422F4 */  addiu $a0, %lo(D_801722F4) # addiu $a0, $a0, 0x22f4
/* B57848 800E06A8 0C03790D */  jal   func_800DE434
/* B5784C 800E06AC 8FA6001C */   lw    $a2, 0x1c($sp)
/* B57850 800E06B0 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B57854 800E06B4 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
.L800E06B8:
/* B57858 800E06B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5785C 800E06BC AC603170 */  sw    $zero, 0x3170($v1)
/* B57860 800E06C0 AC603404 */  sw    $zero, 0x3404($v1)
/* B57864 800E06C4 03E00008 */  jr    $ra
/* B57868 800E06C8 27BD0018 */   addiu $sp, $sp, 0x18

