glabel func_800A390C
/* B1AAAC 800A390C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1AAB0 800A3910 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1AAB4 800A3914 AFB30020 */  sw    $s3, 0x20($sp)
/* B1AAB8 800A3918 AFB2001C */  sw    $s2, 0x1c($sp)
/* B1AABC 800A391C AFB10018 */  sw    $s1, 0x18($sp)
/* B1AAC0 800A3920 AFB00014 */  sw    $s0, 0x14($sp)
/* B1AAC4 800A3924 84AE0000 */  lh    $t6, ($a1)
/* B1AAC8 800A3928 00A08825 */  move  $s1, $a1
/* B1AACC 800A392C 00809025 */  move  $s2, $a0
/* B1AAD0 800A3930 11C00012 */  beqz  $t6, .L800A397C
/* B1AAD4 800A3934 24B00004 */   addiu $s0, $a1, 4
/* B1AAD8 800A3938 3C138013 */  lui   $s3, %hi(D_8012A484) # $s3, 0x8013
/* B1AADC 800A393C 2673A484 */  addiu $s3, %lo(D_8012A484) # addiu $s3, $s3, -0x5b7c
/* B1AAE0 800A3940 920F0000 */  lbu   $t7, ($s0)
.L800A3944:
/* B1AAE4 800A3944 02402025 */  move  $a0, $s2
/* B1AAE8 800A3948 26050004 */  addiu $a1, $s0, 4
/* B1AAEC 800A394C 000FC080 */  sll   $t8, $t7, 2
/* B1AAF0 800A3950 0278C821 */  addu  $t9, $s3, $t8
/* B1AAF4 800A3954 8F390000 */  lw    $t9, ($t9)
/* B1AAF8 800A3958 0320F809 */  jalr  $t9
/* B1AAFC 800A395C 00000000 */  nop   
/* B1AB00 800A3960 86280000 */  lh    $t0, ($s1)
/* B1AB04 800A3964 26100040 */  addiu $s0, $s0, 0x40
/* B1AB08 800A3968 2509FFFF */  addiu $t1, $t0, -1
/* B1AB0C 800A396C A6290000 */  sh    $t1, ($s1)
/* B1AB10 800A3970 862A0000 */  lh    $t2, ($s1)
/* B1AB14 800A3974 5540FFF3 */  bnezl $t2, .L800A3944
/* B1AB18 800A3978 920F0000 */   lbu   $t7, ($s0)
.L800A397C:
/* B1AB1C 800A397C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1AB20 800A3980 240B0001 */  li    $t3, 1
/* B1AB24 800A3984 3C018016 */  lui   $at, %hi(D_801600B0) # $at, 0x8016
/* B1AB28 800A3988 AC2B00B0 */  sw    $t3, %lo(D_801600B0)($at)
/* B1AB2C 800A398C 3C018013 */  lui   $at, %hi(D_8012A480) # $at, 0x8013
/* B1AB30 800A3990 8FB00014 */  lw    $s0, 0x14($sp)
/* B1AB34 800A3994 8FB10018 */  lw    $s1, 0x18($sp)
/* B1AB38 800A3998 8FB2001C */  lw    $s2, 0x1c($sp)
/* B1AB3C 800A399C 8FB30020 */  lw    $s3, 0x20($sp)
/* B1AB40 800A39A0 AC20A480 */  sw    $zero, %lo(D_8012A480)($at)
/* B1AB44 800A39A4 03E00008 */  jr    $ra
/* B1AB48 800A39A8 27BD0028 */   addiu $sp, $sp, 0x28

