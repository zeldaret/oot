glabel func_800DD62C
/* B547CC 800DD62C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B547D0 800DD630 AFA7002C */  sw    $a3, 0x2c($sp)
/* B547D4 800DD634 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B547D8 800DD638 AFB00018 */  sw    $s0, 0x18($sp)
/* B547DC 800DD63C 00808025 */  move  $s0, $a0
/* B547E0 800DD640 14E00006 */  bnez  $a3, .L800DD65C
/* B547E4 800DD644 AFBF001C */   sw    $ra, 0x1c($sp)
/* B547E8 800DD648 240503C0 */  li    $a1, 960
/* B547EC 800DD64C 0C036EE7 */  jal   func_800DBB9C
/* B547F0 800DD650 26100008 */   addiu $s0, $s0, 8
/* B547F4 800DD654 10000019 */  b     .L800DD6BC
/* B547F8 800DD658 8FBF001C */   lw    $ra, 0x1c($sp)
.L800DD65C:
/* B547FC 800DD65C 97AF0032 */  lhu   $t7, 0x32($sp)
/* B54800 800DD660 3C010800 */  lui   $at, 0x800
/* B54804 800DD664 02001025 */  move  $v0, $s0
/* B54808 800DD668 01E1C025 */  or    $t8, $t7, $at
/* B5480C 800DD66C 3C0103C0 */  lui   $at, 0x3c0
/* B54810 800DD670 30D9FFFF */  andi  $t9, $a2, 0xffff
/* B54814 800DD674 03214025 */  or    $t0, $t9, $at
/* B54818 800DD678 AC480004 */  sw    $t0, 4($v0)
/* B5481C 800DD67C AC580000 */  sw    $t8, ($v0)
/* B54820 800DD680 8FA90034 */  lw    $t1, 0x34($sp)
/* B54824 800DD684 3C010500 */  lui   $at, 0x500
/* B54828 800DD688 26100008 */  addiu $s0, $s0, 8
/* B5482C 800DD68C 312A00FF */  andi  $t2, $t1, 0xff
/* B54830 800DD690 000A5C00 */  sll   $t3, $t2, 0x10
/* B54834 800DD694 01616025 */  or    $t4, $t3, $at
/* B54838 800DD698 30EDFFFF */  andi  $t5, $a3, 0xffff
/* B5483C 800DD69C 018D7025 */  or    $t6, $t4, $t5
/* B54840 800DD6A0 02001825 */  move  $v1, $s0
/* B54844 800DD6A4 AC6E0000 */  sw    $t6, ($v1)
/* B54848 800DD6A8 8CAF000C */  lw    $t7, 0xc($a1)
/* B5484C 800DD6AC 26100008 */  addiu $s0, $s0, 8
/* B54850 800DD6B0 25F80020 */  addiu $t8, $t7, 0x20
/* B54854 800DD6B4 AC780004 */  sw    $t8, 4($v1)
/* B54858 800DD6B8 8FBF001C */  lw    $ra, 0x1c($sp)
.L800DD6BC:
/* B5485C 800DD6BC 02001025 */  move  $v0, $s0
/* B54860 800DD6C0 8FB00018 */  lw    $s0, 0x18($sp)
/* B54864 800DD6C4 03E00008 */  jr    $ra
/* B54868 800DD6C8 27BD0020 */   addiu $sp, $sp, 0x20

