.rdata
glabel D_8013E14C
    .asciz "アイテム消去(%d)\n"
    .balign 4

.text
glabel Inventory_ReplaceItem
/* AFDB84 800869E4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AFDB88 800869E8 AFA60028 */  sw    $a2, 0x28($sp)
/* AFDB8C 800869EC 3C068016 */  lui   $a2, %hi(gSaveContext) # $a2, 0x8016
/* AFDB90 800869F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AFDB94 800869F4 AFA40020 */  sw    $a0, 0x20($sp)
/* AFDB98 800869F8 AFA50024 */  sw    $a1, 0x24($sp)
/* AFDB9C 800869FC 30A3FFFF */  andi  $v1, $a1, 0xffff
/* AFDBA0 80086A00 24C6E660 */  addiu $a2, %lo(gSaveContext) # addiu $a2, $a2, -0x19a0
/* AFDBA4 80086A04 00003825 */  move  $a3, $zero
/* AFDBA8 80086A08 00C71021 */  addu  $v0, $a2, $a3
.L80086A0C:
/* AFDBAC 80086A0C 904E0074 */  lbu   $t6, 0x74($v0)
/* AFDBB0 80086A10 546E0020 */  bnel  $v1, $t6, .L80086A94
/* AFDBB4 80086A14 24E70001 */   addiu $a3, $a3, 1
/* AFDBB8 80086A18 97AF002A */  lhu   $t7, 0x2a($sp)
/* AFDBBC 80086A1C 3C048014 */  lui   $a0, %hi(D_8013E14C) # $a0, 0x8014
/* AFDBC0 80086A20 2484E14C */  addiu $a0, %lo(D_8013E14C) # addiu $a0, $a0, -0x1eb4
/* AFDBC4 80086A24 00E02825 */  move  $a1, $a3
/* AFDBC8 80086A28 AFA30018 */  sw    $v1, 0x18($sp)
/* AFDBCC 80086A2C 0C00084C */  jal   osSyncPrintf
/* AFDBD0 80086A30 A04F0074 */   sb    $t7, 0x74($v0)
/* AFDBD4 80086A34 3C068016 */  lui   $a2, %hi(gSaveContext) # $a2, 0x8016
/* AFDBD8 80086A38 24C6E660 */  addiu $a2, %lo(gSaveContext) # addiu $a2, $a2, -0x19a0
/* AFDBDC 80086A3C 8FA30018 */  lw    $v1, 0x18($sp)
/* AFDBE0 80086A40 24070001 */  li    $a3, 1
/* AFDBE4 80086A44 00C71021 */  addu  $v0, $a2, $a3
.L80086A48:
/* AFDBE8 80086A48 90580068 */  lbu   $t8, 0x68($v0)
/* AFDBEC 80086A4C 54780009 */  bnel  $v1, $t8, .L80086A74
/* AFDBF0 80086A50 24E70001 */   addiu $a3, $a3, 1
/* AFDBF4 80086A54 97B9002A */  lhu   $t9, 0x2a($sp)
/* AFDBF8 80086A58 8FA40020 */  lw    $a0, 0x20($sp)
/* AFDBFC 80086A5C 30E5FFFF */  andi  $a1, $a3, 0xffff
/* AFDC00 80086A60 0C02129B */  jal   Interface_LoadItemIcon1
/* AFDC04 80086A64 A0590068 */   sb    $t9, 0x68($v0)
/* AFDC08 80086A68 10000010 */  b     .L80086AAC
/* AFDC0C 80086A6C 24020001 */   li    $v0, 1
/* AFDC10 80086A70 24E70001 */  addiu $a3, $a3, 1
.L80086A74:
/* AFDC14 80086A74 00073C00 */  sll   $a3, $a3, 0x10
/* AFDC18 80086A78 00073C03 */  sra   $a3, $a3, 0x10
/* AFDC1C 80086A7C 28E10004 */  slti  $at, $a3, 4
/* AFDC20 80086A80 5420FFF1 */  bnezl $at, .L80086A48
/* AFDC24 80086A84 00C71021 */   addu  $v0, $a2, $a3
/* AFDC28 80086A88 10000008 */  b     .L80086AAC
/* AFDC2C 80086A8C 24020001 */   li    $v0, 1
/* AFDC30 80086A90 24E70001 */  addiu $a3, $a3, 1
.L80086A94:
/* AFDC34 80086A94 00073C00 */  sll   $a3, $a3, 0x10
/* AFDC38 80086A98 00073C03 */  sra   $a3, $a3, 0x10
/* AFDC3C 80086A9C 28E10018 */  slti  $at, $a3, 0x18
/* AFDC40 80086AA0 5420FFDA */  bnezl $at, .L80086A0C
/* AFDC44 80086AA4 00C71021 */   addu  $v0, $a2, $a3
/* AFDC48 80086AA8 00001025 */  move  $v0, $zero
.L80086AAC:
/* AFDC4C 80086AAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AFDC50 80086AB0 27BD0020 */  addiu $sp, $sp, 0x20
/* AFDC54 80086AB4 03E00008 */  jr    $ra
/* AFDC58 80086AB8 00000000 */   nop   

