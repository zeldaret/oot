.rdata
glabel D_80141070
    .asciz "../z_view.c"
    .balign 4

.text
glabel func_800AA1F8
/* B21398 800AA1F8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B2139C 800AA1FC AFBF0014 */  sw    $ra, 0x14($sp)
/* B213A0 800AA200 AFA40020 */  sw    $a0, 0x20($sp)
/* B213A4 800AA204 3C058014 */  lui   $a1, %hi(D_80141070) # $a1, 0x8014
/* B213A8 800AA208 24A51070 */  addiu $a1, %lo(D_80141070) # addiu $a1, $a1, 0x1070
/* B213AC 800AA20C 24040128 */  li    $a0, 296
/* B213B0 800AA210 0C03F570 */  jal   SystemArena_MallocDebug
/* B213B4 800AA214 2406011D */   li    $a2, 285
/* B213B8 800AA218 10400008 */  beqz  $v0, .L800AA23C
/* B213BC 800AA21C AFA2001C */   sw    $v0, 0x1c($sp)
/* B213C0 800AA220 00402025 */  move  $a0, $v0
/* B213C4 800AA224 00002825 */  move  $a1, $zero
/* B213C8 800AA228 0C041A18 */  jal   func_80106860
/* B213CC 800AA22C 24060128 */   li    $a2, 296
/* B213D0 800AA230 8FA4001C */  lw    $a0, 0x1c($sp)
/* B213D4 800AA234 0C02A89E */  jal   func_800AA278
/* B213D8 800AA238 8FA50020 */   lw    $a1, 0x20($sp)
.L800AA23C:
/* B213DC 800AA23C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B213E0 800AA240 8FA2001C */  lw    $v0, 0x1c($sp)
/* B213E4 800AA244 27BD0020 */  addiu $sp, $sp, 0x20
/* B213E8 800AA248 03E00008 */  jr    $ra
/* B213EC 800AA24C 00000000 */   nop   

