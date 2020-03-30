.rdata
glabel D_8013A7B8
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A7D0
    .asciz "\x1b[31m"
    .balign 4

glabel D_8013A7D8
    .asciz "ClObjTris_set5():zelda_malloc出来ません\n"
    # EUC-JP: 出来ません。 | Can not.
    .balign 4

glabel D_8013A804
    .asciz "\x1b[m"
    .balign 4

.text
glabel func_8005CA88
/* AD3C28 8005CA88 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AD3C2C 8005CA8C AFBF002C */  sw    $ra, 0x2c($sp)
/* AD3C30 8005CA90 AFB30024 */  sw    $s3, 0x24($sp)
/* AD3C34 8005CA94 AFB20020 */  sw    $s2, 0x20($sp)
/* AD3C38 8005CA98 00809025 */  move  $s2, $a0
/* AD3C3C 8005CA9C 00A09825 */  move  $s3, $a1
/* AD3C40 8005CAA0 AFB40028 */  sw    $s4, 0x28($sp)
/* AD3C44 8005CAA4 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD3C48 8005CAA8 AFB00018 */  sw    $s0, 0x18($sp)
/* AD3C4C 8005CAAC 0C016DCB */  jal   func_8005B72C
/* AD3C50 8005CAB0 AFA7003C */   sw    $a3, 0x3c($sp)
/* AD3C54 8005CAB4 8FAE003C */  lw    $t6, 0x3c($sp)
/* AD3C58 8005CAB8 3C058014 */  lui   $a1, %hi(D_8013A7B8) # $a1, 0x8014
/* AD3C5C 8005CABC 24A5A7B8 */  addiu $a1, %lo(D_8013A7B8) # addiu $a1, $a1, -0x5848
/* AD3C60 8005CAC0 8DCF0008 */  lw    $t7, 8($t6)
/* AD3C64 8005CAC4 2406089F */  li    $a2, 2207
/* AD3C68 8005CAC8 000F2080 */  sll   $a0, $t7, 2
/* AD3C6C 8005CACC 008F2023 */  subu  $a0, $a0, $t7
/* AD3C70 8005CAD0 000420C0 */  sll   $a0, $a0, 3
/* AD3C74 8005CAD4 008F2023 */  subu  $a0, $a0, $t7
/* AD3C78 8005CAD8 00042080 */  sll   $a0, $a0, 2
/* AD3C7C 8005CADC 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* AD3C80 8005CAE0 AE6F0018 */   sw    $t7, 0x18($s3)
/* AD3C84 8005CAE4 1440000D */  bnez  $v0, .L8005CB1C
/* AD3C88 8005CAE8 AE62001C */   sw    $v0, 0x1c($s3)
/* AD3C8C 8005CAEC 3C048014 */  lui   $a0, %hi(D_8013A7D0) # $a0, 0x8014
/* AD3C90 8005CAF0 0C00084C */  jal   osSyncPrintf
/* AD3C94 8005CAF4 2484A7D0 */   addiu $a0, %lo(D_8013A7D0) # addiu $a0, $a0, -0x5830
/* AD3C98 8005CAF8 3C048014 */  lui   $a0, %hi(D_8013A7D8) # $a0, 0x8014
/* AD3C9C 8005CAFC 0C00084C */  jal   osSyncPrintf
/* AD3CA0 8005CB00 2484A7D8 */   addiu $a0, %lo(D_8013A7D8) # addiu $a0, $a0, -0x5828
/* AD3CA4 8005CB04 3C048014 */  lui   $a0, %hi(D_8013A804) # $a0, 0x8014
/* AD3CA8 8005CB08 0C00084C */  jal   osSyncPrintf
/* AD3CAC 8005CB0C 2484A804 */   addiu $a0, %lo(D_8013A804) # addiu $a0, $a0, -0x57fc
/* AD3CB0 8005CB10 AE600018 */  sw    $zero, 0x18($s3)
/* AD3CB4 8005CB14 1000001D */  b     .L8005CB8C
/* AD3CB8 8005CB18 00001025 */   move  $v0, $zero
.L8005CB1C:
/* AD3CBC 8005CB1C 8E790018 */  lw    $t9, 0x18($s3)
/* AD3CC0 8005CB20 2414005C */  li    $s4, 92
/* AD3CC4 8005CB24 8E70001C */  lw    $s0, 0x1c($s3)
/* AD3CC8 8005CB28 03340019 */  multu $t9, $s4
/* AD3CCC 8005CB2C 8FB8003C */  lw    $t8, 0x3c($sp)
/* AD3CD0 8005CB30 8F11000C */  lw    $s1, 0xc($t8)
/* AD3CD4 8005CB34 00004012 */  mflo  $t0
/* AD3CD8 8005CB38 02084821 */  addu  $t1, $s0, $t0
/* AD3CDC 8005CB3C 0209082B */  sltu  $at, $s0, $t1
/* AD3CE0 8005CB40 10200011 */  beqz  $at, .L8005CB88
/* AD3CE4 8005CB44 02402025 */   move  $a0, $s2
.L8005CB48:
/* AD3CE8 8005CB48 0C0171B0 */  jal   func_8005C6C0
/* AD3CEC 8005CB4C 02002825 */   move  $a1, $s0
/* AD3CF0 8005CB50 02402025 */  move  $a0, $s2
/* AD3CF4 8005CB54 02002825 */  move  $a1, $s0
/* AD3CF8 8005CB58 0C0171CC */  jal   func_8005C730
/* AD3CFC 8005CB5C 02203025 */   move  $a2, $s1
/* AD3D00 8005CB60 8E6B0018 */  lw    $t3, 0x18($s3)
/* AD3D04 8005CB64 8E6A001C */  lw    $t2, 0x1c($s3)
/* AD3D08 8005CB68 2610005C */  addiu $s0, $s0, 0x5c
/* AD3D0C 8005CB6C 01740019 */  multu $t3, $s4
/* AD3D10 8005CB70 2631003C */  addiu $s1, $s1, 0x3c
/* AD3D14 8005CB74 00006012 */  mflo  $t4
/* AD3D18 8005CB78 014C6821 */  addu  $t5, $t2, $t4
/* AD3D1C 8005CB7C 020D082B */  sltu  $at, $s0, $t5
/* AD3D20 8005CB80 5420FFF1 */  bnezl $at, .L8005CB48
/* AD3D24 8005CB84 02402025 */   move  $a0, $s2
.L8005CB88:
/* AD3D28 8005CB88 24020001 */  li    $v0, 1
.L8005CB8C:
/* AD3D2C 8005CB8C 8FBF002C */  lw    $ra, 0x2c($sp)
/* AD3D30 8005CB90 8FB00018 */  lw    $s0, 0x18($sp)
/* AD3D34 8005CB94 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD3D38 8005CB98 8FB20020 */  lw    $s2, 0x20($sp)
/* AD3D3C 8005CB9C 8FB30024 */  lw    $s3, 0x24($sp)
/* AD3D40 8005CBA0 8FB40028 */  lw    $s4, 0x28($sp)
/* AD3D44 8005CBA4 03E00008 */  jr    $ra
/* AD3D48 8005CBA8 27BD0030 */   addiu $sp, $sp, 0x30

