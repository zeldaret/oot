glabel func_8008F034
/* B061D4 8008F034 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* B061D8 8008F038 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* B061DC 8008F03C 3C0F8012 */  lui   $t7, %hi(gUpgradeMasks+8) # $t7, 0x8012
/* B061E0 8008F040 8DEF71B8 */  lw    $t7, %lo(gUpgradeMasks+8)($t7)
/* B061E4 8008F044 8C4E00A0 */  lw    $t6, 0xa0($v0)
/* B061E8 8008F048 8C480004 */  lw    $t0, 4($v0)
/* B061EC 8008F04C 3C198012 */  lui   $t9, %hi(gUpgradeShifts+2) # $t9, 0x8012
/* B061F0 8008F050 933971F6 */  lbu   $t9, %lo(gUpgradeShifts+2)($t9)
/* B061F4 8008F054 01CFC024 */  and   $t8, $t6, $t7
/* B061F8 8008F058 15000003 */  bnez  $t0, .L8008F068
/* B061FC 8008F05C 03381807 */   srav  $v1, $t8, $t9
/* B06200 8008F060 03E00008 */  jr    $ra
/* B06204 8008F064 00601025 */   move  $v0, $v1

.L8008F068:
/* B06208 8008F068 10600003 */  beqz  $v1, .L8008F078
/* B0620C 8008F06C 00001025 */   move  $v0, $zero
/* B06210 8008F070 03E00008 */  jr    $ra
/* B06214 8008F074 24020001 */   li    $v0, 1

.L8008F078:
/* B06218 8008F078 03E00008 */  jr    $ra
/* B0621C 8008F07C 00000000 */   nop   

