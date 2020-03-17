glabel __osMalloc_NoLock
/* B7549C 800FE2FC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B754A0 800FE300 AFBF001C */  sw    $ra, 0x1c($sp)
/* B754A4 800FE304 AFB10018 */  sw    $s1, 0x18($sp)
/* B754A8 800FE308 AFB00014 */  sw    $s0, 0x14($sp)
/* B754AC 800FE30C AFA40040 */  sw    $a0, 0x40($sp)
/* B754B0 800FE310 AFA00030 */  sw    $zero, 0x30($sp)
/* B754B4 800FE314 8C900000 */  lw    $s0, ($a0)
/* B754B8 800FE318 24B1000F */  addiu $s1, $a1, 0xf
/* B754BC 800FE31C 2401FFF0 */  li    $at, -16
/* B754C0 800FE320 12000042 */  beqz  $s0, .L800FE42C
/* B754C4 800FE324 02218824 */   and   $s1, $s1, $at
.L800FE328:
/* B754C8 800FE328 860F0002 */  lh    $t7, 2($s0)
/* B754CC 800FE32C 11E0003B */  beqz  $t7, .L800FE41C
/* B754D0 800FE330 00000000 */   nop   
/* B754D4 800FE334 8E020004 */  lw    $v0, 4($s0)
/* B754D8 800FE338 0051082B */  sltu  $at, $v0, $s1
/* B754DC 800FE33C 14200037 */  bnez  $at, .L800FE41C
/* B754E0 800FE340 00000000 */   nop   
/* B754E4 800FE344 8FB80040 */  lw    $t8, 0x40($sp)
/* B754E8 800FE348 93190022 */  lbu   $t9, 0x22($t8)
/* B754EC 800FE34C 03002025 */  move  $a0, $t8
/* B754F0 800FE350 33280004 */  andi  $t0, $t9, 4
/* B754F4 800FE354 51000005 */  beql  $t0, $zero, .L800FE36C
/* B754F8 800FE358 2623000F */   addiu $v1, $s1, 0xf
/* B754FC 800FE35C 0C03F7D5 */  jal   __osMalloc_FreeBlockTest
/* B75500 800FE360 02002825 */   move  $a1, $s0
/* B75504 800FE364 8E020004 */  lw    $v0, 4($s0)
/* B75508 800FE368 2623000F */  addiu $v1, $s1, 0xf
.L800FE36C:
/* B7550C 800FE36C 2401FFF0 */  li    $at, -16
/* B75510 800FE370 00611824 */  and   $v1, $v1, $at
/* B75514 800FE374 24630030 */  addiu $v1, $v1, 0x30
/* B75518 800FE378 0062082B */  sltu  $at, $v1, $v0
/* B7551C 800FE37C 10200015 */  beqz  $at, .L800FE3D4
/* B75520 800FE380 02002025 */   move  $a0, $s0
/* B75524 800FE384 0C03F723 */  jal   ArenaImpl_GetNextBlock
/* B75528 800FE388 AFA30028 */   sw    $v1, 0x28($sp)
/* B7552C 800FE38C 8FA30028 */  lw    $v1, 0x28($sp)
/* B75530 800FE390 240B0001 */  li    $t3, 1
/* B75534 800FE394 240C7373 */  li    $t4, 29555
/* B75538 800FE398 02032021 */  addu  $a0, $s0, $v1
/* B7553C 800FE39C AC820008 */  sw    $v0, 8($a0)
/* B75540 800FE3A0 AC90000C */  sw    $s0, 0xc($a0)
/* B75544 800FE3A4 8E090004 */  lw    $t1, 4($s0)
/* B75548 800FE3A8 A48B0002 */  sh    $t3, 2($a0)
/* B7554C 800FE3AC A48C0000 */  sh    $t4, ($a0)
/* B75550 800FE3B0 01235023 */  subu  $t2, $t1, $v1
/* B75554 800FE3B4 AC8A0004 */  sw    $t2, 4($a0)
/* B75558 800FE3B8 AE040008 */  sw    $a0, 8($s0)
/* B7555C 800FE3BC AE110004 */  sw    $s1, 4($s0)
/* B75560 800FE3C0 0C03F723 */  jal   ArenaImpl_GetNextBlock
/* B75564 800FE3C4 AFA40024 */   sw    $a0, 0x24($sp)
/* B75568 800FE3C8 10400002 */  beqz  $v0, .L800FE3D4
/* B7556C 800FE3CC 8FA40024 */   lw    $a0, 0x24($sp)
/* B75570 800FE3D0 AC44000C */  sw    $a0, 0xc($v0)
.L800FE3D4:
/* B75574 800FE3D4 A6000002 */  sh    $zero, 2($s0)
/* B75578 800FE3D8 8FA70040 */  lw    $a3, 0x40($sp)
/* B7557C 800FE3DC 02002025 */  move  $a0, $s0
/* B75580 800FE3E0 00002825 */  move  $a1, $zero
/* B75584 800FE3E4 0C03F6F0 */  jal   ArenaImpl_SetDebugInfo
/* B75588 800FE3E8 00003025 */   move  $a2, $zero
/* B7558C 800FE3EC 8FAD0040 */  lw    $t5, 0x40($sp)
/* B75590 800FE3F0 26040030 */  addiu $a0, $s0, 0x30
/* B75594 800FE3F4 AFA40030 */  sw    $a0, 0x30($sp)
/* B75598 800FE3F8 91AE0022 */  lbu   $t6, 0x22($t5)
/* B7559C 800FE3FC 240500CD */  li    $a1, 205
/* B755A0 800FE400 31CF0001 */  andi  $t7, $t6, 1
/* B755A4 800FE404 51E0000A */  beql  $t7, $zero, .L800FE430
/* B755A8 800FE408 8FBF001C */   lw    $ra, 0x1c($sp)
/* B755AC 800FE40C 0C041A18 */  jal   func_80106860
/* B755B0 800FE410 02203025 */   move  $a2, $s1
/* B755B4 800FE414 10000006 */  b     .L800FE430
/* B755B8 800FE418 8FBF001C */   lw    $ra, 0x1c($sp)
.L800FE41C:
/* B755BC 800FE41C 0C03F723 */  jal   ArenaImpl_GetNextBlock
/* B755C0 800FE420 02002025 */   move  $a0, $s0
/* B755C4 800FE424 1440FFC0 */  bnez  $v0, .L800FE328
/* B755C8 800FE428 00408025 */   move  $s0, $v0
.L800FE42C:
/* B755CC 800FE42C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800FE430:
/* B755D0 800FE430 8FA20030 */  lw    $v0, 0x30($sp)
/* B755D4 800FE434 8FB00014 */  lw    $s0, 0x14($sp)
/* B755D8 800FE438 8FB10018 */  lw    $s1, 0x18($sp)
/* B755DC 800FE43C 03E00008 */  jr    $ra
/* B755E0 800FE440 27BD0040 */   addiu $sp, $sp, 0x40