glabel func_80029694
/* AA0834 80029694 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AA0838 80029698 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA083C 8002969C AFA40050 */  sw    $a0, 0x50($sp)
/* AA0840 800296A0 AFA60058 */  sw    $a2, 0x58($sp)
/* AA0844 800296A4 AFA7005C */  sw    $a3, 0x5c($sp)
/* AA0848 800296A8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA084C 800296AC 27A40018 */   addiu $a0, $sp, 0x18
/* AA0850 800296B0 27A40024 */  addiu $a0, $sp, 0x24
/* AA0854 800296B4 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0858 800296B8 8FA50058 */   lw    $a1, 0x58($sp)
/* AA085C 800296BC 27A40030 */  addiu $a0, $sp, 0x30
/* AA0860 800296C0 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0864 800296C4 8FA5005C */   lw    $a1, 0x5c($sp)
/* AA0868 800296C8 27A4003C */  addiu $a0, $sp, 0x3c
/* AA086C 800296CC 0C01E218 */  jal   Color_RGBA8_Copy
/* AA0870 800296D0 8FA50060 */   lw    $a1, 0x60($sp)
/* AA0874 800296D4 27A40040 */  addiu $a0, $sp, 0x40
/* AA0878 800296D8 0C01E218 */  jal   Color_RGBA8_Copy
/* AA087C 800296DC 8FA50064 */   lw    $a1, 0x64($sp)
/* AA0880 800296E0 87AE006A */  lh    $t6, 0x6a($sp)
/* AA0884 800296E4 87AF006E */  lh    $t7, 0x6e($sp)
/* AA0888 800296E8 87B80072 */  lh    $t8, 0x72($sp)
/* AA088C 800296EC 24190001 */  li    $t9, 1
/* AA0890 800296F0 A3B9004C */  sb    $t9, 0x4c($sp)
/* AA0894 800296F4 8FA40050 */  lw    $a0, 0x50($sp)
/* AA0898 800296F8 2405000E */  li    $a1, 14
/* AA089C 800296FC 24060080 */  li    $a2, 128
/* AA08A0 80029700 27A70018 */  addiu $a3, $sp, 0x18
/* AA08A4 80029704 A7AE0044 */  sh    $t6, 0x44($sp)
/* AA08A8 80029708 A7AF0046 */  sh    $t7, 0x46($sp)
/* AA08AC 8002970C 0C009DE6 */  jal   EffectSs_Spawn
/* AA08B0 80029710 A7B8004A */   sh    $t8, 0x4a($sp)
/* AA08B4 80029714 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA08B8 80029718 27BD0050 */  addiu $sp, $sp, 0x50
/* AA08BC 8002971C 03E00008 */  jr    $ra
/* AA08C0 80029720 00000000 */   nop   

