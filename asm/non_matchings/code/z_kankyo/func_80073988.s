glabel func_80073988
/* AEAB28 80073988 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AEAB2C 8007398C 3C010001 */  lui   $at, 1
/* AEAB30 80073990 AFBF003C */  sw    $ra, 0x3c($sp)
/* AEAB34 80073994 AFB00038 */  sw    $s0, 0x38($sp)
/* AEAB38 80073998 AFA50044 */  sw    $a1, 0x44($sp)
/* AEAB3C 8007399C AFA60048 */  sw    $a2, 0x48($sp)
/* AEAB40 800739A0 AFA7004C */  sw    $a3, 0x4c($sp)
/* AEAB44 800739A4 00811021 */  addu  $v0, $a0, $at
/* AEAB48 800739A8 904E0B13 */  lbu   $t6, 0xb13($v0)
/* AEAB4C 800739AC 00808025 */  move  $s0, $a0
/* AEAB50 800739B0 55C00026 */  bnezl $t6, .L80073A4C
/* AEAB54 800739B4 8FBF003C */   lw    $ra, 0x3c($sp)
/* AEAB58 800739B8 904F0A3B */  lbu   $t7, 0xa3b($v0)
/* AEAB5C 800739BC 3C028016 */  lui   $v0, %hi(gSaveContext+0xc) # $v0, 0x8016
/* AEAB60 800739C0 55E00022 */  bnezl $t7, .L80073A4C
/* AEAB64 800739C4 8FBF003C */   lw    $ra, 0x3c($sp)
/* AEAB68 800739C8 9442E66C */  lhu   $v0, %lo(gSaveContext+0xc)($v0)
/* AEAB6C 800739CC 24018000 */  li    $at, -32768
/* AEAB70 800739D0 00412021 */  addu  $a0, $v0, $at
/* AEAB74 800739D4 00042400 */  sll   $a0, $a0, 0x10
/* AEAB78 800739D8 0C01DE0D */  jal   Math_Coss
/* AEAB7C 800739DC 00042403 */   sra   $a0, $a0, 0x10
/* AEAB80 800739E0 27B80050 */  addiu $t8, $sp, 0x50
/* AEAB84 800739E4 8F080000 */  lw    $t0, ($t8)
/* AEAB88 800739E8 3C010001 */  lui   $at, (0x00010A24 >> 16) # lui $at, 1
/* AEAB8C 800739EC 34210A24 */  ori   $at, (0x00010A24 & 0xFFFF) # ori $at, $at, 0xa24
/* AEAB90 800739F0 02012821 */  addu  $a1, $s0, $at
/* AEAB94 800739F4 8E070000 */  lw    $a3, ($s0)
/* AEAB98 800739F8 3C0142F0 */  li    $at, 0x42F00000 # 0.000000
/* AEAB9C 800739FC AFA80010 */  sw    $t0, 0x10($sp)
/* AEABA0 80073A00 8F190004 */  lw    $t9, 4($t8)
/* AEABA4 80073A04 44812000 */  mtc1  $at, $f4
/* AEABA8 80073A08 240907D0 */  li    $t1, 2000
/* AEABAC 80073A0C AFB90014 */  sw    $t9, 0x14($sp)
/* AEABB0 80073A10 46040182 */  mul.s $f6, $f0, $f4
/* AEABB4 80073A14 8F080008 */  lw    $t0, 8($t8)
/* AEABB8 80073A18 240A0172 */  li    $t2, 370
/* AEABBC 80073A1C 240B0190 */  li    $t3, 400
/* AEABC0 80073A20 240C0001 */  li    $t4, 1
/* AEABC4 80073A24 AFAC002C */  sw    $t4, 0x2c($sp)
/* AEABC8 80073A28 AFAB0028 */  sw    $t3, 0x28($sp)
/* AEABCC 80073A2C AFAA0020 */  sw    $t2, 0x20($sp)
/* AEABD0 80073A30 E7A60024 */  swc1  $f6, 0x24($sp)
/* AEABD4 80073A34 AFA9001C */  sw    $t1, 0x1c($sp)
/* AEABD8 80073A38 02002025 */  move  $a0, $s0
/* AEABDC 80073A3C 260600B8 */  addiu $a2, $s0, 0xb8
/* AEABE0 80073A40 0C01CE97 */  jal   func_80073A5C
/* AEABE4 80073A44 AFA80018 */   sw    $t0, 0x18($sp)
/* AEABE8 80073A48 8FBF003C */  lw    $ra, 0x3c($sp)
.L80073A4C:
/* AEABEC 80073A4C 8FB00038 */  lw    $s0, 0x38($sp)
/* AEABF0 80073A50 27BD0040 */  addiu $sp, $sp, 0x40
/* AEABF4 80073A54 03E00008 */  jr    $ra
/* AEABF8 80073A58 00000000 */   nop   

