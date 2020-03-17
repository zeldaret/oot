.rdata
glabel D_8013A718
    .asciz "pclobj_jntsph->elem_tbl != NULL"
    .balign 4

glabel D_8013A738
    .asciz "../z_collision_check.c"
    .balign 4

.text
glabel func_8005C050
/* AD31F0 8005C050 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD31F4 8005C054 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD31F8 8005C058 AFB30020 */  sw    $s3, 0x20($sp)
/* AD31FC 8005C05C AFB2001C */  sw    $s2, 0x1c($sp)
/* AD3200 8005C060 00A09025 */  move  $s2, $a1
/* AD3204 8005C064 00809825 */  move  $s3, $a0
/* AD3208 8005C068 AFB10018 */  sw    $s1, 0x18($sp)
/* AD320C 8005C06C AFB00014 */  sw    $s0, 0x14($sp)
/* AD3210 8005C070 0C016DCB */  jal   func_8005B72C
/* AD3214 8005C074 AFA70034 */   sw    $a3, 0x34($sp)
/* AD3218 8005C078 8FAE0034 */  lw    $t6, 0x34($sp)
/* AD321C 8005C07C 8FA20038 */  lw    $v0, 0x38($sp)
/* AD3220 8005C080 3C048014 */  lui   $a0, %hi(D_8013A718) # $a0, 0x8014
/* AD3224 8005C084 8DCF0008 */  lw    $t7, 8($t6)
/* AD3228 8005C088 AE42001C */  sw    $v0, 0x1c($s2)
/* AD322C 8005C08C 14400006 */  bnez  $v0, .L8005C0A8
/* AD3230 8005C090 AE4F0018 */   sw    $t7, 0x18($s2)
/* AD3234 8005C094 3C058014 */  lui   $a1, %hi(D_8013A738) # $a1, 0x8014
/* AD3238 8005C098 24A5A738 */  addiu $a1, %lo(D_8013A738) # addiu $a1, $a1, -0x58c8
/* AD323C 8005C09C 2484A718 */  addiu $a0, %lo(D_8013A718) # addiu $a0, $a0, -0x58e8
/* AD3240 8005C0A0 0C0007FC */  jal   __assert
/* AD3244 8005C0A4 24060643 */   li    $a2, 1603
.L8005C0A8:
/* AD3248 8005C0A8 8E590018 */  lw    $t9, 0x18($s2)
/* AD324C 8005C0AC 8E50001C */  lw    $s0, 0x1c($s2)
/* AD3250 8005C0B0 8FB80034 */  lw    $t8, 0x34($sp)
/* AD3254 8005C0B4 00194180 */  sll   $t0, $t9, 6
/* AD3258 8005C0B8 02084821 */  addu  $t1, $s0, $t0
/* AD325C 8005C0BC 0209082B */  sltu  $at, $s0, $t1
/* AD3260 8005C0C0 10200010 */  beqz  $at, .L8005C104
/* AD3264 8005C0C4 8F11000C */   lw    $s1, 0xc($t8)
.L8005C0C8:
/* AD3268 8005C0C8 02602025 */  move  $a0, $s3
/* AD326C 8005C0CC 0C016EB6 */  jal   func_8005BAD8
/* AD3270 8005C0D0 02002825 */   move  $a1, $s0
/* AD3274 8005C0D4 02602025 */  move  $a0, $s3
/* AD3278 8005C0D8 02002825 */  move  $a1, $s0
/* AD327C 8005C0DC 0C016ED2 */  jal   func_8005BB48
/* AD3280 8005C0E0 02203025 */   move  $a2, $s1
/* AD3284 8005C0E4 8E4B0018 */  lw    $t3, 0x18($s2)
/* AD3288 8005C0E8 8E4A001C */  lw    $t2, 0x1c($s2)
/* AD328C 8005C0EC 26100040 */  addiu $s0, $s0, 0x40
/* AD3290 8005C0F0 000B6180 */  sll   $t4, $t3, 6
/* AD3294 8005C0F4 014C6821 */  addu  $t5, $t2, $t4
/* AD3298 8005C0F8 020D082B */  sltu  $at, $s0, $t5
/* AD329C 8005C0FC 1420FFF2 */  bnez  $at, .L8005C0C8
/* AD32A0 8005C100 26310024 */   addiu $s1, $s1, 0x24
.L8005C104:
/* AD32A4 8005C104 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD32A8 8005C108 8FB00014 */  lw    $s0, 0x14($sp)
/* AD32AC 8005C10C 8FB10018 */  lw    $s1, 0x18($sp)
/* AD32B0 8005C110 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD32B4 8005C114 8FB30020 */  lw    $s3, 0x20($sp)
/* AD32B8 8005C118 27BD0028 */  addiu $sp, $sp, 0x28
/* AD32BC 8005C11C 03E00008 */  jr    $ra
/* AD32C0 8005C120 24020001 */   li    $v0, 1

/* AD32C4 8005C124 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD32C8 8005C128 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD32CC 8005C12C AFB20020 */  sw    $s2, 0x20($sp)
/* AD32D0 8005C130 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD32D4 8005C134 00809025 */  move  $s2, $a0
/* AD32D8 8005C138 AFB00018 */  sw    $s0, 0x18($sp)
/* AD32DC 8005C13C 00A08825 */  move  $s1, $a1
/* AD32E0 8005C140 0C016DDB */  jal   func_8005B76C
/* AD32E4 8005C144 AFA5002C */   sw    $a1, 0x2c($sp)
/* AD32E8 8005C148 8FA5002C */  lw    $a1, 0x2c($sp)
/* AD32EC 8005C14C 8CAE0018 */  lw    $t6, 0x18($a1)
/* AD32F0 8005C150 8CB0001C */  lw    $s0, 0x1c($a1)
/* AD32F4 8005C154 000E7980 */  sll   $t7, $t6, 6
/* AD32F8 8005C158 020FC021 */  addu  $t8, $s0, $t7
/* AD32FC 8005C15C 0218082B */  sltu  $at, $s0, $t8
/* AD3300 8005C160 1020000B */  beqz  $at, .L8005C190
/* AD3304 8005C164 02402025 */   move  $a0, $s2
.L8005C168:
/* AD3308 8005C168 0C016EE3 */  jal   func_8005BB8C
/* AD330C 8005C16C 02002825 */   move  $a1, $s0
/* AD3310 8005C170 8E280018 */  lw    $t0, 0x18($s1)
/* AD3314 8005C174 8E39001C */  lw    $t9, 0x1c($s1)
/* AD3318 8005C178 26100040 */  addiu $s0, $s0, 0x40
/* AD331C 8005C17C 00084980 */  sll   $t1, $t0, 6
/* AD3320 8005C180 03295021 */  addu  $t2, $t9, $t1
/* AD3324 8005C184 020A082B */  sltu  $at, $s0, $t2
/* AD3328 8005C188 5420FFF7 */  bnezl $at, .L8005C168
/* AD332C 8005C18C 02402025 */   move  $a0, $s2
.L8005C190:
/* AD3330 8005C190 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD3334 8005C194 8FB00018 */  lw    $s0, 0x18($sp)
/* AD3338 8005C198 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD333C 8005C19C 8FB20020 */  lw    $s2, 0x20($sp)
/* AD3340 8005C1A0 27BD0028 */  addiu $sp, $sp, 0x28
/* AD3344 8005C1A4 03E00008 */  jr    $ra
/* AD3348 8005C1A8 24020001 */   li    $v0, 1

/* AD334C 8005C1AC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD3350 8005C1B0 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD3354 8005C1B4 AFB20020 */  sw    $s2, 0x20($sp)
/* AD3358 8005C1B8 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD335C 8005C1BC 00809025 */  move  $s2, $a0
/* AD3360 8005C1C0 AFB00018 */  sw    $s0, 0x18($sp)
/* AD3364 8005C1C4 00A08825 */  move  $s1, $a1
/* AD3368 8005C1C8 0C016DE1 */  jal   func_8005B784
/* AD336C 8005C1CC AFA5002C */   sw    $a1, 0x2c($sp)
/* AD3370 8005C1D0 8FA5002C */  lw    $a1, 0x2c($sp)
/* AD3374 8005C1D4 8CAE0018 */  lw    $t6, 0x18($a1)
/* AD3378 8005C1D8 8CB0001C */  lw    $s0, 0x1c($a1)
/* AD337C 8005C1DC 000E7980 */  sll   $t7, $t6, 6
/* AD3380 8005C1E0 020FC021 */  addu  $t8, $s0, $t7
/* AD3384 8005C1E4 0218082B */  sltu  $at, $s0, $t8
/* AD3388 8005C1E8 1020000B */  beqz  $at, .L8005C218
/* AD338C 8005C1EC 02402025 */   move  $a0, $s2
.L8005C1F0:
/* AD3390 8005C1F0 0C016EEC */  jal   func_8005BBB0
/* AD3394 8005C1F4 02002825 */   move  $a1, $s0
/* AD3398 8005C1F8 8E280018 */  lw    $t0, 0x18($s1)
/* AD339C 8005C1FC 8E39001C */  lw    $t9, 0x1c($s1)
/* AD33A0 8005C200 26100040 */  addiu $s0, $s0, 0x40
/* AD33A4 8005C204 00084980 */  sll   $t1, $t0, 6
/* AD33A8 8005C208 03295021 */  addu  $t2, $t9, $t1
/* AD33AC 8005C20C 020A082B */  sltu  $at, $s0, $t2
/* AD33B0 8005C210 5420FFF7 */  bnezl $at, .L8005C1F0
/* AD33B4 8005C214 02402025 */   move  $a0, $s2
.L8005C218:
/* AD33B8 8005C218 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD33BC 8005C21C 8FB00018 */  lw    $s0, 0x18($sp)
/* AD33C0 8005C220 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD33C4 8005C224 8FB20020 */  lw    $s2, 0x20($sp)
/* AD33C8 8005C228 27BD0028 */  addiu $sp, $sp, 0x28
/* AD33CC 8005C22C 03E00008 */  jr    $ra
/* AD33D0 8005C230 24020001 */   li    $v0, 1

/* AD33D4 8005C234 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD33D8 8005C238 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD33DC 8005C23C AFB20020 */  sw    $s2, 0x20($sp)
/* AD33E0 8005C240 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD33E4 8005C244 00809025 */  move  $s2, $a0
/* AD33E8 8005C248 AFB00018 */  sw    $s0, 0x18($sp)
/* AD33EC 8005C24C 00A08825 */  move  $s1, $a1
/* AD33F0 8005C250 0C016DE7 */  jal   func_8005B79C
/* AD33F4 8005C254 AFA5002C */   sw    $a1, 0x2c($sp)
/* AD33F8 8005C258 8FA5002C */  lw    $a1, 0x2c($sp)
/* AD33FC 8005C25C 8CAE0018 */  lw    $t6, 0x18($a1)
/* AD3400 8005C260 8CB0001C */  lw    $s0, 0x1c($a1)
/* AD3404 8005C264 000E7980 */  sll   $t7, $t6, 6
/* AD3408 8005C268 020FC021 */  addu  $t8, $s0, $t7
/* AD340C 8005C26C 0218082B */  sltu  $at, $s0, $t8
/* AD3410 8005C270 1020000B */  beqz  $at, .L8005C2A0
/* AD3414 8005C274 02402025 */   move  $a0, $s2
.L8005C278:
/* AD3418 8005C278 0C016EF5 */  jal   func_8005BBD4
/* AD341C 8005C27C 02002825 */   move  $a1, $s0
/* AD3420 8005C280 8E280018 */  lw    $t0, 0x18($s1)
/* AD3424 8005C284 8E39001C */  lw    $t9, 0x1c($s1)
/* AD3428 8005C288 26100040 */  addiu $s0, $s0, 0x40
/* AD342C 8005C28C 00084980 */  sll   $t1, $t0, 6
/* AD3430 8005C290 03295021 */  addu  $t2, $t9, $t1
/* AD3434 8005C294 020A082B */  sltu  $at, $s0, $t2
/* AD3438 8005C298 5420FFF7 */  bnezl $at, .L8005C278
/* AD343C 8005C29C 02402025 */   move  $a0, $s2
.L8005C2A0:
/* AD3440 8005C2A0 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD3444 8005C2A4 8FB00018 */  lw    $s0, 0x18($sp)
/* AD3448 8005C2A8 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD344C 8005C2AC 8FB20020 */  lw    $s2, 0x20($sp)
/* AD3450 8005C2B0 27BD0028 */  addiu $sp, $sp, 0x28
/* AD3454 8005C2B4 03E00008 */  jr    $ra
/* AD3458 8005C2B8 24020001 */   li    $v0, 1

