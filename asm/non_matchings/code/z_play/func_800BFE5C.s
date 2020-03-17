.rdata
glabel D_80144780
    .asciz "../z_play.c"
    .balign 4

glabel D_8014478C
    .asciz "../z_play.c"
    .balign 4

.text
glabel func_800BFE5C
/* B36FFC 800BFE5C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B37000 800BFE60 AFBF001C */  sw    $ra, 0x1c($sp)
/* B37004 800BFE64 AFA5002C */  sw    $a1, 0x2c($sp)
/* B37008 800BFE68 8CB80000 */  lw    $t8, ($a1)
/* B3700C 800BFE6C 8CAF0004 */  lw    $t7, 4($a1)
/* B37010 800BFE70 3C068014 */  lui   $a2, %hi(D_80144780) # $a2, 0x8014
/* B37014 800BFE74 24C64780 */  addiu $a2, %lo(D_80144780) # addiu $a2, $a2, 0x4780
/* B37018 800BFE78 01F82823 */  subu  $a1, $t7, $t8
/* B3701C 800BFE7C AFA50024 */  sw    $a1, 0x24($sp)
/* B37020 800BFE80 0C031521 */  jal   Game_Alloc
/* B37024 800BFE84 24071254 */   li    $a3, 4692
/* B37028 800BFE88 8FB9002C */  lw    $t9, 0x2c($sp)
/* B3702C 800BFE8C AFA20020 */  sw    $v0, 0x20($sp)
/* B37030 800BFE90 3C078014 */  lui   $a3, %hi(D_8014478C) # $a3, 0x8014
/* B37034 800BFE94 24081256 */  li    $t0, 4694
/* B37038 800BFE98 8F250000 */  lw    $a1, ($t9)
/* B3703C 800BFE9C AFA80010 */  sw    $t0, 0x10($sp)
/* B37040 800BFEA0 24E7478C */  addiu $a3, %lo(D_8014478C) # addiu $a3, $a3, 0x478c
/* B37044 800BFEA4 00402025 */  move  $a0, $v0
/* B37048 800BFEA8 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B3704C 800BFEAC 8FA60024 */   lw    $a2, 0x24($sp)
/* B37050 800BFEB0 8FBF001C */  lw    $ra, 0x1c($sp)
/* B37054 800BFEB4 8FA20020 */  lw    $v0, 0x20($sp)
/* B37058 800BFEB8 27BD0028 */  addiu $sp, $sp, 0x28
/* B3705C 800BFEBC 03E00008 */  jr    $ra
/* B37060 800BFEC0 00000000 */   nop   

