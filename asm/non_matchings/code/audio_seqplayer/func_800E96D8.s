glabel func_800E96D8
/* B60878 800E96D8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B6087C 800E96DC 00057880 */  sll   $t7, $a1, 2
/* B60880 800E96E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B60884 800E96E4 AFA40028 */  sw    $a0, 0x28($sp)
/* B60888 800E96E8 008F3021 */  addu  $a2, $a0, $t7
/* B6088C 800E96EC 8CC70050 */  lw    $a3, 0x50($a2)
/* B60890 800E96F0 14E0000B */  bnez  $a3, .L800E9720
/* B60894 800E96F4 00E02025 */   move  $a0, $a3
/* B60898 800E96F8 3C048017 */  lui   $a0, %hi(gLayerFreeList)
/* B6089C 800E96FC 24844D08 */  addiu $a0, %lo(gLayerFreeList) # addiu $a0, $a0, 0x4d08
/* B608A0 800E9700 0C03A71A */  jal   Audio_AudioListPopBack
/* B608A4 800E9704 AFA6001C */   sw    $a2, 0x1c($sp)
/* B608A8 800E9708 8FA6001C */  lw    $a2, 0x1c($sp)
/* B608AC 800E970C 14400007 */  bnez  $v0, .L800E972C
/* B608B0 800E9710 ACC20050 */   sw    $v0, 0x50($a2)
/* B608B4 800E9714 ACC00050 */  sw    $zero, 0x50($a2)
/* B608B8 800E9718 10000034 */  b     .L800E97EC
/* B608BC 800E971C 2402FFFF */   li    $v0, -1
.L800E9720:
/* B608C0 800E9720 0C039ED8 */  jal   Audio_SeqChanLayerNoteDecay
/* B608C4 800E9724 AFA6001C */   sw    $a2, 0x1c($sp)
/* B608C8 800E9728 8FA6001C */  lw    $a2, 0x1c($sp)
.L800E972C:
/* B608CC 800E972C 8CC30050 */  lw    $v1, 0x50($a2)
/* B608D0 800E9730 8FB80028 */  lw    $t8, 0x28($sp)
/* B608D4 800E9734 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B608D8 800E9738 906B0000 */  lbu   $t3, ($v1)
/* B608DC 800E973C AC780050 */  sw    $t8, 0x50($v1)
/* B608E0 800E9740 8FB90028 */  lw    $t9, 0x28($sp)
/* B608E4 800E9744 356D0080 */  ori   $t5, $t3, 0x80
/* B608E8 800E9748 31AF00BF */  andi  $t7, $t5, 0xbf
/* B608EC 800E974C 8F29007C */  lw    $t1, 0x7c($t9)
/* B608F0 800E9750 44810000 */  mtc1  $at, $f0
/* B608F4 800E9754 44802000 */  mtc1  $zero, $f4
/* B608F8 800E9758 AC690018 */  sw    $t1, 0x18($v1)
/* B608FC 800E975C 8F280080 */  lw    $t0, 0x80($t9)
/* B60900 800E9760 31F900DF */  andi  $t9, $t7, 0xdf
/* B60904 800E9764 A06D0000 */  sb    $t5, ($v1)
/* B60908 800E9768 332900EF */  andi  $t1, $t9, 0xef
/* B6090C 800E976C A06F0000 */  sb    $t7, ($v1)
/* B60910 800E9770 312B00F7 */  andi  $t3, $t1, 0xf7
/* B60914 800E9774 A0790000 */  sb    $t9, ($v1)
/* B60918 800E9778 316D00FB */  andi  $t5, $t3, 0xfb
/* B6091C 800E977C A0690000 */  sb    $t1, ($v1)
/* B60920 800E9780 31AF00FD */  andi  $t7, $t5, 0xfd
/* B60924 800E9784 A06B0000 */  sb    $t3, ($v1)
/* B60928 800E9788 A06D0000 */  sb    $t5, ($v1)
/* B6092C 800E978C AC68001C */  sw    $t0, 0x1c($v1)
/* B60930 800E9790 31F800FE */  andi  $t8, $t7, 0xfe
/* B60934 800E9794 24190080 */  li    $t9, 128
/* B60938 800E9798 24080040 */  li    $t0, 64
/* B6093C 800E979C 240900FF */  li    $t1, 255
/* B60940 800E97A0 A06F0000 */  sb    $t7, ($v1)
/* B60944 800E97A4 00001025 */  move  $v0, $zero
/* B60948 800E97A8 A0600018 */  sb    $zero, 0x18($v1)
/* B6094C 800E97AC A0780000 */  sb    $t8, ($v1)
/* B60950 800E97B0 A0600001 */  sb    $zero, 1($v1)
/* B60954 800E97B4 A0600020 */  sb    $zero, 0x20($v1)
/* B60958 800E97B8 A060006C */  sb    $zero, 0x6c($v1)
/* B6095C 800E97BC A0790003 */  sb    $t9, 3($v1)
/* B60960 800E97C0 A0680006 */  sb    $t0, 6($v1)
/* B60964 800E97C4 A4600010 */  sh    $zero, 0x10($v1)
/* B60968 800E97C8 A4600008 */  sh    $zero, 8($v1)
/* B6096C 800E97CC A460000A */  sh    $zero, 0xa($v1)
/* B60970 800E97D0 A460000C */  sh    $zero, 0xc($v1)
/* B60974 800E97D4 AC60002C */  sw    $zero, 0x2c($v1)
/* B60978 800E97D8 AC600048 */  sw    $zero, 0x48($v1)
/* B6097C 800E97DC A0690002 */  sb    $t1, 2($v1)
/* B60980 800E97E0 E4600030 */  swc1  $f0, 0x30($v1)
/* B60984 800E97E4 E4600034 */  swc1  $f0, 0x34($v1)
/* B60988 800E97E8 E4640038 */  swc1  $f4, 0x38($v1)
.L800E97EC:
/* B6098C 800E97EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B60990 800E97F0 27BD0028 */  addiu $sp, $sp, 0x28
/* B60994 800E97F4 03E00008 */  jr    $ra
/* B60998 800E97F8 00000000 */   nop   

