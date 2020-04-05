glabel func_800CE3C0
/* B45560 800CE3C0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B45564 800CE3C4 AFBF002C */  sw    $ra, 0x2c($sp)
/* B45568 800CE3C8 AFB00028 */  sw    $s0, 0x28($sp)
/* B4556C 800CE3CC AFA50034 */  sw    $a1, 0x34($sp)
/* B45570 800CE3D0 AFA60038 */  sw    $a2, 0x38($sp)
/* B45574 800CE3D4 AFA7003C */  sw    $a3, 0x3c($sp)
/* B45578 800CE3D8 8CB80000 */  lw    $t8, ($a1)
/* B4557C 800CE3DC 00808025 */  move  $s0, $a0
/* B45580 800CE3E0 260D0028 */  addiu $t5, $s0, 0x28
/* B45584 800CE3E4 AC980000 */  sw    $t8, ($a0)
/* B45588 800CE3E8 8CAF0004 */  lw    $t7, 4($a1)
/* B4558C 800CE3EC 260E002C */  addiu $t6, $s0, 0x2c
/* B45590 800CE3F0 26070024 */  addiu $a3, $s0, 0x24
/* B45594 800CE3F4 AC8F0004 */  sw    $t7, 4($a0)
/* B45598 800CE3F8 8CB80008 */  lw    $t8, 8($a1)
/* B4559C 800CE3FC 260F0030 */  addiu $t7, $s0, 0x30
/* B455A0 800CE400 AC980008 */  sw    $t8, 8($a0)
/* B455A4 800CE404 8FB90038 */  lw    $t9, 0x38($sp)
/* B455A8 800CE408 8F290000 */  lw    $t1, ($t9)
/* B455AC 800CE40C AC89000C */  sw    $t1, 0xc($a0)
/* B455B0 800CE410 8F280004 */  lw    $t0, 4($t9)
/* B455B4 800CE414 AC880010 */  sw    $t0, 0x10($a0)
/* B455B8 800CE418 8F290008 */  lw    $t1, 8($t9)
/* B455BC 800CE41C AC890014 */  sw    $t1, 0x14($a0)
/* B455C0 800CE420 8FAA003C */  lw    $t2, 0x3c($sp)
/* B455C4 800CE424 8D4C0000 */  lw    $t4, ($t2)
/* B455C8 800CE428 AC8C0018 */  sw    $t4, 0x18($a0)
/* B455CC 800CE42C 8D4B0004 */  lw    $t3, 4($t2)
/* B455D0 800CE430 AC8B001C */  sw    $t3, 0x1c($a0)
/* B455D4 800CE434 8D4C0008 */  lw    $t4, 8($t2)
/* B455D8 800CE438 AC8C0020 */  sw    $t4, 0x20($a0)
/* B455DC 800CE43C AFAF0018 */  sw    $t7, 0x18($sp)
/* B455E0 800CE440 AFAE0014 */  sw    $t6, 0x14($sp)
/* B455E4 800CE444 AFAD0010 */  sw    $t5, 0x10($sp)
/* B455E8 800CE448 8FA6003C */  lw    $a2, 0x3c($sp)
/* B455EC 800CE44C 8FA50038 */  lw    $a1, 0x38($sp)
/* B455F0 800CE450 0C03322D */  jal   func_800CC8B4
/* B455F4 800CE454 8FA40034 */   lw    $a0, 0x34($sp)
/* B455F8 800CE458 8FBF002C */  lw    $ra, 0x2c($sp)
/* B455FC 800CE45C 8FB00028 */  lw    $s0, 0x28($sp)
/* B45600 800CE460 27BD0030 */  addiu $sp, $sp, 0x30
/* B45604 800CE464 03E00008 */  jr    $ra
/* B45608 800CE468 00000000 */   nop   

