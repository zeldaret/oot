glabel func_800F4578
/* B6B718 800F4578 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B6B71C 800F457C 44866000 */  mtc1  $a2, $f12
/* B6B720 800F4580 AFA50024 */  sw    $a1, 0x24($sp)
/* B6B724 800F4584 3C028017 */  lui   $v0, %hi(D_8016B7E0) # $v0, 0x8017
/* B6B728 800F4588 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B6B72C 800F458C 2442B7E0 */  addiu $v0, %lo(D_8016B7E0) # addiu $v0, $v0, -0x4820
/* B6B730 800F4590 00802825 */  move  $a1, $a0
/* B6B734 800F4594 AFBF001C */  sw    $ra, 0x1c($sp)
/* B6B738 800F4598 AFA40020 */  sw    $a0, 0x20($sp)
/* B6B73C 800F459C 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B6B740 800F45A0 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B6B744 800F45A4 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B6B748 800F45A8 AFAE0014 */  sw    $t6, 0x14($sp)
/* B6B74C 800F45AC 97A40026 */  lhu   $a0, 0x26($sp)
/* B6B750 800F45B0 AFA20010 */  sw    $v0, 0x10($sp)
/* B6B754 800F45B4 24060004 */  li    $a2, 4
/* B6B758 800F45B8 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B6B75C 800F45BC E44C0000 */   swc1  $f12, ($v0)
/* B6B760 800F45C0 8FBF001C */  lw    $ra, 0x1c($sp)
/* B6B764 800F45C4 27BD0020 */  addiu $sp, $sp, 0x20
/* B6B768 800F45C8 03E00008 */  jr    $ra
/* B6B76C 800F45CC 00000000 */   nop   

