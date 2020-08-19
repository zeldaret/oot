glabel func_800DF7C4
/* B56964 800DF7C4 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B56968 800DF7C8 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B5696C 800DF7CC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B56970 800DF7D0 846E2848 */  lh    $t6, 0x2848($v1)
/* B56974 800DF7D4 24010002 */  li    $at, 2
/* B56978 800DF7D8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B5697C 800DF7DC AFB30020 */  sw    $s3, 0x20($sp)
/* B56980 800DF7E0 AFB2001C */  sw    $s2, 0x1c($sp)
/* B56984 800DF7E4 AFB10018 */  sw    $s1, 0x18($sp)
/* B56988 800DF7E8 15C10003 */  bne   $t6, $at, .L800DF7F8
/* B5698C 800DF7EC AFB00014 */   sw    $s0, 0x14($sp)
/* B56990 800DF7F0 10000002 */  b     .L800DF7FC
/* B56994 800DF7F4 24120002 */   li    $s2, 2
.L800DF7F8:
/* B56998 800DF7F8 24120001 */  li    $s2, 1
.L800DF7FC:
/* B5699C 800DF7FC 80620001 */  lb    $v0, 1($v1)
/* B569A0 800DF800 00009825 */  move  $s3, $zero
/* B569A4 800DF804 5840001A */  blezl $v0, .L800DF870
/* B569A8 800DF808 8FBF0024 */   lw    $ra, 0x24($sp)
.L800DF80C:
/* B569AC 800DF80C 1A400013 */  blez  $s2, .L800DF85C
/* B569B0 800DF810 00008025 */   move  $s0, $zero
/* B569B4 800DF814 00137880 */  sll   $t7, $s3, 2
/* B569B8 800DF818 01F37823 */  subu  $t7, $t7, $s3
/* B569BC 800DF81C 000F7880 */  sll   $t7, $t7, 2
/* B569C0 800DF820 01F37823 */  subu  $t7, $t7, $s3
/* B569C4 800DF824 000F78C0 */  sll   $t7, $t7, 3
/* B569C8 800DF828 01F37821 */  addu  $t7, $t7, $s3
/* B569CC 800DF82C 000F78C0 */  sll   $t7, $t7, 3
/* B569D0 800DF830 3C198017 */  lui   $t9, %hi(gAudioContext) # $t9, 0x8017
/* B569D4 800DF834 2739F180 */  addiu $t9, %lo(gAudioContext) # addiu $t9, $t9, -0xe80
/* B569D8 800DF838 25F80018 */  addiu $t8, $t7, 0x18
/* B569DC 800DF83C 03198821 */  addu  $s1, $t8, $t9
.L800DF840:
/* B569E0 800DF840 0C037DEF */  jal   func_800DF7BC
/* B569E4 800DF844 02202025 */   move  $a0, $s1
/* B569E8 800DF848 26100001 */  addiu $s0, $s0, 1
/* B569EC 800DF84C 1612FFFC */  bne   $s0, $s2, .L800DF840
/* B569F0 800DF850 00000000 */   nop   
/* B569F4 800DF854 3C028017 */  lui   $v0, %hi(D_8016F181) # $v0, 0x8017
/* B569F8 800DF858 8042F181 */  lb    $v0, %lo(D_8016F181)($v0)
.L800DF85C:
/* B569FC 800DF85C 26730001 */  addiu $s3, $s3, 1
/* B56A00 800DF860 0262082A */  slt   $at, $s3, $v0
/* B56A04 800DF864 1420FFE9 */  bnez  $at, .L800DF80C
/* B56A08 800DF868 00000000 */   nop   
/* B56A0C 800DF86C 8FBF0024 */  lw    $ra, 0x24($sp)
.L800DF870:
/* B56A10 800DF870 8FB00014 */  lw    $s0, 0x14($sp)
/* B56A14 800DF874 8FB10018 */  lw    $s1, 0x18($sp)
/* B56A18 800DF878 8FB2001C */  lw    $s2, 0x1c($sp)
/* B56A1C 800DF87C 8FB30020 */  lw    $s3, 0x20($sp)
/* B56A20 800DF880 03E00008 */  jr    $ra
/* B56A24 800DF884 27BD0028 */   addiu $sp, $sp, 0x28

