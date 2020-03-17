glabel func_8005E4F8
/* AD5698 8005E4F8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD569C 8005E4FC AFBF001C */  sw    $ra, 0x1c($sp)
/* AD56A0 8005E500 8C830000 */  lw    $v1, ($a0)
/* AD56A4 8005E504 5060003B */  beql  $v1, $zero, .L8005E5F4
/* AD56A8 8005E508 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD56AC 8005E50C 906E0002 */  lbu   $t6, 2($v1)
/* AD56B0 8005E510 24040002 */  li    $a0, 2
/* AD56B4 8005E514 548E0037 */  bnel  $a0, $t6, .L8005E5F4
/* AD56B8 8005E518 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD56BC 8005E51C 90A20014 */  lbu   $v0, 0x14($a1)
/* AD56C0 8005E520 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD56C4 8005E524 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD56C8 8005E528 1440000B */  bnez  $v0, .L8005E558
/* AD56CC 8005E52C 24010001 */   li    $at, 1
/* AD56D0 8005E530 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* AD56D4 8005E534 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* AD56D8 8005E538 AFAF0014 */  sw    $t7, 0x14($sp)
/* AD56DC 8005E53C 24041811 */  li    $a0, 6161
/* AD56E0 8005E540 246500E4 */  addiu $a1, $v1, 0xe4
/* AD56E4 8005E544 24060004 */  li    $a2, 4
/* AD56E8 8005E548 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AD56EC 8005E54C AFA70010 */   sw    $a3, 0x10($sp)
/* AD56F0 8005E550 10000028 */  b     .L8005E5F4
/* AD56F4 8005E554 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E558:
/* AD56F8 8005E558 1441000C */  bne   $v0, $at, .L8005E58C
/* AD56FC 8005E55C 3C078013 */   lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD5700 8005E560 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* AD5704 8005E564 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD5708 8005E568 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* AD570C 8005E56C AFB80014 */  sw    $t8, 0x14($sp)
/* AD5710 8005E570 AFA70010 */  sw    $a3, 0x10($sp)
/* AD5714 8005E574 24041824 */  li    $a0, 6180
/* AD5718 8005E578 246500E4 */  addiu $a1, $v1, 0xe4
/* AD571C 8005E57C 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AD5720 8005E580 24060004 */   li    $a2, 4
/* AD5724 8005E584 1000001B */  b     .L8005E5F4
/* AD5728 8005E588 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E58C:
/* AD572C 8005E58C 1482000D */  bne   $a0, $v0, .L8005E5C4
/* AD5730 8005E590 24010003 */   li    $at, 3
/* AD5734 8005E594 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD5738 8005E598 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* AD573C 8005E59C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD5740 8005E5A0 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* AD5744 8005E5A4 AFB90014 */  sw    $t9, 0x14($sp)
/* AD5748 8005E5A8 AFA70010 */  sw    $a3, 0x10($sp)
/* AD574C 8005E5AC 00002025 */  move  $a0, $zero
/* AD5750 8005E5B0 246500E4 */  addiu $a1, $v1, 0xe4
/* AD5754 8005E5B4 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AD5758 8005E5B8 24060004 */   li    $a2, 4
/* AD575C 8005E5BC 1000000D */  b     .L8005E5F4
/* AD5760 8005E5C0 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E5C4:
/* AD5764 8005E5C4 1441000A */  bne   $v0, $at, .L8005E5F0
/* AD5768 8005E5C8 3C078013 */   lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD576C 8005E5CC 3C088013 */  lui   $t0, %hi(D_801333E8) # $t0, 0x8013
/* AD5770 8005E5D0 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD5774 8005E5D4 250833E8 */  addiu $t0, %lo(D_801333E8) # addiu $t0, $t0, 0x33e8
/* AD5778 8005E5D8 AFA80014 */  sw    $t0, 0x14($sp)
/* AD577C 8005E5DC AFA70010 */  sw    $a3, 0x10($sp)
/* AD5780 8005E5E0 00002025 */  move  $a0, $zero
/* AD5784 8005E5E4 246500E4 */  addiu $a1, $v1, 0xe4
/* AD5788 8005E5E8 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AD578C 8005E5EC 24060004 */   li    $a2, 4
.L8005E5F0:
/* AD5790 8005E5F0 8FBF001C */  lw    $ra, 0x1c($sp)
.L8005E5F4:
/* AD5794 8005E5F4 27BD0020 */  addiu $sp, $sp, 0x20
/* AD5798 8005E5F8 24020001 */  li    $v0, 1
/* AD579C 8005E5FC 03E00008 */  jr    $ra
/* AD57A0 8005E600 00000000 */   nop   

