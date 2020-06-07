glabel func_800B958C
/* B3072C 800B958C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B30730 800B9590 AFA40020 */  sw    $a0, 0x20($sp)
/* B30734 800B9594 240E002A */  li    $t6, 42
/* B30738 800B9598 3C018016 */  lui   $at, %hi(D_801612EA) # $at, 0x8016
/* B3073C 800B959C 3C048016 */  lui   $a0, %hi(D_801612EA) # $a0, 0x8016
/* B30740 800B95A0 3C028016 */  lui   $v0, %hi(D_801612D0) # $v0, 0x8016
/* B30744 800B95A4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B30748 800B95A8 AFB10018 */  sw    $s1, 0x18($sp)
/* B3074C 800B95AC AFB00014 */  sw    $s0, 0x14($sp)
/* B30750 800B95B0 AFA50024 */  sw    $a1, 0x24($sp)
/* B30754 800B95B4 A02E12EA */  sb    $t6, %lo(D_801612EA)($at)
/* B30758 800B95B8 244212D0 */  addiu $v0, %lo(D_801612D0) # addiu $v0, $v0, 0x12d0
/* B3075C 800B95BC 248412EA */  addiu $a0, %lo(D_801612EA) # addiu $a0, $a0, 0x12ea
/* B30760 800B95C0 24030058 */  li    $v1, 88
.L800B95C4:
/* B30764 800B95C4 24420001 */  addiu $v0, $v0, 1
/* B30768 800B95C8 0044082B */  sltu  $at, $v0, $a0
/* B3076C 800B95CC 1420FFFD */  bnez  $at, .L800B95C4
/* B30770 800B95D0 A043FFFF */   sb    $v1, -1($v0)
/* B30774 800B95D4 00008025 */  move  $s0, $zero
/* B30778 800B95D8 2411000F */  li    $s1, 15
/* B3077C 800B95DC 02002025 */  move  $a0, $s0
.L800B95E0:
/* B30780 800B95E0 0C02E25E */  jal   func_800B8978
/* B30784 800B95E4 00002825 */   move  $a1, $zero
/* B30788 800B95E8 26100001 */  addiu $s0, $s0, 1
/* B3078C 800B95EC 5611FFFC */  bnel  $s0, $s1, .L800B95E0
/* B30790 800B95F0 02002025 */   move  $a0, $s0
/* B30794 800B95F4 8FAF0024 */  lw    $t7, 0x24($sp)
/* B30798 800B95F8 3C018016 */  lui   $at, %hi(D_80161108) # $at, 0x8016
/* B3079C 800B95FC 8FBF001C */  lw    $ra, 0x1c($sp)
/* B307A0 800B9600 AC2F1108 */  sw    $t7, %lo(D_80161108)($at)
/* B307A4 800B9604 3C018016 */  lui   $at, %hi(D_8016110C) # $at, 0x8016
/* B307A8 800B9608 A420110C */  sh    $zero, %lo(D_8016110C)($at)
/* B307AC 800B960C 3C018016 */  lui   $at, %hi(D_80161148) # $at, 0x8016
/* B307B0 800B9610 A4201148 */  sh    $zero, %lo(D_80161148)($at)
/* B307B4 800B9614 3C018016 */  lui   $at, %hi(D_8016114A) # $at, 0x8016
/* B307B8 800B9618 2418FFFF */  li    $t8, -1
/* B307BC 800B961C A438114A */  sh    $t8, %lo(D_8016114A)($at)
/* B307C0 800B9620 3C018016 */  lui   $at, %hi(D_8016111A) # $at, 0x8016
/* B307C4 800B9624 8FB00014 */  lw    $s0, 0x14($sp)
/* B307C8 800B9628 8FB10018 */  lw    $s1, 0x18($sp)
/* B307CC 800B962C A420111A */  sh    $zero, %lo(D_8016111A)($at)
/* B307D0 800B9630 03E00008 */  jr    $ra
/* B307D4 800B9634 27BD0020 */   addiu $sp, $sp, 0x20

