glabel func_8007C680
/* AF3820 8007C680 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AF3824 8007C684 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF3828 8007C688 AFA40030 */  sw    $a0, 0x30($sp)
/* AF382C 8007C68C 00A03825 */  move  $a3, $a1
/* AF3830 8007C690 AFA70034 */  sw    $a3, 0x34($sp)
/* AF3834 8007C694 00C02825 */  move  $a1, $a2
/* AF3838 8007C698 0C01F097 */  jal   OLib_VecSphGeoToVec3f
/* AF383C 8007C69C 27A40018 */   addiu $a0, $sp, 0x18
/* AF3840 8007C6A0 8FA70034 */  lw    $a3, 0x34($sp)
/* AF3844 8007C6A4 C7A60018 */  lwc1  $f6, 0x18($sp)
/* AF3848 8007C6A8 C7B0001C */  lwc1  $f16, 0x1c($sp)
/* AF384C 8007C6AC C4E40000 */  lwc1  $f4, ($a3)
/* AF3850 8007C6B0 27AE0024 */  addiu $t6, $sp, 0x24
/* AF3854 8007C6B4 8FA20030 */  lw    $v0, 0x30($sp)
/* AF3858 8007C6B8 46062200 */  add.s $f8, $f4, $f6
/* AF385C 8007C6BC C7A60020 */  lwc1  $f6, 0x20($sp)
/* AF3860 8007C6C0 E7A80024 */  swc1  $f8, 0x24($sp)
/* AF3864 8007C6C4 C4EA0004 */  lwc1  $f10, 4($a3)
/* AF3868 8007C6C8 46105480 */  add.s $f18, $f10, $f16
/* AF386C 8007C6CC E7B20028 */  swc1  $f18, 0x28($sp)
/* AF3870 8007C6D0 C4E40008 */  lwc1  $f4, 8($a3)
/* AF3874 8007C6D4 46062200 */  add.s $f8, $f4, $f6
/* AF3878 8007C6D8 E7A8002C */  swc1  $f8, 0x2c($sp)
/* AF387C 8007C6DC 8DD80000 */  lw    $t8, ($t6)
/* AF3880 8007C6E0 AC580000 */  sw    $t8, ($v0)
/* AF3884 8007C6E4 8DCF0004 */  lw    $t7, 4($t6)
/* AF3888 8007C6E8 AC4F0004 */  sw    $t7, 4($v0)
/* AF388C 8007C6EC 8DD80008 */  lw    $t8, 8($t6)
/* AF3890 8007C6F0 AC580008 */  sw    $t8, 8($v0)
/* AF3894 8007C6F4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF3898 8007C6F8 27BD0030 */  addiu $sp, $sp, 0x30
/* AF389C 8007C6FC 03E00008 */  jr    $ra
/* AF38A0 8007C700 00000000 */   nop

