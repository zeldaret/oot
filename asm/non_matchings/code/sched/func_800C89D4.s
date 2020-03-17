.rdata
glabel D_80145FB4
    .asciz "sc->pending_swapbuffer1"
    .balign 4

glabel D_80145FD8
    .asciz "../sched.c"
    .balign 4

glabel D_80145FE4
    .asciz "sc->pending_swapbuffer2"
    .balign 4

glabel D_80146008
    .asciz "../sched.c"
    .balign 4

.text
glabel func_800C89D4
/* B3FB74 800C89D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3FB78 800C89D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3FB7C 800C89DC 14A00003 */  bnez  $a1, .L800C89EC
/* B3FB80 800C89E0 00803025 */   move  $a2, $a0
/* B3FB84 800C89E4 10000027 */  b     .L800C8A84
/* B3FB88 800C89E8 00001025 */   move  $v0, $zero
.L800C89EC:
/* B3FB8C 800C89EC 8CC40244 */  lw    $a0, 0x244($a2)
/* B3FB90 800C89F0 50800004 */  beql  $a0, $zero, .L800C8A04
/* B3FB94 800C89F4 8CC20248 */   lw    $v0, 0x248($a2)
/* B3FB98 800C89F8 10000022 */  b     .L800C8A84
/* B3FB9C 800C89FC 00001025 */   move  $v0, $zero
/* B3FBA0 800C8A00 8CC20248 */  lw    $v0, 0x248($a2)
.L800C8A04:
/* B3FBA4 800C8A04 10400003 */  beqz  $v0, .L800C8A14
/* B3FBA8 800C8A08 00000000 */   nop   
/* B3FBAC 800C8A0C 1000001D */  b     .L800C8A84
/* B3FBB0 800C8A10 00001025 */   move  $v0, $zero
.L800C8A14:
/* B3FBB4 800C8A14 10400003 */  beqz  $v0, .L800C8A24
/* B3FBB8 800C8A18 00001825 */   move  $v1, $zero
/* B3FBBC 800C8A1C 10000001 */  b     .L800C8A24
/* B3FBC0 800C8A20 8C430004 */   lw    $v1, 4($v0)
.L800C8A24:
/* B3FBC4 800C8A24 8CAE000C */  lw    $t6, 0xc($a1)
/* B3FBC8 800C8A28 8DC20000 */  lw    $v0, ($t6)
/* B3FBCC 800C8A2C 14620003 */  bne   $v1, $v0, .L800C8A3C
/* B3FBD0 800C8A30 00000000 */   nop   
/* B3FBD4 800C8A34 10000013 */  b     .L800C8A84
/* B3FBD8 800C8A38 00001025 */   move  $v0, $zero
.L800C8A3C:
/* B3FBDC 800C8A3C 10800003 */  beqz  $a0, .L800C8A4C
/* B3FBE0 800C8A40 00001825 */   move  $v1, $zero
/* B3FBE4 800C8A44 10000001 */  b     .L800C8A4C
/* B3FBE8 800C8A48 8C830004 */   lw    $v1, 4($a0)
.L800C8A4C:
/* B3FBEC 800C8A4C 14620003 */  bne   $v1, $v0, .L800C8A5C
/* B3FBF0 800C8A50 00000000 */   nop   
/* B3FBF4 800C8A54 1000000B */  b     .L800C8A84
/* B3FBF8 800C8A58 00001025 */   move  $v0, $zero
.L800C8A5C:
/* B3FBFC 800C8A5C 0C0419D8 */  jal   func_80106760
/* B3FC00 800C8A60 AFA5001C */   sw    $a1, 0x1c($sp)
/* B3FC04 800C8A64 8FA5001C */  lw    $a1, 0x1c($sp)
/* B3FC08 800C8A68 8CAF000C */  lw    $t7, 0xc($a1)
/* B3FC0C 800C8A6C 8DF80000 */  lw    $t8, ($t7)
/* B3FC10 800C8A70 54580004 */  bnel  $v0, $t8, .L800C8A84
/* B3FC14 800C8A74 00A01025 */   move  $v0, $a1
/* B3FC18 800C8A78 10000002 */  b     .L800C8A84
/* B3FC1C 800C8A7C 00001025 */   move  $v0, $zero
/* B3FC20 800C8A80 00A01025 */  move  $v0, $a1
.L800C8A84:
/* B3FC24 800C8A84 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3FC28 800C8A88 27BD0018 */  addiu $sp, $sp, 0x18
/* B3FC2C 800C8A8C 03E00008 */  jr    $ra
/* B3FC30 800C8A90 00000000 */   nop   

