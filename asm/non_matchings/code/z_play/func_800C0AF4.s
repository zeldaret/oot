glabel func_800C0AF4
/* B37C94 800C0AF4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B37C98 800C0AF8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B37C9C 800C0AFC AFA60030 */  sw    $a2, 0x30($sp)
/* B37CA0 800C0B00 848200A4 */  lh    $v0, 0xa4($a0)
/* B37CA4 800C0B04 2401003C */  li    $at, 60
/* B37CA8 800C0B08 8C831C44 */  lw    $v1, 0x1c44($a0)
/* B37CAC 800C0B0C 10410010 */  beq   $v0, $at, .L800C0B50
/* B37CB0 800C0B10 2401003E */   li    $at, 62
/* B37CB4 800C0B14 1041000E */  beq   $v0, $at, .L800C0B50
/* B37CB8 800C0B18 3C070001 */   lui   $a3, 1
/* B37CBC 800C0B1C 8FAE0030 */  lw    $t6, 0x30($sp)
/* B37CC0 800C0B20 00E43821 */  addu  $a3, $a3, $a0
/* B37CC4 800C0B24 80E71CBC */  lb    $a3, 0x1cbc($a3)
/* B37CC8 800C0B28 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* B37CCC 800C0B2C 8C42E660 */  lw    $v0, %lo(gSaveContext)($v0)
/* B37CD0 800C0B30 246F0024 */  addiu $t7, $v1, 0x24
/* B37CD4 800C0B34 AFAF0014 */  sw    $t7, 0x14($sp)
/* B37CD8 800C0B38 AFAE0010 */  sw    $t6, 0x10($sp)
/* B37CDC 800C0B3C 847800B6 */  lh    $t8, 0xb6($v1)
/* B37CE0 800C0B40 00023400 */  sll   $a2, $v0, 0x10
/* B37CE4 800C0B44 00063403 */  sra   $a2, $a2, 0x10
/* B37CE8 800C0B48 0C0302A2 */  jal   func_800C0A88
/* B37CEC 800C0B4C AFB80018 */   sw    $t8, 0x18($sp)
.L800C0B50:
/* B37CF0 800C0B50 8FBF0024 */  lw    $ra, 0x24($sp)
/* B37CF4 800C0B54 27BD0028 */  addiu $sp, $sp, 0x28
/* B37CF8 800C0B58 03E00008 */  jr    $ra
/* B37CFC 800C0B5C 00000000 */   nop   

