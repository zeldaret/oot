.rdata
glabel D_80144BB8
    .asciz "this->cvg_save"
    .balign 4

glabel D_80144BC8
    .asciz "../PreRender.c"
    .balign 4

.text
glabel func_800C20B4
/* B39254 800C20B4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B39258 800C20B8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3925C 800C20BC AFB00018 */  sw    $s0, 0x18($sp)
/* B39260 800C20C0 00808025 */  move  $s0, $a0
/* B39264 800C20C4 0C0307E9 */  jal   func_800C1FA4
/* B39268 800C20C8 AFA50024 */   sw    $a1, 0x24($sp)
/* B3926C 800C20CC 3C048014 */  lui   $a0, %hi(D_80144BB8) # $a0, 0x8014
/* B39270 800C20D0 3C068014 */  lui   $a2, %hi(D_80144BC8) # $a2, 0x8014
/* B39274 800C20D4 24C64BC8 */  addiu $a2, %lo(D_80144BC8) # addiu $a2, $a2, 0x4bc8
/* B39278 800C20D8 24844BB8 */  addiu $a0, %lo(D_80144BB8) # addiu $a0, $a0, 0x4bb8
/* B3927C 800C20DC 8E050018 */  lw    $a1, 0x18($s0)
/* B39280 800C20E0 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B39284 800C20E4 24070214 */   li    $a3, 532
/* B39288 800C20E8 8E070018 */  lw    $a3, 0x18($s0)
/* B3928C 800C20EC 02002025 */  move  $a0, $s0
/* B39290 800C20F0 8FA50024 */  lw    $a1, 0x24($sp)
/* B39294 800C20F4 50E00004 */  beql  $a3, $zero, .L800C2108
/* B39298 800C20F8 8FBF001C */   lw    $ra, 0x1c($sp)
/* B3929C 800C20FC 0C0306C9 */  jal   func_800C1B24
/* B392A0 800C2100 8E060010 */   lw    $a2, 0x10($s0)
/* B392A4 800C2104 8FBF001C */  lw    $ra, 0x1c($sp)
.L800C2108:
/* B392A8 800C2108 8FB00018 */  lw    $s0, 0x18($sp)
/* B392AC 800C210C 27BD0020 */  addiu $sp, $sp, 0x20
/* B392B0 800C2110 03E00008 */  jr    $ra
/* B392B4 800C2114 00000000 */   nop   

