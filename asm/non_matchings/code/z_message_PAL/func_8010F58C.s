glabel func_8010F58C
/* B8672C 8010F58C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B86730 8010F590 AFBF001C */  sw    $ra, 0x1c($sp)
/* B86734 8010F594 AFB10018 */  sw    $s1, 0x18($sp)
/* B86738 8010F598 AFB00014 */  sw    $s0, 0x14($sp)
/* B8673C 8010F59C 8C850000 */  lw    $a1, ($a0)
/* B86740 8010F5A0 00808825 */  move  $s1, $a0
/* B86744 8010F5A4 3C068015 */  lui   $a2, %hi(D_801549C4) # $a2, 0x8015
/* B86748 8010F5A8 24C649C4 */  addiu $a2, %lo(D_801549C4) # addiu $a2, $a2, 0x49c4
/* B8674C 8010F5AC 27A40038 */  addiu $a0, $sp, 0x38
/* B86750 8010F5B0 24070DE2 */  li    $a3, 3554
/* B86754 8010F5B4 0C031AB1 */  jal   Graph_OpenDisps
/* B86758 8010F5B8 00A08025 */   move  $s0, $a1
/* B8675C 8010F5BC 3C0E8016 */  lui   $t6, %hi(gSaveContext+0xf40) # $t6, 0x8016
/* B86760 8010F5C0 91CEF5A0 */  lbu   $t6, %lo(gSaveContext+0xf40)($t6)
/* B86764 8010F5C4 27A4004E */  addiu $a0, $sp, 0x4e
/* B86768 8010F5C8 A7AE004E */  sh    $t6, 0x4e($sp)
/* B8676C 8010F5CC 0C043CB3 */  jal   func_8010F2CC
/* B86770 8010F5D0 8E250000 */   lw    $a1, ($s1)
/* B86774 8010F5D4 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* B86778 8010F5D8 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* B8677C 8010F5DC 3C190001 */  lui   $t9, 1
/* B86780 8010F5E0 0331C821 */  addu  $t9, $t9, $s1
/* B86784 8010F5E4 85F812D4 */  lh    $t8, 0x12d4($t7)
/* B86788 8010F5E8 5300001E */  beql  $t8, $zero, .L8010F664
/* B8678C 8010F5EC 8E0402C0 */   lw    $a0, 0x2c0($s0)
/* B86790 8010F5F0 973903D0 */  lhu   $t9, 0x3d0($t9)
/* B86794 8010F5F4 5320001B */  beql  $t9, $zero, .L8010F664
/* B86798 8010F5F8 8E0402C0 */   lw    $a0, 0x2c0($s0)
/* B8679C 8010F5FC 8E0402C0 */  lw    $a0, 0x2c0($s0)
/* B867A0 8010F600 0C031B08 */  jal   Graph_GfxPlusOne
/* B867A4 8010F604 AFA40050 */   sw    $a0, 0x50($sp)
/* B867A8 8010F608 AFA20054 */  sw    $v0, 0x54($sp)
/* B867AC 8010F60C 8E0302B0 */  lw    $v1, 0x2b0($s0)
/* B867B0 8010F610 3C09DE00 */  lui   $t1, 0xde00
/* B867B4 8010F614 02202025 */  move  $a0, $s1
/* B867B8 8010F618 24680008 */  addiu $t0, $v1, 8
/* B867BC 8010F61C AE0802B0 */  sw    $t0, 0x2b0($s0)
/* B867C0 8010F620 AC690000 */  sw    $t1, ($v1)
/* B867C4 8010F624 8FAA0054 */  lw    $t2, 0x54($sp)
/* B867C8 8010F628 27A50054 */  addiu $a1, $sp, 0x54
/* B867CC 8010F62C 0C043D25 */  jal   func_8010F494
/* B867D0 8010F630 AC6A0004 */   sw    $t2, 4($v1)
/* B867D4 8010F634 8FAB0054 */  lw    $t3, 0x54($sp)
/* B867D8 8010F638 3C0DDF00 */  lui   $t5, 0xdf00
/* B867DC 8010F63C 256C0008 */  addiu $t4, $t3, 8
/* B867E0 8010F640 AFAC0054 */  sw    $t4, 0x54($sp)
/* B867E4 8010F644 AD600004 */  sw    $zero, 4($t3)
/* B867E8 8010F648 AD6D0000 */  sw    $t5, ($t3)
/* B867EC 8010F64C 8FA50054 */  lw    $a1, 0x54($sp)
/* B867F0 8010F650 0C031B0A */  jal   Graph_BranchDlist
/* B867F4 8010F654 8FA40050 */   lw    $a0, 0x50($sp)
/* B867F8 8010F658 8FAE0054 */  lw    $t6, 0x54($sp)
/* B867FC 8010F65C AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B86800 8010F660 8E0402C0 */  lw    $a0, 0x2c0($s0)
.L8010F664:
/* B86804 8010F664 0C031B08 */  jal   Graph_GfxPlusOne
/* B86808 8010F668 AFA40050 */   sw    $a0, 0x50($sp)
/* B8680C 8010F66C AFA20054 */  sw    $v0, 0x54($sp)
/* B86810 8010F670 8E0302B0 */  lw    $v1, 0x2b0($s0)
/* B86814 8010F674 3C18DE00 */  lui   $t8, 0xde00
/* B86818 8010F678 02202025 */  move  $a0, $s1
/* B8681C 8010F67C 246F0008 */  addiu $t7, $v1, 8
/* B86820 8010F680 AE0F02B0 */  sw    $t7, 0x2b0($s0)
/* B86824 8010F684 AC780000 */  sw    $t8, ($v1)
/* B86828 8010F688 8FB90054 */  lw    $t9, 0x54($sp)
/* B8682C 8010F68C 27A50054 */  addiu $a1, $sp, 0x54
/* B86830 8010F690 0C0430E7 */  jal   func_8010C39C
/* B86834 8010F694 AC790004 */   sw    $t9, 4($v1)
/* B86838 8010F698 8FA80054 */  lw    $t0, 0x54($sp)
/* B8683C 8010F69C 3C0ADF00 */  lui   $t2, 0xdf00
/* B86840 8010F6A0 25090008 */  addiu $t1, $t0, 8
/* B86844 8010F6A4 AFA90054 */  sw    $t1, 0x54($sp)
/* B86848 8010F6A8 AD000004 */  sw    $zero, 4($t0)
/* B8684C 8010F6AC AD0A0000 */  sw    $t2, ($t0)
/* B86850 8010F6B0 8FA50054 */  lw    $a1, 0x54($sp)
/* B86854 8010F6B4 0C031B0A */  jal   Graph_BranchDlist
/* B86858 8010F6B8 8FA40050 */   lw    $a0, 0x50($sp)
/* B8685C 8010F6BC 8FAB0054 */  lw    $t3, 0x54($sp)
/* B86860 8010F6C0 3C068015 */  lui   $a2, %hi(D_801549D8) # $a2, 0x8015
/* B86864 8010F6C4 24C649D8 */  addiu $a2, %lo(D_801549D8) # addiu $a2, $a2, 0x49d8
/* B86868 8010F6C8 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B8686C 8010F6CC 8E250000 */  lw    $a1, ($s1)
/* B86870 8010F6D0 27A40038 */  addiu $a0, $sp, 0x38
/* B86874 8010F6D4 0C031AD5 */  jal   Graph_CloseDisps
/* B86878 8010F6D8 24070DFE */   li    $a3, 3582
/* B8687C 8010F6DC 8FBF001C */  lw    $ra, 0x1c($sp)
/* B86880 8010F6E0 8FB00014 */  lw    $s0, 0x14($sp)
/* B86884 8010F6E4 8FB10018 */  lw    $s1, 0x18($sp)
/* B86888 8010F6E8 03E00008 */  jr    $ra
/* B8688C 8010F6EC 27BD0058 */   addiu $sp, $sp, 0x58

