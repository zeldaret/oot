glabel func_800F4138
/* B6B2D8 800F4138 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B6B2DC 800F413C AFBF001C */  sw    $ra, 0x1c($sp)
/* B6B2E0 800F4140 44866000 */  mtc1  $a2, $f12
/* B6B2E4 800F4144 AFA40020 */  sw    $a0, 0x20($sp)
/* B6B2E8 800F4148 0C03CFE1 */  jal   func_800F3F84
/* B6B2EC 800F414C AFA50024 */   sw    $a1, 0x24($sp)
/* B6B2F0 800F4150 3C0E8017 */  lui   $t6, %hi(D_8016B7A8) # $t6, 0x8017
/* B6B2F4 800F4154 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B6B2F8 800F4158 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B6B2FC 800F415C 25CEB7A8 */  addiu $t6, %lo(D_8016B7A8) # addiu $t6, $t6, -0x4858
/* B6B300 800F4160 3C078017 */  lui   $a3, %hi(D_8016B7B0) # $a3, 0x8017
/* B6B304 800F4164 24E7B7B0 */  addiu $a3, %lo(D_8016B7B0) # addiu $a3, $a3, -0x4850
/* B6B308 800F4168 AFAE0010 */  sw    $t6, 0x10($sp)
/* B6B30C 800F416C AFAF0014 */  sw    $t7, 0x14($sp)
/* B6B310 800F4170 97A40026 */  lhu   $a0, 0x26($sp)
/* B6B314 800F4174 8FA50020 */  lw    $a1, 0x20($sp)
/* B6B318 800F4178 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B6B31C 800F417C 24060004 */   li    $a2, 4
/* B6B320 800F4180 8FBF001C */  lw    $ra, 0x1c($sp)
/* B6B324 800F4184 27BD0020 */  addiu $sp, $sp, 0x20
/* B6B328 800F4188 03E00008 */  jr    $ra
/* B6B32C 800F418C 00000000 */   nop   

