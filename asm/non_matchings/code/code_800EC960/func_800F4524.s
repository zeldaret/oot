glabel func_800F4524
/* B6B6C4 800F4524 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B6B6C8 800F4528 AFA60028 */  sw    $a2, 0x28($sp)
/* B6B6CC 800F452C 83AE002B */  lb    $t6, 0x2b($sp)
/* B6B6D0 800F4530 AFA50024 */  sw    $a1, 0x24($sp)
/* B6B6D4 800F4534 3C028017 */  lui   $v0, %hi(D_8016B7DC) # $v0, 0x8017
/* B6B6D8 800F4538 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B6B6DC 800F453C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B6B6E0 800F4540 2442B7DC */  addiu $v0, %lo(D_8016B7DC) # addiu $v0, $v0, -0x4824
/* B6B6E4 800F4544 00802825 */  move  $a1, $a0
/* B6B6E8 800F4548 AFBF001C */  sw    $ra, 0x1c($sp)
/* B6B6EC 800F454C AFA40020 */  sw    $a0, 0x20($sp)
/* B6B6F0 800F4550 97A40026 */  lhu   $a0, 0x26($sp)
/* B6B6F4 800F4554 AFA20014 */  sw    $v0, 0x14($sp)
/* B6B6F8 800F4558 AFA70010 */  sw    $a3, 0x10($sp)
/* B6B6FC 800F455C 24060004 */  li    $a2, 4
/* B6B700 800F4560 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B6B704 800F4564 A04E0000 */   sb    $t6, ($v0)
/* B6B708 800F4568 8FBF001C */  lw    $ra, 0x1c($sp)
/* B6B70C 800F456C 27BD0020 */  addiu $sp, $sp, 0x20
/* B6B710 800F4570 03E00008 */  jr    $ra
/* B6B714 800F4574 00000000 */   nop   

