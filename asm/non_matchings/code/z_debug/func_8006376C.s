glabel func_8006376C
/* ADA90C 8006376C 3C098012 */  lui   $t1, %hi(D_8011E0B0) # $t1, 0x8012
/* ADA910 80063770 2529E0B0 */  addiu $t1, %lo(D_8011E0B0) # addiu $t1, $t1, -0x1f50
/* ADA914 80063774 85230000 */  lh    $v1, ($t1)
/* ADA918 80063778 27BDFFF8 */  addiu $sp, $sp, -8
/* ADA91C 8006377C 3C0F8016 */  lui   $t7, %hi(D_8015FA98) # $t7, 0x8016
/* ADA920 80063780 00037080 */  sll   $t6, $v1, 2
/* ADA924 80063784 01C37023 */  subu  $t6, $t6, $v1
/* ADA928 80063788 AFB00004 */  sw    $s0, 4($sp)
/* ADA92C 8006378C AFA40008 */  sw    $a0, 8($sp)
/* ADA930 80063790 AFA5000C */  sw    $a1, 0xc($sp)
/* ADA934 80063794 AFA60010 */  sw    $a2, 0x10($sp)
/* ADA938 80063798 000E70C0 */  sll   $t6, $t6, 3
/* ADA93C 8006379C 25EFFA98 */  addiu $t7, %lo(D_8015FA98) # addiu $t7, $t7, -0x568
/* ADA940 800637A0 28610016 */  slti  $at, $v1, 0x16
/* ADA944 800637A4 30C600FF */  andi  $a2, $a2, 0xff
/* ADA948 800637A8 30A500FF */  andi  $a1, $a1, 0xff
/* ADA94C 800637AC 308400FF */  andi  $a0, $a0, 0xff
/* ADA950 800637B0 00E08025 */  move  $s0, $a3
/* ADA954 800637B4 10200019 */  beqz  $at, .L8006381C
/* ADA958 800637B8 01CF1021 */   addu  $v0, $t6, $t7
/* ADA95C 800637BC A0440000 */  sb    $a0, ($v0)
/* ADA960 800637C0 A0450001 */  sb    $a1, 1($v0)
/* ADA964 800637C4 A0460002 */  sb    $a2, 2($v0)
/* ADA968 800637C8 90E70000 */  lbu   $a3, ($a3)
/* ADA96C 800637CC 00001825 */  move  $v1, $zero
/* ADA970 800637D0 24480004 */  addiu $t0, $v0, 4
/* ADA974 800637D4 26100001 */  addiu $s0, $s0, 1
/* ADA978 800637D8 10E0000C */  beqz  $a3, .L8006380C
/* ADA97C 800637DC A0470003 */   sb    $a3, 3($v0)
.L800637E0:
/* ADA980 800637E0 28620015 */  slti  $v0, $v1, 0x15
/* ADA984 800637E4 24630001 */  addiu $v1, $v1, 1
/* ADA988 800637E8 00031C00 */  sll   $v1, $v1, 0x10
/* ADA98C 800637EC 38420001 */  xori  $v0, $v0, 1
/* ADA990 800637F0 14400006 */  bnez  $v0, .L8006380C
/* ADA994 800637F4 00031C03 */   sra   $v1, $v1, 0x10
/* ADA998 800637F8 92070000 */  lbu   $a3, ($s0)
/* ADA99C 800637FC 25080001 */  addiu $t0, $t0, 1
/* ADA9A0 80063800 26100001 */  addiu $s0, $s0, 1
/* ADA9A4 80063804 14E0FFF6 */  bnez  $a3, .L800637E0
/* ADA9A8 80063808 A107FFFF */   sb    $a3, -1($t0)
.L8006380C:
/* ADA9AC 8006380C A1000000 */  sb    $zero, ($t0)
/* ADA9B0 80063810 85380000 */  lh    $t8, ($t1)
/* ADA9B4 80063814 27190001 */  addiu $t9, $t8, 1
/* ADA9B8 80063818 A5390000 */  sh    $t9, ($t1)
.L8006381C:
/* ADA9BC 8006381C 8FB00004 */  lw    $s0, 4($sp)
/* ADA9C0 80063820 03E00008 */  jr    $ra
/* ADA9C4 80063824 27BD0008 */   addiu $sp, $sp, 8

