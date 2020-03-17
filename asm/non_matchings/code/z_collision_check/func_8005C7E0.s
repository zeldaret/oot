.rdata
glabel D_8013A750
    .asciz "../z_collision_check.c"
    .balign 4

.text
glabel func_8005C7E0
/* AD3980 8005C7E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD3984 8005C7E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD3988 8005C7E8 0C016D97 */  jal   func_8005B65C
/* AD398C 8005C7EC AFA5001C */   sw    $a1, 0x1c($sp)
/* AD3990 8005C7F0 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD3994 8005C7F4 24020001 */  li    $v0, 1
/* AD3998 8005C7F8 ACA00018 */  sw    $zero, 0x18($a1)
/* AD399C 8005C7FC ACA0001C */  sw    $zero, 0x1c($a1)
/* AD39A0 8005C800 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD39A4 8005C804 27BD0018 */  addiu $sp, $sp, 0x18
/* AD39A8 8005C808 03E00008 */  jr    $ra
/* AD39AC 8005C80C 00000000 */   nop   

/* AD39B0 8005C810 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD39B4 8005C814 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD39B8 8005C818 AFB2001C */  sw    $s2, 0x1c($sp)
/* AD39BC 8005C81C AFB10018 */  sw    $s1, 0x18($sp)
/* AD39C0 8005C820 00A08825 */  move  $s1, $a1
/* AD39C4 8005C824 00809025 */  move  $s2, $a0
/* AD39C8 8005C828 AFB30020 */  sw    $s3, 0x20($sp)
/* AD39CC 8005C82C 0C016DA8 */  jal   func_8005B6A0
/* AD39D0 8005C830 AFB00014 */   sw    $s0, 0x14($sp)
/* AD39D4 8005C834 8E2E0018 */  lw    $t6, 0x18($s1)
/* AD39D8 8005C838 2413005C */  li    $s3, 92
/* AD39DC 8005C83C 8E24001C */  lw    $a0, 0x1c($s1)
/* AD39E0 8005C840 01D30019 */  multu $t6, $s3
/* AD39E4 8005C844 00808025 */  move  $s0, $a0
/* AD39E8 8005C848 00007812 */  mflo  $t7
/* AD39EC 8005C84C 008FC021 */  addu  $t8, $a0, $t7
/* AD39F0 8005C850 0098082B */  sltu  $at, $a0, $t8
/* AD39F4 8005C854 1020000D */  beqz  $at, .L8005C88C
/* AD39F8 8005C858 00000000 */   nop   
/* AD39FC 8005C85C 02402025 */  move  $a0, $s2
.L8005C860:
/* AD3A00 8005C860 0C0171BE */  jal   func_8005C6F8
/* AD3A04 8005C864 02002825 */   move  $a1, $s0
/* AD3A08 8005C868 8E390018 */  lw    $t9, 0x18($s1)
/* AD3A0C 8005C86C 8E24001C */  lw    $a0, 0x1c($s1)
/* AD3A10 8005C870 2610005C */  addiu $s0, $s0, 0x5c
/* AD3A14 8005C874 03330019 */  multu $t9, $s3
/* AD3A18 8005C878 00004012 */  mflo  $t0
/* AD3A1C 8005C87C 00884821 */  addu  $t1, $a0, $t0
/* AD3A20 8005C880 0209082B */  sltu  $at, $s0, $t1
/* AD3A24 8005C884 5420FFF6 */  bnezl $at, .L8005C860
/* AD3A28 8005C888 02402025 */   move  $a0, $s2
.L8005C88C:
/* AD3A2C 8005C88C 10800005 */  beqz  $a0, .L8005C8A4
/* AD3A30 8005C890 AE200018 */   sw    $zero, 0x18($s1)
/* AD3A34 8005C894 3C058014 */  lui   $a1, %hi(D_8013A750) # $a1, 0x8014
/* AD3A38 8005C898 24A5A750 */  addiu $a1, %lo(D_8013A750) # addiu $a1, $a1, -0x58b0
/* AD3A3C 8005C89C 0C01EC35 */  jal   ZeldaArena_FreeDebug
/* AD3A40 8005C8A0 24060833 */   li    $a2, 2099
.L8005C8A4:
/* AD3A44 8005C8A4 AE20001C */  sw    $zero, 0x1c($s1)
/* AD3A48 8005C8A8 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD3A4C 8005C8AC 8FB30020 */  lw    $s3, 0x20($sp)
/* AD3A50 8005C8B0 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD3A54 8005C8B4 8FB10018 */  lw    $s1, 0x18($sp)
/* AD3A58 8005C8B8 8FB00014 */  lw    $s0, 0x14($sp)
/* AD3A5C 8005C8BC 27BD0028 */  addiu $sp, $sp, 0x28
/* AD3A60 8005C8C0 03E00008 */  jr    $ra
/* AD3A64 8005C8C4 24020001 */   li    $v0, 1

