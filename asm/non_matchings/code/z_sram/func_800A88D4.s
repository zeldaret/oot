glabel func_800A88D4
/* B1FA74 800A88D4 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B1FA78 800A88D8 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B1FA7C 800A88DC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1FA80 800A88E0 AFA40020 */  sw    $a0, 0x20($sp)
/* B1FA84 800A88E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1FA88 800A88E8 A4A01352 */  sh    $zero, 0x1352($a1)
/* B1FA8C 800A88EC 00A01825 */  move  $v1, $a1
/* B1FA90 800A88F0 00002025 */  move  $a0, $zero
/* B1FA94 800A88F4 00001025 */  move  $v0, $zero
/* B1FA98 800A88F8 00004025 */  move  $t0, $zero
/* B1FA9C 800A88FC 24090020 */  li    $t1, 32
.L800A8900:
/* B1FAA0 800A8900 24420001 */  addiu $v0, $v0, 1
/* B1FAA4 800A8904 3042FFFF */  andi  $v0, $v0, 0xffff
/* B1FAA8 800A8908 15220002 */  bne   $t1, $v0, .L800A8914
/* B1FAAC 800A890C 25080001 */   addiu $t0, $t0, 1
/* B1FAB0 800A8910 00001025 */  move  $v0, $zero
.L800A8914:
/* B1FAB4 800A8914 946E0000 */  lhu   $t6, ($v1)
/* B1FAB8 800A8918 3108FFFF */  andi  $t0, $t0, 0xffff
/* B1FABC 800A891C 2D0109AA */  sltiu $at, $t0, 0x9aa
/* B1FAC0 800A8920 008E2021 */  addu  $a0, $a0, $t6
/* B1FAC4 800A8924 3084FFFF */  andi  $a0, $a0, 0xffff
/* B1FAC8 800A8928 1420FFF5 */  bnez  $at, .L800A8900
/* B1FACC 800A892C 24630002 */   addiu $v1, $v1, 2
/* B1FAD0 800A8930 A4A41352 */  sh    $a0, 0x1352($a1)
/* B1FAD4 800A8934 00A01825 */  move  $v1, $a1
/* B1FAD8 800A8938 00002025 */  move  $a0, $zero
/* B1FADC 800A893C 00004025 */  move  $t0, $zero
.L800A8940:
/* B1FAE0 800A8940 24420001 */  addiu $v0, $v0, 1
/* B1FAE4 800A8944 3042FFFF */  andi  $v0, $v0, 0xffff
/* B1FAE8 800A8948 15220002 */  bne   $t1, $v0, .L800A8954
/* B1FAEC 800A894C 25080001 */   addiu $t0, $t0, 1
/* B1FAF0 800A8950 00001025 */  move  $v0, $zero
.L800A8954:
/* B1FAF4 800A8954 946F0000 */  lhu   $t7, ($v1)
/* B1FAF8 800A8958 3108FFFF */  andi  $t0, $t0, 0xffff
/* B1FAFC 800A895C 2D0109AA */  sltiu $at, $t0, 0x9aa
/* B1FB00 800A8960 008F2021 */  addu  $a0, $a0, $t7
/* B1FB04 800A8964 3084FFFF */  andi  $a0, $a0, 0xffff
/* B1FB08 800A8968 1420FFF5 */  bnez  $at, .L800A8940
/* B1FB0C 800A896C 24630002 */   addiu $v1, $v1, 2
/* B1FB10 800A8970 8CB81354 */  lw    $t8, 0x1354($a1)
/* B1FB14 800A8974 3C088013 */  lui   $t0, %hi(D_8012A4E0)
/* B1FB18 800A8978 3C010800 */  lui   $at, 0x800
/* B1FB1C 800A897C 0018C840 */  sll   $t9, $t8, 1
/* B1FB20 800A8980 01194021 */  addu  $t0, $t0, $t9
/* B1FB24 800A8984 9508A4E0 */  lhu   $t0, %lo(D_8012A4E0)($t0)
/* B1FB28 800A8988 24061450 */  li    $a2, 5200
/* B1FB2C 800A898C 24070001 */  li    $a3, 1
/* B1FB30 800A8990 A7A2001A */  sh    $v0, 0x1a($sp)
/* B1FB34 800A8994 0C02A7A8 */  jal   Sram_ReadWrite
/* B1FB38 800A8998 01012021 */   addu  $a0, $t0, $at
/* B1FB3C 800A899C 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B1FB40 800A89A0 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B1FB44 800A89A4 97A2001A */  lhu   $v0, 0x1a($sp)
/* B1FB48 800A89A8 24090020 */  li    $t1, 32
/* B1FB4C 800A89AC 00A01825 */  move  $v1, $a1
/* B1FB50 800A89B0 00002025 */  move  $a0, $zero
/* B1FB54 800A89B4 00004025 */  move  $t0, $zero
.L800A89B8:
/* B1FB58 800A89B8 24420001 */  addiu $v0, $v0, 1
/* B1FB5C 800A89BC 3042FFFF */  andi  $v0, $v0, 0xffff
/* B1FB60 800A89C0 15220002 */  bne   $t1, $v0, .L800A89CC
/* B1FB64 800A89C4 25080001 */   addiu $t0, $t0, 1
/* B1FB68 800A89C8 00001025 */  move  $v0, $zero
.L800A89CC:
/* B1FB6C 800A89CC 946A0000 */  lhu   $t2, ($v1)
/* B1FB70 800A89D0 3108FFFF */  andi  $t0, $t0, 0xffff
/* B1FB74 800A89D4 2D0109AA */  sltiu $at, $t0, 0x9aa
/* B1FB78 800A89D8 008A2021 */  addu  $a0, $a0, $t2
/* B1FB7C 800A89DC 3084FFFF */  andi  $a0, $a0, 0xffff
/* B1FB80 800A89E0 1420FFF5 */  bnez  $at, .L800A89B8
/* B1FB84 800A89E4 24630002 */   addiu $v1, $v1, 2
/* B1FB88 800A89E8 8CAB1354 */  lw    $t3, 0x1354($a1)
/* B1FB8C 800A89EC 3C088013 */  lui   $t0, %hi(D_8012A4E6)
/* B1FB90 800A89F0 3C010800 */  lui   $at, 0x800
/* B1FB94 800A89F4 000B6040 */  sll   $t4, $t3, 1
/* B1FB98 800A89F8 010C4021 */  addu  $t0, $t0, $t4
/* B1FB9C 800A89FC 9508A4E6 */  lhu   $t0, %lo(D_8012A4E6)($t0)
/* B1FBA0 800A8A00 24061450 */  li    $a2, 5200
/* B1FBA4 800A8A04 24070001 */  li    $a3, 1
/* B1FBA8 800A8A08 0C02A7A8 */  jal   Sram_ReadWrite
/* B1FBAC 800A8A0C 01012021 */   addu  $a0, $t0, $at
/* B1FBB0 800A8A10 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1FBB4 800A8A14 27BD0020 */  addiu $sp, $sp, 0x20
/* B1FBB8 800A8A18 03E00008 */  jr    $ra
/* B1FBBC 800A8A1C 00000000 */   nop   

