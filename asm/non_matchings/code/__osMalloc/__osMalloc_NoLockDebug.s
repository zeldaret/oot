glabel __osMalloc_NoLockDebug
/* B75194 800FDFF4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B75198 800FDFF8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B7519C 800FDFFC AFB10018 */  sw    $s1, 0x18($sp)
/* B751A0 800FE000 AFB00014 */  sw    $s0, 0x14($sp)
/* B751A4 800FE004 AFA40040 */  sw    $a0, 0x40($sp)
/* B751A8 800FE008 AFA60048 */  sw    $a2, 0x48($sp)
/* B751AC 800FE00C AFA7004C */  sw    $a3, 0x4c($sp)
/* B751B0 800FE010 AFA00030 */  sw    $zero, 0x30($sp)
/* B751B4 800FE014 8C900000 */  lw    $s0, ($a0)
/* B751B8 800FE018 24B1000F */  addiu $s1, $a1, 0xf
/* B751BC 800FE01C 2401FFF0 */  li    $at, -16
/* B751C0 800FE020 12000042 */  beqz  $s0, .L800FE12C
/* B751C4 800FE024 02218824 */   and   $s1, $s1, $at
.L800FE028:
/* B751C8 800FE028 860F0002 */  lh    $t7, 2($s0)
/* B751CC 800FE02C 11E0003B */  beqz  $t7, .L800FE11C
/* B751D0 800FE030 00000000 */   nop   
/* B751D4 800FE034 8E020004 */  lw    $v0, 4($s0)
/* B751D8 800FE038 0051082B */  sltu  $at, $v0, $s1
/* B751DC 800FE03C 14200037 */  bnez  $at, .L800FE11C
/* B751E0 800FE040 00000000 */   nop   
/* B751E4 800FE044 8FB80040 */  lw    $t8, 0x40($sp)
/* B751E8 800FE048 93190022 */  lbu   $t9, 0x22($t8)
/* B751EC 800FE04C 03002025 */  move  $a0, $t8
/* B751F0 800FE050 33280004 */  andi  $t0, $t9, 4
/* B751F4 800FE054 51000005 */  beql  $t0, $zero, .L800FE06C
/* B751F8 800FE058 2623000F */   addiu $v1, $s1, 0xf
/* B751FC 800FE05C 0C03F7D5 */  jal   __osMalloc_FreeBlockTest
/* B75200 800FE060 02002825 */   move  $a1, $s0
/* B75204 800FE064 8E020004 */  lw    $v0, 4($s0)
/* B75208 800FE068 2623000F */  addiu $v1, $s1, 0xf
.L800FE06C:
/* B7520C 800FE06C 2401FFF0 */  li    $at, -16
/* B75210 800FE070 00611824 */  and   $v1, $v1, $at
/* B75214 800FE074 24630030 */  addiu $v1, $v1, 0x30
/* B75218 800FE078 0062082B */  sltu  $at, $v1, $v0
/* B7521C 800FE07C 10200015 */  beqz  $at, .L800FE0D4
/* B75220 800FE080 02002025 */   move  $a0, $s0
/* B75224 800FE084 0C03F723 */  jal   ArenaImpl_GetNextBlock
/* B75228 800FE088 AFA30028 */   sw    $v1, 0x28($sp)
/* B7522C 800FE08C 8FA30028 */  lw    $v1, 0x28($sp)
/* B75230 800FE090 240B0001 */  li    $t3, 1
/* B75234 800FE094 240C7373 */  li    $t4, 29555
/* B75238 800FE098 02032021 */  addu  $a0, $s0, $v1
/* B7523C 800FE09C AC820008 */  sw    $v0, 8($a0)
/* B75240 800FE0A0 AC90000C */  sw    $s0, 0xc($a0)
/* B75244 800FE0A4 8E090004 */  lw    $t1, 4($s0)
/* B75248 800FE0A8 A48B0002 */  sh    $t3, 2($a0)
/* B7524C 800FE0AC A48C0000 */  sh    $t4, ($a0)
/* B75250 800FE0B0 01235023 */  subu  $t2, $t1, $v1
/* B75254 800FE0B4 AC8A0004 */  sw    $t2, 4($a0)
/* B75258 800FE0B8 AE040008 */  sw    $a0, 8($s0)
/* B7525C 800FE0BC AE110004 */  sw    $s1, 4($s0)
/* B75260 800FE0C0 0C03F723 */  jal   ArenaImpl_GetNextBlock
/* B75264 800FE0C4 AFA40024 */   sw    $a0, 0x24($sp)
/* B75268 800FE0C8 10400002 */  beqz  $v0, .L800FE0D4
/* B7526C 800FE0CC 8FA40024 */   lw    $a0, 0x24($sp)
/* B75270 800FE0D0 AC44000C */  sw    $a0, 0xc($v0)
.L800FE0D4:
/* B75274 800FE0D4 A6000002 */  sh    $zero, 2($s0)
/* B75278 800FE0D8 8FA70040 */  lw    $a3, 0x40($sp)
/* B7527C 800FE0DC 8FA6004C */  lw    $a2, 0x4c($sp)
/* B75280 800FE0E0 8FA50048 */  lw    $a1, 0x48($sp)
/* B75284 800FE0E4 0C03F6F0 */  jal   ArenaImpl_SetDebugInfo
/* B75288 800FE0E8 02002025 */   move  $a0, $s0
/* B7528C 800FE0EC 8FAD0040 */  lw    $t5, 0x40($sp)
/* B75290 800FE0F0 26040030 */  addiu $a0, $s0, 0x30
/* B75294 800FE0F4 AFA40030 */  sw    $a0, 0x30($sp)
/* B75298 800FE0F8 91AE0022 */  lbu   $t6, 0x22($t5)
/* B7529C 800FE0FC 240500CD */  li    $a1, 205
/* B752A0 800FE100 31CF0001 */  andi  $t7, $t6, 1
/* B752A4 800FE104 51E0000A */  beql  $t7, $zero, .L800FE130
/* B752A8 800FE108 8FBF001C */   lw    $ra, 0x1c($sp)
/* B752AC 800FE10C 0C041A18 */  jal   func_80106860
/* B752B0 800FE110 02203025 */   move  $a2, $s1
/* B752B4 800FE114 10000006 */  b     .L800FE130
/* B752B8 800FE118 8FBF001C */   lw    $ra, 0x1c($sp)
.L800FE11C:
/* B752BC 800FE11C 0C03F723 */  jal   ArenaImpl_GetNextBlock
/* B752C0 800FE120 02002025 */   move  $a0, $s0
/* B752C4 800FE124 1440FFC0 */  bnez  $v0, .L800FE028
/* B752C8 800FE128 00408025 */   move  $s0, $v0
.L800FE12C:
/* B752CC 800FE12C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800FE130:
/* B752D0 800FE130 8FA20030 */  lw    $v0, 0x30($sp)
/* B752D4 800FE134 8FB00014 */  lw    $s0, 0x14($sp)
/* B752D8 800FE138 8FB10018 */  lw    $s1, 0x18($sp)
/* B752DC 800FE13C 03E00008 */  jr    $ra
/* B752E0 800FE140 27BD0040 */   addiu $sp, $sp, 0x40
