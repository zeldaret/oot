glabel func_800CD6B0
/* B44850 800CD6B0 44876000 */  mtc1  $a3, $f12
/* B44854 800CD6B4 3C018014 */  lui   $at, %hi(D_80146514)
/* B44858 800CD6B8 C4246514 */  lwc1  $f4, %lo(D_80146514)($at)
/* B4485C 800CD6BC 46006005 */  abs.s $f0, $f12
/* B44860 800CD6C0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B44864 800CD6C4 4604003C */  c.lt.s $f0, $f4
/* B44868 800CD6C8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B4486C 800CD6CC 8FA70044 */  lw    $a3, 0x44($sp)
/* B44870 800CD6D0 C7A60048 */  lwc1  $f6, 0x48($sp)
/* B44874 800CD6D4 45000003 */  bc1f  .L800CD6E4
/* B44878 800CD6D8 3C014396 */   li    $at, 0x43960000 # 0.000000
/* B4487C 800CD6DC 1000001C */  b     .L800CD750
/* B44880 800CD6E0 00001025 */   move  $v0, $zero
.L800CD6E4:
/* B44884 800CD6E4 44814000 */  mtc1  $at, $f8
/* B44888 800CD6E8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B4488C 800CD6EC 44815000 */  mtc1  $at, $f10
/* B44890 800CD6F0 E7A60010 */  swc1  $f6, 0x10($sp)
/* B44894 800CD6F4 E7AC001C */  swc1  $f12, 0x1c($sp)
/* B44898 800CD6F8 E7AC0034 */  swc1  $f12, 0x34($sp)
/* B4489C 800CD6FC E7A80014 */  swc1  $f8, 0x14($sp)
/* B448A0 800CD700 0C0334D3 */  jal   func_800CD34C
/* B448A4 800CD704 E7AA0018 */   swc1  $f10, 0x18($sp)
/* B448A8 800CD708 10400010 */  beqz  $v0, .L800CD74C
/* B448AC 800CD70C C7AC0034 */   lwc1  $f12, 0x34($sp)
/* B448B0 800CD710 C7B00038 */  lwc1  $f16, 0x38($sp)
/* B448B4 800CD714 C7A40044 */  lwc1  $f4, 0x44($sp)
/* B448B8 800CD718 C7A8003C */  lwc1  $f8, 0x3c($sp)
/* B448BC 800CD71C 46008487 */  neg.s $f18, $f16
/* B448C0 800CD720 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* B448C4 800CD724 46049182 */  mul.s $f6, $f18, $f4
/* B448C8 800CD728 C7A40040 */  lwc1  $f4, 0x40($sp)
/* B448CC 800CD72C 8FAE004C */  lw    $t6, 0x4c($sp)
/* B448D0 800CD730 460A4402 */  mul.s $f16, $f8, $f10
/* B448D4 800CD734 24020001 */  li    $v0, 1
/* B448D8 800CD738 46103481 */  sub.s $f18, $f6, $f16
/* B448DC 800CD73C 46049201 */  sub.s $f8, $f18, $f4
/* B448E0 800CD740 460C4283 */  div.s $f10, $f8, $f12
/* B448E4 800CD744 10000002 */  b     .L800CD750
/* B448E8 800CD748 E5CA0000 */   swc1  $f10, ($t6)
.L800CD74C:
/* B448EC 800CD74C 00001025 */  move  $v0, $zero
.L800CD750:
/* B448F0 800CD750 8FBF0024 */  lw    $ra, 0x24($sp)
/* B448F4 800CD754 27BD0028 */  addiu $sp, $sp, 0x28
/* B448F8 800CD758 03E00008 */  jr    $ra
/* B448FC 800CD75C 00000000 */   nop   

