.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_8008E6A0
/* B05840 8008E6A0 AC800004 */  sw    $zero, 4($a0)
/* B05844 8008E6A4 03E00008 */  jr    $ra
/* B05848 8008E6A8 AC800000 */   sw    $zero, ($a0)

glabel func_8008E6AC
/* B0584C 8008E6AC 94AE0000 */  lhu   $t6, ($a1)
/* B05850 8008E6B0 2403FFEF */  li    $v1, -17
/* B05854 8008E6B4 01C37827 */  nor   $t7, $t6, $v1
/* B05858 8008E6B8 55E0000A */  bnezl $t7, .L8008E6E4
/* B0585C 8008E6BC 8C880000 */   lw    $t0, ($a0)
/* B05860 8008E6C0 94B8000C */  lhu   $t8, 0xc($a1)
/* B05864 8008E6C4 2401FBFF */  li    $at, -1025
/* B05868 8008E6C8 0301C827 */  nor   $t9, $t8, $at
/* B0586C 8008E6CC 57200005 */  bnezl $t9, .L8008E6E4
/* B05870 8008E6D0 8C880000 */   lw    $t0, ($a0)
/* B05874 8008E6D4 8C820000 */  lw    $v0, ($a0)
/* B05878 8008E6D8 2C420001 */  sltiu $v0, $v0, 1
/* B0587C 8008E6DC AC820000 */  sw    $v0, ($a0)
/* B05880 8008E6E0 8C880000 */  lw    $t0, ($a0)
.L8008E6E4:
/* B05884 8008E6E4 51000013 */  beql  $t0, $zero, .L8008E734
/* B05888 8008E6E8 AC800004 */   sw    $zero, 4($a0)
/* B0588C 8008E6EC 94A20000 */  lhu   $v0, ($a1)
/* B05890 8008E6F0 2401DFFF */  li    $at, -8193
/* B05894 8008E6F4 00414827 */  nor   $t1, $v0, $at
/* B05898 8008E6F8 55200011 */  bnezl $t1, .L8008E740
/* B0589C 8008E6FC 00001025 */   move  $v0, $zero
/* B058A0 8008E700 94AA000C */  lhu   $t2, 0xc($a1)
/* B058A4 8008E704 00436027 */  nor   $t4, $v0, $v1
/* B058A8 8008E708 01435827 */  nor   $t3, $t2, $v1
/* B058AC 8008E70C 51600009 */  beql  $t3, $zero, .L8008E734
/* B058B0 8008E710 AC800004 */   sw    $zero, 4($a0)
/* B058B4 8008E714 5580000A */  bnezl $t4, .L8008E740
/* B058B8 8008E718 00001025 */   move  $v0, $zero
/* B058BC 8008E71C 8C8D0004 */  lw    $t5, 4($a0)
/* B058C0 8008E720 25AE0001 */  addiu $t6, $t5, 1
/* B058C4 8008E724 29C10009 */  slti  $at, $t6, 9
/* B058C8 8008E728 14200004 */  bnez  $at, .L8008E73C
/* B058CC 8008E72C AC8E0004 */   sw    $t6, 4($a0)
/* B058D0 8008E730 AC800004 */  sw    $zero, 4($a0)
.L8008E734:
/* B058D4 8008E734 03E00008 */  jr    $ra
/* B058D8 8008E738 24020001 */   li    $v0, 1

.L8008E73C:
/* B058DC 8008E73C 00001025 */  move  $v0, $zero
.L8008E740:
/* B058E0 8008E740 03E00008 */  jr    $ra
/* B058E4 8008E744 00000000 */   nop   
