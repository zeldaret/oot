glabel func_800DB680
/* B52820 800DB680 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B52824 800DB684 AFBF002C */  sw    $ra, 0x2c($sp)
/* B52828 800DB688 AFB20028 */  sw    $s2, 0x28($sp)
/* B5282C 800DB68C AFB10024 */  sw    $s1, 0x24($sp)
/* B52830 800DB690 AFB00020 */  sw    $s0, 0x20($sp)
/* B52834 800DB694 AFA60038 */  sw    $a2, 0x38($sp)
/* B52838 800DB698 90AE0003 */  lbu   $t6, 3($a1)
/* B5283C 800DB69C 87B9003A */  lh    $t9, 0x3a($sp)
/* B52840 800DB6A0 3C090800 */  lui   $t1, (0x08000C80 >> 16) # lui $t1, 0x800
/* B52844 800DB6A4 000E78C0 */  sll   $t7, $t6, 3
/* B52848 800DB6A8 01EE7821 */  addu  $t7, $t7, $t6
/* B5284C 800DB6AC 000F7880 */  sll   $t7, $t7, 2
/* B52850 800DB6B0 01EE7823 */  subu  $t7, $t7, $t6
/* B52854 800DB6B4 001940C0 */  sll   $t0, $t9, 3
/* B52858 800DB6B8 000F7880 */  sll   $t7, $t7, 2
/* B5285C 800DB6BC 01194023 */  subu  $t0, $t0, $t9
/* B52860 800DB6C0 00084080 */  sll   $t0, $t0, 2
/* B52864 800DB6C4 00AFC021 */  addu  $t8, $a1, $t7
/* B52868 800DB6C8 35290C80 */  ori   $t1, (0x08000C80 & 0xFFFF) # ori $t1, $t1, 0xc80
/* B5286C 800DB6CC 03088821 */  addu  $s1, $t8, $t0
/* B52870 800DB6D0 AC890000 */  sw    $t1, ($a0)
/* B52874 800DB6D4 962A0058 */  lhu   $t2, 0x58($s1)
/* B52878 800DB6D8 3C010720 */  lui   $at, 0x720
/* B5287C 800DB6DC 24830008 */  addiu $v1, $a0, 8
/* B52880 800DB6E0 000A5840 */  sll   $t3, $t2, 1
/* B52884 800DB6E4 316CFFFF */  andi  $t4, $t3, 0xffff
/* B52888 800DB6E8 01816825 */  or    $t5, $t4, $at
/* B5288C 800DB6EC AC8D0004 */  sw    $t5, 4($a0)
/* B52890 800DB6F0 90AF0000 */  lbu   $t7, ($a1)
/* B52894 800DB6F4 96290056 */  lhu   $t1, 0x56($s1)
/* B52898 800DB6F8 3C010500 */  lui   $at, 0x500
/* B5289C 800DB6FC 000FCC00 */  sll   $t9, $t7, 0x10
/* B528A0 800DB700 0321C025 */  or    $t8, $t9, $at
/* B528A4 800DB704 03095025 */  or    $t2, $t8, $t1
/* B528A8 800DB708 AC6A0000 */  sw    $t2, ($v1)
/* B528AC 800DB70C 8CAB0038 */  lw    $t3, 0x38($a1)
/* B528B0 800DB710 00A09025 */  move  $s2, $a1
/* B528B4 800DB714 26310040 */  addiu $s1, $s1, 0x40
/* B528B8 800DB718 AC6B0004 */  sw    $t3, 4($v1)
/* B528BC 800DB71C 8E4C0028 */  lw    $t4, 0x28($s2)
/* B528C0 800DB720 86270010 */  lh    $a3, 0x10($s1)
/* B528C4 800DB724 9626000E */  lhu   $a2, 0xe($s1)
/* B528C8 800DB728 24640008 */  addiu $a0, $v1, 8
/* B528CC 800DB72C 24050720 */  li    $a1, 1824
/* B528D0 800DB730 0C037038 */  jal   func_800DC0E0
/* B528D4 800DB734 AFAC0010 */   sw    $t4, 0x10($sp)
/* B528D8 800DB738 86270012 */  lh    $a3, 0x12($s1)
/* B528DC 800DB73C 00408025 */  move  $s0, $v0
/* B528E0 800DB740 00402025 */  move  $a0, $v0
/* B528E4 800DB744 50E0000A */  beql  $a3, $zero, .L800DB770
/* B528E8 800DB748 3C0E0800 */   lui   $t6, 0x800
/* B528EC 800DB74C 86250010 */  lh    $a1, 0x10($s1)
/* B528F0 800DB750 8E4D0028 */  lw    $t5, 0x28($s2)
/* B528F4 800DB754 00003025 */  move  $a2, $zero
/* B528F8 800DB758 24A50720 */  addiu $a1, $a1, 0x720
/* B528FC 800DB75C 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B52900 800DB760 0C037038 */  jal   func_800DC0E0
/* B52904 800DB764 AFAD0010 */   sw    $t5, 0x10($sp)
/* B52908 800DB768 00408025 */  move  $s0, $v0
/* B5290C 800DB76C 3C0E0800 */  lui   $t6, (0x08000E20 >> 16) # lui $t6, 0x800
.L800DB770:
/* B52910 800DB770 35CE0E20 */  ori   $t6, (0x08000E20 & 0xFFFF) # ori $t6, $t6, 0xe20
/* B52914 800DB774 02001025 */  move  $v0, $s0
/* B52918 800DB778 AC4E0000 */  sw    $t6, ($v0)
/* B5291C 800DB77C 962F0018 */  lhu   $t7, 0x18($s1)
/* B52920 800DB780 3C010720 */  lui   $at, 0x720
/* B52924 800DB784 26030008 */  addiu $v1, $s0, 8
/* B52928 800DB788 000FC840 */  sll   $t9, $t7, 1
/* B5292C 800DB78C 3328FFFF */  andi  $t0, $t9, 0xffff
/* B52930 800DB790 0101C025 */  or    $t8, $t0, $at
/* B52934 800DB794 AC580004 */  sw    $t8, 4($v0)
/* B52938 800DB798 924A0000 */  lbu   $t2, ($s2)
/* B5293C 800DB79C 962E0016 */  lhu   $t6, 0x16($s1)
/* B52940 800DB7A0 3C010500 */  lui   $at, 0x500
/* B52944 800DB7A4 000A5C00 */  sll   $t3, $t2, 0x10
/* B52948 800DB7A8 01616025 */  or    $t4, $t3, $at
/* B5294C 800DB7AC 018E7825 */  or    $t7, $t4, $t6
/* B52950 800DB7B0 AC6F0000 */  sw    $t7, ($v1)
/* B52954 800DB7B4 8E59003C */  lw    $t9, 0x3c($s2)
/* B52958 800DB7B8 24640008 */  addiu $a0, $v1, 8
/* B5295C 800DB7BC 24050720 */  li    $a1, 1824
/* B52960 800DB7C0 AC790004 */  sw    $t9, 4($v1)
/* B52964 800DB7C4 8E48002C */  lw    $t0, 0x2c($s2)
/* B52968 800DB7C8 86270010 */  lh    $a3, 0x10($s1)
/* B5296C 800DB7CC 9626000E */  lhu   $a2, 0xe($s1)
/* B52970 800DB7D0 0C037038 */  jal   func_800DC0E0
/* B52974 800DB7D4 AFA80010 */   sw    $t0, 0x10($sp)
/* B52978 800DB7D8 86270012 */  lh    $a3, 0x12($s1)
/* B5297C 800DB7DC 00408025 */  move  $s0, $v0
/* B52980 800DB7E0 00402025 */  move  $a0, $v0
/* B52984 800DB7E4 50E0000A */  beql  $a3, $zero, .L800DB810
/* B52988 800DB7E8 8FBF002C */   lw    $ra, 0x2c($sp)
/* B5298C 800DB7EC 86250010 */  lh    $a1, 0x10($s1)
/* B52990 800DB7F0 8E58002C */  lw    $t8, 0x2c($s2)
/* B52994 800DB7F4 00003025 */  move  $a2, $zero
/* B52998 800DB7F8 24A50720 */  addiu $a1, $a1, 0x720
/* B5299C 800DB7FC 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B529A0 800DB800 0C037038 */  jal   func_800DC0E0
/* B529A4 800DB804 AFB80010 */   sw    $t8, 0x10($sp)
/* B529A8 800DB808 00408025 */  move  $s0, $v0
/* B529AC 800DB80C 8FBF002C */  lw    $ra, 0x2c($sp)
.L800DB810:
/* B529B0 800DB810 02001025 */  move  $v0, $s0
/* B529B4 800DB814 8FB00020 */  lw    $s0, 0x20($sp)
/* B529B8 800DB818 8FB10024 */  lw    $s1, 0x24($sp)
/* B529BC 800DB81C 8FB20028 */  lw    $s2, 0x28($sp)
/* B529C0 800DB820 03E00008 */  jr    $ra
/* B529C4 800DB824 27BD0030 */   addiu $sp, $sp, 0x30

