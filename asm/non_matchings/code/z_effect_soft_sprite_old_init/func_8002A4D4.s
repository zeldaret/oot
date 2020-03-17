glabel func_8002A4D4
/* AA1674 8002A4D4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA1678 8002A4D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA167C 8002A4DC AFA40030 */  sw    $a0, 0x30($sp)
/* AA1680 8002A4E0 AFA50034 */  sw    $a1, 0x34($sp)
/* AA1684 8002A4E4 AFA7003C */  sw    $a3, 0x3c($sp)
/* AA1688 8002A4E8 00C02825 */  move  $a1, $a2
/* AA168C 8002A4EC 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1690 8002A4F0 27A4001C */   addiu $a0, $sp, 0x1c
/* AA1694 8002A4F4 8FA40034 */  lw    $a0, 0x34($sp)
/* AA1698 8002A4F8 87AE003E */  lh    $t6, 0x3e($sp)
/* AA169C 8002A4FC 87AF0042 */  lh    $t7, 0x42($sp)
/* AA16A0 8002A500 87B80046 */  lh    $t8, 0x46($sp)
/* AA16A4 8002A504 87B9004A */  lh    $t9, 0x4a($sp)
/* AA16A8 8002A508 AFA40018 */  sw    $a0, 0x18($sp)
/* AA16AC 8002A50C A7AE0028 */  sh    $t6, 0x28($sp)
/* AA16B0 8002A510 A7AF002A */  sh    $t7, 0x2a($sp)
/* AA16B4 8002A514 A7B8002C */  sh    $t8, 0x2c($sp)
/* AA16B8 8002A518 10800003 */  beqz  $a0, .L8002A528
/* AA16BC 8002A51C A7B9002E */   sh    $t9, 0x2e($sp)
/* AA16C0 8002A520 0C00BE0A */  jal   Audio_PlayActorSound2
/* AA16C4 8002A524 24052822 */   li    $a1, 10274
.L8002A528:
/* AA16C8 8002A528 8FA40030 */  lw    $a0, 0x30($sp)
/* AA16CC 8002A52C 2405001D */  li    $a1, 29
/* AA16D0 8002A530 24060080 */  li    $a2, 128
/* AA16D4 8002A534 0C009DE6 */  jal   func_80027798
/* AA16D8 8002A538 27A70018 */   addiu $a3, $sp, 0x18
/* AA16DC 8002A53C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA16E0 8002A540 27BD0030 */  addiu $sp, $sp, 0x30
/* AA16E4 8002A544 03E00008 */  jr    $ra
/* AA16E8 8002A548 00000000 */   nop   

