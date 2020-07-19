.late_rodata
glabel D_8014A608
    .float 0.15

glabel D_8014A60C
    .float 1.39999997

.text
glabel func_800F45D0
/* B6B770 800F45D0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B6B774 800F45D4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B6B778 800F45D8 E7AC0018 */  swc1  $f12, 0x18($sp)
/* B6B77C 800F45DC 3C048013 */  lui   $a0, %hi(D_801333D4) # $a0, 0x8013
/* B6B780 800F45E0 248433D4 */  addiu $a0, %lo(D_801333D4) # addiu $a0, $a0, 0x33d4
/* B6B784 800F45E4 8FA60018 */  lw    $a2, 0x18($sp)
/* B6B788 800F45E8 0C03D105 */  jal   func_800F4414
/* B6B78C 800F45EC 2405103D */   li    $a1, 4157
/* B6B790 800F45F0 3C018015 */  lui   $at, %hi(D_8014A608)
/* B6B794 800F45F4 C424A608 */  lwc1  $f4, %lo(D_8014A608)($at)
/* B6B798 800F45F8 C7A60018 */  lwc1  $f6, 0x18($sp)
/* B6B79C 800F45FC 3C018015 */  lui   $at, %hi(D_8014A60C)
/* B6B7A0 800F4600 C42AA60C */  lwc1  $f10, %lo(D_8014A60C)($at)
/* B6B7A4 800F4604 46062202 */  mul.s $f8, $f4, $f6
/* B6B7A8 800F4608 3C048013 */  lui   $a0, %hi(D_801333D4) # $a0, 0x8013
/* B6B7AC 800F460C 248433D4 */  addiu $a0, %lo(D_801333D4) # addiu $a0, $a0, 0x33d4
/* B6B7B0 800F4610 00002825 */  move  $a1, $zero
/* B6B7B4 800F4614 460A4400 */  add.s $f16, $f8, $f10
/* B6B7B8 800F4618 44068000 */  mfc1  $a2, $f16
/* B6B7BC 800F461C 0C03D0DB */  jal   func_800F436C
/* B6B7C0 800F4620 00000000 */   nop   
/* B6B7C4 800F4624 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6B7C8 800F4628 27BD0018 */  addiu $sp, $sp, 0x18
/* B6B7CC 800F462C 03E00008 */  jr    $ra
/* B6B7D0 800F4630 00000000 */   nop   

