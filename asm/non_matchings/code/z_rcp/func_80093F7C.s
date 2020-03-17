.rdata
glabel D_8013EC88
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EC94
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80093F7C
/* B0B11C 80093F7C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B0B120 80093F80 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B124 80093F84 AFA40030 */  sw    $a0, 0x30($sp)
/* B0B128 80093F88 3C068014 */  lui   $a2, %hi(D_8013EC88) # $a2, 0x8014
/* B0B12C 80093F8C 24C6EC88 */  addiu $a2, %lo(D_8013EC88) # addiu $a2, $a2, -0x1378
/* B0B130 80093F90 8FA50030 */  lw    $a1, 0x30($sp)
/* B0B134 80093F94 27A4001C */  addiu $a0, $sp, 0x1c
/* B0B138 80093F98 0C031AB1 */  jal   func_800C6AC4
/* B0B13C 80093F9C 24070621 */   li    $a3, 1569
/* B0B140 80093FA0 8FAE0030 */  lw    $t6, 0x30($sp)
/* B0B144 80093FA4 0C024FD6 */  jal   func_80093F58
/* B0B148 80093FA8 8DC402C0 */   lw    $a0, 0x2c0($t6)
/* B0B14C 80093FAC 8FA50030 */  lw    $a1, 0x30($sp)
/* B0B150 80093FB0 3C068014 */  lui   $a2, %hi(D_8013EC94) # $a2, 0x8014
/* B0B154 80093FB4 24C6EC94 */  addiu $a2, %lo(D_8013EC94) # addiu $a2, $a2, -0x136c
/* B0B158 80093FB8 27A4001C */  addiu $a0, $sp, 0x1c
/* B0B15C 80093FBC 24070625 */  li    $a3, 1573
/* B0B160 80093FC0 0C031AD5 */  jal   func_800C6B54
/* B0B164 80093FC4 ACA202C0 */   sw    $v0, 0x2c0($a1)
/* B0B168 80093FC8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B16C 80093FCC 27BD0030 */  addiu $sp, $sp, 0x30
/* B0B170 80093FD0 03E00008 */  jr    $ra
/* B0B174 80093FD4 00000000 */   nop   

