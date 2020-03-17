.rdata
glabel D_8013ED60
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013ED6C
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_8009435C
/* B0B4FC 8009435C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B500 80094360 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B504 80094364 00802825 */  move  $a1, $a0
/* B0B508 80094368 3C068014 */  lui   $a2, %hi(D_8013ED60) # $a2, 0x8014
/* B0B50C 8009436C 24C6ED60 */  addiu $a2, %lo(D_8013ED60) # addiu $a2, $a2, -0x12a0
/* B0B510 80094370 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B514 80094374 27A40024 */  addiu $a0, $sp, 0x24
/* B0B518 80094378 0C031AB1 */  jal   func_800C6AC4
/* B0B51C 8009437C 240706BA */   li    $a3, 1722
/* B0B520 80094380 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B524 80094384 3C188012 */  lui   $t8, %hi(D_80126340) # $t8, 0x8012
/* B0B528 80094388 27186340 */  addiu $t8, %lo(D_80126340) # addiu $t8, $t8, 0x6340
/* B0B52C 8009438C 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0B530 80094390 3C0FDE00 */  lui   $t7, 0xde00
/* B0B534 80094394 3C068014 */  lui   $a2, %hi(D_8013ED6C) # $a2, 0x8014
/* B0B538 80094398 246E0008 */  addiu $t6, $v1, 8
/* B0B53C 8009439C ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0B540 800943A0 24C6ED6C */  addiu $a2, %lo(D_8013ED6C) # addiu $a2, $a2, -0x1294
/* B0B544 800943A4 27A40024 */  addiu $a0, $sp, 0x24
/* B0B548 800943A8 240706BE */  li    $a3, 1726
/* B0B54C 800943AC AC780004 */  sw    $t8, 4($v1)
/* B0B550 800943B0 0C031AD5 */  jal   func_800C6B54
/* B0B554 800943B4 AC6F0000 */   sw    $t7, ($v1)
/* B0B558 800943B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B55C 800943BC 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B560 800943C0 03E00008 */  jr    $ra
/* B0B564 800943C4 00000000 */   nop   

