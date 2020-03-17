glabel func_800975D0
/* B0E770 800975D0 948E0020 */  lhu   $t6, 0x20($a0)
/* B0E774 800975D4 2401EFFF */  li    $at, -4097
/* B0E778 800975D8 3C18800C */  lui   $t8, %hi(func_800BCA64) # $t8, 0x800c
/* B0E77C 800975DC 01C17827 */  nor   $t7, $t6, $at
/* B0E780 800975E0 15E00006 */  bnez  $t7, .L800975FC
/* B0E784 800975E4 2718CA64 */   addiu $t8, %lo(func_800BCA64) # addiu $t8, $t8, -0x359c
/* B0E788 800975E8 3C190001 */  lui   $t9, (0x00012518 >> 16) # lui $t9, 1
/* B0E78C 800975EC 37392518 */  ori   $t9, (0x00012518 & 0xFFFF) # ori $t9, $t9, 0x2518
/* B0E790 800975F0 AC990010 */  sw    $t9, 0x10($a0)
/* B0E794 800975F4 AC98000C */  sw    $t8, 0xc($a0)
/* B0E798 800975F8 AC800098 */  sw    $zero, 0x98($a0)
.L800975FC:
/* B0E79C 800975FC 03E00008 */  jr    $ra
/* B0E7A0 80097600 00000000 */   nop   

