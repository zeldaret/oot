glabel func_800DE4B0
/* B55650 800DE4B0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B55654 800DE4B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B55658 800DE4B8 10800009 */  beqz  $a0, .L800DE4E0
/* B5565C 800DE4BC 00803025 */   move  $a2, $a0
/* B55660 800DE4C0 24010001 */  li    $at, 1
/* B55664 800DE4C4 1081000C */  beq   $a0, $at, .L800DE4F8
/* B55668 800DE4C8 3C038017 */   lui   $v1, %hi(gAudioContext+0x2b30)
/* B5566C 800DE4CC 24010002 */  li    $at, 2
/* B55670 800DE4D0 1081000E */  beq   $a0, $at, .L800DE50C
/* B55674 800DE4D4 3C038017 */   lui   $v1, %hi(gAudioContext+0x2c40)
/* B55678 800DE4D8 10000010 */  b     .L800DE51C
/* B5567C 800DE4DC 8FA3002C */   lw    $v1, 0x2c($sp)
.L800DE4E0:
/* B55680 800DE4E0 3C0E8017 */  lui   $t6, %hi(gAudioContext+0x3498) # $t6, 0x8017
/* B55684 800DE4E4 3C038017 */  lui   $v1, %hi(gAudioContext+0x2a20) # $v1, 0x8017
/* B55688 800DE4E8 25CE2618 */  addiu $t6, %lo(gAudioContext+0x3498) # addiu $t6, $t6, 0x2618
/* B5568C 800DE4EC 24631BA0 */  addiu $v1, %lo(gAudioContext+0x2a20) # addiu $v1, $v1, 0x1ba0
/* B55690 800DE4F0 1000000A */  b     .L800DE51C
/* B55694 800DE4F4 AFAE001C */   sw    $t6, 0x1c($sp)
.L800DE4F8:
/* B55698 800DE4F8 3C0F8017 */  lui   $t7, %hi(gAudioContext+0x3468) # $t7, 0x8017
/* B5569C 800DE4FC 25EF25E8 */  addiu $t7, %lo(gAudioContext+0x3468) # addiu $t7, $t7, 0x25e8
/* B556A0 800DE500 24631CB0 */  addiu $v1, %lo(gAudioContext+0x2b30)
/* B556A4 800DE504 10000005 */  b     .L800DE51C
/* B556A8 800DE508 AFAF001C */   sw    $t7, 0x1c($sp)
.L800DE50C:
/* B556AC 800DE50C 3C188017 */  lui   $t8, %hi(gAudioContext+0x3438) # $t8, 0x8017
/* B556B0 800DE510 271825B8 */  addiu $t8, %lo(gAudioContext+0x3438) # addiu $t8, $t8, 0x25b8
/* B556B4 800DE514 24631DC0 */  addiu $v1, %lo(gAudioContext+0x2c40)
/* B556B8 800DE518 AFB8001C */  sw    $t8, 0x1c($sp)
.L800DE51C:
/* B556BC 800DE51C 8C650000 */  lw    $a1, ($v1)
/* B556C0 800DE520 24620004 */  addiu $v0, $v1, 4
/* B556C4 800DE524 24010002 */  li    $at, 2
/* B556C8 800DE528 10A0002D */  beqz  $a1, .L800DE5E0
/* B556CC 800DE52C 0005C880 */   sll   $t9, $a1, 2
/* B556D0 800DE530 0325C823 */  subu  $t9, $t9, $a1
/* B556D4 800DE534 8C49000C */  lw    $t1, 0xc($v0)
/* B556D8 800DE538 0019C880 */  sll   $t9, $t9, 2
/* B556DC 800DE53C 00794021 */  addu  $t0, $v1, $t9
/* B556E0 800DE540 8D040008 */  lw    $a0, 8($t0)
/* B556E4 800DE544 252AFFFF */  addiu $t2, $t1, -1
/* B556E8 800DE548 AC4A000C */  sw    $t2, 0xc($v0)
/* B556EC 800DE54C 14C1000C */  bne   $a2, $at, .L800DE580
/* B556F0 800DE550 AC440004 */   sw    $a0, 4($v0)
/* B556F4 800DE554 8C6B0000 */  lw    $t3, ($v1)
/* B556F8 800DE558 000B6080 */  sll   $t4, $t3, 2
/* B556FC 800DE55C 018B6023 */  subu  $t4, $t4, $t3
/* B55700 800DE560 000C6080 */  sll   $t4, $t4, 2
/* B55704 800DE564 006C6821 */  addu  $t5, $v1, $t4
/* B55708 800DE568 85A40012 */  lh    $a0, 0x12($t5)
/* B5570C 800DE56C AFA60030 */  sw    $a2, 0x30($sp)
/* B55710 800DE570 0C03839B */  jal   func_800E0E6C
/* B55714 800DE574 AFA3002C */   sw    $v1, 0x2c($sp)
/* B55718 800DE578 8FA3002C */  lw    $v1, 0x2c($sp)
/* B5571C 800DE57C 8FA60030 */  lw    $a2, 0x30($sp)
.L800DE580:
/* B55720 800DE580 24010001 */  li    $at, 1
/* B55724 800DE584 54C1000B */  bnel  $a2, $at, .L800DE5B4
/* B55728 800DE588 8C680000 */   lw    $t0, ($v1)
/* B5572C 800DE58C 8C6E0000 */  lw    $t6, ($v1)
/* B55730 800DE590 000E7880 */  sll   $t7, $t6, 2
/* B55734 800DE594 01EE7823 */  subu  $t7, $t7, $t6
/* B55738 800DE598 000F7880 */  sll   $t7, $t7, 2
/* B5573C 800DE59C 006FC021 */  addu  $t8, $v1, $t7
/* B55740 800DE5A0 87040012 */  lh    $a0, 0x12($t8)
/* B55744 800DE5A4 0C037812 */  jal   func_800DE048
/* B55748 800DE5A8 AFA3002C */   sw    $v1, 0x2c($sp)
/* B5574C 800DE5AC 8FA3002C */  lw    $v1, 0x2c($sp)
/* B55750 800DE5B0 8C680000 */  lw    $t0, ($v1)
.L800DE5B4:
/* B55754 800DE5B4 8FB9001C */  lw    $t9, 0x1c($sp)
/* B55758 800DE5B8 00084880 */  sll   $t1, $t0, 2
/* B5575C 800DE5BC 01284823 */  subu  $t1, $t1, $t0
/* B55760 800DE5C0 00094880 */  sll   $t1, $t1, 2
/* B55764 800DE5C4 00695021 */  addu  $t2, $v1, $t1
/* B55768 800DE5C8 854B0012 */  lh    $t3, 0x12($t2)
/* B5576C 800DE5CC 032B6021 */  addu  $t4, $t9, $t3
/* B55770 800DE5D0 A1800000 */  sb    $zero, ($t4)
/* B55774 800DE5D4 8C6D0000 */  lw    $t5, ($v1)
/* B55778 800DE5D8 25AEFFFF */  addiu $t6, $t5, -1
/* B5577C 800DE5DC AC6E0000 */  sw    $t6, ($v1)
.L800DE5E0:
/* B55780 800DE5E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B55784 800DE5E4 27BD0030 */  addiu $sp, $sp, 0x30
/* B55788 800DE5E8 03E00008 */  jr    $ra
/* B5578C 800DE5EC 00000000 */   nop   

