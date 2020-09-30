glabel func_800E4EEC
/* B5C08C 800E4EEC 3C078013 */  lui   $a3, %hi(D_801304DC) # $a3, 0x8013
/* B5C090 800E4EF0 8CE704DC */  lw    $a3, %lo(D_801304DC)($a3)
/* B5C094 800E4EF4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B5C098 800E4EF8 3C018017 */  lui   $at, %hi(D_8016B738)
/* B5C09C 800E4EFC 00077880 */  sll   $t7, $a3, 2
/* B5C0A0 800E4F00 002F0821 */  addu  $at, $at, $t7
/* B5C0A4 800E4F04 3C188017 */  lui   $t8, %hi(D_8016B6E0) # $t8, 0x8017
/* B5C0A8 800E4F08 AFBF001C */  sw    $ra, 0x1c($sp)
/* B5C0AC 800E4F0C AFA60028 */  sw    $a2, 0x28($sp)
/* B5C0B0 800E4F10 AC26B738 */  sw    $a2, %lo(D_8016B738)($at)
/* B5C0B4 800E4F14 2718B6E0 */  addiu $t8, %lo(D_8016B6E0) # addiu $t8, $t8, -0x4920
/* B5C0B8 800E4F18 AFB80010 */  sw    $t8, 0x10($sp)
/* B5C0BC 800E4F1C 0C03878D */  jal   func_800E1E34
/* B5C0C0 800E4F20 00003025 */   move  $a2, $zero
/* B5C0C4 800E4F24 3C078013 */  lui   $a3, %hi(D_801304DC) # $a3, 0x8013
/* B5C0C8 800E4F28 8CE704DC */  lw    $a3, %lo(D_801304DC)($a3)
/* B5C0CC 800E4F2C 3C018013 */  lui   $at, %hi(D_801304DC) # $at, 0x8013
/* B5C0D0 800E4F30 24E70001 */  addiu $a3, $a3, 1
/* B5C0D4 800E4F34 AC2704DC */  sw    $a3, %lo(D_801304DC)($at)
/* B5C0D8 800E4F38 24010010 */  li    $at, 16
/* B5C0DC 800E4F3C 14E10002 */  bne   $a3, $at, .L800E4F48
/* B5C0E0 800E4F40 3C018013 */   lui   $at, %hi(D_801304DC) # $at, 0x8013
/* B5C0E4 800E4F44 AC2004DC */  sw    $zero, %lo(D_801304DC)($at)
.L800E4F48:
/* B5C0E8 800E4F48 8FBF001C */  lw    $ra, 0x1c($sp)
/* B5C0EC 800E4F4C 27BD0020 */  addiu $sp, $sp, 0x20
/* B5C0F0 800E4F50 03E00008 */  jr    $ra
/* B5C0F4 800E4F54 00000000 */   nop

