glabel func_800B8978
/* B2FB18 800B8978 3C0F8016 */  lui   $t7, %hi(D_80161150) # $t7, 0x8016
/* B2FB1C 800B897C 25EF1150 */  addiu $t7, %lo(D_80161150) # addiu $t7, $t7, 0x1150
/* B2FB20 800B8980 00047100 */  sll   $t6, $a0, 4
/* B2FB24 800B8984 01CF1021 */  addu  $v0, $t6, $t7
/* B2FB28 800B8988 90430000 */  lbu   $v1, ($v0)
/* B2FB2C 800B898C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B2FB30 800B8990 2401003F */  li    $at, 63
/* B2FB34 800B8994 10610005 */  beq   $v1, $at, .L800B89AC
/* B2FB38 800B8998 AFBF0014 */   sw    $ra, 0x14($sp)
/* B2FB3C 800B899C 3C018016 */  lui   $at, %hi(D_8016128F)
/* B2FB40 800B89A0 00230821 */  addu  $at, $at, $v1
/* B2FB44 800B89A4 24180058 */  li    $t8, 88
/* B2FB48 800B89A8 A038128F */  sb    $t8, %lo(D_8016128F)($at)
.L800B89AC:
/* B2FB4C 800B89AC 10A0000D */  beqz  $a1, .L800B89E4
/* B2FB50 800B89B0 24060AE0 */   li    $a2, 2784
/* B2FB54 800B89B4 3C058014 */  lui   $a1, %hi(D_80143A10) # $a1, 0x8014
/* B2FB58 800B89B8 24A53A10 */  addiu $a1, %lo(D_80143A10) # addiu $a1, $a1, 0x3a10
/* B2FB5C 800B89BC 8C440008 */  lw    $a0, 8($v0)
/* B2FB60 800B89C0 0C034F55 */  jal   DebugArena_FreeDebug
/* B2FB64 800B89C4 AFA2001C */   sw    $v0, 0x1c($sp)
/* B2FB68 800B89C8 8FA2001C */  lw    $v0, 0x1c($sp)
/* B2FB6C 800B89CC 3C058014 */  lui   $a1, %hi(D_80143A20) # $a1, 0x8014
/* B2FB70 800B89D0 24A53A20 */  addiu $a1, %lo(D_80143A20) # addiu $a1, $a1, 0x3a20
/* B2FB74 800B89D4 24060AE1 */  li    $a2, 2785
/* B2FB78 800B89D8 0C034F55 */  jal   DebugArena_FreeDebug
/* B2FB7C 800B89DC 8C440004 */   lw    $a0, 4($v0)
/* B2FB80 800B89E0 8FA2001C */  lw    $v0, 0x1c($sp)
.L800B89E4:
/* B2FB84 800B89E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B2FB88 800B89E8 2419003F */  li    $t9, 63
/* B2FB8C 800B89EC A0590000 */  sb    $t9, ($v0)
/* B2FB90 800B89F0 AC400008 */  sw    $zero, 8($v0)
/* B2FB94 800B89F4 AC400004 */  sw    $zero, 4($v0)
/* B2FB98 800B89F8 A4400002 */  sh    $zero, 2($v0)
/* B2FB9C 800B89FC A440000C */  sh    $zero, 0xc($v0)
/* B2FBA0 800B8A00 A440000E */  sh    $zero, 0xe($v0)
/* B2FBA4 800B8A04 03E00008 */  jr    $ra
/* B2FBA8 800B8A08 27BD0020 */   addiu $sp, $sp, 0x20

