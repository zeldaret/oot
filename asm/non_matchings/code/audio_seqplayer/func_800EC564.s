glabel func_800EC564
/* B63704 800EC564 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B63708 800EC568 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B6370C 800EC56C 846E2854 */  lh    $t6, 0x2854($v1)
/* B63710 800EC570 8C792894 */  lw    $t9, 0x2894($v1)
/* B63714 800EC574 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B63718 800EC578 01C47823 */  subu  $t7, $t6, $a0
/* B6371C 800EC57C 25F8FFFF */  addiu $t8, $t7, -1
/* B63720 800EC580 03190019 */  multu $t8, $t9
/* B63724 800EC584 8462285C */  lh    $v0, 0x285c($v1)
/* B63728 800EC588 AFB10018 */  sw    $s1, 0x18($sp)
/* B6372C 800EC58C AFB30020 */  sw    $s3, 0x20($sp)
/* B63730 800EC590 AFB2001C */  sw    $s2, 0x1c($sp)
/* B63734 800EC594 3C118017 */  lui   $s1, %hi(gAudioContext) # $s1, 0x8017
/* B63738 800EC598 AFBF0024 */  sw    $ra, 0x24($sp)
/* B6373C 800EC59C AFB00014 */  sw    $s0, 0x14($sp)
/* B63740 800EC5A0 2631F180 */  addiu $s1, %lo(gAudioContext) # addiu $s1, $s1, -0xe80
/* B63744 800EC5A4 00009025 */  move  $s2, $zero
/* B63748 800EC5A8 00004012 */  mflo  $t0
/* B6374C 800EC5AC AC685B84 */  sw    $t0, 0x5b84($v1)
/* B63750 800EC5B0 10400010 */  beqz  $v0, .L800EC5F4
/* B63754 800EC5B4 24130001 */   li    $s3, 1
.L800EC5B8:
/* B63758 800EC5B8 8E293530 */  lw    $t1, 0x3530($s1)
/* B6375C 800EC5BC 26303530 */  addiu $s0, $s1, 0x3530
/* B63760 800EC5C0 000957C2 */  srl   $t2, $t1, 0x1f
/* B63764 800EC5C4 566A0008 */  bnel  $s3, $t2, .L800EC5E8
/* B63768 800EC5C8 26520001 */   addiu $s2, $s2, 1
/* B6376C 800EC5CC 0C03AF56 */  jal   func_800EBD58
/* B63770 800EC5D0 02002025 */   move  $a0, $s0
/* B63774 800EC5D4 0C03A2A2 */  jal   Audio_SequencePlayerProcessSound
/* B63778 800EC5D8 02002025 */   move  $a0, $s0
/* B6377C 800EC5DC 3C028017 */  lui   $v0, %hi(D_801719DC) # $v0, 0x8017
/* B63780 800EC5E0 844219DC */  lh    $v0, %lo(D_801719DC)($v0)
/* B63784 800EC5E4 26520001 */  addiu $s2, $s2, 1
.L800EC5E8:
/* B63788 800EC5E8 0242082B */  sltu  $at, $s2, $v0
/* B6378C 800EC5EC 1420FFF2 */  bnez  $at, .L800EC5B8
/* B63790 800EC5F0 26310160 */   addiu $s1, $s1, 0x160
.L800EC5F4:
/* B63794 800EC5F4 0C039BE3 */  jal   Audio_ProcessNotes
/* B63798 800EC5F8 00000000 */   nop   
/* B6379C 800EC5FC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B637A0 800EC600 8FB00014 */  lw    $s0, 0x14($sp)
/* B637A4 800EC604 8FB10018 */  lw    $s1, 0x18($sp)
/* B637A8 800EC608 8FB2001C */  lw    $s2, 0x1c($sp)
/* B637AC 800EC60C 8FB30020 */  lw    $s3, 0x20($sp)
/* B637B0 800EC610 03E00008 */  jr    $ra
/* B637B4 800EC614 27BD0028 */   addiu $sp, $sp, 0x28

