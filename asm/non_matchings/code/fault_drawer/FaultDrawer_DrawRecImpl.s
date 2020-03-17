glabel FaultDrawer_DrawRecImpl
/* B4D920 800D6780 3C0EFFFA */  lui   $t6, (0xFFFA5A5A >> 16) # lui $t6, 0xfffa
/* B4D924 800D6784 03A07825 */  move  $t7, $sp
/* B4D928 800D6788 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4D92C 800D678C 35CE5A5A */  ori   $t6, (0xFFFA5A5A & 0xFFFF) # ori $t6, $t6, 0x5a5a
.L800D6790:
/* B4D930 800D6790 25EFFFF8 */  addiu $t7, $t7, -8
/* B4D934 800D6794 ADEE0000 */  sw    $t6, ($t7)
/* B4D938 800D6798 15FDFFFD */  bne   $t7, $sp, .L800D6790
/* B4D93C 800D679C ADEE0004 */   sw    $t6, 4($t7)
/* B4D940 800D67A0 3C0D8017 */  lui   $t5, %hi(sFaultDrawerStruct) # $t5, 0x8017
/* B4D944 800D67A4 25ADB680 */  addiu $t5, %lo(sFaultDrawerStruct) # addiu $t5, $t5, -0x4980
/* B4D948 800D67A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4D94C 800D67AC 95A90004 */  lhu   $t1, 4($t5)
/* B4D950 800D67B0 95AE0006 */  lhu   $t6, 6($t5)
/* B4D954 800D67B4 00C41823 */  subu  $v1, $a2, $a0
/* B4D958 800D67B8 00E55823 */  subu  $t3, $a3, $a1
/* B4D95C 800D67BC 24630001 */  addiu $v1, $v1, 1
/* B4D960 800D67C0 256B0001 */  addiu $t3, $t3, 1
/* B4D964 800D67C4 01241023 */  subu  $v0, $t1, $a0
/* B4D968 800D67C8 00604025 */  move  $t0, $v1
/* B4D96C 800D67CC 01605025 */  move  $t2, $t3
/* B4D970 800D67D0 1840002E */  blez  $v0, .L800D688C
/* B4D974 800D67D4 01C56023 */   subu  $t4, $t6, $a1
/* B4D978 800D67D8 1980002C */  blez  $t4, .L800D688C
/* B4D97C 800D67DC 0043082A */   slt   $at, $v0, $v1
/* B4D980 800D67E0 50200003 */  beql  $at, $zero, .L800D67F0
/* B4D984 800D67E4 018B082A */   slt   $at, $t4, $t3
/* B4D988 800D67E8 00404025 */  move  $t0, $v0
/* B4D98C 800D67EC 018B082A */  slt   $at, $t4, $t3
.L800D67F0:
/* B4D990 800D67F0 10200002 */  beqz  $at, .L800D67FC
/* B4D994 800D67F4 00000000 */   nop   
/* B4D998 800D67F8 01805025 */  move  $t2, $t4
.L800D67FC:
/* B4D99C 800D67FC 01250019 */  multu $t1, $a1
/* B4D9A0 800D6800 8DB90000 */  lw    $t9, ($t5)
/* B4D9A4 800D6804 00003825 */  move  $a3, $zero
/* B4D9A8 800D6808 00007812 */  mflo  $t7
/* B4D9AC 800D680C 000FC040 */  sll   $t8, $t7, 1
/* B4D9B0 800D6810 00047840 */  sll   $t7, $a0, 1
/* B4D9B4 800D6814 03197021 */  addu  $t6, $t8, $t9
/* B4D9B8 800D6818 1940001A */  blez  $t2, .L800D6884
/* B4D9BC 800D681C 01CF1021 */   addu  $v0, $t6, $t7
/* B4D9C0 800D6820 97A4002A */  lhu   $a0, 0x2a($sp)
.L800D6824:
/* B4D9C4 800D6824 19000012 */  blez  $t0, .L800D6870
/* B4D9C8 800D6828 00001825 */   move  $v1, $zero
/* B4D9CC 800D682C 31060003 */  andi  $a2, $t0, 3
/* B4D9D0 800D6830 10C00007 */  beqz  $a2, .L800D6850
/* B4D9D4 800D6834 3C098017 */   lui   $t1, %hi(sFaultDrawerStruct+4) # $t1, 0x8017
/* B4D9D8 800D6838 00C02825 */  move  $a1, $a2
.L800D683C:
/* B4D9DC 800D683C 24630001 */  addiu $v1, $v1, 1
/* B4D9E0 800D6840 A4440000 */  sh    $a0, ($v0)
/* B4D9E4 800D6844 14A3FFFD */  bne   $a1, $v1, .L800D683C
/* B4D9E8 800D6848 24420002 */   addiu $v0, $v0, 2
/* B4D9EC 800D684C 10680007 */  beq   $v1, $t0, .L800D686C
.L800D6850:
/* B4D9F0 800D6850 24630004 */   addiu $v1, $v1, 4
/* B4D9F4 800D6854 A4440002 */  sh    $a0, 2($v0)
/* B4D9F8 800D6858 A4440004 */  sh    $a0, 4($v0)
/* B4D9FC 800D685C A4440006 */  sh    $a0, 6($v0)
/* B4DA00 800D6860 24420008 */  addiu $v0, $v0, 8
/* B4DA04 800D6864 1468FFFA */  bne   $v1, $t0, .L800D6850
/* B4DA08 800D6868 A444FFF8 */   sh    $a0, -8($v0)
.L800D686C:
/* B4DA0C 800D686C 9529B684 */  lhu   $t1, %lo(sFaultDrawerStruct+4)($t1)
.L800D6870:
/* B4DA10 800D6870 0128C023 */  subu  $t8, $t1, $t0
/* B4DA14 800D6874 24E70001 */  addiu $a3, $a3, 1
/* B4DA18 800D6878 0018C840 */  sll   $t9, $t8, 1
/* B4DA1C 800D687C 14EAFFE9 */  bne   $a3, $t2, .L800D6824
/* B4DA20 800D6880 00591021 */   addu  $v0, $v0, $t9
.L800D6884:
/* B4DA24 800D6884 0C041924 */  jal   osWritebackDCacheAll
/* B4DA28 800D6888 00000000 */   nop   
.L800D688C:
/* B4DA2C 800D688C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4DA30 800D6890 27BD0018 */  addiu $sp, $sp, 0x18
/* B4DA34 800D6894 03E00008 */  jr    $ra
/* B4DA38 800D6898 00000000 */   nop   