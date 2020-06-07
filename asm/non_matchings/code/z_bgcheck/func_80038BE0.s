glabel func_80038BE0
/* AAFD80 80038BE0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AAFD84 80038BE4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AAFD88 80038BE8 AFA40018 */  sw    $a0, 0x18($sp)
/* AAFD8C 80038BEC AFA5001C */  sw    $a1, 0x1c($sp)
/* AAFD90 80038BF0 AFA60020 */  sw    $a2, 0x20($sp)
/* AAFD94 80038BF4 948F0002 */  lhu   $t7, 2($a0)
/* AAFD98 80038BF8 31F81FFF */  andi  $t8, $t7, 0x1fff
/* AAFD9C 80038BFC 0018C880 */  sll   $t9, $t8, 2
/* AAFDA0 80038C00 0338C823 */  subu  $t9, $t9, $t8
/* AAFDA4 80038C04 0019C840 */  sll   $t9, $t9, 1
/* AAFDA8 80038C08 03252021 */  addu  $a0, $t9, $a1
/* AAFDAC 80038C0C 0C00E22A */  jal   func_800388A8
/* AAFDB0 80038C10 00C02825 */   move  $a1, $a2
/* AAFDB4 80038C14 8FA90018 */  lw    $t1, 0x18($sp)
/* AAFDB8 80038C18 8FAD001C */  lw    $t5, 0x1c($sp)
/* AAFDBC 80038C1C 8FA50020 */  lw    $a1, 0x20($sp)
/* AAFDC0 80038C20 952A0004 */  lhu   $t2, 4($t1)
/* AAFDC4 80038C24 24A5000C */  addiu $a1, $a1, 0xc
/* AAFDC8 80038C28 314B1FFF */  andi  $t3, $t2, 0x1fff
/* AAFDCC 80038C2C 000B6080 */  sll   $t4, $t3, 2
/* AAFDD0 80038C30 018B6023 */  subu  $t4, $t4, $t3
/* AAFDD4 80038C34 000C6040 */  sll   $t4, $t4, 1
/* AAFDD8 80038C38 0C00E22A */  jal   func_800388A8
/* AAFDDC 80038C3C 018D2021 */   addu  $a0, $t4, $t5
/* AAFDE0 80038C40 8FAE0018 */  lw    $t6, 0x18($sp)
/* AAFDE4 80038C44 8FB9001C */  lw    $t9, 0x1c($sp)
/* AAFDE8 80038C48 8FA50020 */  lw    $a1, 0x20($sp)
/* AAFDEC 80038C4C 95CF0006 */  lhu   $t7, 6($t6)
/* AAFDF0 80038C50 24A50018 */  addiu $a1, $a1, 0x18
/* AAFDF4 80038C54 000FC080 */  sll   $t8, $t7, 2
/* AAFDF8 80038C58 030FC023 */  subu  $t8, $t8, $t7
/* AAFDFC 80038C5C 0018C040 */  sll   $t8, $t8, 1
/* AAFE00 80038C60 0C00E22A */  jal   func_800388A8
/* AAFE04 80038C64 03192021 */   addu  $a0, $t8, $t9
/* AAFE08 80038C68 8FBF0014 */  lw    $ra, 0x14($sp)
/* AAFE0C 80038C6C 27BD0018 */  addiu $sp, $sp, 0x18
/* AAFE10 80038C70 03E00008 */  jr    $ra
/* AAFE14 80038C74 00000000 */   nop   

