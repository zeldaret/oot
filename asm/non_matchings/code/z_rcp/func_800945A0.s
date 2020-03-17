.rdata
glabel D_8013EDD8
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EDE4
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_800945A0
/* B0B740 800945A0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B744 800945A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B748 800945A8 00802825 */  move  $a1, $a0
/* B0B74C 800945AC 3C068014 */  lui   $a2, %hi(D_8013EDD8) # $a2, 0x8014
/* B0B750 800945B0 24C6EDD8 */  addiu $a2, %lo(D_8013EDD8) # addiu $a2, $a2, -0x1228
/* B0B754 800945B4 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B758 800945B8 27A40024 */  addiu $a0, $sp, 0x24
/* B0B75C 800945BC 0C031AB1 */  jal   func_800C6AC4
/* B0B760 800945C0 2407072D */   li    $a3, 1837
/* B0B764 800945C4 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B768 800945C8 3C188012 */  lui   $t8, %hi(D_80126A00) # $t8, 0x8012
/* B0B76C 800945CC 27186A00 */  addiu $t8, %lo(D_80126A00) # addiu $t8, $t8, 0x6a00
/* B0B770 800945D0 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B774 800945D4 3C0FDE00 */  lui   $t7, 0xde00
/* B0B778 800945D8 3C068014 */  lui   $a2, %hi(D_8013EDE4) # $a2, 0x8014
/* B0B77C 800945DC 246E0008 */  addiu $t6, $v1, 8
/* B0B780 800945E0 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B784 800945E4 24C6EDE4 */  addiu $a2, %lo(D_8013EDE4) # addiu $a2, $a2, -0x121c
/* B0B788 800945E8 27A40024 */  addiu $a0, $sp, 0x24
/* B0B78C 800945EC 24070731 */  li    $a3, 1841
/* B0B790 800945F0 AC780004 */  sw    $t8, 4($v1)
/* B0B794 800945F4 0C031AD5 */  jal   func_800C6B54
/* B0B798 800945F8 AC6F0000 */   sw    $t7, ($v1)
/* B0B79C 800945FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B7A0 80094600 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B7A4 80094604 03E00008 */  jr    $ra
/* B0B7A8 80094608 00000000 */   nop   

