glabel func_800EC8DC
/* B63A7C 800EC8DC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B63A80 800EC8E0 AFBF001C */  sw    $ra, 0x1c($sp)
/* B63A84 800EC8E4 AFB10018 */  sw    $s1, 0x18($sp)
/* B63A88 800EC8E8 0C03A72A */  jal   func_800E9CA8
/* B63A8C 800EC8EC AFB00014 */   sw    $s0, 0x14($sp)
/* B63A90 800EC8F0 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B63A94 800EC8F4 3C038017 */  lui   $v1, %hi(D_80171180) # $v1, 0x8017
/* B63A98 800EC8F8 24631180 */  addiu $v1, %lo(D_80171180) # addiu $v1, $v1, 0x1180
/* B63A9C 800EC8FC 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
.L800EC900:
/* B63AA0 800EC900 904E3AB0 */  lbu   $t6, 0x3ab0($v0)
/* B63AA4 800EC904 24420080 */  addiu $v0, $v0, 0x80
/* B63AA8 800EC908 0043082B */  sltu  $at, $v0, $v1
/* B63AAC 800EC90C 31CFFF7F */  andi  $t7, $t6, 0xff7f
/* B63AB0 800EC910 AC403A80 */  sw    $zero, 0x3a80($v0)
/* B63AB4 800EC914 1420FFFA */  bnez  $at, .L800EC900
/* B63AB8 800EC918 A04F3A30 */   sb    $t7, 0x3a30($v0)
/* B63ABC 800EC91C 3C108017 */  lui   $s0, %hi(D_801726B0) # $s0, 0x8017
/* B63AC0 800EC920 3C118017 */  lui   $s1, %hi(D_80172C30) # $s1, 0x8017
/* B63AC4 800EC924 26312C30 */  addiu $s1, %lo(D_80172C30) # addiu $s1, $s1, 0x2c30
/* B63AC8 800EC928 261026B0 */  addiu $s0, %lo(D_801726B0) # addiu $s0, $s0, 0x26b0
.L800EC92C:
/* B63ACC 800EC92C 0C03B203 */  jal   func_800EC80C
/* B63AD0 800EC930 02002025 */   move  $a0, $s0
/* B63AD4 800EC934 26100160 */  addiu $s0, $s0, 0x160
/* B63AD8 800EC938 1611FFFC */  bne   $s0, $s1, .L800EC92C
/* B63ADC 800EC93C 00000000 */   nop   
/* B63AE0 800EC940 8FBF001C */  lw    $ra, 0x1c($sp)
/* B63AE4 800EC944 8FB00014 */  lw    $s0, 0x14($sp)
/* B63AE8 800EC948 8FB10018 */  lw    $s1, 0x18($sp)
/* B63AEC 800EC94C 03E00008 */  jr    $ra
/* B63AF0 800EC950 27BD0020 */   addiu $sp, $sp, 0x20