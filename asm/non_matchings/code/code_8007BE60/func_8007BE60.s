glabel func_8007BE60
/* AF3000 8007BE60 AC800000 */  sw    $zero, ($a0)
/* AF3004 8007BE64 3C0E8000 */  lui   $t6, %hi(osResetType) # $t6, 0x8000
/* AF3008 8007BE68 8DCE030C */  lw    $t6, %lo(osResetType)($t6)
/* AF300C 8007BE6C 24180000 */  li    $t8, 0
/* AF3010 8007BE70 24190000 */  li    $t9, 0
/* AF3014 8007BE74 55C00006 */  bnezl $t6, .L8007BE90
/* AF3018 8007BE78 8C8F0004 */   lw    $t7, 4($a0)
/* AF301C 8007BE7C AC800004 */  sw    $zero, 4($a0)
/* AF3020 8007BE80 AC980008 */  sw    $t8, 8($a0)
/* AF3024 8007BE84 1000000E */  b     .L8007BEC0
/* AF3028 8007BE88 AC99000C */   sw    $t9, 0xc($a0)
/* AF302C 8007BE8C 8C8F0004 */  lw    $t7, 4($a0)
.L8007BE90:
/* AF3030 8007BE90 8C8B000C */  lw    $t3, 0xc($a0)
/* AF3034 8007BE94 8C8D0014 */  lw    $t5, 0x14($a0)
/* AF3038 8007BE98 8C8A0008 */  lw    $t2, 8($a0)
/* AF303C 8007BE9C 25E80001 */  addiu $t0, $t7, 1
/* AF3040 8007BEA0 8C8C0010 */  lw    $t4, 0x10($a0)
/* AF3044 8007BEA4 016D7821 */  addu  $t7, $t3, $t5
/* AF3048 8007BEA8 01ED082B */  sltu  $at, $t7, $t5
/* AF304C 8007BEAC 002A7021 */  addu  $t6, $at, $t2
/* AF3050 8007BEB0 01CC7021 */  addu  $t6, $t6, $t4
/* AF3054 8007BEB4 AC880004 */  sw    $t0, 4($a0)
/* AF3058 8007BEB8 AC8E0008 */  sw    $t6, 8($a0)
/* AF305C 8007BEBC AC8F000C */  sw    $t7, 0xc($a0)
.L8007BEC0:
/* AF3060 8007BEC0 24180000 */  li    $t8, 0
/* AF3064 8007BEC4 24190000 */  li    $t9, 0
/* AF3068 8007BEC8 AC990014 */  sw    $t9, 0x14($a0)
/* AF306C 8007BECC 03E00008 */  jr    $ra
/* AF3070 8007BED0 AC980010 */   sw    $t8, 0x10($a0)

