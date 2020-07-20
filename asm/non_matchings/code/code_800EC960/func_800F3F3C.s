glabel func_800F3F3C
/* B6B0DC 800F3F3C 3C0E8017 */  lui   $t6, %hi(D_8016E264) # $t6, 0x8017
/* B6B0E0 800F3F40 91CEE264 */  lbu   $t6, %lo(D_8016E264)($t6)
/* B6B0E4 800F3F44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B6B0E8 800F3F48 24010001 */  li    $at, 1
/* B6B0EC 800F3F4C AFBF0014 */  sw    $ra, 0x14($sp)
/* B6B0F0 800F3F50 11C10008 */  beq   $t6, $at, .L800F3F74
/* B6B0F4 800F3F54 AFA40018 */   sw    $a0, 0x18($sp)
/* B6B0F8 800F3F58 3C040300 */  lui   $a0, (0x0300006D >> 16) # lui $a0, 0x300
/* B6B0FC 800F3F5C 0C03E803 */  jal   Audio_SetBGM
/* B6B100 800F3F60 3484006D */   ori   $a0, (0x0300006D & 0xFFFF) # ori $a0, $a0, 0x6d
/* B6B104 800F3F64 93A4001B */  lbu   $a0, 0x1b($sp)
/* B6B108 800F3F68 3C018300 */  lui   $at, 0x8300
/* B6B10C 800F3F6C 0C03E803 */  jal   Audio_SetBGM
/* B6B110 800F3F70 00812025 */   or    $a0, $a0, $at
.L800F3F74:
/* B6B114 800F3F74 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6B118 800F3F78 27BD0018 */  addiu $sp, $sp, 0x18
/* B6B11C 800F3F7C 03E00008 */  jr    $ra
/* B6B120 800F3F80 00000000 */   nop   

