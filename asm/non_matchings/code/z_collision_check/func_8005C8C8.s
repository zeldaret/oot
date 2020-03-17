.rdata
glabel D_8013A768
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A780
    .asciz "\x1b[31m"
    .balign 4

glabel D_8013A788
    .asciz "ClObjTris_set3():zelda_malloc()出来ません\n"
    # EUC-JP: 出来ません。 | Can not.
    .balign 4

glabel D_8013A7B4
    .asciz "\x1b[m"
    .balign 4

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
glabel func_8005C8C8
/* AD3A68 8005C8C8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD3A6C 8005C8CC AFBF0024 */  sw    $ra, 0x24($sp)
/* AD3A70 8005C8D0 AFB2001C */  sw    $s2, 0x1c($sp)
/* AD3A74 8005C8D4 AFB10018 */  sw    $s1, 0x18($sp)
/* AD3A78 8005C8D8 00A08825 */  move  $s1, $a1
/* AD3A7C 8005C8DC 00809025 */  move  $s2, $a0
/* AD3A80 8005C8E0 AFB30020 */  sw    $s3, 0x20($sp)
/* AD3A84 8005C8E4 0C016DA8 */  jal   func_8005B6A0
/* AD3A88 8005C8E8 AFB00014 */   sw    $s0, 0x14($sp)
/* AD3A8C 8005C8EC 8E2E0018 */  lw    $t6, 0x18($s1)
/* AD3A90 8005C8F0 2413005C */  li    $s3, 92
/* AD3A94 8005C8F4 8E30001C */  lw    $s0, 0x1c($s1)
/* AD3A98 8005C8F8 01D30019 */  multu $t6, $s3
/* AD3A9C 8005C8FC 00007812 */  mflo  $t7
/* AD3AA0 8005C900 020FC021 */  addu  $t8, $s0, $t7
/* AD3AA4 8005C904 0218082B */  sltu  $at, $s0, $t8
/* AD3AA8 8005C908 1020000C */  beqz  $at, .L8005C93C
/* AD3AAC 8005C90C 02402025 */   move  $a0, $s2
.L8005C910:
/* AD3AB0 8005C910 0C0171BE */  jal   func_8005C6F8
/* AD3AB4 8005C914 02002825 */   move  $a1, $s0
/* AD3AB8 8005C918 8E280018 */  lw    $t0, 0x18($s1)
/* AD3ABC 8005C91C 8E39001C */  lw    $t9, 0x1c($s1)
/* AD3AC0 8005C920 2610005C */  addiu $s0, $s0, 0x5c
/* AD3AC4 8005C924 01130019 */  multu $t0, $s3
/* AD3AC8 8005C928 00004812 */  mflo  $t1
/* AD3ACC 8005C92C 03295021 */  addu  $t2, $t9, $t1
/* AD3AD0 8005C930 020A082B */  sltu  $at, $s0, $t2
/* AD3AD4 8005C934 5420FFF6 */  bnezl $at, .L8005C910
/* AD3AD8 8005C938 02402025 */   move  $a0, $s2
.L8005C93C:
/* AD3ADC 8005C93C AE200018 */  sw    $zero, 0x18($s1)
/* AD3AE0 8005C940 AE20001C */  sw    $zero, 0x1c($s1)
/* AD3AE4 8005C944 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD3AE8 8005C948 8FB30020 */  lw    $s3, 0x20($sp)
/* AD3AEC 8005C94C 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD3AF0 8005C950 8FB10018 */  lw    $s1, 0x18($sp)
/* AD3AF4 8005C954 8FB00014 */  lw    $s0, 0x14($sp)
/* AD3AF8 8005C958 27BD0028 */  addiu $sp, $sp, 0x28
/* AD3AFC 8005C95C 03E00008 */  jr    $ra
/* AD3B00 8005C960 24020001 */   li    $v0, 1

/* AD3B04 8005C964 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AD3B08 8005C968 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD3B0C 8005C96C AFB30024 */  sw    $s3, 0x24($sp)
/* AD3B10 8005C970 AFB20020 */  sw    $s2, 0x20($sp)
/* AD3B14 8005C974 00A09025 */  move  $s2, $a1
/* AD3B18 8005C978 00809825 */  move  $s3, $a0
/* AD3B1C 8005C97C AFB40028 */  sw    $s4, 0x28($sp)
/* AD3B20 8005C980 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD3B24 8005C984 AFB00018 */  sw    $s0, 0x18($sp)
/* AD3B28 8005C988 0C016DBB */  jal   func_8005B6EC
/* AD3B2C 8005C98C AFA7003C */   sw    $a3, 0x3c($sp)
/* AD3B30 8005C990 8FAE003C */  lw    $t6, 0x3c($sp)
/* AD3B34 8005C994 3C058014 */  lui   $a1, %hi(D_8013A768) # $a1, 0x8014
/* AD3B38 8005C998 24A5A768 */  addiu $a1, %lo(D_8013A768) # addiu $a1, $a1, -0x5898
/* AD3B3C 8005C99C 8DCF0008 */  lw    $t7, 8($t6)
/* AD3B40 8005C9A0 2406086C */  li    $a2, 2156
/* AD3B44 8005C9A4 000F2080 */  sll   $a0, $t7, 2
/* AD3B48 8005C9A8 008F2023 */  subu  $a0, $a0, $t7
/* AD3B4C 8005C9AC 000420C0 */  sll   $a0, $a0, 3
/* AD3B50 8005C9B0 008F2023 */  subu  $a0, $a0, $t7
/* AD3B54 8005C9B4 00042080 */  sll   $a0, $a0, 2
/* AD3B58 8005C9B8 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* AD3B5C 8005C9BC AE4F0018 */   sw    $t7, 0x18($s2)
/* AD3B60 8005C9C0 1440000D */  bnez  $v0, .L8005C9F8
/* AD3B64 8005C9C4 AE42001C */   sw    $v0, 0x1c($s2)
/* AD3B68 8005C9C8 3C048014 */  lui   $a0, %hi(D_8013A780) # $a0, 0x8014
/* AD3B6C 8005C9CC AE400018 */  sw    $zero, 0x18($s2)
/* AD3B70 8005C9D0 0C00084C */  jal   osSyncPrintf
/* AD3B74 8005C9D4 2484A780 */   addiu $a0, %lo(D_8013A780) # addiu $a0, $a0, -0x5880
/* AD3B78 8005C9D8 3C048014 */  lui   $a0, %hi(D_8013A788) # $a0, 0x8014
/* AD3B7C 8005C9DC 0C00084C */  jal   osSyncPrintf
/* AD3B80 8005C9E0 2484A788 */   addiu $a0, %lo(D_8013A788) # addiu $a0, $a0, -0x5878
/* AD3B84 8005C9E4 3C048014 */  lui   $a0, %hi(D_8013A7B4) # $a0, 0x8014
/* AD3B88 8005C9E8 0C00084C */  jal   osSyncPrintf
/* AD3B8C 8005C9EC 2484A7B4 */   addiu $a0, %lo(D_8013A7B4) # addiu $a0, $a0, -0x584c
/* AD3B90 8005C9F0 1000001D */  b     .L8005CA68
/* AD3B94 8005C9F4 00001025 */   move  $v0, $zero
.L8005C9F8:
/* AD3B98 8005C9F8 8E590018 */  lw    $t9, 0x18($s2)
/* AD3B9C 8005C9FC 2414005C */  li    $s4, 92
/* AD3BA0 8005CA00 8E50001C */  lw    $s0, 0x1c($s2)
/* AD3BA4 8005CA04 03340019 */  multu $t9, $s4
/* AD3BA8 8005CA08 8FB8003C */  lw    $t8, 0x3c($sp)
/* AD3BAC 8005CA0C 8F11000C */  lw    $s1, 0xc($t8)
/* AD3BB0 8005CA10 00004012 */  mflo  $t0
/* AD3BB4 8005CA14 02084821 */  addu  $t1, $s0, $t0
/* AD3BB8 8005CA18 0209082B */  sltu  $at, $s0, $t1
/* AD3BBC 8005CA1C 10200011 */  beqz  $at, .L8005CA64
/* AD3BC0 8005CA20 02602025 */   move  $a0, $s3
.L8005CA24:
/* AD3BC4 8005CA24 0C0171B0 */  jal   func_8005C6C0
/* AD3BC8 8005CA28 02002825 */   move  $a1, $s0
/* AD3BCC 8005CA2C 02602025 */  move  $a0, $s3
/* AD3BD0 8005CA30 02002825 */  move  $a1, $s0
/* AD3BD4 8005CA34 0C0171CC */  jal   func_8005C730
/* AD3BD8 8005CA38 02203025 */   move  $a2, $s1
/* AD3BDC 8005CA3C 8E4B0018 */  lw    $t3, 0x18($s2)
/* AD3BE0 8005CA40 8E4A001C */  lw    $t2, 0x1c($s2)
/* AD3BE4 8005CA44 2610005C */  addiu $s0, $s0, 0x5c
/* AD3BE8 8005CA48 01740019 */  multu $t3, $s4
/* AD3BEC 8005CA4C 2631003C */  addiu $s1, $s1, 0x3c
/* AD3BF0 8005CA50 00006012 */  mflo  $t4
/* AD3BF4 8005CA54 014C6821 */  addu  $t5, $t2, $t4
/* AD3BF8 8005CA58 020D082B */  sltu  $at, $s0, $t5
/* AD3BFC 8005CA5C 5420FFF1 */  bnezl $at, .L8005CA24
/* AD3C00 8005CA60 02602025 */   move  $a0, $s3
.L8005CA64:
/* AD3C04 8005CA64 24020001 */  li    $v0, 1
.L8005CA68:
/* AD3C08 8005CA68 8FBF002C */  lw    $ra, 0x2c($sp)
/* AD3C0C 8005CA6C 8FB00018 */  lw    $s0, 0x18($sp)
/* AD3C10 8005CA70 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD3C14 8005CA74 8FB20020 */  lw    $s2, 0x20($sp)
/* AD3C18 8005CA78 8FB30024 */  lw    $s3, 0x24($sp)
/* AD3C1C 8005CA7C 8FB40028 */  lw    $s4, 0x28($sp)
/* AD3C20 8005CA80 03E00008 */  jr    $ra
/* AD3C24 8005CA84 27BD0030 */   addiu $sp, $sp, 0x30

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

