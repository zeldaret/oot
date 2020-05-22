glabel func_8002949C
/* AA063C 8002949C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA0640 800294A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0644 800294A4 AFA40030 */  sw    $a0, 0x30($sp)
/* AA0648 800294A8 AFA60038 */  sw    $a2, 0x38($sp)
/* AA064C 800294AC AFA7003C */  sw    $a3, 0x3c($sp)
/* AA0650 800294B0 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0654 800294B4 27A40018 */   addiu $a0, $sp, 0x18
/* AA0658 800294B8 8FA20038 */  lw    $v0, 0x38($sp)
/* AA065C 800294BC 87AE0042 */  lh    $t6, 0x42($sp)
/* AA0660 800294C0 87AF0046 */  lh    $t7, 0x46($sp)
/* AA0664 800294C4 2405000A */  li    $a1, 10
/* AA0668 800294C8 A3AE0024 */  sb    $t6, 0x24($sp)
/* AA066C 800294CC 1040000F */  beqz  $v0, .L8002950C
/* AA0670 800294D0 A7AF0026 */   sh    $t7, 0x26($sp)
/* AA0674 800294D4 88480000 */  lwl   $t0, ($v0)
/* AA0678 800294D8 98480003 */  lwr   $t0, 3($v0)
/* AA067C 800294DC 27B80028 */  addiu $t8, $sp, 0x28
/* AA0680 800294E0 27A9002C */  addiu $t1, $sp, 0x2c
/* AA0684 800294E4 AB080000 */  swl   $t0, ($t8)
/* AA0688 800294E8 BB080003 */  swr   $t0, 3($t8)
/* AA068C 800294EC 8FAA003C */  lw    $t2, 0x3c($sp)
/* AA0690 800294F0 240D0001 */  li    $t5, 1
/* AA0694 800294F4 894C0000 */  lwl   $t4, ($t2)
/* AA0698 800294F8 994C0003 */  lwr   $t4, 3($t2)
/* AA069C 800294FC A92C0000 */  swl   $t4, ($t1)
/* AA06A0 80029500 B92C0003 */  swr   $t4, 3($t1)
/* AA06A4 80029504 10000002 */  b     .L80029510
/* AA06A8 80029508 A3AD0025 */   sb    $t5, 0x25($sp)
.L8002950C:
/* AA06AC 8002950C A3A00025 */  sb    $zero, 0x25($sp)
.L80029510:
/* AA06B0 80029510 8FA40030 */  lw    $a0, 0x30($sp)
/* AA06B4 80029514 24060080 */  li    $a2, 128
/* AA06B8 80029518 0C009DE6 */  jal   EffectSs_Spawn
/* AA06BC 8002951C 27A70018 */   addiu $a3, $sp, 0x18
/* AA06C0 80029520 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA06C4 80029524 27BD0030 */  addiu $sp, $sp, 0x30
/* AA06C8 80029528 03E00008 */  jr    $ra
/* AA06CC 8002952C 00000000 */   nop   

