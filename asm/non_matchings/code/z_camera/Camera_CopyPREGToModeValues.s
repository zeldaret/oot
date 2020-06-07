.rdata
glabel D_801390D4
    .asciz "camera: res: %d = PREG(%02d)\n"
    .balign 4

.text
glabel Camera_CopyPREGToModeValues
/* ABC3F4 80045254 27BDFFD0 */  addiu $sp, $sp, -0x30
/* ABC3F8 80045258 AFBF002C */  sw    $ra, 0x2c($sp)
/* ABC3FC 8004525C AFB50028 */  sw    $s5, 0x28($sp)
/* ABC400 80045260 AFB40024 */  sw    $s4, 0x24($sp)
/* ABC404 80045264 AFB30020 */  sw    $s3, 0x20($sp)
/* ABC408 80045268 AFB2001C */  sw    $s2, 0x1c($sp)
/* ABC40C 8004526C AFB10018 */  sw    $s1, 0x18($sp)
/* ABC410 80045270 AFB00014 */  sw    $s0, 0x14($sp)
/* ABC414 80045274 848E0142 */  lh    $t6, 0x142($a0)
/* ABC418 80045278 3C158012 */  lui   $s5, %hi(sCameraSettings) # $s5, 0x8012
/* ABC41C 8004527C 26B5D064 */  addiu $s5, %lo(sCameraSettings) # addiu $s5, $s5, -0x2f9c
/* ABC420 80045280 000E78C0 */  sll   $t7, $t6, 3
/* ABC424 80045284 84880144 */  lh    $t0, 0x144($a0)
/* ABC428 80045288 02AFC021 */  addu  $t8, $s5, $t7
/* ABC42C 8004528C 8F190004 */  lw    $t9, 4($t8)
/* ABC430 80045290 000848C0 */  sll   $t1, $t0, 3
/* ABC434 80045294 00809825 */  move  $s3, $a0
/* ABC438 80045298 03291021 */  addu  $v0, $t9, $t1
/* ABC43C 8004529C 844A0002 */  lh    $t2, 2($v0)
/* ABC440 800452A0 8C430004 */  lw    $v1, 4($v0)
/* ABC444 800452A4 00008825 */  move  $s1, $zero
/* ABC448 800452A8 1940001F */  blez  $t2, .L80045328
/* ABC44C 800452AC 00608025 */   move  $s0, $v1
/* ABC450 800452B0 3C148014 */  lui   $s4, %hi(D_801390D4) # $s4, 0x8014
/* ABC454 800452B4 3C128016 */  lui   $s2, %hi(gGameInfo) # $s2, 0x8016
/* ABC458 800452B8 2652FA90 */  addiu $s2, %lo(gGameInfo) # addiu $s2, $s2, -0x570
/* ABC45C 800452BC 269490D4 */  addiu $s4, %lo(D_801390D4) # addiu $s4, $s4, -0x6f2c
/* ABC460 800452C0 86060002 */  lh    $a2, 2($s0)
.L800452C4:
/* ABC464 800452C4 8E4B0000 */  lw    $t3, ($s2)
/* ABC468 800452C8 02802025 */  move  $a0, $s4
/* ABC46C 800452CC 00066040 */  sll   $t4, $a2, 1
/* ABC470 800452D0 016C6821 */  addu  $t5, $t3, $t4
/* ABC474 800452D4 85AE0254 */  lh    $t6, 0x254($t5)
/* ABC478 800452D8 A60E0000 */  sh    $t6, ($s0)
/* ABC47C 800452DC 8E4F0000 */  lw    $t7, ($s2)
/* ABC480 800452E0 85F802F8 */  lh    $t8, 0x2f8($t7)
/* ABC484 800452E4 53000004 */  beql  $t8, $zero, .L800452F8
/* ABC488 800452E8 86680142 */   lh    $t0, 0x142($s3)
/* ABC48C 800452EC 0C00084C */  jal   osSyncPrintf
/* ABC490 800452F0 86050000 */   lh    $a1, ($s0)
/* ABC494 800452F4 86680142 */  lh    $t0, 0x142($s3)
.L800452F8:
/* ABC498 800452F8 866B0144 */  lh    $t3, 0x144($s3)
/* ABC49C 800452FC 26310001 */  addiu $s1, $s1, 1
/* ABC4A0 80045300 0008C8C0 */  sll   $t9, $t0, 3
/* ABC4A4 80045304 02B94821 */  addu  $t1, $s5, $t9
/* ABC4A8 80045308 8D2A0004 */  lw    $t2, 4($t1)
/* ABC4AC 8004530C 000B60C0 */  sll   $t4, $t3, 3
/* ABC4B0 80045310 26100004 */  addiu $s0, $s0, 4
/* ABC4B4 80045314 014C6821 */  addu  $t5, $t2, $t4
/* ABC4B8 80045318 85AE0002 */  lh    $t6, 2($t5)
/* ABC4BC 8004531C 022E082A */  slt   $at, $s1, $t6
/* ABC4C0 80045320 5420FFE8 */  bnezl $at, .L800452C4
/* ABC4C4 80045324 86060002 */   lh    $a2, 2($s0)
.L80045328:
/* ABC4C8 80045328 8FBF002C */  lw    $ra, 0x2c($sp)
/* ABC4CC 8004532C 8FB00014 */  lw    $s0, 0x14($sp)
/* ABC4D0 80045330 8FB10018 */  lw    $s1, 0x18($sp)
/* ABC4D4 80045334 8FB2001C */  lw    $s2, 0x1c($sp)
/* ABC4D8 80045338 8FB30020 */  lw    $s3, 0x20($sp)
/* ABC4DC 8004533C 8FB40024 */  lw    $s4, 0x24($sp)
/* ABC4E0 80045340 8FB50028 */  lw    $s5, 0x28($sp)
/* ABC4E4 80045344 27BD0030 */  addiu $sp, $sp, 0x30
/* ABC4E8 80045348 03E00008 */  jr    $ra
/* ABC4EC 8004534C 24020001 */   li    $v0, 1

