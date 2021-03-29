glabel func_800F41E0
/* B6B380 800F41E0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B6B384 800F41E4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B6B388 800F41E8 AFA40020 */  sw    $a0, 0x20($sp)
/* B6B38C 800F41EC AFA50024 */  sw    $a1, 0x24($sp)
/* B6B390 800F41F0 0C0399F0 */  jal   Audio_NextRandom
/* B6B394 800F41F4 AFA60028 */   sw    $a2, 0x28($sp)
/* B6B398 800F41F8 93AF002B */  lbu   $t7, 0x2b($sp)
/* B6B39C 800F41FC 97AE0026 */  lhu   $t6, 0x26($sp)
/* B6B3A0 800F4200 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B6B3A4 800F4204 004F001B */  divu  $zero, $v0, $t7
/* B6B3A8 800F4208 0000C010 */  mfhi  $t8
/* B6B3AC 800F420C 331900FF */  andi  $t9, $t8, 0xff
/* B6B3B0 800F4210 3C088013 */  lui   $t0, %hi(D_801333E8) # $t0, 0x8013
/* B6B3B4 800F4214 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B6B3B8 800F4218 250833E8 */  addiu $t0, %lo(D_801333E8) # addiu $t0, $t0, 0x33e8
/* B6B3BC 800F421C 15E00002 */  bnez  $t7, .L800F4228
/* B6B3C0 800F4220 00000000 */   nop   
/* B6B3C4 800F4224 0007000D */  break 7
.L800F4228:
/* B6B3C8 800F4228 01D92021 */  addu  $a0, $t6, $t9
/* B6B3CC 800F422C 3084FFFF */  andi  $a0, $a0, 0xffff
/* B6B3D0 800F4230 AFA80014 */  sw    $t0, 0x14($sp)
/* B6B3D4 800F4234 AFA70010 */  sw    $a3, 0x10($sp)
/* B6B3D8 800F4238 8FA50020 */  lw    $a1, 0x20($sp)
/* B6B3DC 800F423C 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B6B3E0 800F4240 24060004 */   li    $a2, 4
/* B6B3E4 800F4244 8FBF001C */  lw    $ra, 0x1c($sp)
/* B6B3E8 800F4248 27BD0020 */  addiu $sp, $sp, 0x20
/* B6B3EC 800F424C 03E00008 */  jr    $ra
/* B6B3F0 800F4250 00000000 */   nop   

