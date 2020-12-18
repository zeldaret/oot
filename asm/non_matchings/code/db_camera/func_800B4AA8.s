.rdata
glabel D_801435F0
    .asciz "\n@@@%d,%d,"
    .balign 4

.text
glabel func_800B4AA8
/* B2BC48 800B4AA8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B2BC4C 800B4AAC 00803825 */  move  $a3, $a0
/* B2BC50 800B4AB0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B2BC54 800B4AB4 AFA40020 */  sw    $a0, 0x20($sp)
/* B2BC58 800B4AB8 27A2001C */  addiu $v0, $sp, 0x1c
/* B2BC5C 800B4ABC A7A7001C */  sh    $a3, 0x1c($sp)
/* B2BC60 800B4AC0 3C048014 */  lui   $a0, %hi(D_801435F0) # $a0, 0x8014
/* B2BC64 800B4AC4 248435F0 */  addiu $a0, %lo(D_801435F0) # addiu $a0, $a0, 0x35f0
/* B2BC68 800B4AC8 90460001 */  lbu   $a2, 1($v0)
/* B2BC6C 800B4ACC 0C00084C */  jal   osSyncPrintf
/* B2BC70 800B4AD0 90450000 */   lbu   $a1, ($v0)
/* B2BC74 800B4AD4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B2BC78 800B4AD8 27BD0020 */  addiu $sp, $sp, 0x20
/* B2BC7C 800B4ADC 03E00008 */  jr    $ra
/* B2BC80 800B4AE0 00000000 */   nop   

