.rdata
glabel D_8013A620
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A638
    .asciz "\x1b[31m"
    .balign 4

glabel D_8013A640
    .asciz "ClObjJntSph_set():zelda_malloc()出来ません。\n"
    # EUC-JP: 出来ません。 | Can not.
    .balign 4

glabel D_8013A670
    .asciz "\x1b[m"
    .balign 4

.text
glabel func_8005BCC8
/* AD2E68 8005BCC8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD2E6C 8005BCCC AFBF0024 */  sw    $ra, 0x24($sp)
/* AD2E70 8005BCD0 AFB20020 */  sw    $s2, 0x20($sp)
/* AD2E74 8005BCD4 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD2E78 8005BCD8 00A08825 */  move  $s1, $a1
/* AD2E7C 8005BCDC 00809025 */  move  $s2, $a0
/* AD2E80 8005BCE0 0C016DA8 */  jal   func_8005B6A0
/* AD2E84 8005BCE4 AFB00018 */   sw    $s0, 0x18($sp)
/* AD2E88 8005BCE8 8E2E0018 */  lw    $t6, 0x18($s1)
/* AD2E8C 8005BCEC 8E30001C */  lw    $s0, 0x1c($s1)
/* AD2E90 8005BCF0 000E7980 */  sll   $t7, $t6, 6
/* AD2E94 8005BCF4 020FC021 */  addu  $t8, $s0, $t7
/* AD2E98 8005BCF8 0218082B */  sltu  $at, $s0, $t8
/* AD2E9C 8005BCFC 1020000B */  beqz  $at, .L8005BD2C
/* AD2EA0 8005BD00 02402025 */   move  $a0, $s2
.L8005BD04:
/* AD2EA4 8005BD04 0C016EC4 */  jal   func_8005BB10
/* AD2EA8 8005BD08 02002825 */   move  $a1, $s0
/* AD2EAC 8005BD0C 8E280018 */  lw    $t0, 0x18($s1)
/* AD2EB0 8005BD10 8E39001C */  lw    $t9, 0x1c($s1)
/* AD2EB4 8005BD14 26100040 */  addiu $s0, $s0, 0x40
/* AD2EB8 8005BD18 00084980 */  sll   $t1, $t0, 6
/* AD2EBC 8005BD1C 03295021 */  addu  $t2, $t9, $t1
/* AD2EC0 8005BD20 020A082B */  sltu  $at, $s0, $t2
/* AD2EC4 8005BD24 5420FFF7 */  bnezl $at, .L8005BD04
/* AD2EC8 8005BD28 02402025 */   move  $a0, $s2
.L8005BD2C:
/* AD2ECC 8005BD2C AE200018 */  sw    $zero, 0x18($s1)
/* AD2ED0 8005BD30 AE20001C */  sw    $zero, 0x1c($s1)
/* AD2ED4 8005BD34 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD2ED8 8005BD38 8FB20020 */  lw    $s2, 0x20($sp)
/* AD2EDC 8005BD3C 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD2EE0 8005BD40 8FB00018 */  lw    $s0, 0x18($sp)
/* AD2EE4 8005BD44 27BD0028 */  addiu $sp, $sp, 0x28
/* AD2EE8 8005BD48 03E00008 */  jr    $ra
/* AD2EEC 8005BD4C 24020001 */   li    $v0, 1

/* AD2EF0 8005BD50 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD2EF4 8005BD54 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD2EF8 8005BD58 AFB30020 */  sw    $s3, 0x20($sp)
/* AD2EFC 8005BD5C AFB2001C */  sw    $s2, 0x1c($sp)
/* AD2F00 8005BD60 00A09025 */  move  $s2, $a1
/* AD2F04 8005BD64 00809825 */  move  $s3, $a0
/* AD2F08 8005BD68 AFB10018 */  sw    $s1, 0x18($sp)
/* AD2F0C 8005BD6C AFB00014 */  sw    $s0, 0x14($sp)
/* AD2F10 8005BD70 0C016DAC */  jal   func_8005B6B0
/* AD2F14 8005BD74 AFA60030 */   sw    $a2, 0x30($sp)
/* AD2F18 8005BD78 8FA30030 */  lw    $v1, 0x30($sp)
/* AD2F1C 8005BD7C 3C058014 */  lui   $a1, %hi(D_8013A620) # $a1, 0x8014
/* AD2F20 8005BD80 24A5A620 */  addiu $a1, %lo(D_8013A620) # addiu $a1, $a1, -0x59e0
/* AD2F24 8005BD84 8C6E0008 */  lw    $t6, 8($v1)
/* AD2F28 8005BD88 240605A3 */  li    $a2, 1443
/* AD2F2C 8005BD8C AE4E0018 */  sw    $t6, 0x18($s2)
/* AD2F30 8005BD90 8C640008 */  lw    $a0, 8($v1)
/* AD2F34 8005BD94 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* AD2F38 8005BD98 00042180 */   sll   $a0, $a0, 6
/* AD2F3C 8005BD9C 1440000D */  bnez  $v0, .L8005BDD4
/* AD2F40 8005BDA0 AE42001C */   sw    $v0, 0x1c($s2)
/* AD2F44 8005BDA4 3C048014 */  lui   $a0, %hi(D_8013A638) # $a0, 0x8014
/* AD2F48 8005BDA8 AE400018 */  sw    $zero, 0x18($s2)
/* AD2F4C 8005BDAC 0C00084C */  jal   osSyncPrintf
/* AD2F50 8005BDB0 2484A638 */   addiu $a0, %lo(D_8013A638) # addiu $a0, $a0, -0x59c8
/* AD2F54 8005BDB4 3C048014 */  lui   $a0, %hi(D_8013A640) # $a0, 0x8014
/* AD2F58 8005BDB8 0C00084C */  jal   osSyncPrintf
/* AD2F5C 8005BDBC 2484A640 */   addiu $a0, %lo(D_8013A640) # addiu $a0, $a0, -0x59c0
/* AD2F60 8005BDC0 3C048014 */  lui   $a0, %hi(D_8013A670) # $a0, 0x8014
/* AD2F64 8005BDC4 0C00084C */  jal   osSyncPrintf
/* AD2F68 8005BDC8 2484A670 */   addiu $a0, %lo(D_8013A670) # addiu $a0, $a0, -0x5990
/* AD2F6C 8005BDCC 10000019 */  b     .L8005BE34
/* AD2F70 8005BDD0 00001025 */   move  $v0, $zero
.L8005BDD4:
/* AD2F74 8005BDD4 8E580018 */  lw    $t8, 0x18($s2)
/* AD2F78 8005BDD8 8E50001C */  lw    $s0, 0x1c($s2)
/* AD2F7C 8005BDDC 8FAF0030 */  lw    $t7, 0x30($sp)
/* AD2F80 8005BDE0 0018C980 */  sll   $t9, $t8, 6
/* AD2F84 8005BDE4 02194021 */  addu  $t0, $s0, $t9
/* AD2F88 8005BDE8 0208082B */  sltu  $at, $s0, $t0
/* AD2F8C 8005BDEC 10200010 */  beqz  $at, .L8005BE30
/* AD2F90 8005BDF0 8DF1000C */   lw    $s1, 0xc($t7)
.L8005BDF4:
/* AD2F94 8005BDF4 02602025 */  move  $a0, $s3
/* AD2F98 8005BDF8 0C016EB6 */  jal   func_8005BAD8
/* AD2F9C 8005BDFC 02002825 */   move  $a1, $s0
/* AD2FA0 8005BE00 02602025 */  move  $a0, $s3
/* AD2FA4 8005BE04 02002825 */  move  $a1, $s0
/* AD2FA8 8005BE08 0C016ED2 */  jal   func_8005BB48
/* AD2FAC 8005BE0C 02203025 */   move  $a2, $s1
/* AD2FB0 8005BE10 8E4A0018 */  lw    $t2, 0x18($s2)
/* AD2FB4 8005BE14 8E49001C */  lw    $t1, 0x1c($s2)
/* AD2FB8 8005BE18 26100040 */  addiu $s0, $s0, 0x40
/* AD2FBC 8005BE1C 000A5980 */  sll   $t3, $t2, 6
/* AD2FC0 8005BE20 012B6021 */  addu  $t4, $t1, $t3
/* AD2FC4 8005BE24 020C082B */  sltu  $at, $s0, $t4
/* AD2FC8 8005BE28 1420FFF2 */  bnez  $at, .L8005BDF4
/* AD2FCC 8005BE2C 26310024 */   addiu $s1, $s1, 0x24
.L8005BE30:
/* AD2FD0 8005BE30 24020001 */  li    $v0, 1
.L8005BE34:
/* AD2FD4 8005BE34 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD2FD8 8005BE38 8FB00014 */  lw    $s0, 0x14($sp)
/* AD2FDC 8005BE3C 8FB10018 */  lw    $s1, 0x18($sp)
/* AD2FE0 8005BE40 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD2FE4 8005BE44 8FB30020 */  lw    $s3, 0x20($sp)
/* AD2FE8 8005BE48 03E00008 */  jr    $ra
/* AD2FEC 8005BE4C 27BD0028 */   addiu $sp, $sp, 0x28

