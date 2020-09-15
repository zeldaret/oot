glabel func_800E06CC
/* B5786C 800E06CC 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B57870 800E06D0 AFB6002C */  sw    $s6, 0x2c($sp)
/* B57874 800E06D4 AFA40048 */  sw    $a0, 0x48($sp)
/* B57878 800E06D8 3C048017 */  lui   $a0, %hi(gAudioContext+0x3174) # $a0, 0x8017
/* B5787C 800E06DC 3C168017 */  lui   $s6, %hi(gAudioContext) # $s6, 0x8017
/* B57880 800E06E0 26D6F180 */  addiu $s6, %lo(gAudioContext) # addiu $s6, $s6, -0xe80
/* B57884 800E06E4 248422F4 */  addiu $a0, %lo(gAudioContext+0x3174) # addiu $a0, $a0, 0x22f4
/* B57888 800E06E8 AFBF0034 */  sw    $ra, 0x34($sp)
/* B5788C 800E06EC AFB40024 */  sw    $s4, 0x24($sp)
/* B57890 800E06F0 AFB30020 */  sw    $s3, 0x20($sp)
/* B57894 800E06F4 AFB70030 */  sw    $s7, 0x30($sp)
/* B57898 800E06F8 AFB50028 */  sw    $s5, 0x28($sp)
/* B5789C 800E06FC AFB2001C */  sw    $s2, 0x1c($sp)
/* B578A0 800E0700 AFB10018 */  sw    $s1, 0x18($sp)
/* B578A4 800E0704 AFB00014 */  sw    $s0, 0x14($sp)
/* B578A8 800E0708 0080A025 */  move  $s4, $a0
/* B578AC 800E070C 8ED33178 */  lw    $s3, 0x3178($s6)
/* B578B0 800E0710 0C0378F7 */  jal   Audio_Alloc
/* B578B4 800E0714 8FA50048 */   lw    $a1, 0x48($sp)
/* B578B8 800E0718 14400013 */  bnez  $v0, .L800E0768
/* B578BC 800E071C AFA2003C */   sw    $v0, 0x3c($sp)
/* B578C0 800E0720 3C0E8017 */  lui   $t6, %hi(gAudioContext+0x3174) # $t6, 0x8017
/* B578C4 800E0724 8DCE22F4 */  lw    $t6, %lo(gAudioContext+0x3174)($t6)
/* B578C8 800E0728 3C108017 */  lui   $s0, %hi(gAudioContext+0x3178) # $s0, 0x8017
/* B578CC 800E072C 8E1022F8 */  lw    $s0, %lo(gAudioContext+0x3178)($s0)
/* B578D0 800E0730 3C018017 */  lui   $at, %hi(gAudioContext+0x3178) # $at, 0x8017
/* B578D4 800E0734 3C048017 */  lui   $a0, %hi(gAudioContext+0x3174) # $a0, 0x8017
/* B578D8 800E0738 248422F4 */  addiu $a0, %lo(gAudioContext+0x3174) # addiu $a0, $a0, 0x22f4
/* B578DC 800E073C 8FA50048 */  lw    $a1, 0x48($sp)
/* B578E0 800E0740 0C0378F7 */  jal   Audio_Alloc
/* B578E4 800E0744 AC2E22F8 */   sw    $t6, %lo(gAudioContext+0x3178)($at)
/* B578E8 800E0748 14400005 */  bnez  $v0, .L800E0760
/* B578EC 800E074C AFA2003C */   sw    $v0, 0x3c($sp)
/* B578F0 800E0750 3C018017 */  lui   $at, %hi(gAudioContext+0x3178) # $at, 0x8017
/* B578F4 800E0754 AC3022F8 */  sw    $s0, %lo(gAudioContext+0x3178)($at)
/* B578F8 800E0758 10000077 */  b     .L800E0938
/* B578FC 800E075C 00001025 */   move  $v0, $zero
.L800E0760:
/* B57900 800E0760 3C138017 */  lui   $s3, %hi(gAudioContext+0x3174) # $s3, 0x8017
/* B57904 800E0764 8E7322F4 */  lw    $s3, %lo(gAudioContext+0x3174)($s3)
.L800E0768:
/* B57908 800E0768 8EC7176C */  lw    $a3, 0x176c($s6)
/* B5790C 800E076C 3C128017 */  lui   $s2, %hi(gAudioContext+0x3178) # $s2, 0x8017
/* B57910 800E0770 8E5222F8 */  lw    $s2, %lo(gAudioContext+0x3178)($s2)
/* B57914 800E0774 2415FFFF */  li    $s5, -1
/* B57918 800E0778 18E00034 */  blez  $a3, .L800E084C
/* B5791C 800E077C 00008825 */   move  $s1, $zero
/* B57920 800E0780 3C068017 */  lui   $a2, %hi(gAudioContext) # $a2, 0x8017
/* B57924 800E0784 24C6F180 */  addiu $a2, %lo(gAudioContext) # addiu $a2, $a2, -0xe80
/* B57928 800E0788 24170001 */  li    $s7, 1
/* B5792C 800E078C 8CCF0D78 */  lw    $t7, 0xd78($a2)
.L800E0790:
/* B57930 800E0790 3C0E8017 */  lui   $t6, %hi(gAudioContext) # $t6, 0x8017
/* B57934 800E0794 25CEF180 */  addiu $t6, %lo(gAudioContext) # addiu $t6, $t6, -0xe80
/* B57938 800E0798 15E00023 */  bnez  $t7, .L800E0828
/* B5793C 800E079C 24C40D68 */   addiu $a0, $a2, 0xd68
/* B57940 800E07A0 8C980004 */  lw    $t8, 4($a0)
/* B57944 800E07A4 8C820008 */  lw    $v0, 8($a0)
/* B57948 800E07A8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5794C 800E07AC 8F190000 */  lw    $t9, ($t8)
/* B57950 800E07B0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B57954 800E07B4 00401825 */  move  $v1, $v0
/* B57958 800E07B8 03214024 */  and   $t0, $t9, $at
/* B5795C 800E07BC 00482821 */  addu  $a1, $v0, $t0
/* B57960 800E07C0 24A5FFFF */  addiu $a1, $a1, -1
/* B57964 800E07C4 00B3082B */  sltu  $at, $a1, $s3
/* B57968 800E07C8 10200009 */  beqz  $at, .L800E07F0
/* B5796C 800E07CC 0053082B */   sltu  $at, $v0, $s3
/* B57970 800E07D0 10200007 */  beqz  $at, .L800E07F0
/* B57974 800E07D4 00074880 */   sll   $t1, $a3, 2
/* B57978 800E07D8 01274821 */  addu  $t1, $t1, $a3
/* B5797C 800E07DC 3C0A8017 */  lui   $t2, %hi(gAudioContext) # $t2, 0x8017
/* B57980 800E07E0 254AF180 */  addiu $t2, %lo(gAudioContext) # addiu $t2, $t2, -0xe80
/* B57984 800E07E4 00094880 */  sll   $t1, $t1, 2
/* B57988 800E07E8 10000013 */  b     .L800E0838
/* B5798C 800E07EC 012A1021 */   addu  $v0, $t1, $t2
.L800E07F0:
/* B57990 800E07F0 00B2082B */  sltu  $at, $a1, $s2
/* B57994 800E07F4 14200009 */  bnez  $at, .L800E081C
/* B57998 800E07F8 0072082B */   sltu  $at, $v1, $s2
/* B5799C 800E07FC 14200007 */  bnez  $at, .L800E081C
/* B579A0 800E0800 00075880 */   sll   $t3, $a3, 2
/* B579A4 800E0804 01675821 */  addu  $t3, $t3, $a3
/* B579A8 800E0808 3C0C8017 */  lui   $t4, %hi(gAudioContext) # $t4, 0x8017
/* B579AC 800E080C 258CF180 */  addiu $t4, %lo(gAudioContext) # addiu $t4, $t4, -0xe80
/* B579B0 800E0810 000B5880 */  sll   $t3, $t3, 2
/* B579B4 800E0814 10000008 */  b     .L800E0838
/* B579B8 800E0818 016C1021 */   addu  $v0, $t3, $t4
.L800E081C:
/* B579BC 800E081C AC970010 */  sw    $s7, 0x10($a0)
/* B579C0 800E0820 3C078017 */  lui   $a3, %hi(gAudioContext+0x176c) # $a3, 0x8017
/* B579C4 800E0824 8CE708EC */  lw    $a3, %lo(gAudioContext+0x176c)($a3)
.L800E0828:
/* B579C8 800E0828 00076880 */  sll   $t5, $a3, 2
/* B579CC 800E082C 01A76821 */  addu  $t5, $t5, $a3
/* B579D0 800E0830 000D6880 */  sll   $t5, $t5, 2
/* B579D4 800E0834 01AE1021 */  addu  $v0, $t5, $t6
.L800E0838:
/* B579D8 800E0838 24C60014 */  addiu $a2, $a2, 0x14
/* B579DC 800E083C 00C2082B */  sltu  $at, $a2, $v0
/* B579E0 800E0840 5420FFD3 */  bnezl $at, .L800E0790
/* B579E4 800E0844 8CCF0D78 */   lw    $t7, 0xd78($a2)
/* B579E8 800E0848 00008825 */  move  $s1, $zero
.L800E084C:
/* B579EC 800E084C 3C0F8017 */  lui   $t7, %hi(gAudioContext+0x3404) # $t7, 0x8017
/* B579F0 800E0850 8DEF2584 */  lw    $t7, %lo(gAudioContext+0x3404)($t7)
/* B579F4 800E0854 3C108017 */  lui   $s0, %hi(gAudioContext+0x3174) # $s0, 0x8017
/* B579F8 800E0858 24170001 */  li    $s7, 1
/* B579FC 800E085C 19E00023 */  blez  $t7, .L800E08EC
/* B57A00 800E0860 261022F4 */   addiu $s0, %lo(gAudioContext+0x3174) # addiu $s0, $s0, 0x22f4
/* B57A04 800E0864 2416FFFF */  li    $s6, -1
.L800E0868:
/* B57A08 800E0868 82180010 */  lb    $t8, 0x10($s0)
/* B57A0C 800E086C 57000004 */  bnezl $t8, .L800E0880
/* B57A10 800E0870 8E030018 */   lw    $v1, 0x18($s0)
/* B57A14 800E0874 10000019 */  b     .L800E08DC
/* B57A18 800E0878 8E820290 */   lw    $v0, 0x290($s4)
/* B57A1C 800E087C 8E030018 */  lw    $v1, 0x18($s0)
.L800E0880:
/* B57A20 800E0880 8E190020 */  lw    $t9, 0x20($s0)
/* B57A24 800E0884 03232821 */  addu  $a1, $t9, $v1
/* B57A28 800E0888 24A5FFFF */  addiu $a1, $a1, -1
/* B57A2C 800E088C 00B3082B */  sltu  $at, $a1, $s3
/* B57A30 800E0890 10200005 */  beqz  $at, .L800E08A8
/* B57A34 800E0894 0073082B */   sltu  $at, $v1, $s3
/* B57A38 800E0898 50200004 */  beql  $at, $zero, .L800E08AC
/* B57A3C 800E089C 00B2082B */   sltu  $at, $a1, $s2
/* B57A40 800E08A0 1000000E */  b     .L800E08DC
/* B57A44 800E08A4 8E820290 */   lw    $v0, 0x290($s4)
.L800E08A8:
/* B57A48 800E08A8 00B2082B */  sltu  $at, $a1, $s2
.L800E08AC:
/* B57A4C 800E08AC 14200005 */  bnez  $at, .L800E08C4
/* B57A50 800E08B0 0072082B */   sltu  $at, $v1, $s2
/* B57A54 800E08B4 14200003 */  bnez  $at, .L800E08C4
/* B57A58 800E08B8 00000000 */   nop   
/* B57A5C 800E08BC 10000007 */  b     .L800E08DC
/* B57A60 800E08C0 8E820290 */   lw    $v0, 0x290($s4)
.L800E08C4:
/* B57A64 800E08C4 0C0382B6 */  jal   func_800E0AD8
/* B57A68 800E08C8 26040010 */   addiu $a0, $s0, 0x10
/* B57A6C 800E08CC 56B60003 */  bnel  $s5, $s6, .L800E08DC
/* B57A70 800E08D0 8E820290 */   lw    $v0, 0x290($s4)
/* B57A74 800E08D4 0220A825 */  move  $s5, $s1
/* B57A78 800E08D8 8E820290 */  lw    $v0, 0x290($s4)
.L800E08DC:
/* B57A7C 800E08DC 26310001 */  addiu $s1, $s1, 1
/* B57A80 800E08E0 0222082A */  slt   $at, $s1, $v0
/* B57A84 800E08E4 1420FFE0 */  bnez  $at, .L800E0868
/* B57A88 800E08E8 26100014 */   addiu $s0, $s0, 0x14
.L800E08EC:
/* B57A8C 800E08EC 2416FFFF */  li    $s6, -1
/* B57A90 800E08F0 16B60006 */  bne   $s5, $s6, .L800E090C
/* B57A94 800E08F4 3C0B8017 */   lui   $t3, %hi(gAudioContext+0x3174) # $t3, 0x8017
/* B57A98 800E08F8 3C088017 */  lui   $t0, %hi(gAudioContext+0x3404) # $t0, 0x8017
/* B57A9C 800E08FC 8D152584 */  lw    $s5, %lo(gAudioContext+0x3404)($t0)
/* B57AA0 800E0900 3C018017 */  lui   $at, %hi(gAudioContext+0x3404) # $at, 0x8017
/* B57AA4 800E0904 26A90001 */  addiu $t1, $s5, 1
/* B57AA8 800E0908 AC292584 */  sw    $t1, %lo(gAudioContext+0x3404)($at)
.L800E090C:
/* B57AAC 800E090C 00155080 */  sll   $t2, $s5, 2
/* B57AB0 800E0910 01555021 */  addu  $t2, $t2, $s5
/* B57AB4 800E0914 000A5080 */  sll   $t2, $t2, 2
/* B57AB8 800E0918 256B22F4 */  addiu $t3, %lo(gAudioContext+0x3174) # addiu $t3, $t3, 0x22f4
/* B57ABC 800E091C 014B1821 */  addu  $v1, $t2, $t3
/* B57AC0 800E0920 8FAC003C */  lw    $t4, 0x3c($sp)
/* B57AC4 800E0924 8FAD0048 */  lw    $t5, 0x48($sp)
/* B57AC8 800E0928 A0770010 */  sb    $s7, 0x10($v1)
/* B57ACC 800E092C 24620010 */  addiu $v0, $v1, 0x10
/* B57AD0 800E0930 AC6C0018 */  sw    $t4, 0x18($v1)
/* B57AD4 800E0934 AC6D0020 */  sw    $t5, 0x20($v1)
.L800E0938:
/* B57AD8 800E0938 8FBF0034 */  lw    $ra, 0x34($sp)
/* B57ADC 800E093C 8FB00014 */  lw    $s0, 0x14($sp)
/* B57AE0 800E0940 8FB10018 */  lw    $s1, 0x18($sp)
/* B57AE4 800E0944 8FB2001C */  lw    $s2, 0x1c($sp)
/* B57AE8 800E0948 8FB30020 */  lw    $s3, 0x20($sp)
/* B57AEC 800E094C 8FB40024 */  lw    $s4, 0x24($sp)
/* B57AF0 800E0950 8FB50028 */  lw    $s5, 0x28($sp)
/* B57AF4 800E0954 8FB6002C */  lw    $s6, 0x2c($sp)
/* B57AF8 800E0958 8FB70030 */  lw    $s7, 0x30($sp)
/* B57AFC 800E095C 03E00008 */  jr    $ra
/* B57B00 800E0960 27BD0048 */   addiu $sp, $sp, 0x48

