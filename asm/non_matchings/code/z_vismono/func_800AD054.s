.rdata
glabel D_801417C0
    .asciz "../z_vismono.c"
    .balign 4

.text
glabel func_800AD054
/* B241F4 800AD054 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B241F8 800AD058 AFBF0014 */  sw    $ra, 0x14($sp)
/* B241FC 800AD05C 3C058014 */  lui   $a1, %hi(D_801417C0) # $a1, 0x8014
/* B24200 800AD060 24A517C0 */  addiu $a1, %lo(D_801417C0) # addiu $a1, $a1, 0x17c0
/* B24204 800AD064 8C840014 */  lw    $a0, 0x14($a0)
/* B24208 800AD068 0C03F5ED */  jal   SystemArena_FreeDebug
/* B2420C 800AD06C 24060089 */   li    $a2, 137
/* B24210 800AD070 8FBF0014 */  lw    $ra, 0x14($sp)
/* B24214 800AD074 27BD0018 */  addiu $sp, $sp, 0x18
/* B24218 800AD078 03E00008 */  jr    $ra
/* B2421C 800AD07C 00000000 */   nop   

