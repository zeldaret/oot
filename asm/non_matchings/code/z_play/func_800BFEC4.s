glabel func_800BFEC4
/* B37064 800BFEC4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B37068 800BFEC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3706C 800BFECC AFA5001C */  sw    $a1, 0x1c($sp)
/* B37070 800BFED0 00053400 */  sll   $a2, $a1, 0x10
/* B37074 800BFED4 00063403 */  sra   $a2, $a2, 0x10
/* B37078 800BFED8 24851F78 */  addiu $a1, $a0, 0x1f78
/* B3707C 800BFEDC 0C02C394 */  jal   func_800B0E50
/* B37080 800BFEE0 AFA40018 */   sw    $a0, 0x18($sp)
/* B37084 800BFEE4 8FA40018 */  lw    $a0, 0x18($sp)
/* B37088 800BFEE8 3C010001 */  lui   $at, (0x00010A24 >> 16) # lui $at, 1
/* B3708C 800BFEEC 34210A24 */  ori   $at, (0x00010A24 & 0xFFFF) # ori $at, $at, 0xa24
/* B37090 800BFEF0 00003025 */  move  $a2, $zero
/* B37094 800BFEF4 0C01BC50 */  jal   func_8006F140
/* B37098 800BFEF8 00812821 */   addu  $a1, $a0, $at
/* B3709C 800BFEFC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B370A0 800BFF00 27BD0018 */  addiu $sp, $sp, 0x18
/* B370A4 800BFF04 03E00008 */  jr    $ra
/* B370A8 800BFF08 00000000 */   nop   

