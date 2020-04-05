.rdata
glabel D_80135688
    .asciz "../z_eff_ss_dead.c"
    .balign 4

glabel D_8013569C
    .asciz "../z_eff_ss_dead.c"
    .balign 4

.text
glabel func_80026A6C
/* A9DC0C 80026A6C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9DC10 80026A70 AFBF0014 */  sw    $ra, 0x14($sp)
/* A9DC14 80026A74 AFA40038 */  sw    $a0, 0x38($sp)
/* A9DC18 80026A78 8C850000 */  lw    $a1, ($a0)
/* A9DC1C 80026A7C 3C068013 */  lui   $a2, %hi(D_80135688) # $a2, 0x8013
/* A9DC20 80026A80 24C65688 */  addiu $a2, %lo(D_80135688) # addiu $a2, $a2, 0x5688
/* A9DC24 80026A84 27A40020 */  addiu $a0, $sp, 0x20
/* A9DC28 80026A88 240700D9 */  li    $a3, 217
/* A9DC2C 80026A8C 0C031AB1 */  jal   Graph_OpenDisps
/* A9DC30 80026A90 AFA50030 */   sw    $a1, 0x30($sp)
/* A9DC34 80026A94 8FA80030 */  lw    $t0, 0x30($sp)
/* A9DC38 80026A98 3C18E700 */  lui   $t8, 0xe700
/* A9DC3C 80026A9C 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* A9DC40 80026AA0 246F0008 */  addiu $t7, $v1, 8
/* A9DC44 80026AA4 AD0F02D0 */  sw    $t7, 0x2d0($t0)
/* A9DC48 80026AA8 AC600004 */  sw    $zero, 4($v1)
/* A9DC4C 80026AAC AC780000 */  sw    $t8, ($v1)
/* A9DC50 80026AB0 8D0502D0 */  lw    $a1, 0x2d0($t0)
/* A9DC54 80026AB4 8FA40038 */  lw    $a0, 0x38($sp)
/* A9DC58 80026AB8 0C02F228 */  jal   func_800BC8A0
/* A9DC5C 80026ABC AFA80030 */   sw    $t0, 0x30($sp)
/* A9DC60 80026AC0 8FA80030 */  lw    $t0, 0x30($sp)
/* A9DC64 80026AC4 3C068013 */  lui   $a2, %hi(D_8013569C) # $a2, 0x8013
/* A9DC68 80026AC8 24C6569C */  addiu $a2, %lo(D_8013569C) # addiu $a2, $a2, 0x569c
/* A9DC6C 80026ACC AD0202D0 */  sw    $v0, 0x2d0($t0)
/* A9DC70 80026AD0 8FB90038 */  lw    $t9, 0x38($sp)
/* A9DC74 80026AD4 27A40020 */  addiu $a0, $sp, 0x20
/* A9DC78 80026AD8 240700DE */  li    $a3, 222
/* A9DC7C 80026ADC 0C031AD5 */  jal   Graph_CloseDisps
/* A9DC80 80026AE0 8F250000 */   lw    $a1, ($t9)
/* A9DC84 80026AE4 8FBF0014 */  lw    $ra, 0x14($sp)
/* A9DC88 80026AE8 27BD0038 */  addiu $sp, $sp, 0x38
/* A9DC8C 80026AEC 03E00008 */  jr    $ra
/* A9DC90 80026AF0 00000000 */   nop   
