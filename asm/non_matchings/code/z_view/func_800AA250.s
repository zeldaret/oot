.rdata
glabel D_8014107C
    .asciz "../z_view.c"
    .balign 4

.text
glabel func_800AA250
/* B213F0 800AA250 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B213F4 800AA254 AFBF0014 */  sw    $ra, 0x14($sp)
/* B213F8 800AA258 3C058014 */  lui   $a1, %hi(D_8014107C) # $a1, 0x8014
/* B213FC 800AA25C 24A5107C */  addiu $a1, %lo(D_8014107C) # addiu $a1, $a1, 0x107c
/* B21400 800AA260 0C03F5ED */  jal   SystemArena_FreeDebug
/* B21404 800AA264 24060129 */   li    $a2, 297
/* B21408 800AA268 8FBF0014 */  lw    $ra, 0x14($sp)
/* B2140C 800AA26C 27BD0018 */  addiu $sp, $sp, 0x18
/* B21410 800AA270 03E00008 */  jr    $ra
/* B21414 800AA274 00000000 */   nop   

