.rdata
glabel D_8013A808
    .asciz "pclobj_tris->elem_tbl != NULL"
    .balign 4

glabel D_8013A828
    .asciz "../z_collision_check.c"
    .balign 4

.text
glabel func_8005CBAC
/* AD3D4C 8005CBAC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AD3D50 8005CBB0 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD3D54 8005CBB4 AFB30024 */  sw    $s3, 0x24($sp)
/* AD3D58 8005CBB8 AFB20020 */  sw    $s2, 0x20($sp)
/* AD3D5C 8005CBBC 00A09025 */  move  $s2, $a1
/* AD3D60 8005CBC0 00809825 */  move  $s3, $a0
/* AD3D64 8005CBC4 AFB40028 */  sw    $s4, 0x28($sp)
/* AD3D68 8005CBC8 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD3D6C 8005CBCC AFB00018 */  sw    $s0, 0x18($sp)
/* AD3D70 8005CBD0 0C016DCB */  jal   func_8005B72C
/* AD3D74 8005CBD4 AFA7003C */   sw    $a3, 0x3c($sp)
/* AD3D78 8005CBD8 8FAE003C */  lw    $t6, 0x3c($sp)
/* AD3D7C 8005CBDC 8FA20040 */  lw    $v0, 0x40($sp)
/* AD3D80 8005CBE0 3C048014 */  lui   $a0, %hi(D_8013A808) # $a0, 0x8014
/* AD3D84 8005CBE4 8DCF0008 */  lw    $t7, 8($t6)
/* AD3D88 8005CBE8 AE42001C */  sw    $v0, 0x1c($s2)
/* AD3D8C 8005CBEC 14400006 */  bnez  $v0, .L8005CC08
/* AD3D90 8005CBF0 AE4F0018 */   sw    $t7, 0x18($s2)
/* AD3D94 8005CBF4 3C058014 */  lui   $a1, %hi(D_8013A828) # $a1, 0x8014
/* AD3D98 8005CBF8 24A5A828 */  addiu $a1, %lo(D_8013A828) # addiu $a1, $a1, -0x57d8
/* AD3D9C 8005CBFC 2484A808 */  addiu $a0, %lo(D_8013A808) # addiu $a0, $a0, -0x57f8
/* AD3DA0 8005CC00 0C0007FC */  jal   __assert
/* AD3DA4 8005CC04 240608D2 */   li    $a2, 2258
.L8005CC08:
/* AD3DA8 8005CC08 8E590018 */  lw    $t9, 0x18($s2)
/* AD3DAC 8005CC0C 2414005C */  li    $s4, 92
/* AD3DB0 8005CC10 8E50001C */  lw    $s0, 0x1c($s2)
/* AD3DB4 8005CC14 03340019 */  multu $t9, $s4
/* AD3DB8 8005CC18 8FB8003C */  lw    $t8, 0x3c($sp)
/* AD3DBC 8005CC1C 8F11000C */  lw    $s1, 0xc($t8)
/* AD3DC0 8005CC20 00004012 */  mflo  $t0
/* AD3DC4 8005CC24 02084821 */  addu  $t1, $s0, $t0
/* AD3DC8 8005CC28 0209082B */  sltu  $at, $s0, $t1
/* AD3DCC 8005CC2C 10200011 */  beqz  $at, .L8005CC74
/* AD3DD0 8005CC30 02602025 */   move  $a0, $s3
.L8005CC34:
/* AD3DD4 8005CC34 0C0171B0 */  jal   func_8005C6C0
/* AD3DD8 8005CC38 02002825 */   move  $a1, $s0
/* AD3DDC 8005CC3C 02602025 */  move  $a0, $s3
/* AD3DE0 8005CC40 02002825 */  move  $a1, $s0
/* AD3DE4 8005CC44 0C0171CC */  jal   func_8005C730
/* AD3DE8 8005CC48 02203025 */   move  $a2, $s1
/* AD3DEC 8005CC4C 8E4B0018 */  lw    $t3, 0x18($s2)
/* AD3DF0 8005CC50 8E4A001C */  lw    $t2, 0x1c($s2)
/* AD3DF4 8005CC54 2610005C */  addiu $s0, $s0, 0x5c
/* AD3DF8 8005CC58 01740019 */  multu $t3, $s4
/* AD3DFC 8005CC5C 2631003C */  addiu $s1, $s1, 0x3c
/* AD3E00 8005CC60 00006012 */  mflo  $t4
/* AD3E04 8005CC64 014C6821 */  addu  $t5, $t2, $t4
/* AD3E08 8005CC68 020D082B */  sltu  $at, $s0, $t5
/* AD3E0C 8005CC6C 5420FFF1 */  bnezl $at, .L8005CC34
/* AD3E10 8005CC70 02602025 */   move  $a0, $s3
.L8005CC74:
/* AD3E14 8005CC74 8FBF002C */  lw    $ra, 0x2c($sp)
/* AD3E18 8005CC78 8FB00018 */  lw    $s0, 0x18($sp)
/* AD3E1C 8005CC7C 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD3E20 8005CC80 8FB20020 */  lw    $s2, 0x20($sp)
/* AD3E24 8005CC84 8FB30024 */  lw    $s3, 0x24($sp)
/* AD3E28 8005CC88 8FB40028 */  lw    $s4, 0x28($sp)
/* AD3E2C 8005CC8C 27BD0030 */  addiu $sp, $sp, 0x30
/* AD3E30 8005CC90 03E00008 */  jr    $ra
/* AD3E34 8005CC94 24020001 */   li    $v0, 1

/* AD3E38 8005CC98 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD3E3C 8005CC9C AFBF0024 */  sw    $ra, 0x24($sp)
/* AD3E40 8005CCA0 AFB2001C */  sw    $s2, 0x1c($sp)
/* AD3E44 8005CCA4 AFB10018 */  sw    $s1, 0x18($sp)
/* AD3E48 8005CCA8 00809025 */  move  $s2, $a0
/* AD3E4C 8005CCAC AFB30020 */  sw    $s3, 0x20($sp)
/* AD3E50 8005CCB0 AFB00014 */  sw    $s0, 0x14($sp)
/* AD3E54 8005CCB4 00A08825 */  move  $s1, $a1
/* AD3E58 8005CCB8 0C016DDB */  jal   func_8005B76C
/* AD3E5C 8005CCBC AFA5002C */   sw    $a1, 0x2c($sp)
/* AD3E60 8005CCC0 8FA5002C */  lw    $a1, 0x2c($sp)
/* AD3E64 8005CCC4 2413005C */  li    $s3, 92
/* AD3E68 8005CCC8 8CAE0018 */  lw    $t6, 0x18($a1)
/* AD3E6C 8005CCCC 8CB0001C */  lw    $s0, 0x1c($a1)
/* AD3E70 8005CCD0 01D30019 */  multu $t6, $s3
/* AD3E74 8005CCD4 00007812 */  mflo  $t7
/* AD3E78 8005CCD8 020FC021 */  addu  $t8, $s0, $t7
/* AD3E7C 8005CCDC 0218082B */  sltu  $at, $s0, $t8
/* AD3E80 8005CCE0 1020000C */  beqz  $at, .L8005CD14
/* AD3E84 8005CCE4 02402025 */   move  $a0, $s2
.L8005CCE8:
/* AD3E88 8005CCE8 0C0171DD */  jal   func_8005C774
/* AD3E8C 8005CCEC 02002825 */   move  $a1, $s0
/* AD3E90 8005CCF0 8E280018 */  lw    $t0, 0x18($s1)
/* AD3E94 8005CCF4 8E39001C */  lw    $t9, 0x1c($s1)
/* AD3E98 8005CCF8 2610005C */  addiu $s0, $s0, 0x5c
/* AD3E9C 8005CCFC 01130019 */  multu $t0, $s3
/* AD3EA0 8005CD00 00004812 */  mflo  $t1
/* AD3EA4 8005CD04 03295021 */  addu  $t2, $t9, $t1
/* AD3EA8 8005CD08 020A082B */  sltu  $at, $s0, $t2
/* AD3EAC 8005CD0C 5420FFF6 */  bnezl $at, .L8005CCE8
/* AD3EB0 8005CD10 02402025 */   move  $a0, $s2
.L8005CD14:
/* AD3EB4 8005CD14 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD3EB8 8005CD18 8FB00014 */  lw    $s0, 0x14($sp)
/* AD3EBC 8005CD1C 8FB10018 */  lw    $s1, 0x18($sp)
/* AD3EC0 8005CD20 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD3EC4 8005CD24 8FB30020 */  lw    $s3, 0x20($sp)
/* AD3EC8 8005CD28 27BD0028 */  addiu $sp, $sp, 0x28
/* AD3ECC 8005CD2C 03E00008 */  jr    $ra
/* AD3ED0 8005CD30 24020001 */   li    $v0, 1

/* AD3ED4 8005CD34 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD3ED8 8005CD38 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD3EDC 8005CD3C AFB2001C */  sw    $s2, 0x1c($sp)
/* AD3EE0 8005CD40 AFB10018 */  sw    $s1, 0x18($sp)
/* AD3EE4 8005CD44 00809025 */  move  $s2, $a0
/* AD3EE8 8005CD48 AFB30020 */  sw    $s3, 0x20($sp)
/* AD3EEC 8005CD4C AFB00014 */  sw    $s0, 0x14($sp)
/* AD3EF0 8005CD50 00A08825 */  move  $s1, $a1
/* AD3EF4 8005CD54 0C016DE1 */  jal   func_8005B784
/* AD3EF8 8005CD58 AFA5002C */   sw    $a1, 0x2c($sp)
/* AD3EFC 8005CD5C 8FA5002C */  lw    $a1, 0x2c($sp)
/* AD3F00 8005CD60 2413005C */  li    $s3, 92
/* AD3F04 8005CD64 8CAE0018 */  lw    $t6, 0x18($a1)
/* AD3F08 8005CD68 8CB0001C */  lw    $s0, 0x1c($a1)
/* AD3F0C 8005CD6C 01D30019 */  multu $t6, $s3
/* AD3F10 8005CD70 00007812 */  mflo  $t7
/* AD3F14 8005CD74 020FC021 */  addu  $t8, $s0, $t7
/* AD3F18 8005CD78 0218082B */  sltu  $at, $s0, $t8
/* AD3F1C 8005CD7C 1020000C */  beqz  $at, .L8005CDB0
/* AD3F20 8005CD80 02402025 */   move  $a0, $s2
.L8005CD84:
/* AD3F24 8005CD84 0C0171E6 */  jal   func_8005C798
/* AD3F28 8005CD88 02002825 */   move  $a1, $s0
/* AD3F2C 8005CD8C 8E280018 */  lw    $t0, 0x18($s1)
/* AD3F30 8005CD90 8E39001C */  lw    $t9, 0x1c($s1)
/* AD3F34 8005CD94 2610005C */  addiu $s0, $s0, 0x5c
/* AD3F38 8005CD98 01130019 */  multu $t0, $s3
/* AD3F3C 8005CD9C 00004812 */  mflo  $t1
/* AD3F40 8005CDA0 03295021 */  addu  $t2, $t9, $t1
/* AD3F44 8005CDA4 020A082B */  sltu  $at, $s0, $t2
/* AD3F48 8005CDA8 5420FFF6 */  bnezl $at, .L8005CD84
/* AD3F4C 8005CDAC 02402025 */   move  $a0, $s2
.L8005CDB0:
/* AD3F50 8005CDB0 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD3F54 8005CDB4 8FB00014 */  lw    $s0, 0x14($sp)
/* AD3F58 8005CDB8 8FB10018 */  lw    $s1, 0x18($sp)
/* AD3F5C 8005CDBC 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD3F60 8005CDC0 8FB30020 */  lw    $s3, 0x20($sp)
/* AD3F64 8005CDC4 27BD0028 */  addiu $sp, $sp, 0x28
/* AD3F68 8005CDC8 03E00008 */  jr    $ra
/* AD3F6C 8005CDCC 24020001 */   li    $v0, 1

/* AD3F70 8005CDD0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD3F74 8005CDD4 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD3F78 8005CDD8 AFB2001C */  sw    $s2, 0x1c($sp)
/* AD3F7C 8005CDDC AFB10018 */  sw    $s1, 0x18($sp)
/* AD3F80 8005CDE0 00809025 */  move  $s2, $a0
/* AD3F84 8005CDE4 AFB30020 */  sw    $s3, 0x20($sp)
/* AD3F88 8005CDE8 AFB00014 */  sw    $s0, 0x14($sp)
/* AD3F8C 8005CDEC 00A08825 */  move  $s1, $a1
/* AD3F90 8005CDF0 0C016DE7 */  jal   func_8005B79C
/* AD3F94 8005CDF4 AFA5002C */   sw    $a1, 0x2c($sp)
/* AD3F98 8005CDF8 8FA5002C */  lw    $a1, 0x2c($sp)
/* AD3F9C 8005CDFC 2413005C */  li    $s3, 92
/* AD3FA0 8005CE00 8CAE0018 */  lw    $t6, 0x18($a1)
/* AD3FA4 8005CE04 8CB0001C */  lw    $s0, 0x1c($a1)
/* AD3FA8 8005CE08 01D30019 */  multu $t6, $s3
/* AD3FAC 8005CE0C 00007812 */  mflo  $t7
/* AD3FB0 8005CE10 020FC021 */  addu  $t8, $s0, $t7
/* AD3FB4 8005CE14 0218082B */  sltu  $at, $s0, $t8
/* AD3FB8 8005CE18 1020000C */  beqz  $at, .L8005CE4C
/* AD3FBC 8005CE1C 02402025 */   move  $a0, $s2
.L8005CE20:
/* AD3FC0 8005CE20 0C0171EF */  jal   func_8005C7BC
/* AD3FC4 8005CE24 02002825 */   move  $a1, $s0
/* AD3FC8 8005CE28 8E280018 */  lw    $t0, 0x18($s1)
/* AD3FCC 8005CE2C 8E39001C */  lw    $t9, 0x1c($s1)
/* AD3FD0 8005CE30 2610005C */  addiu $s0, $s0, 0x5c
/* AD3FD4 8005CE34 01130019 */  multu $t0, $s3
/* AD3FD8 8005CE38 00004812 */  mflo  $t1
/* AD3FDC 8005CE3C 03295021 */  addu  $t2, $t9, $t1
/* AD3FE0 8005CE40 020A082B */  sltu  $at, $s0, $t2
/* AD3FE4 8005CE44 5420FFF6 */  bnezl $at, .L8005CE20
/* AD3FE8 8005CE48 02402025 */   move  $a0, $s2
.L8005CE4C:
/* AD3FEC 8005CE4C 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD3FF0 8005CE50 8FB00014 */  lw    $s0, 0x14($sp)
/* AD3FF4 8005CE54 8FB10018 */  lw    $s1, 0x18($sp)
/* AD3FF8 8005CE58 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD3FFC 8005CE5C 8FB30020 */  lw    $s3, 0x20($sp)
/* AD4000 8005CE60 27BD0028 */  addiu $sp, $sp, 0x28
/* AD4004 8005CE64 03E00008 */  jr    $ra
/* AD4008 8005CE68 24020001 */   li    $v0, 1

