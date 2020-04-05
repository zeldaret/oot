.rdata
glabel D_80135610
    .asciz "../z_eff_ss_dead.c"
    .balign 4

glabel D_80135624
    .asciz "../z_eff_ss_dead.c"
    .balign 4

.text
glabel func_80026608
/* A9D7A8 80026608 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9D7AC 8002660C AFBF0014 */  sw    $ra, 0x14($sp)
/* A9D7B0 80026610 AFA40038 */  sw    $a0, 0x38($sp)
/* A9D7B4 80026614 8C850000 */  lw    $a1, ($a0)
/* A9D7B8 80026618 3C068013 */  lui   $a2, %hi(D_80135610) # $a2, 0x8013
/* A9D7BC 8002661C 24C65610 */  addiu $a2, %lo(D_80135610) # addiu $a2, $a2, 0x5610
/* A9D7C0 80026620 27A40020 */  addiu $a0, $sp, 0x20
/* A9D7C4 80026624 2407009F */  li    $a3, 159
/* A9D7C8 80026628 0C031AB1 */  jal   Graph_OpenDisps
/* A9D7CC 8002662C AFA50030 */   sw    $a1, 0x30($sp)
/* A9D7D0 80026630 8FA80030 */  lw    $t0, 0x30($sp)
/* A9D7D4 80026634 3C18E700 */  lui   $t8, 0xe700
/* A9D7D8 80026638 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* A9D7DC 8002663C 246F0008 */  addiu $t7, $v1, 8
/* A9D7E0 80026640 AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* A9D7E4 80026644 AC600004 */  sw    $zero, 4($v1)
/* A9D7E8 80026648 AC780000 */  sw    $t8, ($v1)
/* A9D7EC 8002664C 8D0502C0 */  lw    $a1, 0x2c0($t0)
/* A9D7F0 80026650 8FA40038 */  lw    $a0, 0x38($sp)
/* A9D7F4 80026654 0C02F228 */  jal   func_800BC8A0
/* A9D7F8 80026658 AFA80030 */   sw    $t0, 0x30($sp)
/* A9D7FC 8002665C 8FA80030 */  lw    $t0, 0x30($sp)
/* A9D800 80026660 3C068013 */  lui   $a2, %hi(D_80135624) # $a2, 0x8013
/* A9D804 80026664 24C65624 */  addiu $a2, %lo(D_80135624) # addiu $a2, $a2, 0x5624
/* A9D808 80026668 AD0202C0 */  sw    $v0, 0x2c0($t0)
/* A9D80C 8002666C 8FB90038 */  lw    $t9, 0x38($sp)
/* A9D810 80026670 27A40020 */  addiu $a0, $sp, 0x20
/* A9D814 80026674 240700A4 */  li    $a3, 164
/* A9D818 80026678 0C031AD5 */  jal   Graph_CloseDisps
/* A9D81C 8002667C 8F250000 */   lw    $a1, ($t9)
/* A9D820 80026680 8FBF0014 */  lw    $ra, 0x14($sp)
/* A9D824 80026684 27BD0038 */  addiu $sp, $sp, 0x38
/* A9D828 80026688 03E00008 */  jr    $ra
/* A9D82C 8002668C 00000000 */   nop   

