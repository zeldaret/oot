glabel func_800DF888
/* B56A28 800DF888 3C068017 */  lui   $a2, %hi(gAudioContext) # $a2, 0x8017
/* B56A2C 800DF88C 24C6F180 */  addiu $a2, %lo(gAudioContext) # addiu $a2, $a2, -0xe80
/* B56A30 800DF890 8CC228A8 */  lw    $v0, 0x28a8($a2)
/* B56A34 800DF894 84CE2852 */  lh    $t6, 0x2852($a2)
/* B56A38 800DF898 00002825 */  move  $a1, $zero
/* B56A3C 800DF89C 00027840 */  sll   $t7, $v0, 1
/* B56A40 800DF8A0 0002C880 */  sll   $t9, $v0, 2
/* B56A44 800DF8A4 00CFC021 */  addu  $t8, $a2, $t7
/* B56A48 800DF8A8 00D92021 */  addu  $a0, $a2, $t9
/* B56A4C 800DF8AC 24020B00 */  li    $v0, 2816
/* B56A50 800DF8B0 A70E2974 */  sh    $t6, 0x2974($t8)
.L800DF8B4:
/* B56A54 800DF8B4 8C882968 */  lw    $t0, 0x2968($a0)
/* B56A58 800DF8B8 01054821 */  addu  $t1, $t0, $a1
/* B56A5C 800DF8BC A5200000 */  sh    $zero, ($t1)
/* B56A60 800DF8C0 8C8A2968 */  lw    $t2, 0x2968($a0)
/* B56A64 800DF8C4 01455821 */  addu  $t3, $t2, $a1
/* B56A68 800DF8C8 A5600002 */  sh    $zero, 2($t3)
/* B56A6C 800DF8CC 8C8C2968 */  lw    $t4, 0x2968($a0)
/* B56A70 800DF8D0 01856821 */  addu  $t5, $t4, $a1
/* B56A74 800DF8D4 A5A00004 */  sh    $zero, 4($t5)
/* B56A78 800DF8D8 8C8F2968 */  lw    $t7, 0x2968($a0)
/* B56A7C 800DF8DC 01E57021 */  addu  $t6, $t7, $a1
/* B56A80 800DF8E0 24A50008 */  addiu $a1, $a1, 8
/* B56A84 800DF8E4 14A2FFF3 */  bne   $a1, $v0, .L800DF8B4
/* B56A88 800DF8E8 A5C00006 */   sh    $zero, 6($t6)
/* B56A8C 800DF8EC 03E00008 */  jr    $ra
/* B56A90 800DF8F0 00000000 */   nop   

