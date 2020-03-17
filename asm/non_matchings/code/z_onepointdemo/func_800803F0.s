.rdata
glabel D_8013CCA8
    .asciz "onepointdemo camera[%d]: delete timer=%d next=%d\n"
    .balign 4

.text
glabel func_800803F0
/* AF7590 800803F0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AF7594 800803F4 AFA50024 */  sw    $a1, 0x24($sp)
/* AF7598 800803F8 00052C00 */  sll   $a1, $a1, 0x10
/* AF759C 800803FC 00052C03 */  sra   $a1, $a1, 0x10
/* AF75A0 80080400 2401FFFF */  li    $at, -1
/* AF75A4 80080404 14A10002 */  bne   $a1, $at, .L80080410
/* AF75A8 80080408 AFBF0014 */   sw    $ra, 0x14($sp)
/* AF75AC 8008040C 848507A0 */  lh    $a1, 0x7a0($a0)
.L80080410:
/* AF75B0 80080410 00057080 */  sll   $t6, $a1, 2
/* AF75B4 80080414 008E1821 */  addu  $v1, $a0, $t6
/* AF75B8 80080418 8C620790 */  lw    $v0, 0x790($v1)
/* AF75BC 8008041C 3C048014 */  lui   $a0, %hi(D_8013CCA8) # $a0, 0x8014
/* AF75C0 80080420 2484CCA8 */  addiu $a0, %lo(D_8013CCA8) # addiu $a0, $a0, -0x3358
/* AF75C4 80080424 50400012 */  beql  $v0, $zero, .L80080470
/* AF75C8 80080428 8FBF0014 */   lw    $ra, 0x14($sp)
/* AF75CC 8008042C 84460160 */  lh    $a2, 0x160($v0)
/* AF75D0 80080430 84470162 */  lh    $a3, 0x162($v0)
/* AF75D4 80080434 A7A50026 */  sh    $a1, 0x26($sp)
/* AF75D8 80080438 0C00084C */  jal   osSyncPrintf
/* AF75DC 8008043C AFA3001C */   sw    $v1, 0x1c($sp)
/* AF75E0 80080440 8FA3001C */  lw    $v1, 0x1c($sp)
/* AF75E4 80080444 24011392 */  li    $at, 5010
/* AF75E8 80080448 87A50026 */  lh    $a1, 0x26($sp)
/* AF75EC 8008044C 8C620790 */  lw    $v0, 0x790($v1)
/* AF75F0 80080450 24180005 */  li    $t8, 5
/* AF75F4 80080454 844F0168 */  lh    $t7, 0x168($v0)
/* AF75F8 80080458 55E10004 */  bnel  $t7, $at, .L8008046C
/* AF75FC 8008045C A4400160 */   sh    $zero, 0x160($v0)
/* AF7600 80080460 10000002 */  b     .L8008046C
/* AF7604 80080464 A4580160 */   sh    $t8, 0x160($v0)
/* AF7608 80080468 A4400160 */  sh    $zero, 0x160($v0)
.L8008046C:
/* AF760C 8008046C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80080470:
/* AF7610 80080470 27BD0020 */  addiu $sp, $sp, 0x20
/* AF7614 80080474 00A01025 */  move  $v0, $a1
/* AF7618 80080478 03E00008 */  jr    $ra
/* AF761C 8008047C 00000000 */   nop   

