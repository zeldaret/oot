glabel func_800F9474
/* B70614 800F9474 3C0E8017 */  lui   $t6, %hi(D_801719D4) # $t6, 0x8017
/* B70618 800F9478 95CE19D4 */  lhu   $t6, %lo(D_801719D4)($t6)
/* B7061C 800F947C 30A6FFFF */  andi  $a2, $a1, 0xffff
/* B70620 800F9480 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B70624 800F9484 00CE0019 */  multu $a2, $t6
/* B70628 800F9488 AFA40018 */  sw    $a0, 0x18($sp)
/* B7062C 800F948C 93A4001B */  lbu   $a0, 0x1b($sp)
/* B70630 800F9490 AFA5001C */  sw    $a1, 0x1c($sp)
/* B70634 800F9494 3C018300 */  lui   $at, 0x8300
/* B70638 800F9498 00042400 */  sll   $a0, $a0, 0x10
/* B7063C 800F949C 00812025 */  or    $a0, $a0, $at
/* B70640 800F94A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B70644 800F94A4 00002812 */  mflo  $a1
/* B70648 800F94A8 04A10002 */  bgez  $a1, .L800F94B4
/* B7064C 800F94AC 00A00821 */   addu  $at, $a1, $zero
/* B70650 800F94B0 24A10003 */  addiu $at, $a1, 3
.L800F94B4:
/* B70654 800F94B4 00012883 */  sra   $a1, $at, 2
/* B70658 800F94B8 0C0396BF */  jal   func_800E5AFC
/* B7065C 800F94BC 00000000 */   nop   
/* B70660 800F94C0 93B8001B */  lbu   $t8, 0x1b($sp)
/* B70664 800F94C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B70668 800F94C8 3C018017 */  lui   $at, %hi(D_8016E9A4)
/* B7066C 800F94CC 0018C880 */  sll   $t9, $t8, 2
/* B70670 800F94D0 0338C821 */  addu  $t9, $t9, $t8
/* B70674 800F94D4 0019C880 */  sll   $t9, $t9, 2
/* B70678 800F94D8 0338C823 */  subu  $t9, $t9, $t8
/* B7067C 800F94DC 0019C8C0 */  sll   $t9, $t9, 3
/* B70680 800F94E0 0338C821 */  addu  $t9, $t9, $t8
/* B70684 800F94E4 0019C880 */  sll   $t9, $t9, 2
/* B70688 800F94E8 00390821 */  addu  $at, $at, $t9
/* B7068C 800F94EC 340FFFFF */  li    $t7, 65535
/* B70690 800F94F0 A42FE9A4 */  sh    $t7, %lo(D_8016E9A4)($at)
/* B70694 800F94F4 03E00008 */  jr    $ra
/* B70698 800F94F8 27BD0018 */   addiu $sp, $sp, 0x18

