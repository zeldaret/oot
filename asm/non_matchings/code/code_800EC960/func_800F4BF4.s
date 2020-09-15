glabel func_800F4BF4
/* B6BD94 800F4BF4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B6BD98 800F4BF8 AFA60028 */  sw    $a2, 0x28($sp)
/* B6BD9C 800F4BFC 83AE002B */  lb    $t6, 0x2b($sp)
/* B6BDA0 800F4C00 AFA50024 */  sw    $a1, 0x24($sp)
/* B6BDA4 800F4C04 3C198013 */  lui   $t9, %hi(gNoteFrequencies) # $t9, 0x8013
/* B6BDA8 800F4C08 3C088013 */  lui   $t0, %hi(D_801333E0) # $t0, 0x8013
/* B6BDAC 800F4C0C 3C098013 */  lui   $t1, %hi(D_801333E8) # $t1, 0x8013
/* B6BDB0 800F4C10 000E7880 */  sll   $t7, $t6, 2
/* B6BDB4 800F4C14 00802825 */  move  $a1, $a0
/* B6BDB8 800F4C18 AFBF001C */  sw    $ra, 0x1c($sp)
/* B6BDBC 800F4C1C AFA40020 */  sw    $a0, 0x20($sp)
/* B6BDC0 800F4C20 25F8009C */  addiu $t8, $t7, 0x9c
/* B6BDC4 800F4C24 252933E8 */  addiu $t1, %lo(D_801333E8) # addiu $t1, $t1, 0x33e8
/* B6BDC8 800F4C28 250833E0 */  addiu $t0, %lo(D_801333E0) # addiu $t0, $t0, 0x33e0
/* B6BDCC 800F4C2C 2739F8B4 */  addiu $t9, %lo(gNoteFrequencies) # addiu $t9, $t9, -0x74c
/* B6BDD0 800F4C30 03193821 */  addu  $a3, $t8, $t9
/* B6BDD4 800F4C34 AFA80010 */  sw    $t0, 0x10($sp)
/* B6BDD8 800F4C38 AFA90014 */  sw    $t1, 0x14($sp)
/* B6BDDC 800F4C3C 97A40026 */  lhu   $a0, 0x26($sp)
/* B6BDE0 800F4C40 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B6BDE4 800F4C44 24060004 */   li    $a2, 4
/* B6BDE8 800F4C48 8FBF001C */  lw    $ra, 0x1c($sp)
/* B6BDEC 800F4C4C 27BD0020 */  addiu $sp, $sp, 0x20
/* B6BDF0 800F4C50 03E00008 */  jr    $ra
/* B6BDF4 800F4C54 00000000 */   nop   

