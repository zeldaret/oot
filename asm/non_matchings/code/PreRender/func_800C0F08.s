glabel func_800C0F08
/* B380A8 800C0F08 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B380AC 800C0F0C AFBF0014 */  sw    $ra, 0x14($sp)
/* B380B0 800C0F10 0C031B61 */  jal   ListAlloc_FreeAll
/* B380B4 800C0F14 24840044 */   addiu $a0, $a0, 0x44
/* B380B8 800C0F18 8FBF0014 */  lw    $ra, 0x14($sp)
/* B380BC 800C0F1C 27BD0018 */  addiu $sp, $sp, 0x18
/* B380C0 800C0F20 03E00008 */  jr    $ra
/* B380C4 800C0F24 00000000 */   nop   

