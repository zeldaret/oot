glabel Math3D_SurfaceNorm
/* B429C4 800CB824 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B429C8 800CB828 AFA40018 */  sw    $a0, 0x18($sp)
/* B429CC 800CB82C AFA60020 */  sw    $a2, 0x20($sp)
/* B429D0 800CB830 AFBF0014 */  sw    $ra, 0x14($sp)
/* B429D4 800CB834 AFA5001C */  sw    $a1, 0x1c($sp)
/* B429D8 800CB838 3C068017 */  lui   $a2, %hi(D_8016A5E8) # $a2, 0x8017
/* B429DC 800CB83C 00A02025 */  move  $a0, $a1
/* B429E0 800CB840 AFA70024 */  sw    $a3, 0x24($sp)
/* B429E4 800CB844 8FA50018 */  lw    $a1, 0x18($sp)
/* B429E8 800CB848 0C01DFB4 */  jal   Math_Vec3f_Diff
/* B429EC 800CB84C 24C6A5E8 */   addiu $a2, %lo(D_8016A5E8) # addiu $a2, $a2, -0x5a18
/* B429F0 800CB850 3C068017 */  lui   $a2, %hi(D_8016A5F8) # $a2, 0x8017
/* B429F4 800CB854 24C6A5F8 */  addiu $a2, %lo(D_8016A5F8) # addiu $a2, $a2, -0x5a08
/* B429F8 800CB858 8FA40020 */  lw    $a0, 0x20($sp)
/* B429FC 800CB85C 0C01DFB4 */  jal   Math_Vec3f_Diff
/* B42A00 800CB860 8FA50018 */   lw    $a1, 0x18($sp)
/* B42A04 800CB864 3C048017 */  lui   $a0, %hi(D_8016A5E8) # $a0, 0x8017
/* B42A08 800CB868 3C058017 */  lui   $a1, %hi(D_8016A5F8) # $a1, 0x8017
/* B42A0C 800CB86C 24A5A5F8 */  addiu $a1, %lo(D_8016A5F8) # addiu $a1, $a1, -0x5a08
/* B42A10 800CB870 2484A5E8 */  addiu $a0, %lo(D_8016A5E8) # addiu $a0, $a0, -0x5a18
/* B42A14 800CB874 0C032DED */  jal   Math3D_Vec3f_Cross
/* B42A18 800CB878 8FA60024 */   lw    $a2, 0x24($sp)
/* B42A1C 800CB87C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B42A20 800CB880 27BD0018 */  addiu $sp, $sp, 0x18
/* B42A24 800CB884 03E00008 */  jr    $ra
/* B42A28 800CB888 00000000 */   nop

